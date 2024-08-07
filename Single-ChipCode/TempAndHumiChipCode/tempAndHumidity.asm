;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Mac OS X x86_64)
;--------------------------------------------------------
	.module tempAndHumidity
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _sendDataToServer
	.globl _reopenUART
	.globl _Uart1_Init
	.globl _UART_SendString
	.globl _UART_SendByte
	.globl _DHT22_read
	.globl _DHT22_init
	.globl _display_number
	.globl _INT0_ISR
	.globl _delay_ms
	.globl _delay_us
	.globl _intToStr
	.globl _floatToStr
	.globl _strlen
	.globl _memset
	.globl _strcat
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CR
	.globl _CF
	.globl _R2I
	.globl _T2I
	.globl _R2B8
	.globl _T2B8
	.globl _R2EN
	.globl _S2M2
	.globl _S2M1
	.globl _S2M0
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PADC
	.globl _PLVD
	.globl _PPCA
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EADC
	.globl _ELVD
	.globl _EA
	.globl _P77
	.globl _P76
	.globl _P75
	.globl _P74
	.globl _P73
	.globl _P72
	.globl _P71
	.globl _P70
	.globl _P67
	.globl _P66
	.globl _P65
	.globl _P64
	.globl _P63
	.globl _P62
	.globl _P61
	.globl _P60
	.globl _P57
	.globl _P56
	.globl _P55
	.globl _P54
	.globl _P53
	.globl _P52
	.globl _P51
	.globl _P50
	.globl _P47
	.globl _P46
	.globl _P45
	.globl _P44
	.globl _P43
	.globl _P42
	.globl _P41
	.globl _P40
	.globl _P37
	.globl _P36
	.globl _P35
	.globl _P34
	.globl _P33
	.globl _P32
	.globl _P31
	.globl _P30
	.globl _P27
	.globl _P26
	.globl _P25
	.globl _P24
	.globl _P23
	.globl _P22
	.globl _P21
	.globl _P20
	.globl _P17
	.globl _P16
	.globl _P15
	.globl _P14
	.globl _P13
	.globl _P12
	.globl _P11
	.globl _P10
	.globl _P07
	.globl _P06
	.globl _P05
	.globl _P04
	.globl _P03
	.globl _P02
	.globl _P01
	.globl _P00
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _PWMFDCR
	.globl _PWMIF
	.globl _PWMCR
	.globl _PWMCFG
	.globl _CMPCR2
	.globl _CMPCR1
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _PCA_PWM2
	.globl _PCA_PWM1
	.globl _PCA_PWM0
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CH
	.globl _CL
	.globl _CMOD
	.globl _CCON
	.globl _IAP_CONTR
	.globl _IAP_TRIG
	.globl _IAP_CMD
	.globl _IAP_ADDRL
	.globl _IAP_ADDRH
	.globl _IAP_DATA
	.globl _SPDAT
	.globl _SPCTL
	.globl _SPSTAT
	.globl _ADC_RESL
	.globl _ADC_RES
	.globl _ADC_CONTR
	.globl _SADEN
	.globl _SADDR
	.globl _S4BUF
	.globl _S4CON
	.globl _S3BUF
	.globl _S3CON
	.globl _S2BUF
	.globl _S2CON
	.globl _SBUF
	.globl _SCON
	.globl _WDT_CONTR
	.globl _WKTCH
	.globl _WKTCL
	.globl _T2L
	.globl _T2H
	.globl _T3L
	.globl _T3H
	.globl _T4L
	.globl _T4H
	.globl _T3T4M
	.globl _T4T3M
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _INT_CLKO
	.globl _IP2
	.globl _IE2
	.globl _IP
	.globl _IE
	.globl _P_SW2
	.globl _P1ASF
	.globl _BUS_SPEED
	.globl _CLK_DIV
	.globl _P_SW1
	.globl _AUXR1
	.globl _AUXR
	.globl _PCON
	.globl _P7M1
	.globl _P7M0
	.globl _P6M1
	.globl _P6M0
	.globl _P5M1
	.globl _P5M0
	.globl _P4M1
	.globl _P4M0
	.globl _P3M1
	.globl _P3M0
	.globl _P2M1
	.globl _P2M0
	.globl _P1M1
	.globl _P1M0
	.globl _P0M1
	.globl _P0M0
	.globl _P7
	.globl _P6
	.globl _P5
	.globl _P4
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _PSW
	.globl _B
	.globl _ACC
	.globl _floatToStr_PARM_2
	.globl _sendDataToServer_PARM_2
	.globl _display_number_PARM_2
	.globl _intToStr_PARM_2
	.globl _tempNegativeSign
	.globl _comfimed
	.globl _justPressed
	.globl _displayHumidity
	.globl _data
	.globl _seg_code
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ACC	=	0x00e0
_B	=	0x00f0
_PSW	=	0x00d0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_P4	=	0x00c0
_P5	=	0x00c8
_P6	=	0x00e8
_P7	=	0x00f8
_P0M0	=	0x0094
_P0M1	=	0x0093
_P1M0	=	0x0092
_P1M1	=	0x0091
_P2M0	=	0x0096
_P2M1	=	0x0095
_P3M0	=	0x00b2
_P3M1	=	0x00b1
_P4M0	=	0x00b4
_P4M1	=	0x00b3
_P5M0	=	0x00ca
_P5M1	=	0x00c9
_P6M0	=	0x00cc
_P6M1	=	0x00cb
_P7M0	=	0x00e2
_P7M1	=	0x00e1
_PCON	=	0x0087
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_P_SW1	=	0x00a2
_CLK_DIV	=	0x0097
_BUS_SPEED	=	0x00a1
_P1ASF	=	0x009d
_P_SW2	=	0x00ba
_IE	=	0x00a8
_IP	=	0x00b8
_IE2	=	0x00af
_IP2	=	0x00b5
_INT_CLKO	=	0x008f
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_T4T3M	=	0x00d1
_T3T4M	=	0x00d1
_T4H	=	0x00d2
_T4L	=	0x00d3
_T3H	=	0x00d4
_T3L	=	0x00d5
_T2H	=	0x00d6
_T2L	=	0x00d7
_WKTCL	=	0x00aa
_WKTCH	=	0x00ab
_WDT_CONTR	=	0x00c1
_SCON	=	0x0098
_SBUF	=	0x0099
_S2CON	=	0x009a
_S2BUF	=	0x009b
_S3CON	=	0x00ac
_S3BUF	=	0x00ad
_S4CON	=	0x0084
_S4BUF	=	0x0085
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_ADC_CONTR	=	0x00bc
_ADC_RES	=	0x00bd
_ADC_RESL	=	0x00be
_SPSTAT	=	0x00cd
_SPCTL	=	0x00ce
_SPDAT	=	0x00cf
_IAP_DATA	=	0x00c2
_IAP_ADDRH	=	0x00c3
_IAP_ADDRL	=	0x00c4
_IAP_CMD	=	0x00c5
_IAP_TRIG	=	0x00c6
_IAP_CONTR	=	0x00c7
_CCON	=	0x00d8
_CMOD	=	0x00d9
_CL	=	0x00e9
_CH	=	0x00f9
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_PCA_PWM0	=	0x00f2
_PCA_PWM1	=	0x00f3
_PCA_PWM2	=	0x00f4
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CMPCR1	=	0x00e6
_CMPCR2	=	0x00e7
_PWMCFG	=	0x00f1
_PWMCR	=	0x00f5
_PWMIF	=	0x00f6
_PWMFDCR	=	0x00f7
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_P00	=	0x0080
_P01	=	0x0081
_P02	=	0x0082
_P03	=	0x0083
_P04	=	0x0084
_P05	=	0x0085
_P06	=	0x0086
_P07	=	0x0087
_P10	=	0x0090
_P11	=	0x0091
_P12	=	0x0092
_P13	=	0x0093
_P14	=	0x0094
_P15	=	0x0095
_P16	=	0x0096
_P17	=	0x0097
_P20	=	0x00a0
_P21	=	0x00a1
_P22	=	0x00a2
_P23	=	0x00a3
_P24	=	0x00a4
_P25	=	0x00a5
_P26	=	0x00a6
_P27	=	0x00a7
_P30	=	0x00b0
_P31	=	0x00b1
_P32	=	0x00b2
_P33	=	0x00b3
_P34	=	0x00b4
_P35	=	0x00b5
_P36	=	0x00b6
_P37	=	0x00b7
_P40	=	0x00c0
_P41	=	0x00c1
_P42	=	0x00c2
_P43	=	0x00c3
_P44	=	0x00c4
_P45	=	0x00c5
_P46	=	0x00c6
_P47	=	0x00c7
_P50	=	0x00c8
_P51	=	0x00c9
_P52	=	0x00ca
_P53	=	0x00cb
_P54	=	0x00cc
_P55	=	0x00cd
_P56	=	0x00ce
_P57	=	0x00cf
_P60	=	0x00e8
_P61	=	0x00e9
_P62	=	0x00ea
_P63	=	0x00eb
_P64	=	0x00ec
_P65	=	0x00ed
_P66	=	0x00ee
_P67	=	0x00ef
_P70	=	0x00f8
_P71	=	0x00f9
_P72	=	0x00fa
_P73	=	0x00fb
_P74	=	0x00fc
_P75	=	0x00fd
_P76	=	0x00fe
_P77	=	0x00ff
_EA	=	0x00af
_ELVD	=	0x00ae
_EADC	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PPCA	=	0x00bf
_PLVD	=	0x00be
_PADC	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_S2M0	=	0x00a1
_S2M1	=	0x00a0
_S2M2	=	0x009f
_R2EN	=	0x009e
_T2B8	=	0x009d
_R2B8	=	0x009c
_T2I	=	0x009b
_R2I	=	0x009a
_CF	=	0x00df
_CR	=	0x00de
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_seg_code::
	.ds 11
_data::
	.ds 5
_displayHumidity::
	.ds 1
_justPressed::
	.ds 1
_comfimed::
	.ds 2
_tempNegativeSign::
	.ds 1
_floatToStr_num_10000_49:
	.ds 4
_floatToStr_negative_10000_50:
	.ds 1
_floatToStr_integerPart_10001_52:
	.ds 2
_floatToStr_start_10002_54:
	.ds 2
_floatToStr_temp_30003_59:
	.ds 1
_floatToStr_sloc0_1_0:
	.ds 2
_floatToStr_sloc1_1_0:
	.ds 2
_floatToStr_sloc2_1_0:
	.ds 2
_intToStr_PARM_2:
	.ds 3
_intToStr_i_10000_61:
	.ds 2
_intToStr_start_10001_63:
	.ds 2
_intToStr_temp_10001_63:
	.ds 1
_intToStr_sloc0_1_0:
	.ds 3
_display_number_PARM_2:
	.ds 1
_sendDataToServer_PARM_2:
	.ds 4
_main_tempSecondDigit_30002_109:
	.ds 1
_main_tempFirstDigit_30002_109:
	.ds 1
_main_tempPointFirstDigit_30002_109:
	.ds 1
_main_humidityThirdDigit_30002_109:
	.ds 1
_main_humiditySecondDigit_30002_109:
	.ds 1
_main_humidityFirstDigit_30002_109:
	.ds 1
_main_humidityPointFirstDigit_30002_109:
	.ds 1
_main_true_temp_30002_109:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_floatToStr_PARM_2:
	.ds 2
_sendDataToServer_body_10001_99:
	.ds 200
_sendDataToServer_tempStr_10002_100:
	.ds 6
_sendDataToServer_humiStr_10003_101:
	.ds 6
_sendDataToServer_bodyLengthStr_10005_103:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_INT0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	tempAndHumidity.c:35: unsigned char seg_code[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x40};
	mov	_seg_code,#0x3f
	mov	(_seg_code + 0x0001),#0x06
	mov	(_seg_code + 0x0002),#0x5b
	mov	(_seg_code + 0x0003),#0x4f
	mov	(_seg_code + 0x0004),#0x66
	mov	(_seg_code + 0x0005),#0x6d
	mov	(_seg_code + 0x0006),#0x7d
	mov	(_seg_code + 0x0007),#0x07
	mov	(_seg_code + 0x0008),#0x7f
	mov	(_seg_code + 0x0009),#0x6f
	mov	(_seg_code + 0x000a),#0x40
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'floatToStr'
;------------------------------------------------------------
;num                       Allocated with name '_floatToStr_num_10000_49'
;negative                  Allocated with name '_floatToStr_negative_10000_50'
;integerPart               Allocated with name '_floatToStr_integerPart_10001_52'
;decimalPart               Allocated to registers 
;i                         Allocated to registers r1 r2 
;start                     Allocated with name '_floatToStr_start_10002_54'
;end                       Allocated to registers 
;temp                      Allocated with name '_floatToStr_temp_30003_59'
;sloc0                     Allocated with name '_floatToStr_sloc0_1_0'
;sloc1                     Allocated with name '_floatToStr_sloc1_1_0'
;sloc2                     Allocated with name '_floatToStr_sloc2_1_0'
;str                       Allocated with name '_floatToStr_PARM_2'
;------------------------------------------------------------
;	tempAndHumidity.c:43: void floatToStr(float num,__xdata unsigned char str[]) 
;	-----------------------------------------
;	 function floatToStr
;	-----------------------------------------
_floatToStr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_floatToStr_num_10000_49,dpl
	mov	(_floatToStr_num_10000_49 + 1),dph
	mov	(_floatToStr_num_10000_49 + 2),b
	mov	(_floatToStr_num_10000_49 + 3),a
;	tempAndHumidity.c:45: bool negative = 0;
;	tempAndHumidity.c:46: if (num < 0) 
	clr	a
	mov	_floatToStr_negative_10000_50,a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl, _floatToStr_num_10000_49
	mov	dph, (_floatToStr_num_10000_49 + 1)
	mov	b, (_floatToStr_num_10000_49 + 2)
	mov	a, (_floatToStr_num_10000_49 + 3)
	lcall	___fslt
	mov	r3, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00102$
;	tempAndHumidity.c:48: num = -num;
	mov	a,(_floatToStr_num_10000_49 + 3)
	cpl	acc.7
	mov	(_floatToStr_num_10000_49 + 3),a
;	tempAndHumidity.c:49: negative = 1;
	mov	_floatToStr_negative_10000_50,#0x01
00102$:
;	tempAndHumidity.c:52: int integerPart = (int)num;
	mov	dpl, _floatToStr_num_10000_49
	mov	dph, (_floatToStr_num_10000_49 + 1)
	mov	b, (_floatToStr_num_10000_49 + 2)
	mov	a, (_floatToStr_num_10000_49 + 3)
	lcall	___fs2sint
;	tempAndHumidity.c:53: int decimalPart = (int)((num - (float)integerPart) * 10);
	mov	_floatToStr_integerPart_10001_52,dpl
	mov  (_floatToStr_integerPart_10001_52 + 1),dph
	lcall	___sint2fs
	mov	r0, dpl
	mov	r1, dph
	mov	r6, b
	mov	r7, a
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	mov	dpl, _floatToStr_num_10000_49
	mov	dph, (_floatToStr_num_10000_49 + 1)
	mov	b, (_floatToStr_num_10000_49 + 2)
	mov	a, (_floatToStr_num_10000_49 + 3)
	lcall	___fssub
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b, #0x20
	mov	a, #0x41
	lcall	___fsmul
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fs2sint
	mov	r7, dpl
;	tempAndHumidity.c:55: int i = 0;
;	tempAndHumidity.c:56: if (negative) 
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,_floatToStr_negative_10000_50
	jz	00104$
;	tempAndHumidity.c:58: str[i++] = '-';
	mov	r5,#0x01
	mov	r6,#0x00
	mov	dptr,#_floatToStr_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r1
	mov	dph,r4
	mov	a,#0x2d
	movx	@dptr,a
00104$:
;	tempAndHumidity.c:60: int start = i;
	mov	_floatToStr_start_10002_54,r5
	mov	(_floatToStr_start_10002_54 + 1),r6
;	tempAndHumidity.c:61: if (integerPart == 0) 
	mov	a,_floatToStr_integerPart_10001_52
	orl	a,(_floatToStr_integerPart_10001_52 + 1)
	jnz	00120$
;	tempAndHumidity.c:63: str[i++] = '0';
	push	ar7
	mov	a,#0x01
	add	a, r5
	mov	_floatToStr_sloc0_1_0,a
	clr	a
	addc	a, r6
	mov	(_floatToStr_sloc0_1_0 + 1),a
	mov	dptr,#_floatToStr_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	add	a, r0
	mov	dpl,a
	mov	a,r6
	addc	a, r7
	mov	dph,a
	mov	a,#0x30
	movx	@dptr,a
	pop	ar7
	ljmp	00113$
;	tempAndHumidity.c:66: while (integerPart != 0) 
00120$:
	mov	dptr,#_floatToStr_PARM_2
	movx	a,@dptr
	mov	_floatToStr_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_floatToStr_sloc1_1_0 + 1),a
00105$:
	mov	a,_floatToStr_integerPart_10001_52
	orl	a,(_floatToStr_integerPart_10001_52 + 1)
	jz	00123$
;	tempAndHumidity.c:68: str[i++] = (integerPart % 10) + '0';
	mov	a,r5
	add	a, _floatToStr_sloc1_1_0
	mov	r0,a
	mov	a,r6
	addc	a, (_floatToStr_sloc1_1_0 + 1)
	mov	r4,a
	inc	r5
	cjne	r5,#0x00,00171$
	inc	r6
00171$:
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, _floatToStr_integerPart_10001_52
	mov	dph, (_floatToStr_integerPart_10001_52 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar0
	lcall	__modsint
	mov	r1, dpl
	pop	ar0
	pop	ar4
	mov	a,#0x30
	add	a, r1
	mov	dpl,r0
	mov	dph,r4
	movx	@dptr,a
;	tempAndHumidity.c:69: integerPart /= 10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, _floatToStr_integerPart_10001_52
	mov	dph, (_floatToStr_integerPart_10001_52 + 1)
	lcall	__divsint
	mov	_floatToStr_integerPart_10001_52,dpl
	mov	(_floatToStr_integerPart_10001_52 + 1),dph
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00105$
00123$:
	mov	_floatToStr_sloc0_1_0,r5
	mov	(_floatToStr_sloc0_1_0 + 1),r6
;	tempAndHumidity.c:71: int end = i - 1;
	dec	r5
	cjne	r5,#0xff,00172$
	dec	r6
00172$:
;	tempAndHumidity.c:72: while (start < end) 
	mov	r3,_floatToStr_sloc1_1_0
	mov	r4,(_floatToStr_sloc1_1_0 + 1)
	mov	r1,_floatToStr_start_10002_54
	mov	r2,(_floatToStr_start_10002_54 + 1)
00108$:
	clr	c
	mov	a,r1
	subb	a,r5
	mov	a,r2
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00113$
;	tempAndHumidity.c:74: char temp = str[start];
	push	ar7
	mov	a,r1
	add	a, r3
	mov	_floatToStr_sloc1_1_0,a
	mov	a,r2
	addc	a, r4
	mov	(_floatToStr_sloc1_1_0 + 1),a
	mov	dpl,_floatToStr_sloc1_1_0
	mov	dph,(_floatToStr_sloc1_1_0 + 1)
	movx	a,@dptr
	mov	_floatToStr_temp_30003_59,a
;	tempAndHumidity.c:75: str[start] = str[end];
	mov	a,r5
	add	a, r3
	mov	_floatToStr_sloc2_1_0,a
	mov	a,r6
	addc	a, r4
	mov	(_floatToStr_sloc2_1_0 + 1),a
	mov	dpl,_floatToStr_sloc2_1_0
	mov	dph,(_floatToStr_sloc2_1_0 + 1)
	movx	a,@dptr
	mov	dpl,_floatToStr_sloc1_1_0
	mov	dph,(_floatToStr_sloc1_1_0 + 1)
	movx	@dptr,a
;	tempAndHumidity.c:76: str[end] = temp;
	mov	dpl,_floatToStr_sloc2_1_0
	mov	dph,(_floatToStr_sloc2_1_0 + 1)
	mov	a,_floatToStr_temp_30003_59
	movx	@dptr,a
;	tempAndHumidity.c:77: start++;
	inc	r1
	cjne	r1,#0x00,00174$
	inc	r2
00174$:
;	tempAndHumidity.c:78: end--;
	dec	r5
	cjne	r5,#0xff,00175$
	dec	r6
00175$:
	pop	ar7
	sjmp	00108$
00113$:
;	tempAndHumidity.c:82: str[i++] = '.';
	mov	a,#0x01
	add	a, _floatToStr_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a, (_floatToStr_sloc0_1_0 + 1)
	mov	r6,a
	mov	dptr,#_floatToStr_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_floatToStr_sloc0_1_0
	add	a, r3
	mov	dpl,a
	mov	a,(_floatToStr_sloc0_1_0 + 1)
	addc	a, r4
	mov	dph,a
	mov	a,#0x2e
	movx	@dptr,a
;	tempAndHumidity.c:83: str[i++] = decimalPart + '0';
	mov	a,#0x01
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	a,r5
	add	a, r3
	mov	dpl,a
	mov	a,r6
	addc	a, r4
	mov	dph,a
	mov	a,#0x30
	add	a, r7
	movx	@dptr,a
;	tempAndHumidity.c:85: str[i] = '\0';
	mov	a,r1
	add	a, r3
	mov	dpl,a
	mov	a,r2
	addc	a, r4
	mov	dph,a
	clr	a
	movx	@dptr,a
;	tempAndHumidity.c:86: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'intToStr'
;------------------------------------------------------------
;str                       Allocated with name '_intToStr_PARM_2'
;num                       Allocated to registers r6 r7 
;i                         Allocated with name '_intToStr_i_10000_61'
;isNegative                Allocated to registers 
;start                     Allocated with name '_intToStr_start_10001_63'
;end                       Allocated to registers 
;temp                      Allocated with name '_intToStr_temp_10001_63'
;sloc0                     Allocated with name '_intToStr_sloc0_1_0'
;------------------------------------------------------------
;	tempAndHumidity.c:89: void intToStr(int num, char str[]) 
;	-----------------------------------------
;	 function intToStr
;	-----------------------------------------
_intToStr:
	mov	r6, dpl
	mov	r7, dph
;	tempAndHumidity.c:94: do 
	clr	a
	mov	_intToStr_i_10000_61,a
	mov	(_intToStr_i_10000_61 + 1),a
00101$:
;	tempAndHumidity.c:96: str[i++] = num % 10 + '0'; 
	mov	a,_intToStr_i_10000_61
	add	a, _intToStr_PARM_2
	mov	r1,a
	mov	a,(_intToStr_i_10000_61 + 1)
	addc	a, (_intToStr_PARM_2 + 1)
	mov	r2,a
	mov	r3,(_intToStr_PARM_2 + 2)
	inc	_intToStr_i_10000_61
	clr	a
	cjne	a,_intToStr_i_10000_61,00135$
	inc	(_intToStr_i_10000_61 + 1)
00135$:
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	lcall	__modsint
	mov	r0, dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a, r0
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrput
;	tempAndHumidity.c:97: num /= 10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
;	tempAndHumidity.c:98: }while (num != 0);
	mov	dpl, r6
	mov	dph, r7
	lcall	__divsint
	mov	r6, dpl
	mov	r7, dph
	mov	a,r6
	orl	a,r7
	jnz	00101$
;	tempAndHumidity.c:100: str[i] = '\0'; 
	mov	a,_intToStr_i_10000_61
	add	a, _intToStr_PARM_2
	mov	r5,a
	mov	a,(_intToStr_i_10000_61 + 1)
	addc	a, (_intToStr_PARM_2 + 1)
	mov	r6,a
	mov	r7,(_intToStr_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	tempAndHumidity.c:103: int end = i - 1;
	mov	a,_intToStr_i_10000_61
	add	a,#0xff
	mov	r6,a
	mov	a,(_intToStr_i_10000_61 + 1)
	addc	a,#0xff
	mov	r7,a
;	tempAndHumidity.c:105: while (start < end) {
	clr	a
	mov	_intToStr_start_10001_63,a
	mov	(_intToStr_start_10001_63 + 1),a
00104$:
	clr	c
	mov	a,_intToStr_start_10001_63
	subb	a,r6
	mov	a,(_intToStr_start_10001_63 + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
;	tempAndHumidity.c:106: temp = str[start];
	mov	a,_intToStr_start_10001_63
	add	a, _intToStr_PARM_2
	mov	r1,a
	mov	a,(_intToStr_start_10001_63 + 1)
	addc	a, (_intToStr_PARM_2 + 1)
	mov	r2,a
	mov	r3,(_intToStr_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_intToStr_temp_10001_63,a
;	tempAndHumidity.c:107: str[start] = str[end];
	mov	a,r6
	add	a, _intToStr_PARM_2
	mov	_intToStr_sloc0_1_0,a
	mov	a,r7
	addc	a, (_intToStr_PARM_2 + 1)
	mov	(_intToStr_sloc0_1_0 + 1),a
	mov	(_intToStr_sloc0_1_0 + 2),(_intToStr_PARM_2 + 2)
	mov	dpl,_intToStr_sloc0_1_0
	mov	dph,(_intToStr_sloc0_1_0 + 1)
	mov	b,(_intToStr_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrput
;	tempAndHumidity.c:108: str[end] = temp;
	mov	dpl,_intToStr_sloc0_1_0
	mov	dph,(_intToStr_sloc0_1_0 + 1)
	mov	b,(_intToStr_sloc0_1_0 + 2)
	mov	a,_intToStr_temp_10001_63
	lcall	__gptrput
;	tempAndHumidity.c:109: start++;
	inc	_intToStr_start_10001_63
	clr	a
	cjne	a,_intToStr_start_10001_63,00138$
	inc	(_intToStr_start_10001_63 + 1)
00138$:
;	tempAndHumidity.c:110: end--;
	dec	r6
	cjne	r6,#0xff,00139$
	dec	r7
00139$:
	sjmp	00104$
00107$:
;	tempAndHumidity.c:112: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;us                        Allocated to registers 
;------------------------------------------------------------
;	tempAndHumidity.c:114: void delay_us(unsigned int us) {
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	mov	r6, dpl
	mov	r7, dph
;	tempAndHumidity.c:115: while (us--);
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00113$
	dec	r7
00113$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	tempAndHumidity.c:116: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	tempAndHumidity.c:118: void delay_ms(unsigned int ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6, dpl
	mov	r7, dph
;	tempAndHumidity.c:120: for (i = 0; i < ms; i++) {
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
;	tempAndHumidity.c:121: delay_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_us
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	tempAndHumidity.c:120: for (i = 0; i < ms; i++) {
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	tempAndHumidity.c:123: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'INT0_ISR'
;------------------------------------------------------------
;	tempAndHumidity.c:125: void INT0_ISR(void) __interrupt (0)
;	-----------------------------------------
;	 function INT0_ISR
;	-----------------------------------------
_INT0_ISR:
	push	acc
;	tempAndHumidity.c:127: if(comfimed==0)
	mov	a,_comfimed
	orl	a,(_comfimed + 1)
;	tempAndHumidity.c:129: justPressed = true;
;	tempAndHumidity.c:130: comfimed = 200;
	jnz	00103$
	mov	_justPressed,#0x01
	mov	_comfimed,#0xc8
	mov	(_comfimed + 1),a
00103$:
;	tempAndHumidity.c:132: }
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'display_number'
;------------------------------------------------------------
;digit                     Allocated with name '_display_number_PARM_2'
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	tempAndHumidity.c:134: void display_number(unsigned char num, unsigned char digit) 
;	-----------------------------------------
;	 function display_number
;	-----------------------------------------
_display_number:
	mov	r7, dpl
;	tempAndHumidity.c:136: DIG1 = 1;
;	assignBit
	setb	_P20
;	tempAndHumidity.c:137: DIG2 = 1;
;	assignBit
	setb	_P21
;	tempAndHumidity.c:138: DIG3 = 1;
;	assignBit
	setb	_P22
;	tempAndHumidity.c:139: DIG4 = 1;
;	assignBit
	setb	_P23
;	tempAndHumidity.c:141: if(digit == 1) DIG1 = 0;
	mov	a,#0x01
	cjne	a,_display_number_PARM_2,00102$
;	assignBit
	clr	_P20
00102$:
;	tempAndHumidity.c:142: if(digit == 2) DIG2 = 0;
	mov	a,#0x02
	cjne	a,_display_number_PARM_2,00104$
;	assignBit
	clr	_P21
00104$:
;	tempAndHumidity.c:143: if(digit == 3) DIG3 = 0;
	mov	a,#0x03
	cjne	a,_display_number_PARM_2,00148$
	mov	a,#0x01
	sjmp	00149$
00148$:
	clr	a
00149$:
	mov	r6,a
	jz	00106$
;	assignBit
	clr	_P22
00106$:
;	tempAndHumidity.c:144: if(digit == 4) DIG4 = 0;
	mov	a,#0x04
	cjne	a,_display_number_PARM_2,00108$
;	assignBit
	clr	_P23
00108$:
;	tempAndHumidity.c:146: SEG_A = (seg_code[num] ) & 0x01;
	mov	a,r7
	add	a, #_seg_code
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P10,c
;	tempAndHumidity.c:147: SEG_B = (seg_code[num] >> 1) & 0x01;
	mov	a,r7
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P11,c
;	tempAndHumidity.c:148: SEG_C = (seg_code[num] >> 2) & 0x01;
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P12,c
;	tempAndHumidity.c:149: SEG_D = (seg_code[num] >> 3) & 0x01;
	mov	a,r7
	mov	c,acc.3
	clr	a
	rlc	a
;	assignBit
	add	a,#0xff
	mov	_P13,c
;	tempAndHumidity.c:150: SEG_E = (seg_code[num] >> 4) & 0x01;
	mov	a,r7
	swap	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P14,c
;	tempAndHumidity.c:151: SEG_F = (seg_code[num] >> 5) & 0x01;
	mov	a,r7
	mov	c,acc.5
	clr	a
	rlc	a
;	assignBit
	add	a,#0xff
	mov	_P15,c
;	tempAndHumidity.c:152: SEG_G = (seg_code[num] >> 6) & 0x01;
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P16,c
;	tempAndHumidity.c:153: if(digit == 3)
	mov	a,r6
	jz	00110$
;	tempAndHumidity.c:155: SEG_DP = 1;
;	assignBit
	setb	_P17
	sjmp	00111$
00110$:
;	tempAndHumidity.c:159: SEG_DP = 0;
;	assignBit
	clr	_P17
00111$:
;	tempAndHumidity.c:162: delay_us(1000);
	mov	dptr,#0x03e8
	lcall	_delay_us
;	tempAndHumidity.c:164: DIG1 = 1;
;	assignBit
	setb	_P20
;	tempAndHumidity.c:165: DIG2 = 1;
;	assignBit
	setb	_P21
;	tempAndHumidity.c:166: DIG3 = 1;
;	assignBit
	setb	_P22
;	tempAndHumidity.c:167: DIG4 = 1;
;	assignBit
	setb	_P23
;	tempAndHumidity.c:168: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DHT22_init'
;------------------------------------------------------------
;	tempAndHumidity.c:170: void DHT22_init(void) {
;	-----------------------------------------
;	 function DHT22_init
;	-----------------------------------------
_DHT22_init:
;	tempAndHumidity.c:171: DHT22_PIN = 1;
;	assignBit
	setb	_P37
;	tempAndHumidity.c:172: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DHT22_read'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;j                         Allocated to registers r7 
;------------------------------------------------------------
;	tempAndHumidity.c:174: unsigned char DHT22_read(void) {
;	-----------------------------------------
;	 function DHT22_read
;	-----------------------------------------
_DHT22_read:
;	tempAndHumidity.c:177: DHT22_PIN = 0; 
;	assignBit
	clr	_P37
;	tempAndHumidity.c:178: delay_ms(18);  
	mov	dptr,#0x0012
	lcall	_delay_ms
;	tempAndHumidity.c:179: DHT22_PIN = 1; 
;	assignBit
	setb	_P37
;	tempAndHumidity.c:180: delay_us(30); 
	mov	dptr,#0x001e
	lcall	_delay_us
;	tempAndHumidity.c:182: while (DHT22_PIN); 
00101$:
	jb	_P37,00101$
;	tempAndHumidity.c:183: while (!DHT22_PIN);
00104$:
	jnb	_P37,00104$
;	tempAndHumidity.c:184: while (DHT22_PIN);
00107$:
	jb	_P37,00107$
;	tempAndHumidity.c:186: for (j = 0; j < 5; j++)
	mov	r7,#0x00
00124$:
;	tempAndHumidity.c:188: data[j] = 0;
	mov	a,r7
	add	a, #_data
	mov	r0,a
	mov	@r0,#0x00
;	tempAndHumidity.c:191: while (!DHT22_PIN);
	mov	r6,#0x00
00110$:
	jnb	_P37,00110$
;	tempAndHumidity.c:192: delay_us(40);
	mov	dptr,#0x0028
	push	ar7
	push	ar6
	lcall	_delay_us
	pop	ar6
	pop	ar7
;	tempAndHumidity.c:193: if (DHT22_PIN) {
	jnb	_P37,00115$
;	tempAndHumidity.c:194: data[j] |= (1 << (7 - i));
	mov	a,r7
	add	a, #_data
	mov	r1,a
	mov	ar5,@r1
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00214$
00213$:
	add	a,acc
00214$:
	djnz	b,00213$
	orl	a,r5
	mov	@r1,a
;	tempAndHumidity.c:196: while (DHT22_PIN);
00115$:
	jb	_P37,00115$
;	tempAndHumidity.c:189: for (i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00216$
00216$:
	jc	00110$
;	tempAndHumidity.c:186: for (j = 0; j < 5; j++)
	inc	r7
	cjne	r7,#0x05,00218$
00218$:
	jc	00124$
;	tempAndHumidity.c:200: if ((data[0] + data[1] + data[2] + data[3]) != data[4]) 
	mov	r6,_data
	mov	r7,#0x00
	mov	r4,(_data + 0x0001)
	mov	r5,#0x00
	mov	a,r4
	add	a, r6
	mov	r6,a
	mov	a,r5
	addc	a, r7
	mov	r7,a
	mov	a,(_data + 0x0002)
	add	a, r6
	mov	r6,a
	mov	a,r5
	addc	a, r7
	mov	r7,a
	mov	a,(_data + 0x0003)
	add	a, r6
	mov	r6,a
	mov	a,r5
	addc	a, r7
	mov	r7,a
	mov	r4,(_data + 0x0004)
	mov	a,r6
	cjne	a,ar4,00220$
	mov	a,r7
	cjne	a,ar5,00220$
	sjmp	00121$
00220$:
;	tempAndHumidity.c:202: return 1;
	mov	dpl, #0x01
	ret
00121$:
;	tempAndHumidity.c:204: return 0;
	mov	dpl, #0x00
;	tempAndHumidity.c:205: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_SendByte'
;------------------------------------------------------------
;dat                       Allocated to registers 
;------------------------------------------------------------
;	tempAndHumidity.c:207: void UART_SendByte(char dat) {
;	-----------------------------------------
;	 function UART_SendByte
;	-----------------------------------------
_UART_SendByte:
	mov	_SBUF,dpl
;	tempAndHumidity.c:209: while (!TI);
00101$:
;	tempAndHumidity.c:210: TI=0;     
;	assignBit
	jbc	_TI,00118$
	sjmp	00101$
00118$:
;	tempAndHumidity.c:211: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_SendString'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	tempAndHumidity.c:213: void UART_SendString(char* str) {
;	-----------------------------------------
;	 function UART_SendString
;	-----------------------------------------
_UART_SendString:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	tempAndHumidity.c:214: while (*str) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	tempAndHumidity.c:215: UART_SendByte(*str++); 
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00120$
	inc	r6
00120$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_UART_SendByte
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	tempAndHumidity.c:218: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart1_Init'
;------------------------------------------------------------
;	tempAndHumidity.c:220: void Uart1_Init(void)	//115200bps@12.000MHz
;	-----------------------------------------
;	 function Uart1_Init
;	-----------------------------------------
_Uart1_Init:
;	tempAndHumidity.c:222: SCON = 0x50;		
	mov	_SCON,#0x50
;	tempAndHumidity.c:223: AUXR |= 0x01;		
	orl	_AUXR,#0x01
;	tempAndHumidity.c:224: AUXR |= 0x04;		
	orl	_AUXR,#0x04
;	tempAndHumidity.c:225: T2L = 0xE6;			
	mov	_T2L,#0xe6
;	tempAndHumidity.c:226: T2H = 0xFF;			
	mov	_T2H,#0xff
;	tempAndHumidity.c:227: AUXR |= 0x10;		
	orl	_AUXR,#0x10
;	tempAndHumidity.c:230: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reopenUART'
;------------------------------------------------------------
;	tempAndHumidity.c:232: void reopenUART(void)
;	-----------------------------------------
;	 function reopenUART
;	-----------------------------------------
_reopenUART:
;	tempAndHumidity.c:234: SCON = 0x00;
	mov	_SCON,#0x00
;	tempAndHumidity.c:235: Uart1_Init();
;	tempAndHumidity.c:236: return;
;	tempAndHumidity.c:237: }
	ljmp	_Uart1_Init
;------------------------------------------------------------
;Allocation info for local variables in function 'sendDataToServer'
;------------------------------------------------------------
;humidity                  Allocated with name '_sendDataToServer_PARM_2'
;temp                      Allocated to registers r4 r5 r6 r7 
;bodyLength                Allocated to registers r6 r7 
;body                      Allocated with name '_sendDataToServer_body_10001_99'
;tempStr                   Allocated with name '_sendDataToServer_tempStr_10002_100'
;humiStr                   Allocated with name '_sendDataToServer_humiStr_10003_101'
;bodyLengthStr             Allocated with name '_sendDataToServer_bodyLengthStr_10005_103'
;------------------------------------------------------------
;	tempAndHumidity.c:239: void sendDataToServer(float temp, float humidity)
;	-----------------------------------------
;	 function sendDataToServer
;	-----------------------------------------
_sendDataToServer:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	tempAndHumidity.c:241: ESP01S_RST = 0;
;	assignBit
	clr	_P25
;	tempAndHumidity.c:242: delay_ms(200);
	mov	dptr,#0x00c8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_ms
;	tempAndHumidity.c:243: ESP01S_RST = 1;
;	assignBit
	setb	_P25
;	tempAndHumidity.c:244: delay_ms(500);
	mov	dptr,#0x01f4
	lcall	_delay_ms
;	tempAndHumidity.c:246: Uart1_Init();
	lcall	_Uart1_Init
;	tempAndHumidity.c:248: UART_SendString("AT+CWMODE=1\r\n");   
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_UART_SendString
;	tempAndHumidity.c:250: reopenUART();
	lcall	_reopenUART
;	tempAndHumidity.c:251: delay_ms(400);
	mov	dptr,#0x0190
	lcall	_delay_ms
;	tempAndHumidity.c:252: UART_SendString("AT+CWJAP=\"HUAWEI-10HOL3\",\"88588681\"\r\n");  
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_UART_SendString
;	tempAndHumidity.c:255: reopenUART();
	lcall	_reopenUART
;	tempAndHumidity.c:256: delay_ms(6000);
	mov	dptr,#0x1770
	lcall	_delay_ms
;	tempAndHumidity.c:257: UART_SendString("AT+CIPSTART=\"TCP\",\"www.homemoni.xyz\",80\r\n"); //Change the server address at any time
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_UART_SendString
;	tempAndHumidity.c:259: reopenUART();
	lcall	_reopenUART
;	tempAndHumidity.c:260: delay_ms(2000);
	mov	dptr,#0x07d0
	lcall	_delay_ms
;	tempAndHumidity.c:265: memset(body,0,200);
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0xc8
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#_sendDataToServer_body_10001_99
	mov	b, #0x00
	lcall	_memset
;	tempAndHumidity.c:266: strcat(body,"POST /api/tempAndHumi HTTP/1.1\r\nHost: www.homemoni.xyz\r\nContent-Type: application/json\r\nContent-Length: 80\r\n\r\n{\"temperature\":");
	mov	_strcat_PARM_2,#___str_3
	mov	(_strcat_PARM_2 + 1),#(___str_3 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x80
	mov	dptr,#_sendDataToServer_body_10001_99
	mov	b, #0x00
	lcall	_strcat
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	tempAndHumidity.c:269: floatToStr(temp,tempStr);
	mov	dptr,#_floatToStr_PARM_2
	mov	a,#_sendDataToServer_tempStr_10002_100
	movx	@dptr,a
	mov	a,#(_sendDataToServer_tempStr_10002_100 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_floatToStr
;	tempAndHumidity.c:270: strcat(body,tempStr);
	mov	_strcat_PARM_2,#_sendDataToServer_tempStr_10002_100
	mov	(_strcat_PARM_2 + 1),#(_sendDataToServer_tempStr_10002_100 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x00
	mov	dptr,#_sendDataToServer_body_10001_99
	mov	b, #0x00
	lcall	_strcat
;	tempAndHumidity.c:272: strcat(body,",\"humidity\":");
	mov	_strcat_PARM_2,#___str_4
	mov	(_strcat_PARM_2 + 1),#(___str_4 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x80
	mov	dptr,#_sendDataToServer_body_10001_99
	mov	b, #0x00
	lcall	_strcat
;	tempAndHumidity.c:275: floatToStr(humidity,humiStr);
	mov	dptr,#_floatToStr_PARM_2
	mov	a,#_sendDataToServer_humiStr_10003_101
	movx	@dptr,a
	mov	a,#(_sendDataToServer_humiStr_10003_101 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl, _sendDataToServer_PARM_2
	mov	dph, (_sendDataToServer_PARM_2 + 1)
	mov	b, (_sendDataToServer_PARM_2 + 2)
	mov	a, (_sendDataToServer_PARM_2 + 3)
	lcall	_floatToStr
;	tempAndHumidity.c:276: strcat(body,humiStr);
	mov	_strcat_PARM_2,#_sendDataToServer_humiStr_10003_101
	mov	(_strcat_PARM_2 + 1),#(_sendDataToServer_humiStr_10003_101 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x00
	mov	dptr,#_sendDataToServer_body_10001_99
	mov	b, #0x00
	lcall	_strcat
;	tempAndHumidity.c:278: strcat(body,",\"siteName\":\"Living Room\"}\r\n");
	mov	_strcat_PARM_2,#___str_5
	mov	(_strcat_PARM_2 + 1),#(___str_5 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x80
	mov	dptr,#_sendDataToServer_body_10001_99
	mov	b, #0x00
	lcall	_strcat
;	tempAndHumidity.c:280: unsigned int bodyLength = strlen(body);
	mov	dptr,#_sendDataToServer_body_10001_99
	mov	b, #0x00
	lcall	_strlen
	mov	r6, dpl
	mov	r7, dph
;	tempAndHumidity.c:282: reopenUART();
	push	ar7
	push	ar6
	lcall	_reopenUART
;	tempAndHumidity.c:283: UART_SendString("AT+CIPSEND=");
	mov	dptr,#___str_6
	mov	b, #0x80
	lcall	_UART_SendString
	pop	ar6
	pop	ar7
;	tempAndHumidity.c:285: intToStr(bodyLength,bodyLengthStr);
	mov	_intToStr_PARM_2,#_sendDataToServer_bodyLengthStr_10005_103
	mov	(_intToStr_PARM_2 + 1),#(_sendDataToServer_bodyLengthStr_10005_103 >> 8)
	mov	(_intToStr_PARM_2 + 2),#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	_intToStr
;	tempAndHumidity.c:286: UART_SendString(bodyLengthStr);
	mov	dptr,#_sendDataToServer_bodyLengthStr_10005_103
	mov	b, #0x00
	lcall	_UART_SendString
;	tempAndHumidity.c:287: UART_SendString("\r\n");
	mov	dptr,#___str_7
	mov	b, #0x80
	lcall	_UART_SendString
;	tempAndHumidity.c:288: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	tempAndHumidity.c:290: reopenUART();
	lcall	_reopenUART
;	tempAndHumidity.c:291: UART_SendString(body);
	mov	dptr,#_sendDataToServer_body_10001_99
	mov	b, #0x00
	lcall	_UART_SendString
;	tempAndHumidity.c:293: delay_ms(500);
	mov	dptr,#0x01f4
	lcall	_delay_ms
;	tempAndHumidity.c:296: reopenUART();
	lcall	_reopenUART
;	tempAndHumidity.c:297: UART_SendString("AT+GSLP=720000\r\n");
	mov	dptr,#___str_8
	mov	b, #0x80
	lcall	_UART_SendString
;	tempAndHumidity.c:298: reopenUART();
;	tempAndHumidity.c:300: }
	ljmp	_reopenUART
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;result                    Allocated to registers 
;raw_temp                  Allocated to registers r6 r7 
;raw_humidity              Allocated to registers r4 r5 
;tempSecondDigit           Allocated with name '_main_tempSecondDigit_30002_109'
;tempFirstDigit            Allocated with name '_main_tempFirstDigit_30002_109'
;tempPointFirstDigit       Allocated with name '_main_tempPointFirstDigit_30002_109'
;humidityThirdDigit        Allocated with name '_main_humidityThirdDigit_30002_109'
;humiditySecondDigit       Allocated with name '_main_humiditySecondDigit_30002_109'
;humidityFirstDigit        Allocated with name '_main_humidityFirstDigit_30002_109'
;humidityPointFirstDigit   Allocated with name '_main_humidityPointFirstDigit_30002_109'
;counter                   Allocated to registers r6 r7 
;true_temp                 Allocated with name '_main_true_temp_30002_109'
;true_humidity             Allocated to registers 
;------------------------------------------------------------
;	tempAndHumidity.c:304: void main(void) 
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	tempAndHumidity.c:306: ESP01S_RST = 1;
;	assignBit
	setb	_P25
;	tempAndHumidity.c:307: delay_ms(500);
	mov	dptr,#0x01f4
	lcall	_delay_ms
;	tempAndHumidity.c:309: Uart1_Init();
	lcall	_Uart1_Init
;	tempAndHumidity.c:310: UART_SendString("AT+GSLP=720000\r\n");
	mov	dptr,#___str_8
	mov	b, #0x80
	lcall	_UART_SendString
;	tempAndHumidity.c:311: reopenUART();
	lcall	_reopenUART
;	tempAndHumidity.c:313: BUTTON_PIN = 0;
;	assignBit
	clr	_P32
;	tempAndHumidity.c:315: IT0 = 0;   
;	assignBit
	clr	_IT0
;	tempAndHumidity.c:316: EX0 = 1;  
;	assignBit
	setb	_EX0
;	tempAndHumidity.c:317: EA = 1;    
;	assignBit
	setb	_EA
;	tempAndHumidity.c:321: displayHumidity = false;
	mov	_displayHumidity,#0x00
;	tempAndHumidity.c:322: justPressed = false;
	mov	_justPressed,#0x00
;	tempAndHumidity.c:324: tempNegativeSign = false;
	mov	_tempNegativeSign,#0x00
;	tempAndHumidity.c:326: HUMIDITY_LED = 0;
;	assignBit
	clr	_P27
;	tempAndHumidity.c:328: while (1) {
00122$:
;	tempAndHumidity.c:330: DHT22_init();
	lcall	_DHT22_init
;	tempAndHumidity.c:331: result = DHT22_read();
	lcall	_DHT22_read
;	tempAndHumidity.c:334: unsigned int raw_temp = (data[2] & 0x7F) << 8 | data[3];
	mov	r6,(_data + 0x0002)
	anl	ar6,#0x7f
	mov	ar7,r6
	mov	r6,#0x00
	mov	r4,(_data + 0x0003)
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
;	tempAndHumidity.c:335: unsigned int raw_humidity = (data[0] & 0x7F) << 8 | data[1];
	mov	r4,_data
	anl	ar4,#0x7f
	mov	ar5,r4
	mov	r4,#0x00
	mov	r2,(_data + 0x0001)
	mov	r3,#0x00
	mov	a,r2
	orl	ar4,a
	mov	a,r3
	orl	ar5,a
;	tempAndHumidity.c:337: tempNegativeSign = data[2] & 0x80;
	mov	a,(_data + 0x0002)
	rl	a
	anl	a,#0x01
	mov	_tempNegativeSign,a
;	tempAndHumidity.c:339: unsigned char tempSecondDigit = raw_temp / 100;
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__divuint
	mov	r2, dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_main_tempSecondDigit_30002_109,r2
;	tempAndHumidity.c:340: unsigned char tempFirstDigit = (raw_temp / 10) % 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2, dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_main_tempFirstDigit_30002_109,r2
;	tempAndHumidity.c:341: unsigned char tempPointFirstDigit = raw_temp % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__moduint
	mov	r2, dpl
	pop	ar4
	pop	ar5
	mov	_main_tempPointFirstDigit_30002_109,r2
;	tempAndHumidity.c:343: unsigned char humidityThirdDigit = raw_humidity / 1000;
	mov	__divuint_PARM_2,#0xe8
	mov	(__divuint_PARM_2 + 1),#0x03
	mov	dpl, r4
	mov	dph, r5
	push	ar5
	push	ar4
	lcall	__divuint
	mov	r2, dpl
	pop	ar4
	pop	ar5
	mov	_main_humidityThirdDigit_30002_109,r2
;	tempAndHumidity.c:344: unsigned char humiditySecondDigit = raw_humidity / 100 % 10;
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl, r4
	mov	dph, r5
	push	ar5
	push	ar4
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2, dpl
	pop	ar4
	pop	ar5
	mov	_main_humiditySecondDigit_30002_109,r2
;	tempAndHumidity.c:345: unsigned char humidityFirstDigit = (raw_humidity / 10) % 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl, r4
	mov	dph, r5
	push	ar5
	push	ar4
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2, dpl
	pop	ar4
	pop	ar5
	mov	_main_humidityFirstDigit_30002_109,r2
;	tempAndHumidity.c:346: unsigned char humidityPointFirstDigit = raw_humidity % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, r4
	mov	dph, r5
	push	ar5
	push	ar4
	lcall	__moduint
	mov	r2, dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_main_humidityPointFirstDigit_30002_109,r2
;	tempAndHumidity.c:351: float true_temp = raw_temp / 10.0;
	mov	dpl, r6
	mov	dph, r7
	push	ar5
	push	ar4
	lcall	___uint2fs
	mov	r2, dpl
	mov	r3, dph
	mov	r6, b
	mov	r7, a
	clr	a
	push	acc
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0x41
	push	acc
;	tempAndHumidity.c:352: float true_humidity = raw_humidity / 10.0;
	mov	dpl, r2
	mov	dph, r3
	mov	b, r6
	mov	a, r7
	lcall	___fsdiv
	mov	_main_true_temp_30002_109,dpl
	mov	(_main_true_temp_30002_109 + 1),dph
	mov	(_main_true_temp_30002_109 + 2),b
	mov	(_main_true_temp_30002_109 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	mov	dpl, r4
	mov	dph, r5
	lcall	___uint2fs
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	clr	a
	push	acc
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0x41
	push	acc
;	tempAndHumidity.c:353: sendDataToServer(true_temp,true_humidity);
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fsdiv
	mov	_sendDataToServer_PARM_2,dpl
	mov	(_sendDataToServer_PARM_2 + 1),dph
	mov	(_sendDataToServer_PARM_2 + 2),b
	mov	(_sendDataToServer_PARM_2 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl, _main_true_temp_30002_109
	mov	dph, (_main_true_temp_30002_109 + 1)
	mov	b, (_main_true_temp_30002_109 + 2)
	mov	a, (_main_true_temp_30002_109 + 3)
	lcall	_sendDataToServer
;	tempAndHumidity.c:356: while(counter--)
	mov	r6,#0xb8
	mov	r7,#0x0b
00114$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00187$
	dec	r7
00187$:
	mov	a,r4
	orl	a,r5
	jnz	00188$
	ljmp	00116$
00188$:
;	tempAndHumidity.c:358: if(comfimed!=0)
	mov	a,_comfimed
	orl	a,(_comfimed + 1)
	jz	00102$
;	tempAndHumidity.c:360: comfimed--;
	dec	_comfimed
	mov	a,#0xff
	cjne	a,_comfimed,00190$
	dec	(_comfimed + 1)
00190$:
00102$:
;	tempAndHumidity.c:363: if(justPressed)
	mov	a,_justPressed
	jz	00191$
	ljmp	00116$
00191$:
;	tempAndHumidity.c:368: if(displayHumidity)
	mov	a,_displayHumidity
	jz	00112$
;	tempAndHumidity.c:370: HUMIDITY_LED = 1;
;	assignBit
	setb	_P27
;	tempAndHumidity.c:371: if(humidityThirdDigit!=0)
	mov	a,_main_humidityThirdDigit_30002_109
	jz	00106$
;	tempAndHumidity.c:373: display_number(humidityThirdDigit,1);
	mov	_display_number_PARM_2,#0x01
	mov	dpl, _main_humidityThirdDigit_30002_109
	push	ar7
	push	ar6
	lcall	_display_number
	pop	ar6
	pop	ar7
00106$:
;	tempAndHumidity.c:375: display_number(humiditySecondDigit,2);
	mov	_display_number_PARM_2,#0x02
	mov	dpl, _main_humiditySecondDigit_30002_109
	push	ar7
	push	ar6
	lcall	_display_number
	pop	ar6
	pop	ar7
;	tempAndHumidity.c:376: display_number(humidityFirstDigit,3);
	mov	_display_number_PARM_2,#0x03
	mov	dpl, _main_humidityFirstDigit_30002_109
	push	ar7
	push	ar6
	lcall	_display_number
	pop	ar6
	pop	ar7
;	tempAndHumidity.c:377: display_number(humidityPointFirstDigit,4);
	mov	_display_number_PARM_2,#0x04
	mov	dpl, _main_humidityPointFirstDigit_30002_109
	push	ar7
	push	ar6
	lcall	_display_number
	pop	ar6
	pop	ar7
	sjmp	00114$
00112$:
;	tempAndHumidity.c:381: HUMIDITY_LED = 0;
;	assignBit
	clr	_P27
;	tempAndHumidity.c:382: if(tempNegativeSign)
	mov	a,_tempNegativeSign
	jz	00108$
;	tempAndHumidity.c:384: display_number(10,1);
	mov	_display_number_PARM_2,#0x01
	mov	dpl, #0x0a
	push	ar7
	push	ar6
	lcall	_display_number
	pop	ar6
	pop	ar7
00108$:
;	tempAndHumidity.c:386: if(tempSecondDigit!=0)
	mov	a,_main_tempSecondDigit_30002_109
	jz	00110$
;	tempAndHumidity.c:388: display_number(tempSecondDigit,2);
	mov	_display_number_PARM_2,#0x02
	mov	dpl, _main_tempSecondDigit_30002_109
	push	ar7
	push	ar6
	lcall	_display_number
	pop	ar6
	pop	ar7
00110$:
;	tempAndHumidity.c:391: display_number(tempFirstDigit,3);
	mov	_display_number_PARM_2,#0x03
	mov	dpl, _main_tempFirstDigit_30002_109
	push	ar7
	push	ar6
	lcall	_display_number
	pop	ar6
	pop	ar7
;	tempAndHumidity.c:392: display_number(tempPointFirstDigit,4);
	mov	_display_number_PARM_2,#0x04
	mov	dpl, _main_tempPointFirstDigit_30002_109
	push	ar7
	push	ar6
	lcall	_display_number
	pop	ar6
	pop	ar7
	ljmp	00114$
00116$:
;	tempAndHumidity.c:396: if(justPressed)
	mov	a,_justPressed
	jz	00118$
;	tempAndHumidity.c:398: delay_ms(150);
	mov	dptr,#0x0096
	lcall	_delay_ms
;	tempAndHumidity.c:399: displayHumidity = !displayHumidity;
	mov	a,_displayHumidity
	cjne	a,#0x01,00197$
00197$:
	clr	a
	rlc	a
	mov	_displayHumidity,a
;	tempAndHumidity.c:400: justPressed = false;
	mov	_justPressed,#0x00
00118$:
;	tempAndHumidity.c:402: delay_ms(1);
	mov	dptr,#0x0001
	lcall	_delay_ms
;	tempAndHumidity.c:405: }
	ljmp	00122$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "AT+CWMODE=1"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "AT+CWJAP="
	.db 0x22
	.ascii "HUAWEI-10HOL3"
	.db 0x22
	.ascii ","
	.db 0x22
	.ascii "88588681"
	.db 0x22
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "AT+CIPSTART="
	.db 0x22
	.ascii "TCP"
	.db 0x22
	.ascii ","
	.db 0x22
	.ascii "www.homemoni.xyz"
	.db 0x22
	.ascii ",80"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "POST /api/tempAndHumi HTTP/1.1"
	.db 0x0d
	.db 0x0a
	.ascii "Host: www.homemoni.xyz"
	.db 0x0d
	.db 0x0a
	.ascii "Content-Type: application/json"
	.db 0x0d
	.db 0x0a
	.ascii "Content-Length: 80"
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.ascii "{"
	.db 0x22
	.ascii "temperature"
	.db 0x22
	.ascii ":"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii ","
	.db 0x22
	.ascii "humidity"
	.db 0x22
	.ascii ":"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii ","
	.db 0x22
	.ascii "siteName"
	.db 0x22
	.ascii ":"
	.db 0x22
	.ascii "Living Room"
	.db 0x22
	.ascii "}"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "AT+CIPSEND="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "AT+GSLP=720000"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
