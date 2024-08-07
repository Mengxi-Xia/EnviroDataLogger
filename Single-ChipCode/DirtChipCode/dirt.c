#include "STC15.H"
#include "intrins.h"
#include <stdbool.h>
#include <string.h>
#include <stdio.h>

#define ESP01S_RST P25

#define PUMP P23


void delay_us(unsigned int us) {
    while (us--);
}

void delay_ms(unsigned int ms) {
    unsigned int i;
    for (i = 0; i < ms; i++) {
    delay_us(1000);
    }
}

void ADC_Init(void) {

    P1ASF = 0x01; //Using P10
    P10 = 0;
    ADC_CONTR = 0x80; 
    AUXR1 |= 0x04;
    delay_ms(100);
}


void floatToStr(float num,__xdata unsigned char str[]) 
{
    bool negative = 0;
    if (num < 0) 
    {
        num = -num;
        negative = 1;
    }

    int integerPart = (int)num;
    int decimalPart = (int)((num - (float)integerPart) * 10);

    int i = 0;
    if (negative) 
    {
        str[i++] = '-';
    }
    int start = i;
    if (integerPart == 0) 
    { 
        str[i++] = '0';
    } else 
    {
        while (integerPart != 0) 
        {
            str[i++] = (integerPart % 10) + '0';
            integerPart /= 10;
        }
        int end = i - 1;
        while (start < end) 
        {
            char temp = str[start];
            str[start] = str[end];
            str[end] = temp;
            start++;
            end--;
        }
    }

    str[i++] = '.';
    str[i++] = decimalPart + '0';

    str[i] = '\0';
}


void intToStr(int num, char str[]) 
{
    int i = 0;
    int isNegative = 0;

    do 
    {
        str[i++] = num % 10 + '0'; 
        num /= 10;
    }while (num != 0);

    str[i] = '\0'; 

    int start = 0;
    int end = i - 1;
    char temp;
    while (start < end) {
        temp = str[start];
        str[start] = str[end];
        str[end] = temp;
        start++;
        end--;
    }
}

void UART_SendByte(char dat) {
    SBUF = dat;   
    while (!TI);
    TI=0;     
}
  
void UART_SendString(char* str) {
    while (*str) {
        UART_SendByte(*str++); 

    }
}

void Uart1_Init(void)	//115200bps@12.000MHz
{
	SCON = 0x50;		
	AUXR |= 0x01;		
	AUXR |= 0x04;		
	T2L = 0xE6;			
	T2H = 0xFF;			
	AUXR |= 0x10;		
}

void reopenUART(void)
{
    SCON = 0x00;
    Uart1_Init();
    return;
}

void sendDataToServer(float mositure)
{
    ESP01S_RST = 0;
    delay_ms(200);
    ESP01S_RST = 1;
    delay_ms(500);

    Uart1_Init();

    UART_SendString("AT+CWMODE=1\r\n");   
    
    reopenUART();
    delay_ms(400);
    UART_SendString("AT+CWJAP=\"HUAWEI-10HOL3\",\"88588681\"\r\n");  

    //Because connect to wifi need time, so make significant delay to 8s
    reopenUART();
    delay_ms(6000);
    UART_SendString("AT+CIPSTART=\"TCP\",\"www.homemoni.xyz\",80\r\n"); //Change the server address at any time

    reopenUART();
    delay_ms(2000);

    //Site name must using ASCII character, supporting UTF-8 is in researching

    __xdata unsigned char body[200]; //The xdata size is 256 byte in STC15W408AS. Don't declear size larger then this
    memset(body,0,200);
    strcat(body,"POST /api/dirt HTTP/1.1\r\nHost: www.homemoni.xyz\r\nContent-Type: application/json\r\nContent-Length: 80\r\n\r\n{\"mositure\":");
    
    __xdata unsigned char mositureStr[6];
    floatToStr(mositure,mositureStr);
    strcat(body,mositureStr);

    strcat(body,",\"siteName\":\"Pot 1\"}\r\n");

    unsigned int bodyLength = strlen(body);

    reopenUART();
    UART_SendString("AT+CIPSEND=");
    __xdata unsigned char bodyLengthStr[4];
    intToStr(bodyLength,bodyLengthStr);
    UART_SendString(bodyLengthStr);
    UART_SendString("\r\n");
    delay_ms(1000);

    reopenUART();
    UART_SendString(body);

    delay_ms(500);

    //This sending is done. Set to deep-sleep mode
    reopenUART();
    UART_SendString("AT+GSLP=720000\r\n");
    reopenUART();
    
}

unsigned int ADC_Read(void) {
    ADC_CONTR |= 0x08; // 启动ADC转换
    delay_ms(50);
    while (!(ADC_CONTR & 0x10)); // 等待ADC转换完成
    ADC_CONTR = 0x80; // 清除完成标志
    return ((ADC_RES << 2) | (ADC_RESL & 0x03)); // 返回ADC结果
}

void sendADCDataToUART(void) {
    unsigned int adc_value = ADC_Read(); 

    __xdata unsigned char adcStr[10];
    intToStr(adc_value, adcStr);
    UART_SendString(adcStr);
}



void main(void) {
    delay_ms(300);
    PUMP = 1;
    Uart1_Init();

    reopenUART();
    ADC_Init(); 

    reopenUART();
    
    while (1) {
        int data1 = ADC_Read();
        delay_ms(100);

        int data2 = ADC_Read();
        delay_ms(100);
        
        int data3 = ADC_Read();
        delay_ms(100);

        float realData = (data1 + data2 + data3) / 3.0;
        sendDataToServer(realData);

        if(realData>650)
        {
            PUMP = 0;
            delay_ms(2000);
        }

        PUMP = 1;

        if(realData>650)
        {
            delay_ms(20000);
            continue;
        }
        else
        {
            for(int i=0;i<100;i++)
            {
                delay_ms(10000);
            }
        }



        
        
        

    }
}