;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Mac OS X x86_64)
;--------------------------------------------------------
	.module dirt
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _sendADCDataToUART
	.globl _ADC_Read
	.globl _sendDataToServer
	.globl _reopenUART
	.globl _Uart1_Init
	.globl _UART_SendString
	.globl _UART_SendByte
	.globl _intToStr
	.globl _floatToStr
	.globl _ADC_Init
	.globl _delay_ms
	.globl _delay_us
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
	.globl _intToStr_PARM_2
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
_floatToStr_num_10000_57:
	.ds 4
_floatToStr_negative_10000_58:
	.ds 1
_floatToStr_integerPart_10001_60:
	.ds 2
_floatToStr_start_10002_62:
	.ds 2
_floatToStr_temp_30003_67:
	.ds 1
_floatToStr_sloc0_1_0:
	.ds 2
_floatToStr_sloc1_1_0:
	.ds 2
_floatToStr_sloc2_1_0:
	.ds 2
_intToStr_PARM_2:
	.ds 3
_intToStr_i_10000_69:
	.ds 2
_intToStr_start_10001_71:
	.ds 2
_intToStr_temp_10001_71:
	.ds 1
_intToStr_sloc0_1_0:
	.ds 3
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
_sendDataToServer_body_10001_84:
	.ds 200
_sendDataToServer_mositureStr_10002_85:
	.ds 6
_sendDataToServer_bodyLengthStr_10004_87:
	.ds 4
_sendADCDataToUART_adcStr_10000_91:
	.ds 10
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
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;us                        Allocated to registers 
;------------------------------------------------------------
;	dirt.c:12: void delay_us(unsigned int us) {
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6, dpl
	mov	r7, dph
;	dirt.c:13: while (us--);
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
;	dirt.c:14: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	dirt.c:16: void delay_ms(unsigned int ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6, dpl
	mov	r7, dph
;	dirt.c:18: for (i = 0; i < ms; i++) {
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
;	dirt.c:19: delay_us(1000);
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
;	dirt.c:18: for (i = 0; i < ms; i++) {
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	dirt.c:21: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
;	dirt.c:23: void ADC_Init(void) {
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
;	dirt.c:25: P1ASF = 0x01; //Using P10
	mov	_P1ASF,#0x01
;	dirt.c:26: P10 = 0;
;	assignBit
	clr	_P10
;	dirt.c:27: ADC_CONTR = 0x80; 
	mov	_ADC_CONTR,#0x80
;	dirt.c:28: AUXR1 |= 0x04;
	orl	_AUXR1,#0x04
;	dirt.c:29: delay_ms(100);
	mov	dptr,#0x0064
;	dirt.c:30: }
	ljmp	_delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'floatToStr'
;------------------------------------------------------------
;num                       Allocated with name '_floatToStr_num_10000_57'
;negative                  Allocated with name '_floatToStr_negative_10000_58'
;integerPart               Allocated with name '_floatToStr_integerPart_10001_60'
;decimalPart               Allocated to registers 
;i                         Allocated to registers r1 r2 
;start                     Allocated with name '_floatToStr_start_10002_62'
;end                       Allocated to registers 
;temp                      Allocated with name '_floatToStr_temp_30003_67'
;sloc0                     Allocated with name '_floatToStr_sloc0_1_0'
;sloc1                     Allocated with name '_floatToStr_sloc1_1_0'
;sloc2                     Allocated with name '_floatToStr_sloc2_1_0'
;str                       Allocated with name '_floatToStr_PARM_2'
;------------------------------------------------------------
;	dirt.c:33: void floatToStr(float num,__xdata unsigned char str[]) 
;	-----------------------------------------
;	 function floatToStr
;	-----------------------------------------
_floatToStr:
	mov	_floatToStr_num_10000_57,dpl
	mov	(_floatToStr_num_10000_57 + 1),dph
	mov	(_floatToStr_num_10000_57 + 2),b
	mov	(_floatToStr_num_10000_57 + 3),a
;	dirt.c:35: bool negative = 0;
;	dirt.c:36: if (num < 0) 
	clr	a
	mov	_floatToStr_negative_10000_58,a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl, _floatToStr_num_10000_57
	mov	dph, (_floatToStr_num_10000_57 + 1)
	mov	b, (_floatToStr_num_10000_57 + 2)
	mov	a, (_floatToStr_num_10000_57 + 3)
	lcall	___fslt
	mov	r3, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jz	00102$
;	dirt.c:38: num = -num;
	mov	a,(_floatToStr_num_10000_57 + 3)
	cpl	acc.7
	mov	(_floatToStr_num_10000_57 + 3),a
;	dirt.c:39: negative = 1;
	mov	_floatToStr_negative_10000_58,#0x01
00102$:
;	dirt.c:42: int integerPart = (int)num;
	mov	dpl, _floatToStr_num_10000_57
	mov	dph, (_floatToStr_num_10000_57 + 1)
	mov	b, (_floatToStr_num_10000_57 + 2)
	mov	a, (_floatToStr_num_10000_57 + 3)
	lcall	___fs2sint
;	dirt.c:43: int decimalPart = (int)((num - (float)integerPart) * 10);
	mov	_floatToStr_integerPart_10001_60,dpl
	mov  (_floatToStr_integerPart_10001_60 + 1),dph
	lcall	___sint2fs
	mov	r0, dpl
	mov	r1, dph
	mov	r6, b
	mov	r7, a
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	mov	dpl, _floatToStr_num_10000_57
	mov	dph, (_floatToStr_num_10000_57 + 1)
	mov	b, (_floatToStr_num_10000_57 + 2)
	mov	a, (_floatToStr_num_10000_57 + 3)
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
;	dirt.c:45: int i = 0;
;	dirt.c:46: if (negative) 
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,_floatToStr_negative_10000_58
	jz	00104$
;	dirt.c:48: str[i++] = '-';
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
;	dirt.c:50: int start = i;
	mov	_floatToStr_start_10002_62,r5
	mov	(_floatToStr_start_10002_62 + 1),r6
;	dirt.c:51: if (integerPart == 0) 
	mov	a,_floatToStr_integerPart_10001_60
	orl	a,(_floatToStr_integerPart_10001_60 + 1)
	jnz	00120$
;	dirt.c:53: str[i++] = '0';
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
;	dirt.c:56: while (integerPart != 0) 
00120$:
	mov	dptr,#_floatToStr_PARM_2
	movx	a,@dptr
	mov	_floatToStr_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_floatToStr_sloc1_1_0 + 1),a
00105$:
	mov	a,_floatToStr_integerPart_10001_60
	orl	a,(_floatToStr_integerPart_10001_60 + 1)
	jz	00123$
;	dirt.c:58: str[i++] = (integerPart % 10) + '0';
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
	mov	dpl, _floatToStr_integerPart_10001_60
	mov	dph, (_floatToStr_integerPart_10001_60 + 1)
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
;	dirt.c:59: integerPart /= 10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, _floatToStr_integerPart_10001_60
	mov	dph, (_floatToStr_integerPart_10001_60 + 1)
	lcall	__divsint
	mov	_floatToStr_integerPart_10001_60,dpl
	mov	(_floatToStr_integerPart_10001_60 + 1),dph
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00105$
00123$:
	mov	_floatToStr_sloc0_1_0,r5
	mov	(_floatToStr_sloc0_1_0 + 1),r6
;	dirt.c:61: int end = i - 1;
	dec	r5
	cjne	r5,#0xff,00172$
	dec	r6
00172$:
;	dirt.c:62: while (start < end) 
	mov	r3,_floatToStr_sloc1_1_0
	mov	r4,(_floatToStr_sloc1_1_0 + 1)
	mov	r1,_floatToStr_start_10002_62
	mov	r2,(_floatToStr_start_10002_62 + 1)
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
;	dirt.c:64: char temp = str[start];
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
	mov	_floatToStr_temp_30003_67,a
;	dirt.c:65: str[start] = str[end];
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
;	dirt.c:66: str[end] = temp;
	mov	dpl,_floatToStr_sloc2_1_0
	mov	dph,(_floatToStr_sloc2_1_0 + 1)
	mov	a,_floatToStr_temp_30003_67
	movx	@dptr,a
;	dirt.c:67: start++;
	inc	r1
	cjne	r1,#0x00,00174$
	inc	r2
00174$:
;	dirt.c:68: end--;
	dec	r5
	cjne	r5,#0xff,00175$
	dec	r6
00175$:
	pop	ar7
	sjmp	00108$
00113$:
;	dirt.c:72: str[i++] = '.';
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
;	dirt.c:73: str[i++] = decimalPart + '0';
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
;	dirt.c:75: str[i] = '\0';
	mov	a,r1
	add	a, r3
	mov	dpl,a
	mov	a,r2
	addc	a, r4
	mov	dph,a
	clr	a
	movx	@dptr,a
;	dirt.c:76: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'intToStr'
;------------------------------------------------------------
;str                       Allocated with name '_intToStr_PARM_2'
;num                       Allocated to registers r6 r7 
;i                         Allocated with name '_intToStr_i_10000_69'
;isNegative                Allocated to registers 
;start                     Allocated with name '_intToStr_start_10001_71'
;end                       Allocated to registers 
;temp                      Allocated with name '_intToStr_temp_10001_71'
;sloc0                     Allocated with name '_intToStr_sloc0_1_0'
;------------------------------------------------------------
;	dirt.c:79: void intToStr(int num, char str[]) 
;	-----------------------------------------
;	 function intToStr
;	-----------------------------------------
_intToStr:
	mov	r6, dpl
	mov	r7, dph
;	dirt.c:84: do 
	clr	a
	mov	_intToStr_i_10000_69,a
	mov	(_intToStr_i_10000_69 + 1),a
00101$:
;	dirt.c:86: str[i++] = num % 10 + '0'; 
	mov	a,_intToStr_i_10000_69
	add	a, _intToStr_PARM_2
	mov	r1,a
	mov	a,(_intToStr_i_10000_69 + 1)
	addc	a, (_intToStr_PARM_2 + 1)
	mov	r2,a
	mov	r3,(_intToStr_PARM_2 + 2)
	inc	_intToStr_i_10000_69
	clr	a
	cjne	a,_intToStr_i_10000_69,00135$
	inc	(_intToStr_i_10000_69 + 1)
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
;	dirt.c:87: num /= 10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
;	dirt.c:88: }while (num != 0);
	mov	dpl, r6
	mov	dph, r7
	lcall	__divsint
	mov	r6, dpl
	mov	r7, dph
	mov	a,r6
	orl	a,r7
	jnz	00101$
;	dirt.c:90: str[i] = '\0'; 
	mov	a,_intToStr_i_10000_69
	add	a, _intToStr_PARM_2
	mov	r5,a
	mov	a,(_intToStr_i_10000_69 + 1)
	addc	a, (_intToStr_PARM_2 + 1)
	mov	r6,a
	mov	r7,(_intToStr_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	dirt.c:93: int end = i - 1;
	mov	a,_intToStr_i_10000_69
	add	a,#0xff
	mov	r6,a
	mov	a,(_intToStr_i_10000_69 + 1)
	addc	a,#0xff
	mov	r7,a
;	dirt.c:95: while (start < end) {
	clr	a
	mov	_intToStr_start_10001_71,a
	mov	(_intToStr_start_10001_71 + 1),a
00104$:
	clr	c
	mov	a,_intToStr_start_10001_71
	subb	a,r6
	mov	a,(_intToStr_start_10001_71 + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
;	dirt.c:96: temp = str[start];
	mov	a,_intToStr_start_10001_71
	add	a, _intToStr_PARM_2
	mov	r1,a
	mov	a,(_intToStr_start_10001_71 + 1)
	addc	a, (_intToStr_PARM_2 + 1)
	mov	r2,a
	mov	r3,(_intToStr_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_intToStr_temp_10001_71,a
;	dirt.c:97: str[start] = str[end];
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
;	dirt.c:98: str[end] = temp;
	mov	dpl,_intToStr_sloc0_1_0
	mov	dph,(_intToStr_sloc0_1_0 + 1)
	mov	b,(_intToStr_sloc0_1_0 + 2)
	mov	a,_intToStr_temp_10001_71
	lcall	__gptrput
;	dirt.c:99: start++;
	inc	_intToStr_start_10001_71
	clr	a
	cjne	a,_intToStr_start_10001_71,00138$
	inc	(_intToStr_start_10001_71 + 1)
00138$:
;	dirt.c:100: end--;
	dec	r6
	cjne	r6,#0xff,00139$
	dec	r7
00139$:
	sjmp	00104$
00107$:
;	dirt.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_SendByte'
;------------------------------------------------------------
;dat                       Allocated to registers 
;------------------------------------------------------------
;	dirt.c:104: void UART_SendByte(char dat) {
;	-----------------------------------------
;	 function UART_SendByte
;	-----------------------------------------
_UART_SendByte:
	mov	_SBUF,dpl
;	dirt.c:106: while (!TI);
00101$:
;	dirt.c:107: TI=0;     
;	assignBit
	jbc	_TI,00118$
	sjmp	00101$
00118$:
;	dirt.c:108: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_SendString'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	dirt.c:110: void UART_SendString(char* str) {
;	-----------------------------------------
;	 function UART_SendString
;	-----------------------------------------
_UART_SendString:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	dirt.c:111: while (*str) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	dirt.c:112: UART_SendByte(*str++); 
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
;	dirt.c:115: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart1_Init'
;------------------------------------------------------------
;	dirt.c:117: void Uart1_Init(void)	//115200bps@12.000MHz
;	-----------------------------------------
;	 function Uart1_Init
;	-----------------------------------------
_Uart1_Init:
;	dirt.c:119: SCON = 0x50;		
	mov	_SCON,#0x50
;	dirt.c:120: AUXR |= 0x01;		
	orl	_AUXR,#0x01
;	dirt.c:121: AUXR |= 0x04;		
	orl	_AUXR,#0x04
;	dirt.c:122: T2L = 0xE6;			
	mov	_T2L,#0xe6
;	dirt.c:123: T2H = 0xFF;			
	mov	_T2H,#0xff
;	dirt.c:124: AUXR |= 0x10;		
	orl	_AUXR,#0x10
;	dirt.c:125: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reopenUART'
;------------------------------------------------------------
;	dirt.c:127: void reopenUART(void)
;	-----------------------------------------
;	 function reopenUART
;	-----------------------------------------
_reopenUART:
;	dirt.c:129: SCON = 0x00;
	mov	_SCON,#0x00
;	dirt.c:130: Uart1_Init();
;	dirt.c:131: return;
;	dirt.c:132: }
	ljmp	_Uart1_Init
;------------------------------------------------------------
;Allocation info for local variables in function 'sendDataToServer'
;------------------------------------------------------------
;mositure                  Allocated to registers r4 r5 r6 r7 
;bodyLength                Allocated to registers r6 r7 
;body                      Allocated with name '_sendDataToServer_body_10001_84'
;mositureStr               Allocated with name '_sendDataToServer_mositureStr_10002_85'
;bodyLengthStr             Allocated with name '_sendDataToServer_bodyLengthStr_10004_87'
;------------------------------------------------------------
;	dirt.c:134: void sendDataToServer(float mositure)
;	-----------------------------------------
;	 function sendDataToServer
;	-----------------------------------------
_sendDataToServer:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	dirt.c:136: ESP01S_RST = 0;
;	assignBit
	clr	_P25
;	dirt.c:137: delay_ms(200);
	mov	dptr,#0x00c8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_ms
;	dirt.c:138: ESP01S_RST = 1;
;	assignBit
	setb	_P25
;	dirt.c:139: delay_ms(500);
	mov	dptr,#0x01f4
	lcall	_delay_ms
;	dirt.c:141: Uart1_Init();
	lcall	_Uart1_Init
;	dirt.c:143: UART_SendString("AT+CWMODE=1\r\n");   
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_UART_SendString
;	dirt.c:145: reopenUART();
	lcall	_reopenUART
;	dirt.c:146: delay_ms(400);
	mov	dptr,#0x0190
	lcall	_delay_ms
;	dirt.c:147: UART_SendString("AT+CWJAP=\"HUAWEI-10HOL3\",\"88588681\"\r\n");  
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_UART_SendString
;	dirt.c:150: reopenUART();
	lcall	_reopenUART
;	dirt.c:151: delay_ms(6000);
	mov	dptr,#0x1770
	lcall	_delay_ms
;	dirt.c:152: UART_SendString("AT+CIPSTART=\"TCP\",\"www.homemoni.xyz\",80\r\n"); //Change the server address at any time
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_UART_SendString
;	dirt.c:154: reopenUART();
	lcall	_reopenUART
;	dirt.c:155: delay_ms(2000);
	mov	dptr,#0x07d0
	lcall	_delay_ms
;	dirt.c:160: memset(body,0,200);
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0xc8
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#_sendDataToServer_body_10001_84
	mov	b, #0x00
	lcall	_memset
;	dirt.c:161: strcat(body,"POST /api/dirt HTTP/1.1\r\nHost: www.homemoni.xyz\r\nContent-Type: application/json\r\nContent-Length: 80\r\n\r\n{\"mositure\":");
	mov	_strcat_PARM_2,#___str_3
	mov	(_strcat_PARM_2 + 1),#(___str_3 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x80
	mov	dptr,#_sendDataToServer_body_10001_84
	mov	b, #0x00
	lcall	_strcat
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dirt.c:164: floatToStr(mositure,mositureStr);
	mov	dptr,#_floatToStr_PARM_2
	mov	a,#_sendDataToServer_mositureStr_10002_85
	movx	@dptr,a
	mov	a,#(_sendDataToServer_mositureStr_10002_85 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_floatToStr
;	dirt.c:165: strcat(body,mositureStr);
	mov	_strcat_PARM_2,#_sendDataToServer_mositureStr_10002_85
	mov	(_strcat_PARM_2 + 1),#(_sendDataToServer_mositureStr_10002_85 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x00
	mov	dptr,#_sendDataToServer_body_10001_84
	mov	b, #0x00
	lcall	_strcat
;	dirt.c:167: strcat(body,",\"siteName\":\"Pot 1\"}\r\n");
	mov	_strcat_PARM_2,#___str_4
	mov	(_strcat_PARM_2 + 1),#(___str_4 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x80
	mov	dptr,#_sendDataToServer_body_10001_84
	mov	b, #0x00
	lcall	_strcat
;	dirt.c:169: unsigned int bodyLength = strlen(body);
	mov	dptr,#_sendDataToServer_body_10001_84
	mov	b, #0x00
	lcall	_strlen
	mov	r6, dpl
	mov	r7, dph
;	dirt.c:171: reopenUART();
	push	ar7
	push	ar6
	lcall	_reopenUART
;	dirt.c:172: UART_SendString("AT+CIPSEND=");
	mov	dptr,#___str_5
	mov	b, #0x80
	lcall	_UART_SendString
	pop	ar6
	pop	ar7
;	dirt.c:174: intToStr(bodyLength,bodyLengthStr);
	mov	_intToStr_PARM_2,#_sendDataToServer_bodyLengthStr_10004_87
	mov	(_intToStr_PARM_2 + 1),#(_sendDataToServer_bodyLengthStr_10004_87 >> 8)
	mov	(_intToStr_PARM_2 + 2),#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	_intToStr
;	dirt.c:175: UART_SendString(bodyLengthStr);
	mov	dptr,#_sendDataToServer_bodyLengthStr_10004_87
	mov	b, #0x00
	lcall	_UART_SendString
;	dirt.c:176: UART_SendString("\r\n");
	mov	dptr,#___str_6
	mov	b, #0x80
	lcall	_UART_SendString
;	dirt.c:177: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	dirt.c:179: reopenUART();
	lcall	_reopenUART
;	dirt.c:180: UART_SendString(body);
	mov	dptr,#_sendDataToServer_body_10001_84
	mov	b, #0x00
	lcall	_UART_SendString
;	dirt.c:182: delay_ms(500);
	mov	dptr,#0x01f4
	lcall	_delay_ms
;	dirt.c:185: reopenUART();
	lcall	_reopenUART
;	dirt.c:186: UART_SendString("AT+GSLP=720000\r\n");
	mov	dptr,#___str_7
	mov	b, #0x80
	lcall	_UART_SendString
;	dirt.c:187: reopenUART();
;	dirt.c:189: }
	ljmp	_reopenUART
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Read'
;------------------------------------------------------------
;	dirt.c:191: unsigned int ADC_Read(void) {
;	-----------------------------------------
;	 function ADC_Read
;	-----------------------------------------
_ADC_Read:
;	dirt.c:192: ADC_CONTR |= 0x08; // 启动ADC转换
	orl	_ADC_CONTR,#0x08
;	dirt.c:193: delay_ms(50);
	mov	dptr,#0x0032
	lcall	_delay_ms
;	dirt.c:194: while (!(ADC_CONTR & 0x10)); // 等待ADC转换完成
00101$:
	mov	a,_ADC_CONTR
	jnb	acc.4,00101$
;	dirt.c:195: ADC_CONTR = 0x80; // 清除完成标志
	mov	_ADC_CONTR,#0x80
;	dirt.c:196: return ((ADC_RES << 2) | (ADC_RESL & 0x03)); // 返回ADC结果
	mov	r6,_ADC_RES
	mov	r7,#0x00
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	r4,_ADC_RESL
	anl	ar4,#0x03
	mov	r5,#0x00
	mov	a,r4
	orl	a,r6
	mov	dpl,a
	mov	a,r5
	orl	a,r7
	mov	dph,a
;	dirt.c:197: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendADCDataToUART'
;------------------------------------------------------------
;adc_value                 Allocated to registers 
;adcStr                    Allocated with name '_sendADCDataToUART_adcStr_10000_91'
;------------------------------------------------------------
;	dirt.c:199: void sendADCDataToUART(void) {
;	-----------------------------------------
;	 function sendADCDataToUART
;	-----------------------------------------
_sendADCDataToUART:
;	dirt.c:200: unsigned int adc_value = ADC_Read(); 
	lcall	_ADC_Read
;	dirt.c:203: intToStr(adc_value, adcStr);
	mov	_intToStr_PARM_2,#_sendADCDataToUART_adcStr_10000_91
	mov	(_intToStr_PARM_2 + 1),#(_sendADCDataToUART_adcStr_10000_91 >> 8)
	mov	(_intToStr_PARM_2 + 2),#0x00
	lcall	_intToStr
;	dirt.c:204: UART_SendString(adcStr);
	mov	dptr,#_sendADCDataToUART_adcStr_10000_91
	mov	b, #0x00
;	dirt.c:205: }
	ljmp	_UART_SendString
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;data1                     Allocated to registers r6 r7 
;data2                     Allocated to registers r4 r5 
;data3                     Allocated to registers r2 r3 
;realData                  Allocated to registers r4 r5 r6 r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	dirt.c:209: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	dirt.c:210: delay_ms(300);
	mov	dptr,#0x012c
	lcall	_delay_ms
;	dirt.c:211: PUMP = 1;
;	assignBit
	setb	_P23
;	dirt.c:212: Uart1_Init();
	lcall	_Uart1_Init
;	dirt.c:214: reopenUART();
	lcall	_reopenUART
;	dirt.c:215: ADC_Init(); 
	lcall	_ADC_Init
;	dirt.c:217: reopenUART();
	lcall	_reopenUART
;	dirt.c:219: while (1) {
00108$:
;	dirt.c:220: int data1 = ADC_Read();
	lcall	_ADC_Read
	mov	r6, dpl
	mov	r7, dph
;	dirt.c:221: delay_ms(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	lcall	_delay_ms
;	dirt.c:223: int data2 = ADC_Read();
	lcall	_ADC_Read
	mov	r4, dpl
	mov	r5, dph
;	dirt.c:224: delay_ms(100);
	mov	dptr,#0x0064
	push	ar5
	push	ar4
	lcall	_delay_ms
;	dirt.c:226: int data3 = ADC_Read();
	lcall	_ADC_Read
	mov	r2, dpl
	mov	r3, dph
;	dirt.c:227: delay_ms(100);
	mov	dptr,#0x0064
	push	ar3
	push	ar2
	lcall	_delay_ms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dirt.c:229: float realData = (data1 + data2 + data3) / 3.0;
	mov	a,r4
	add	a, r6
	mov	r6,a
	mov	a,r5
	addc	a, r7
	mov	r7,a
	mov	a,r2
	add	a, r6
	mov	dpl,a
	mov	a,r3
	addc	a, r7
	mov	dph,a
	lcall	___sint2fs
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	clr	a
	push	acc
	push	acc
	mov	a,#0x40
	push	acc
	push	acc
;	dirt.c:230: sendDataToServer(realData);
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	___fsdiv
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
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sendDataToServer
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dirt.c:232: if(realData>650)
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x8000
	mov	b, #0x22
	mov	a, #0x44
	lcall	___fslt
	mov	r7, dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00102$
;	dirt.c:234: PUMP = 0;
;	assignBit
	clr	_P23
;	dirt.c:235: delay_ms(2000);
	mov	dptr,#0x07d0
	push	ar7
	lcall	_delay_ms
	pop	ar7
00102$:
;	dirt.c:238: PUMP = 1;
;	assignBit
	setb	_P23
;	dirt.c:240: if(realData>650)
	mov	a,r7
	jz	00119$
;	dirt.c:242: delay_ms(20000);
	mov	dptr,#0x4e20
	lcall	_delay_ms
;	dirt.c:243: continue;
	ljmp	00108$
;	dirt.c:247: for(int i=0;i<100;i++)
00119$:
	mov	r6,#0x00
	mov	r7,#0x00
00111$:
	clr	c
	mov	a,r6
	subb	a,#0x64
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00147$
	ljmp	00108$
00147$:
;	dirt.c:249: delay_ms(10000);
	mov	dptr,#0x2710
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	dirt.c:247: for(int i=0;i<100;i++)
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
;	dirt.c:260: }
	sjmp	00111$
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
	.ascii "POST /api/dirt HTTP/1.1"
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
	.ascii "mositure"
	.db 0x22
	.ascii ":"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii ","
	.db 0x22
	.ascii "siteName"
	.db 0x22
	.ascii ":"
	.db 0x22
	.ascii "Pot 1"
	.db 0x22
	.ascii "}"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "AT+CIPSEND="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "AT+GSLP=720000"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
