#include "STC15.H"
#include "intrins.h"
#include <stdbool.h>
#include <string.h>
#include <stdio.h>

#define SEG_A P10
#define SEG_B P11
#define SEG_C P12
#define SEG_D P13
#define SEG_E P14
#define SEG_F P15
#define SEG_G P16
#define SEG_DP P17

#define DIG1 P20
#define DIG2 P21
#define DIG3 P22
#define DIG4 P23

//#define SUCCESS_LED P25    //This could be remove if wish to have no led 

#define DHT22_PIN P37

#define BUTTON_PIN P32

#define ESP01S_RST P25
#define ESP01S_RXD P31 //Just a reminder, set but not used
#define ESP01S_TXD P30 //Just a reminder, set but not used

#define HUMIDITY_LED P27

#define REFRASH_GAP 3000 //1000Ϊ18��

unsigned char seg_code[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x40};
unsigned char data[5];

bool displayHumidity;
bool justPressed;
unsigned int comfimed;
bool tempNegativeSign;

void floatToStr(float num,__xdata unsigned char str[]) 
{
    bool negative = 0;
    if (num < 0) 
    {
        num = -num;
        negative = 1;


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

void delay_us(unsigned int us) {
    while (us--);
}

void delay_ms(unsigned int ms) {
    unsigned int i;
    for (i = 0; i < ms; i++) {
    delay_us(1000);
    }
}

void INT0_ISR(void) __interrupt (0)
{
    if(comfimed==0)
    {
        justPressed = true;
        comfimed = 200;
    }
}

void display_number(unsigned char num, unsigned char digit) 
{
    DIG1 = 1;
    DIG2 = 1;
    DIG3 = 1;
    DIG4 = 1;

    if(digit == 1) DIG1 = 0;
    if(digit == 2) DIG2 = 0;
    if(digit == 3) DIG3 = 0;
    if(digit == 4) DIG4 = 0;

    SEG_A = (seg_code[num] ) & 0x01;
    SEG_B = (seg_code[num] >> 1) & 0x01;
    SEG_C = (seg_code[num] >> 2) & 0x01;
    SEG_D = (seg_code[num] >> 3) & 0x01;
    SEG_E = (seg_code[num] >> 4) & 0x01;
    SEG_F = (seg_code[num] >> 5) & 0x01;
    SEG_G = (seg_code[num] >> 6) & 0x01;
    if(digit == 3)
    {
        SEG_DP = 1;
    }
    else
    {
        SEG_DP = 0;
    }

    delay_us(1000);

    DIG1 = 1;
    DIG2 = 1;
    DIG3 = 1;
    DIG4 = 1;
}

void DHT22_init(void) {
    DHT22_PIN = 1;
}

unsigned char DHT22_read(void) {
    unsigned char i, j;

    DHT22_PIN = 0; 
    delay_ms(18);  
    DHT22_PIN = 1; 
    delay_us(30); 

    while (DHT22_PIN); 
    while (!DHT22_PIN);
    while (DHT22_PIN);

    for (j = 0; j < 5; j++)
    {
        data[j] = 0;
        for (i = 0; i < 8; i++)
        {
            while (!DHT22_PIN);
            delay_us(40);
            if (DHT22_PIN) {
                data[j] |= (1 << (7 - i));
            }
            while (DHT22_PIN);
        }
    }

    if ((data[0] + data[1] + data[2] + data[3]) != data[4]) 
    {
        return 1;
    }
    return 0;
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

void sendDataToServer(float temp, float humidity)
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
    strcat(body,"POST /api/tempAndHumi HTTP/1.1\r\nHost: www.homemoni.xyz\r\nContent-Type: application/json\r\nContent-Length: 80\r\n\r\n{\"temperature\":");
    
    __xdata unsigned char tempStr[6];
    floatToStr(temp,tempStr);
    strcat(body,tempStr);

    strcat(body,",\"humidity\":");

    __xdata unsigned char humiStr[6];
    floatToStr(humidity,humiStr);
    strcat(body,humiStr);

    strcat(body,",\"siteName\":\"Living Room\"}\r\n");

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



void main(void) 
{
    ESP01S_RST = 1;
    delay_ms(500);

    Uart1_Init();
    UART_SendString("AT+GSLP=720000\r\n");
    reopenUART();

    BUTTON_PIN = 0;

    IT0 = 0;   
    EX0 = 1;  
    EA = 1;    

    unsigned char result;

    displayHumidity = false;
    justPressed = false;

    tempNegativeSign = false;

    HUMIDITY_LED = 0;

    while (1) {

        DHT22_init();
        result = DHT22_read();
        if(1) 
        {
            unsigned int raw_temp = (data[2] & 0x7F) << 8 | data[3];
            unsigned int raw_humidity = (data[0] & 0x7F) << 8 | data[1];

            tempNegativeSign = data[2] & 0x80;

            unsigned char tempSecondDigit = raw_temp / 100;
            unsigned char tempFirstDigit = (raw_temp / 10) % 10;
            unsigned char tempPointFirstDigit = raw_temp % 10;

            unsigned char humidityThirdDigit = raw_humidity / 1000;
            unsigned char humiditySecondDigit = raw_humidity / 100 % 10;
            unsigned char humidityFirstDigit = (raw_humidity / 10) % 10;
            unsigned char humidityPointFirstDigit = raw_humidity % 10;

            unsigned int counter=REFRASH_GAP; //Refrash gap

            //Send data to server first, then refrash the display
            float true_temp = raw_temp / 10.0;
            float true_humidity = raw_humidity / 10.0;
            sendDataToServer(true_temp,true_humidity);
            

            while(counter--)
            {
                if(comfimed!=0)
                {
                    comfimed--;
                }

                if(justPressed)
                {
                    break;
                }

                if(displayHumidity)
                {   
                    HUMIDITY_LED = 1;
                    if(humidityThirdDigit!=0)
                    {
                        display_number(humidityThirdDigit,1);
                    }
                    display_number(humiditySecondDigit,2);
                    display_number(humidityFirstDigit,3);
                    display_number(humidityPointFirstDigit,4);
                }
                else
                {
                    HUMIDITY_LED = 0;
                    if(tempNegativeSign)
                    {
                        display_number(10,1);
                    }
                    if(tempSecondDigit!=0)
                    {
                        display_number(tempSecondDigit,2);
                    }

                    display_number(tempFirstDigit,3);
                    display_number(tempPointFirstDigit,4);
                }

            }
            if(justPressed)
            {
                delay_ms(150);
                displayHumidity = !displayHumidity;
                justPressed = false;
            }
            delay_ms(1);
        } 
    }
}