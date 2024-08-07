                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module dirt
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _sendADCDataToUART
                                     13 	.globl _ADC_Read
                                     14 	.globl _sendDataToServer
                                     15 	.globl _reopenUART
                                     16 	.globl _Uart1_Init
                                     17 	.globl _UART_SendString
                                     18 	.globl _UART_SendByte
                                     19 	.globl _intToStr
                                     20 	.globl _floatToStr
                                     21 	.globl _ADC_Init
                                     22 	.globl _delay_ms
                                     23 	.globl _delay_us
                                     24 	.globl _strlen
                                     25 	.globl _memset
                                     26 	.globl _strcat
                                     27 	.globl _CCF0
                                     28 	.globl _CCF1
                                     29 	.globl _CCF2
                                     30 	.globl _CR
                                     31 	.globl _CF
                                     32 	.globl _R2I
                                     33 	.globl _T2I
                                     34 	.globl _R2B8
                                     35 	.globl _T2B8
                                     36 	.globl _R2EN
                                     37 	.globl _S2M2
                                     38 	.globl _S2M1
                                     39 	.globl _S2M0
                                     40 	.globl _RI
                                     41 	.globl _TI
                                     42 	.globl _RB8
                                     43 	.globl _TB8
                                     44 	.globl _REN
                                     45 	.globl _SM2
                                     46 	.globl _SM1
                                     47 	.globl _SM0
                                     48 	.globl _IT0
                                     49 	.globl _IE0
                                     50 	.globl _IT1
                                     51 	.globl _IE1
                                     52 	.globl _TR0
                                     53 	.globl _TF0
                                     54 	.globl _TR1
                                     55 	.globl _TF1
                                     56 	.globl _PX0
                                     57 	.globl _PT0
                                     58 	.globl _PX1
                                     59 	.globl _PT1
                                     60 	.globl _PS
                                     61 	.globl _PADC
                                     62 	.globl _PLVD
                                     63 	.globl _PPCA
                                     64 	.globl _EX0
                                     65 	.globl _ET0
                                     66 	.globl _EX1
                                     67 	.globl _ET1
                                     68 	.globl _ES
                                     69 	.globl _EADC
                                     70 	.globl _ELVD
                                     71 	.globl _EA
                                     72 	.globl _P77
                                     73 	.globl _P76
                                     74 	.globl _P75
                                     75 	.globl _P74
                                     76 	.globl _P73
                                     77 	.globl _P72
                                     78 	.globl _P71
                                     79 	.globl _P70
                                     80 	.globl _P67
                                     81 	.globl _P66
                                     82 	.globl _P65
                                     83 	.globl _P64
                                     84 	.globl _P63
                                     85 	.globl _P62
                                     86 	.globl _P61
                                     87 	.globl _P60
                                     88 	.globl _P57
                                     89 	.globl _P56
                                     90 	.globl _P55
                                     91 	.globl _P54
                                     92 	.globl _P53
                                     93 	.globl _P52
                                     94 	.globl _P51
                                     95 	.globl _P50
                                     96 	.globl _P47
                                     97 	.globl _P46
                                     98 	.globl _P45
                                     99 	.globl _P44
                                    100 	.globl _P43
                                    101 	.globl _P42
                                    102 	.globl _P41
                                    103 	.globl _P40
                                    104 	.globl _P37
                                    105 	.globl _P36
                                    106 	.globl _P35
                                    107 	.globl _P34
                                    108 	.globl _P33
                                    109 	.globl _P32
                                    110 	.globl _P31
                                    111 	.globl _P30
                                    112 	.globl _P27
                                    113 	.globl _P26
                                    114 	.globl _P25
                                    115 	.globl _P24
                                    116 	.globl _P23
                                    117 	.globl _P22
                                    118 	.globl _P21
                                    119 	.globl _P20
                                    120 	.globl _P17
                                    121 	.globl _P16
                                    122 	.globl _P15
                                    123 	.globl _P14
                                    124 	.globl _P13
                                    125 	.globl _P12
                                    126 	.globl _P11
                                    127 	.globl _P10
                                    128 	.globl _P07
                                    129 	.globl _P06
                                    130 	.globl _P05
                                    131 	.globl _P04
                                    132 	.globl _P03
                                    133 	.globl _P02
                                    134 	.globl _P01
                                    135 	.globl _P00
                                    136 	.globl _P
                                    137 	.globl _F1
                                    138 	.globl _OV
                                    139 	.globl _RS0
                                    140 	.globl _RS1
                                    141 	.globl _F0
                                    142 	.globl _AC
                                    143 	.globl _CY
                                    144 	.globl _PWMFDCR
                                    145 	.globl _PWMIF
                                    146 	.globl _PWMCR
                                    147 	.globl _PWMCFG
                                    148 	.globl _CMPCR2
                                    149 	.globl _CMPCR1
                                    150 	.globl _CCAP2H
                                    151 	.globl _CCAP1H
                                    152 	.globl _CCAP0H
                                    153 	.globl _PCA_PWM2
                                    154 	.globl _PCA_PWM1
                                    155 	.globl _PCA_PWM0
                                    156 	.globl _CCAP2L
                                    157 	.globl _CCAP1L
                                    158 	.globl _CCAP0L
                                    159 	.globl _CCAPM2
                                    160 	.globl _CCAPM1
                                    161 	.globl _CCAPM0
                                    162 	.globl _CH
                                    163 	.globl _CL
                                    164 	.globl _CMOD
                                    165 	.globl _CCON
                                    166 	.globl _IAP_CONTR
                                    167 	.globl _IAP_TRIG
                                    168 	.globl _IAP_CMD
                                    169 	.globl _IAP_ADDRL
                                    170 	.globl _IAP_ADDRH
                                    171 	.globl _IAP_DATA
                                    172 	.globl _SPDAT
                                    173 	.globl _SPCTL
                                    174 	.globl _SPSTAT
                                    175 	.globl _ADC_RESL
                                    176 	.globl _ADC_RES
                                    177 	.globl _ADC_CONTR
                                    178 	.globl _SADEN
                                    179 	.globl _SADDR
                                    180 	.globl _S4BUF
                                    181 	.globl _S4CON
                                    182 	.globl _S3BUF
                                    183 	.globl _S3CON
                                    184 	.globl _S2BUF
                                    185 	.globl _S2CON
                                    186 	.globl _SBUF
                                    187 	.globl _SCON
                                    188 	.globl _WDT_CONTR
                                    189 	.globl _WKTCH
                                    190 	.globl _WKTCL
                                    191 	.globl _T2L
                                    192 	.globl _T2H
                                    193 	.globl _T3L
                                    194 	.globl _T3H
                                    195 	.globl _T4L
                                    196 	.globl _T4H
                                    197 	.globl _T3T4M
                                    198 	.globl _T4T3M
                                    199 	.globl _TH1
                                    200 	.globl _TH0
                                    201 	.globl _TL1
                                    202 	.globl _TL0
                                    203 	.globl _TMOD
                                    204 	.globl _TCON
                                    205 	.globl _INT_CLKO
                                    206 	.globl _IP2
                                    207 	.globl _IE2
                                    208 	.globl _IP
                                    209 	.globl _IE
                                    210 	.globl _P_SW2
                                    211 	.globl _P1ASF
                                    212 	.globl _BUS_SPEED
                                    213 	.globl _CLK_DIV
                                    214 	.globl _P_SW1
                                    215 	.globl _AUXR1
                                    216 	.globl _AUXR
                                    217 	.globl _PCON
                                    218 	.globl _P7M1
                                    219 	.globl _P7M0
                                    220 	.globl _P6M1
                                    221 	.globl _P6M0
                                    222 	.globl _P5M1
                                    223 	.globl _P5M0
                                    224 	.globl _P4M1
                                    225 	.globl _P4M0
                                    226 	.globl _P3M1
                                    227 	.globl _P3M0
                                    228 	.globl _P2M1
                                    229 	.globl _P2M0
                                    230 	.globl _P1M1
                                    231 	.globl _P1M0
                                    232 	.globl _P0M1
                                    233 	.globl _P0M0
                                    234 	.globl _P7
                                    235 	.globl _P6
                                    236 	.globl _P5
                                    237 	.globl _P4
                                    238 	.globl _P3
                                    239 	.globl _P2
                                    240 	.globl _P1
                                    241 	.globl _P0
                                    242 	.globl _DPH
                                    243 	.globl _DPL
                                    244 	.globl _SP
                                    245 	.globl _PSW
                                    246 	.globl _B
                                    247 	.globl _ACC
                                    248 	.globl _floatToStr_PARM_2
                                    249 	.globl _intToStr_PARM_2
                                    250 ;--------------------------------------------------------
                                    251 ; special function registers
                                    252 ;--------------------------------------------------------
                                    253 	.area RSEG    (ABS,DATA)
      000000                        254 	.org 0x0000
                           0000E0   255 _ACC	=	0x00e0
                           0000F0   256 _B	=	0x00f0
                           0000D0   257 _PSW	=	0x00d0
                           000081   258 _SP	=	0x0081
                           000082   259 _DPL	=	0x0082
                           000083   260 _DPH	=	0x0083
                           000080   261 _P0	=	0x0080
                           000090   262 _P1	=	0x0090
                           0000A0   263 _P2	=	0x00a0
                           0000B0   264 _P3	=	0x00b0
                           0000C0   265 _P4	=	0x00c0
                           0000C8   266 _P5	=	0x00c8
                           0000E8   267 _P6	=	0x00e8
                           0000F8   268 _P7	=	0x00f8
                           000094   269 _P0M0	=	0x0094
                           000093   270 _P0M1	=	0x0093
                           000092   271 _P1M0	=	0x0092
                           000091   272 _P1M1	=	0x0091
                           000096   273 _P2M0	=	0x0096
                           000095   274 _P2M1	=	0x0095
                           0000B2   275 _P3M0	=	0x00b2
                           0000B1   276 _P3M1	=	0x00b1
                           0000B4   277 _P4M0	=	0x00b4
                           0000B3   278 _P4M1	=	0x00b3
                           0000CA   279 _P5M0	=	0x00ca
                           0000C9   280 _P5M1	=	0x00c9
                           0000CC   281 _P6M0	=	0x00cc
                           0000CB   282 _P6M1	=	0x00cb
                           0000E2   283 _P7M0	=	0x00e2
                           0000E1   284 _P7M1	=	0x00e1
                           000087   285 _PCON	=	0x0087
                           00008E   286 _AUXR	=	0x008e
                           0000A2   287 _AUXR1	=	0x00a2
                           0000A2   288 _P_SW1	=	0x00a2
                           000097   289 _CLK_DIV	=	0x0097
                           0000A1   290 _BUS_SPEED	=	0x00a1
                           00009D   291 _P1ASF	=	0x009d
                           0000BA   292 _P_SW2	=	0x00ba
                           0000A8   293 _IE	=	0x00a8
                           0000B8   294 _IP	=	0x00b8
                           0000AF   295 _IE2	=	0x00af
                           0000B5   296 _IP2	=	0x00b5
                           00008F   297 _INT_CLKO	=	0x008f
                           000088   298 _TCON	=	0x0088
                           000089   299 _TMOD	=	0x0089
                           00008A   300 _TL0	=	0x008a
                           00008B   301 _TL1	=	0x008b
                           00008C   302 _TH0	=	0x008c
                           00008D   303 _TH1	=	0x008d
                           0000D1   304 _T4T3M	=	0x00d1
                           0000D1   305 _T3T4M	=	0x00d1
                           0000D2   306 _T4H	=	0x00d2
                           0000D3   307 _T4L	=	0x00d3
                           0000D4   308 _T3H	=	0x00d4
                           0000D5   309 _T3L	=	0x00d5
                           0000D6   310 _T2H	=	0x00d6
                           0000D7   311 _T2L	=	0x00d7
                           0000AA   312 _WKTCL	=	0x00aa
                           0000AB   313 _WKTCH	=	0x00ab
                           0000C1   314 _WDT_CONTR	=	0x00c1
                           000098   315 _SCON	=	0x0098
                           000099   316 _SBUF	=	0x0099
                           00009A   317 _S2CON	=	0x009a
                           00009B   318 _S2BUF	=	0x009b
                           0000AC   319 _S3CON	=	0x00ac
                           0000AD   320 _S3BUF	=	0x00ad
                           000084   321 _S4CON	=	0x0084
                           000085   322 _S4BUF	=	0x0085
                           0000A9   323 _SADDR	=	0x00a9
                           0000B9   324 _SADEN	=	0x00b9
                           0000BC   325 _ADC_CONTR	=	0x00bc
                           0000BD   326 _ADC_RES	=	0x00bd
                           0000BE   327 _ADC_RESL	=	0x00be
                           0000CD   328 _SPSTAT	=	0x00cd
                           0000CE   329 _SPCTL	=	0x00ce
                           0000CF   330 _SPDAT	=	0x00cf
                           0000C2   331 _IAP_DATA	=	0x00c2
                           0000C3   332 _IAP_ADDRH	=	0x00c3
                           0000C4   333 _IAP_ADDRL	=	0x00c4
                           0000C5   334 _IAP_CMD	=	0x00c5
                           0000C6   335 _IAP_TRIG	=	0x00c6
                           0000C7   336 _IAP_CONTR	=	0x00c7
                           0000D8   337 _CCON	=	0x00d8
                           0000D9   338 _CMOD	=	0x00d9
                           0000E9   339 _CL	=	0x00e9
                           0000F9   340 _CH	=	0x00f9
                           0000DA   341 _CCAPM0	=	0x00da
                           0000DB   342 _CCAPM1	=	0x00db
                           0000DC   343 _CCAPM2	=	0x00dc
                           0000EA   344 _CCAP0L	=	0x00ea
                           0000EB   345 _CCAP1L	=	0x00eb
                           0000EC   346 _CCAP2L	=	0x00ec
                           0000F2   347 _PCA_PWM0	=	0x00f2
                           0000F3   348 _PCA_PWM1	=	0x00f3
                           0000F4   349 _PCA_PWM2	=	0x00f4
                           0000FA   350 _CCAP0H	=	0x00fa
                           0000FB   351 _CCAP1H	=	0x00fb
                           0000FC   352 _CCAP2H	=	0x00fc
                           0000E6   353 _CMPCR1	=	0x00e6
                           0000E7   354 _CMPCR2	=	0x00e7
                           0000F1   355 _PWMCFG	=	0x00f1
                           0000F5   356 _PWMCR	=	0x00f5
                           0000F6   357 _PWMIF	=	0x00f6
                           0000F7   358 _PWMFDCR	=	0x00f7
                                    359 ;--------------------------------------------------------
                                    360 ; special function bits
                                    361 ;--------------------------------------------------------
                                    362 	.area RSEG    (ABS,DATA)
      000000                        363 	.org 0x0000
                           0000D7   364 _CY	=	0x00d7
                           0000D6   365 _AC	=	0x00d6
                           0000D5   366 _F0	=	0x00d5
                           0000D4   367 _RS1	=	0x00d4
                           0000D3   368 _RS0	=	0x00d3
                           0000D2   369 _OV	=	0x00d2
                           0000D1   370 _F1	=	0x00d1
                           0000D0   371 _P	=	0x00d0
                           000080   372 _P00	=	0x0080
                           000081   373 _P01	=	0x0081
                           000082   374 _P02	=	0x0082
                           000083   375 _P03	=	0x0083
                           000084   376 _P04	=	0x0084
                           000085   377 _P05	=	0x0085
                           000086   378 _P06	=	0x0086
                           000087   379 _P07	=	0x0087
                           000090   380 _P10	=	0x0090
                           000091   381 _P11	=	0x0091
                           000092   382 _P12	=	0x0092
                           000093   383 _P13	=	0x0093
                           000094   384 _P14	=	0x0094
                           000095   385 _P15	=	0x0095
                           000096   386 _P16	=	0x0096
                           000097   387 _P17	=	0x0097
                           0000A0   388 _P20	=	0x00a0
                           0000A1   389 _P21	=	0x00a1
                           0000A2   390 _P22	=	0x00a2
                           0000A3   391 _P23	=	0x00a3
                           0000A4   392 _P24	=	0x00a4
                           0000A5   393 _P25	=	0x00a5
                           0000A6   394 _P26	=	0x00a6
                           0000A7   395 _P27	=	0x00a7
                           0000B0   396 _P30	=	0x00b0
                           0000B1   397 _P31	=	0x00b1
                           0000B2   398 _P32	=	0x00b2
                           0000B3   399 _P33	=	0x00b3
                           0000B4   400 _P34	=	0x00b4
                           0000B5   401 _P35	=	0x00b5
                           0000B6   402 _P36	=	0x00b6
                           0000B7   403 _P37	=	0x00b7
                           0000C0   404 _P40	=	0x00c0
                           0000C1   405 _P41	=	0x00c1
                           0000C2   406 _P42	=	0x00c2
                           0000C3   407 _P43	=	0x00c3
                           0000C4   408 _P44	=	0x00c4
                           0000C5   409 _P45	=	0x00c5
                           0000C6   410 _P46	=	0x00c6
                           0000C7   411 _P47	=	0x00c7
                           0000C8   412 _P50	=	0x00c8
                           0000C9   413 _P51	=	0x00c9
                           0000CA   414 _P52	=	0x00ca
                           0000CB   415 _P53	=	0x00cb
                           0000CC   416 _P54	=	0x00cc
                           0000CD   417 _P55	=	0x00cd
                           0000CE   418 _P56	=	0x00ce
                           0000CF   419 _P57	=	0x00cf
                           0000E8   420 _P60	=	0x00e8
                           0000E9   421 _P61	=	0x00e9
                           0000EA   422 _P62	=	0x00ea
                           0000EB   423 _P63	=	0x00eb
                           0000EC   424 _P64	=	0x00ec
                           0000ED   425 _P65	=	0x00ed
                           0000EE   426 _P66	=	0x00ee
                           0000EF   427 _P67	=	0x00ef
                           0000F8   428 _P70	=	0x00f8
                           0000F9   429 _P71	=	0x00f9
                           0000FA   430 _P72	=	0x00fa
                           0000FB   431 _P73	=	0x00fb
                           0000FC   432 _P74	=	0x00fc
                           0000FD   433 _P75	=	0x00fd
                           0000FE   434 _P76	=	0x00fe
                           0000FF   435 _P77	=	0x00ff
                           0000AF   436 _EA	=	0x00af
                           0000AE   437 _ELVD	=	0x00ae
                           0000AD   438 _EADC	=	0x00ad
                           0000AC   439 _ES	=	0x00ac
                           0000AB   440 _ET1	=	0x00ab
                           0000AA   441 _EX1	=	0x00aa
                           0000A9   442 _ET0	=	0x00a9
                           0000A8   443 _EX0	=	0x00a8
                           0000BF   444 _PPCA	=	0x00bf
                           0000BE   445 _PLVD	=	0x00be
                           0000BD   446 _PADC	=	0x00bd
                           0000BC   447 _PS	=	0x00bc
                           0000BB   448 _PT1	=	0x00bb
                           0000BA   449 _PX1	=	0x00ba
                           0000B9   450 _PT0	=	0x00b9
                           0000B8   451 _PX0	=	0x00b8
                           00008F   452 _TF1	=	0x008f
                           00008E   453 _TR1	=	0x008e
                           00008D   454 _TF0	=	0x008d
                           00008C   455 _TR0	=	0x008c
                           00008B   456 _IE1	=	0x008b
                           00008A   457 _IT1	=	0x008a
                           000089   458 _IE0	=	0x0089
                           000088   459 _IT0	=	0x0088
                           00009F   460 _SM0	=	0x009f
                           00009E   461 _SM1	=	0x009e
                           00009D   462 _SM2	=	0x009d
                           00009C   463 _REN	=	0x009c
                           00009B   464 _TB8	=	0x009b
                           00009A   465 _RB8	=	0x009a
                           000099   466 _TI	=	0x0099
                           000098   467 _RI	=	0x0098
                           0000A1   468 _S2M0	=	0x00a1
                           0000A0   469 _S2M1	=	0x00a0
                           00009F   470 _S2M2	=	0x009f
                           00009E   471 _R2EN	=	0x009e
                           00009D   472 _T2B8	=	0x009d
                           00009C   473 _R2B8	=	0x009c
                           00009B   474 _T2I	=	0x009b
                           00009A   475 _R2I	=	0x009a
                           0000DF   476 _CF	=	0x00df
                           0000DE   477 _CR	=	0x00de
                           0000DA   478 _CCF2	=	0x00da
                           0000D9   479 _CCF1	=	0x00d9
                           0000D8   480 _CCF0	=	0x00d8
                                    481 ;--------------------------------------------------------
                                    482 ; overlayable register banks
                                    483 ;--------------------------------------------------------
                                    484 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        485 	.ds 8
                                    486 ;--------------------------------------------------------
                                    487 ; internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area DSEG    (DATA)
      000008                        490 _floatToStr_num_10000_57:
      000008                        491 	.ds 4
      00000C                        492 _floatToStr_negative_10000_58:
      00000C                        493 	.ds 1
      00000D                        494 _floatToStr_integerPart_10001_60:
      00000D                        495 	.ds 2
      00000F                        496 _floatToStr_start_10002_62:
      00000F                        497 	.ds 2
      000011                        498 _floatToStr_temp_30003_67:
      000011                        499 	.ds 1
      000012                        500 _floatToStr_sloc0_1_0:
      000012                        501 	.ds 2
      000014                        502 _floatToStr_sloc1_1_0:
      000014                        503 	.ds 2
      000016                        504 _floatToStr_sloc2_1_0:
      000016                        505 	.ds 2
      000018                        506 _intToStr_PARM_2:
      000018                        507 	.ds 3
      00001B                        508 _intToStr_i_10000_69:
      00001B                        509 	.ds 2
      00001D                        510 _intToStr_start_10001_71:
      00001D                        511 	.ds 2
      00001F                        512 _intToStr_temp_10001_71:
      00001F                        513 	.ds 1
      000020                        514 _intToStr_sloc0_1_0:
      000020                        515 	.ds 3
                                    516 ;--------------------------------------------------------
                                    517 ; overlayable items in internal ram
                                    518 ;--------------------------------------------------------
                                    519 	.area	OSEG    (OVR,DATA)
                                    520 	.area	OSEG    (OVR,DATA)
                                    521 ;--------------------------------------------------------
                                    522 ; Stack segment in internal ram
                                    523 ;--------------------------------------------------------
                                    524 	.area SSEG
      000029                        525 __start__stack:
      000029                        526 	.ds	1
                                    527 
                                    528 ;--------------------------------------------------------
                                    529 ; indirectly addressable internal ram data
                                    530 ;--------------------------------------------------------
                                    531 	.area ISEG    (DATA)
                                    532 ;--------------------------------------------------------
                                    533 ; absolute internal ram data
                                    534 ;--------------------------------------------------------
                                    535 	.area IABS    (ABS,DATA)
                                    536 	.area IABS    (ABS,DATA)
                                    537 ;--------------------------------------------------------
                                    538 ; bit data
                                    539 ;--------------------------------------------------------
                                    540 	.area BSEG    (BIT)
                                    541 ;--------------------------------------------------------
                                    542 ; paged external ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area PSEG    (PAG,XDATA)
                                    545 ;--------------------------------------------------------
                                    546 ; uninitialized external ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area XSEG    (XDATA)
      000001                        549 _floatToStr_PARM_2:
      000001                        550 	.ds 2
      000003                        551 _sendDataToServer_body_10001_84:
      000003                        552 	.ds 200
      0000CB                        553 _sendDataToServer_mositureStr_10002_85:
      0000CB                        554 	.ds 6
      0000D1                        555 _sendDataToServer_bodyLengthStr_10004_87:
      0000D1                        556 	.ds 4
      0000D5                        557 _sendADCDataToUART_adcStr_10000_91:
      0000D5                        558 	.ds 10
                                    559 ;--------------------------------------------------------
                                    560 ; absolute external ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area XABS    (ABS,XDATA)
                                    563 ;--------------------------------------------------------
                                    564 ; initialized external ram data
                                    565 ;--------------------------------------------------------
                                    566 	.area XISEG   (XDATA)
                                    567 	.area HOME    (CODE)
                                    568 	.area GSINIT0 (CODE)
                                    569 	.area GSINIT1 (CODE)
                                    570 	.area GSINIT2 (CODE)
                                    571 	.area GSINIT3 (CODE)
                                    572 	.area GSINIT4 (CODE)
                                    573 	.area GSINIT5 (CODE)
                                    574 	.area GSINIT  (CODE)
                                    575 	.area GSFINAL (CODE)
                                    576 	.area CSEG    (CODE)
                                    577 ;--------------------------------------------------------
                                    578 ; interrupt vector
                                    579 ;--------------------------------------------------------
                                    580 	.area HOME    (CODE)
      000000                        581 __interrupt_vect:
      000000 02 00 06         [24]  582 	ljmp	__sdcc_gsinit_startup
                                    583 ;--------------------------------------------------------
                                    584 ; global & static initialisations
                                    585 ;--------------------------------------------------------
                                    586 	.area HOME    (CODE)
                                    587 	.area GSINIT  (CODE)
                                    588 	.area GSFINAL (CODE)
                                    589 	.area GSINIT  (CODE)
                                    590 	.globl __sdcc_gsinit_startup
                                    591 	.globl __sdcc_program_startup
                                    592 	.globl __start__stack
                                    593 	.globl __mcs51_genXINIT
                                    594 	.globl __mcs51_genXRAMCLEAR
                                    595 	.globl __mcs51_genRAMCLEAR
                                    596 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  597 	ljmp	__sdcc_program_startup
                                    598 ;--------------------------------------------------------
                                    599 ; Home
                                    600 ;--------------------------------------------------------
                                    601 	.area HOME    (CODE)
                                    602 	.area HOME    (CODE)
      000003                        603 __sdcc_program_startup:
      000003 02 05 45         [24]  604 	ljmp	_main
                                    605 ;	return from main will return to caller
                                    606 ;--------------------------------------------------------
                                    607 ; code
                                    608 ;--------------------------------------------------------
                                    609 	.area CSEG    (CODE)
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'delay_us'
                                    612 ;------------------------------------------------------------
                                    613 ;us                        Allocated to registers 
                                    614 ;------------------------------------------------------------
                                    615 ;	dirt.c:12: void delay_us(unsigned int us) {
                                    616 ;	-----------------------------------------
                                    617 ;	 function delay_us
                                    618 ;	-----------------------------------------
      000062                        619 _delay_us:
                           000007   620 	ar7 = 0x07
                           000006   621 	ar6 = 0x06
                           000005   622 	ar5 = 0x05
                           000004   623 	ar4 = 0x04
                           000003   624 	ar3 = 0x03
                           000002   625 	ar2 = 0x02
                           000001   626 	ar1 = 0x01
                           000000   627 	ar0 = 0x00
      000062 AE 82            [24]  628 	mov	r6, dpl
      000064 AF 83            [24]  629 	mov	r7, dph
                                    630 ;	dirt.c:13: while (us--);
      000066                        631 00101$:
      000066 8E 04            [24]  632 	mov	ar4,r6
      000068 8F 05            [24]  633 	mov	ar5,r7
      00006A 1E               [12]  634 	dec	r6
      00006B BE FF 01         [24]  635 	cjne	r6,#0xff,00113$
      00006E 1F               [12]  636 	dec	r7
      00006F                        637 00113$:
      00006F EC               [12]  638 	mov	a,r4
      000070 4D               [12]  639 	orl	a,r5
      000071 70 F3            [24]  640 	jnz	00101$
                                    641 ;	dirt.c:14: }
      000073 22               [24]  642 	ret
                                    643 ;------------------------------------------------------------
                                    644 ;Allocation info for local variables in function 'delay_ms'
                                    645 ;------------------------------------------------------------
                                    646 ;ms                        Allocated to registers r6 r7 
                                    647 ;i                         Allocated to registers r4 r5 
                                    648 ;------------------------------------------------------------
                                    649 ;	dirt.c:16: void delay_ms(unsigned int ms) {
                                    650 ;	-----------------------------------------
                                    651 ;	 function delay_ms
                                    652 ;	-----------------------------------------
      000074                        653 _delay_ms:
      000074 AE 82            [24]  654 	mov	r6, dpl
      000076 AF 83            [24]  655 	mov	r7, dph
                                    656 ;	dirt.c:18: for (i = 0; i < ms; i++) {
      000078 7C 00            [12]  657 	mov	r4,#0x00
      00007A 7D 00            [12]  658 	mov	r5,#0x00
      00007C                        659 00103$:
      00007C C3               [12]  660 	clr	c
      00007D EC               [12]  661 	mov	a,r4
      00007E 9E               [12]  662 	subb	a,r6
      00007F ED               [12]  663 	mov	a,r5
      000080 9F               [12]  664 	subb	a,r7
      000081 50 1D            [24]  665 	jnc	00105$
                                    666 ;	dirt.c:19: delay_us(1000);
      000083 90 03 E8         [24]  667 	mov	dptr,#0x03e8
      000086 C0 07            [24]  668 	push	ar7
      000088 C0 06            [24]  669 	push	ar6
      00008A C0 05            [24]  670 	push	ar5
      00008C C0 04            [24]  671 	push	ar4
      00008E 12 00 62         [24]  672 	lcall	_delay_us
      000091 D0 04            [24]  673 	pop	ar4
      000093 D0 05            [24]  674 	pop	ar5
      000095 D0 06            [24]  675 	pop	ar6
      000097 D0 07            [24]  676 	pop	ar7
                                    677 ;	dirt.c:18: for (i = 0; i < ms; i++) {
      000099 0C               [12]  678 	inc	r4
      00009A BC 00 DF         [24]  679 	cjne	r4,#0x00,00103$
      00009D 0D               [12]  680 	inc	r5
      00009E 80 DC            [24]  681 	sjmp	00103$
      0000A0                        682 00105$:
                                    683 ;	dirt.c:21: }
      0000A0 22               [24]  684 	ret
                                    685 ;------------------------------------------------------------
                                    686 ;Allocation info for local variables in function 'ADC_Init'
                                    687 ;------------------------------------------------------------
                                    688 ;	dirt.c:23: void ADC_Init(void) {
                                    689 ;	-----------------------------------------
                                    690 ;	 function ADC_Init
                                    691 ;	-----------------------------------------
      0000A1                        692 _ADC_Init:
                                    693 ;	dirt.c:25: P1ASF = 0x01; //Using P10
      0000A1 75 9D 01         [24]  694 	mov	_P1ASF,#0x01
                                    695 ;	dirt.c:26: P10 = 0;
                                    696 ;	assignBit
      0000A4 C2 90            [12]  697 	clr	_P10
                                    698 ;	dirt.c:27: ADC_CONTR = 0x80; 
      0000A6 75 BC 80         [24]  699 	mov	_ADC_CONTR,#0x80
                                    700 ;	dirt.c:28: AUXR1 |= 0x04;
      0000A9 43 A2 04         [24]  701 	orl	_AUXR1,#0x04
                                    702 ;	dirt.c:29: delay_ms(100);
      0000AC 90 00 64         [24]  703 	mov	dptr,#0x0064
                                    704 ;	dirt.c:30: }
      0000AF 02 00 74         [24]  705 	ljmp	_delay_ms
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'floatToStr'
                                    708 ;------------------------------------------------------------
                                    709 ;num                       Allocated with name '_floatToStr_num_10000_57'
                                    710 ;negative                  Allocated with name '_floatToStr_negative_10000_58'
                                    711 ;integerPart               Allocated with name '_floatToStr_integerPart_10001_60'
                                    712 ;decimalPart               Allocated to registers 
                                    713 ;i                         Allocated to registers r1 r2 
                                    714 ;start                     Allocated with name '_floatToStr_start_10002_62'
                                    715 ;end                       Allocated to registers 
                                    716 ;temp                      Allocated with name '_floatToStr_temp_30003_67'
                                    717 ;sloc0                     Allocated with name '_floatToStr_sloc0_1_0'
                                    718 ;sloc1                     Allocated with name '_floatToStr_sloc1_1_0'
                                    719 ;sloc2                     Allocated with name '_floatToStr_sloc2_1_0'
                                    720 ;str                       Allocated with name '_floatToStr_PARM_2'
                                    721 ;------------------------------------------------------------
                                    722 ;	dirt.c:33: void floatToStr(float num,__xdata unsigned char str[]) 
                                    723 ;	-----------------------------------------
                                    724 ;	 function floatToStr
                                    725 ;	-----------------------------------------
      0000B2                        726 _floatToStr:
      0000B2 85 82 08         [24]  727 	mov	_floatToStr_num_10000_57,dpl
      0000B5 85 83 09         [24]  728 	mov	(_floatToStr_num_10000_57 + 1),dph
      0000B8 85 F0 0A         [24]  729 	mov	(_floatToStr_num_10000_57 + 2),b
      0000BB F5 0B            [12]  730 	mov	(_floatToStr_num_10000_57 + 3),a
                                    731 ;	dirt.c:35: bool negative = 0;
                                    732 ;	dirt.c:36: if (num < 0) 
      0000BD E4               [12]  733 	clr	a
      0000BE F5 0C            [12]  734 	mov	_floatToStr_negative_10000_58,a
      0000C0 C0 E0            [24]  735 	push	acc
      0000C2 C0 E0            [24]  736 	push	acc
      0000C4 C0 E0            [24]  737 	push	acc
      0000C6 C0 E0            [24]  738 	push	acc
      0000C8 85 08 82         [24]  739 	mov	dpl, _floatToStr_num_10000_57
      0000CB 85 09 83         [24]  740 	mov	dph, (_floatToStr_num_10000_57 + 1)
      0000CE 85 0A F0         [24]  741 	mov	b, (_floatToStr_num_10000_57 + 2)
      0000D1 E5 0B            [12]  742 	mov	a, (_floatToStr_num_10000_57 + 3)
      0000D3 12 07 EA         [24]  743 	lcall	___fslt
      0000D6 AB 82            [24]  744 	mov	r3, dpl
      0000D8 E5 81            [12]  745 	mov	a,sp
      0000DA 24 FC            [12]  746 	add	a,#0xfc
      0000DC F5 81            [12]  747 	mov	sp,a
      0000DE EB               [12]  748 	mov	a,r3
      0000DF 60 09            [24]  749 	jz	00102$
                                    750 ;	dirt.c:38: num = -num;
      0000E1 E5 0B            [12]  751 	mov	a,(_floatToStr_num_10000_57 + 3)
      0000E3 B2 E7            [12]  752 	cpl	acc.7
      0000E5 F5 0B            [12]  753 	mov	(_floatToStr_num_10000_57 + 3),a
                                    754 ;	dirt.c:39: negative = 1;
      0000E7 75 0C 01         [24]  755 	mov	_floatToStr_negative_10000_58,#0x01
      0000EA                        756 00102$:
                                    757 ;	dirt.c:42: int integerPart = (int)num;
      0000EA 85 08 82         [24]  758 	mov	dpl, _floatToStr_num_10000_57
      0000ED 85 09 83         [24]  759 	mov	dph, (_floatToStr_num_10000_57 + 1)
      0000F0 85 0A F0         [24]  760 	mov	b, (_floatToStr_num_10000_57 + 2)
      0000F3 E5 0B            [12]  761 	mov	a, (_floatToStr_num_10000_57 + 3)
      0000F5 12 09 32         [24]  762 	lcall	___fs2sint
                                    763 ;	dirt.c:43: int decimalPart = (int)((num - (float)integerPart) * 10);
      0000F8 85 82 0D         [24]  764 	mov	_floatToStr_integerPart_10001_60,dpl
      0000FB 85 83 0E         [24]  765 	mov  (_floatToStr_integerPart_10001_60 + 1),dph
      0000FE 12 09 66         [24]  766 	lcall	___sint2fs
      000101 A8 82            [24]  767 	mov	r0, dpl
      000103 A9 83            [24]  768 	mov	r1, dph
      000105 AE F0            [24]  769 	mov	r6, b
      000107 FF               [12]  770 	mov	r7, a
      000108 C0 00            [24]  771 	push	ar0
      00010A C0 01            [24]  772 	push	ar1
      00010C C0 06            [24]  773 	push	ar6
      00010E C0 07            [24]  774 	push	ar7
      000110 85 08 82         [24]  775 	mov	dpl, _floatToStr_num_10000_57
      000113 85 09 83         [24]  776 	mov	dph, (_floatToStr_num_10000_57 + 1)
      000116 85 0A F0         [24]  777 	mov	b, (_floatToStr_num_10000_57 + 2)
      000119 E5 0B            [12]  778 	mov	a, (_floatToStr_num_10000_57 + 3)
      00011B 12 06 4B         [24]  779 	lcall	___fssub
      00011E AC 82            [24]  780 	mov	r4, dpl
      000120 AD 83            [24]  781 	mov	r5, dph
      000122 AE F0            [24]  782 	mov	r6, b
      000124 FF               [12]  783 	mov	r7, a
      000125 E5 81            [12]  784 	mov	a,sp
      000127 24 FC            [12]  785 	add	a,#0xfc
      000129 F5 81            [12]  786 	mov	sp,a
      00012B C0 04            [24]  787 	push	ar4
      00012D C0 05            [24]  788 	push	ar5
      00012F C0 06            [24]  789 	push	ar6
      000131 C0 07            [24]  790 	push	ar7
      000133 90 00 00         [24]  791 	mov	dptr,#0x0000
      000136 75 F0 20         [24]  792 	mov	b, #0x20
      000139 74 41            [12]  793 	mov	a, #0x41
      00013B 12 06 56         [24]  794 	lcall	___fsmul
      00013E AC 82            [24]  795 	mov	r4, dpl
      000140 AD 83            [24]  796 	mov	r5, dph
      000142 AE F0            [24]  797 	mov	r6, b
      000144 FF               [12]  798 	mov	r7, a
      000145 E5 81            [12]  799 	mov	a,sp
      000147 24 FC            [12]  800 	add	a,#0xfc
      000149 F5 81            [12]  801 	mov	sp,a
      00014B 8C 82            [24]  802 	mov	dpl, r4
      00014D 8D 83            [24]  803 	mov	dph, r5
      00014F 8E F0            [24]  804 	mov	b, r6
      000151 EF               [12]  805 	mov	a, r7
      000152 12 09 32         [24]  806 	lcall	___fs2sint
      000155 AF 82            [24]  807 	mov	r7, dpl
                                    808 ;	dirt.c:45: int i = 0;
                                    809 ;	dirt.c:46: if (negative) 
      000157 E4               [12]  810 	clr	a
      000158 FD               [12]  811 	mov	r5,a
      000159 FE               [12]  812 	mov	r6,a
      00015A E5 0C            [12]  813 	mov	a,_floatToStr_negative_10000_58
      00015C 60 13            [24]  814 	jz	00104$
                                    815 ;	dirt.c:48: str[i++] = '-';
      00015E 7D 01            [12]  816 	mov	r5,#0x01
      000160 7E 00            [12]  817 	mov	r6,#0x00
      000162 90 00 01         [24]  818 	mov	dptr,#_floatToStr_PARM_2
      000165 E0               [24]  819 	movx	a,@dptr
      000166 F9               [12]  820 	mov	r1,a
      000167 A3               [24]  821 	inc	dptr
      000168 E0               [24]  822 	movx	a,@dptr
      000169 FC               [12]  823 	mov	r4,a
      00016A 89 82            [24]  824 	mov	dpl,r1
      00016C 8C 83            [24]  825 	mov	dph,r4
      00016E 74 2D            [12]  826 	mov	a,#0x2d
      000170 F0               [24]  827 	movx	@dptr,a
      000171                        828 00104$:
                                    829 ;	dirt.c:50: int start = i;
      000171 8D 0F            [24]  830 	mov	_floatToStr_start_10002_62,r5
      000173 8E 10            [24]  831 	mov	(_floatToStr_start_10002_62 + 1),r6
                                    832 ;	dirt.c:51: if (integerPart == 0) 
      000175 E5 0D            [12]  833 	mov	a,_floatToStr_integerPart_10001_60
      000177 45 0E            [12]  834 	orl	a,(_floatToStr_integerPart_10001_60 + 1)
      000179 70 23            [24]  835 	jnz	00120$
                                    836 ;	dirt.c:53: str[i++] = '0';
      00017B C0 07            [24]  837 	push	ar7
      00017D 74 01            [12]  838 	mov	a,#0x01
      00017F 2D               [12]  839 	add	a, r5
      000180 F5 12            [12]  840 	mov	_floatToStr_sloc0_1_0,a
      000182 E4               [12]  841 	clr	a
      000183 3E               [12]  842 	addc	a, r6
      000184 F5 13            [12]  843 	mov	(_floatToStr_sloc0_1_0 + 1),a
      000186 90 00 01         [24]  844 	mov	dptr,#_floatToStr_PARM_2
      000189 E0               [24]  845 	movx	a,@dptr
      00018A F8               [12]  846 	mov	r0,a
      00018B A3               [24]  847 	inc	dptr
      00018C E0               [24]  848 	movx	a,@dptr
      00018D FF               [12]  849 	mov	r7,a
      00018E ED               [12]  850 	mov	a,r5
      00018F 28               [12]  851 	add	a, r0
      000190 F5 82            [12]  852 	mov	dpl,a
      000192 EE               [12]  853 	mov	a,r6
      000193 3F               [12]  854 	addc	a, r7
      000194 F5 83            [12]  855 	mov	dph,a
      000196 74 30            [12]  856 	mov	a,#0x30
      000198 F0               [24]  857 	movx	@dptr,a
      000199 D0 07            [24]  858 	pop	ar7
      00019B 02 02 5F         [24]  859 	ljmp	00113$
                                    860 ;	dirt.c:56: while (integerPart != 0) 
      00019E                        861 00120$:
      00019E 90 00 01         [24]  862 	mov	dptr,#_floatToStr_PARM_2
      0001A1 E0               [24]  863 	movx	a,@dptr
      0001A2 F5 14            [12]  864 	mov	_floatToStr_sloc1_1_0,a
      0001A4 A3               [24]  865 	inc	dptr
      0001A5 E0               [24]  866 	movx	a,@dptr
      0001A6 F5 15            [12]  867 	mov	(_floatToStr_sloc1_1_0 + 1),a
      0001A8                        868 00105$:
      0001A8 E5 0D            [12]  869 	mov	a,_floatToStr_integerPart_10001_60
      0001AA 45 0E            [12]  870 	orl	a,(_floatToStr_integerPart_10001_60 + 1)
      0001AC 60 51            [24]  871 	jz	00123$
                                    872 ;	dirt.c:58: str[i++] = (integerPart % 10) + '0';
      0001AE ED               [12]  873 	mov	a,r5
      0001AF 25 14            [12]  874 	add	a, _floatToStr_sloc1_1_0
      0001B1 F8               [12]  875 	mov	r0,a
      0001B2 EE               [12]  876 	mov	a,r6
      0001B3 35 15            [12]  877 	addc	a, (_floatToStr_sloc1_1_0 + 1)
      0001B5 FC               [12]  878 	mov	r4,a
      0001B6 0D               [12]  879 	inc	r5
      0001B7 BD 00 01         [24]  880 	cjne	r5,#0x00,00171$
      0001BA 0E               [12]  881 	inc	r6
      0001BB                        882 00171$:
      0001BB 75 23 0A         [24]  883 	mov	__modsint_PARM_2,#0x0a
      0001BE 75 24 00         [24]  884 	mov	(__modsint_PARM_2 + 1),#0x00
      0001C1 85 0D 82         [24]  885 	mov	dpl, _floatToStr_integerPart_10001_60
      0001C4 85 0E 83         [24]  886 	mov	dph, (_floatToStr_integerPart_10001_60 + 1)
      0001C7 C0 07            [24]  887 	push	ar7
      0001C9 C0 06            [24]  888 	push	ar6
      0001CB C0 05            [24]  889 	push	ar5
      0001CD C0 04            [24]  890 	push	ar4
      0001CF C0 00            [24]  891 	push	ar0
      0001D1 12 0A D3         [24]  892 	lcall	__modsint
      0001D4 A9 82            [24]  893 	mov	r1, dpl
      0001D6 D0 00            [24]  894 	pop	ar0
      0001D8 D0 04            [24]  895 	pop	ar4
      0001DA 74 30            [12]  896 	mov	a,#0x30
      0001DC 29               [12]  897 	add	a, r1
      0001DD 88 82            [24]  898 	mov	dpl,r0
      0001DF 8C 83            [24]  899 	mov	dph,r4
      0001E1 F0               [24]  900 	movx	@dptr,a
                                    901 ;	dirt.c:59: integerPart /= 10;
      0001E2 75 23 0A         [24]  902 	mov	__divsint_PARM_2,#0x0a
      0001E5 75 24 00         [24]  903 	mov	(__divsint_PARM_2 + 1),#0x00
      0001E8 85 0D 82         [24]  904 	mov	dpl, _floatToStr_integerPart_10001_60
      0001EB 85 0E 83         [24]  905 	mov	dph, (_floatToStr_integerPart_10001_60 + 1)
      0001EE 12 0B 36         [24]  906 	lcall	__divsint
      0001F1 85 82 0D         [24]  907 	mov	_floatToStr_integerPart_10001_60,dpl
      0001F4 85 83 0E         [24]  908 	mov	(_floatToStr_integerPart_10001_60 + 1),dph
      0001F7 D0 05            [24]  909 	pop	ar5
      0001F9 D0 06            [24]  910 	pop	ar6
      0001FB D0 07            [24]  911 	pop	ar7
      0001FD 80 A9            [24]  912 	sjmp	00105$
      0001FF                        913 00123$:
      0001FF 8D 12            [24]  914 	mov	_floatToStr_sloc0_1_0,r5
      000201 8E 13            [24]  915 	mov	(_floatToStr_sloc0_1_0 + 1),r6
                                    916 ;	dirt.c:61: int end = i - 1;
      000203 1D               [12]  917 	dec	r5
      000204 BD FF 01         [24]  918 	cjne	r5,#0xff,00172$
      000207 1E               [12]  919 	dec	r6
      000208                        920 00172$:
                                    921 ;	dirt.c:62: while (start < end) 
      000208 AB 14            [24]  922 	mov	r3,_floatToStr_sloc1_1_0
      00020A AC 15            [24]  923 	mov	r4,(_floatToStr_sloc1_1_0 + 1)
      00020C A9 0F            [24]  924 	mov	r1,_floatToStr_start_10002_62
      00020E AA 10            [24]  925 	mov	r2,(_floatToStr_start_10002_62 + 1)
      000210                        926 00108$:
      000210 C3               [12]  927 	clr	c
      000211 E9               [12]  928 	mov	a,r1
      000212 9D               [12]  929 	subb	a,r5
      000213 EA               [12]  930 	mov	a,r2
      000214 64 80            [12]  931 	xrl	a,#0x80
      000216 8E F0            [24]  932 	mov	b,r6
      000218 63 F0 80         [24]  933 	xrl	b,#0x80
      00021B 95 F0            [12]  934 	subb	a,b
      00021D 50 40            [24]  935 	jnc	00113$
                                    936 ;	dirt.c:64: char temp = str[start];
      00021F C0 07            [24]  937 	push	ar7
      000221 E9               [12]  938 	mov	a,r1
      000222 2B               [12]  939 	add	a, r3
      000223 F5 14            [12]  940 	mov	_floatToStr_sloc1_1_0,a
      000225 EA               [12]  941 	mov	a,r2
      000226 3C               [12]  942 	addc	a, r4
      000227 F5 15            [12]  943 	mov	(_floatToStr_sloc1_1_0 + 1),a
      000229 85 14 82         [24]  944 	mov	dpl,_floatToStr_sloc1_1_0
      00022C 85 15 83         [24]  945 	mov	dph,(_floatToStr_sloc1_1_0 + 1)
      00022F E0               [24]  946 	movx	a,@dptr
      000230 F5 11            [12]  947 	mov	_floatToStr_temp_30003_67,a
                                    948 ;	dirt.c:65: str[start] = str[end];
      000232 ED               [12]  949 	mov	a,r5
      000233 2B               [12]  950 	add	a, r3
      000234 F5 16            [12]  951 	mov	_floatToStr_sloc2_1_0,a
      000236 EE               [12]  952 	mov	a,r6
      000237 3C               [12]  953 	addc	a, r4
      000238 F5 17            [12]  954 	mov	(_floatToStr_sloc2_1_0 + 1),a
      00023A 85 16 82         [24]  955 	mov	dpl,_floatToStr_sloc2_1_0
      00023D 85 17 83         [24]  956 	mov	dph,(_floatToStr_sloc2_1_0 + 1)
      000240 E0               [24]  957 	movx	a,@dptr
      000241 85 14 82         [24]  958 	mov	dpl,_floatToStr_sloc1_1_0
      000244 85 15 83         [24]  959 	mov	dph,(_floatToStr_sloc1_1_0 + 1)
      000247 F0               [24]  960 	movx	@dptr,a
                                    961 ;	dirt.c:66: str[end] = temp;
      000248 85 16 82         [24]  962 	mov	dpl,_floatToStr_sloc2_1_0
      00024B 85 17 83         [24]  963 	mov	dph,(_floatToStr_sloc2_1_0 + 1)
      00024E E5 11            [12]  964 	mov	a,_floatToStr_temp_30003_67
      000250 F0               [24]  965 	movx	@dptr,a
                                    966 ;	dirt.c:67: start++;
      000251 09               [12]  967 	inc	r1
      000252 B9 00 01         [24]  968 	cjne	r1,#0x00,00174$
      000255 0A               [12]  969 	inc	r2
      000256                        970 00174$:
                                    971 ;	dirt.c:68: end--;
      000256 1D               [12]  972 	dec	r5
      000257 BD FF 01         [24]  973 	cjne	r5,#0xff,00175$
      00025A 1E               [12]  974 	dec	r6
      00025B                        975 00175$:
      00025B D0 07            [24]  976 	pop	ar7
      00025D 80 B1            [24]  977 	sjmp	00108$
      00025F                        978 00113$:
                                    979 ;	dirt.c:72: str[i++] = '.';
      00025F 74 01            [12]  980 	mov	a,#0x01
      000261 25 12            [12]  981 	add	a, _floatToStr_sloc0_1_0
      000263 FD               [12]  982 	mov	r5,a
      000264 E4               [12]  983 	clr	a
      000265 35 13            [12]  984 	addc	a, (_floatToStr_sloc0_1_0 + 1)
      000267 FE               [12]  985 	mov	r6,a
      000268 90 00 01         [24]  986 	mov	dptr,#_floatToStr_PARM_2
      00026B E0               [24]  987 	movx	a,@dptr
      00026C FB               [12]  988 	mov	r3,a
      00026D A3               [24]  989 	inc	dptr
      00026E E0               [24]  990 	movx	a,@dptr
      00026F FC               [12]  991 	mov	r4,a
      000270 E5 12            [12]  992 	mov	a,_floatToStr_sloc0_1_0
      000272 2B               [12]  993 	add	a, r3
      000273 F5 82            [12]  994 	mov	dpl,a
      000275 E5 13            [12]  995 	mov	a,(_floatToStr_sloc0_1_0 + 1)
      000277 3C               [12]  996 	addc	a, r4
      000278 F5 83            [12]  997 	mov	dph,a
      00027A 74 2E            [12]  998 	mov	a,#0x2e
      00027C F0               [24]  999 	movx	@dptr,a
                                   1000 ;	dirt.c:73: str[i++] = decimalPart + '0';
      00027D 74 01            [12] 1001 	mov	a,#0x01
      00027F 2D               [12] 1002 	add	a, r5
      000280 F9               [12] 1003 	mov	r1,a
      000281 E4               [12] 1004 	clr	a
      000282 3E               [12] 1005 	addc	a, r6
      000283 FA               [12] 1006 	mov	r2,a
      000284 ED               [12] 1007 	mov	a,r5
      000285 2B               [12] 1008 	add	a, r3
      000286 F5 82            [12] 1009 	mov	dpl,a
      000288 EE               [12] 1010 	mov	a,r6
      000289 3C               [12] 1011 	addc	a, r4
      00028A F5 83            [12] 1012 	mov	dph,a
      00028C 74 30            [12] 1013 	mov	a,#0x30
      00028E 2F               [12] 1014 	add	a, r7
      00028F F0               [24] 1015 	movx	@dptr,a
                                   1016 ;	dirt.c:75: str[i] = '\0';
      000290 E9               [12] 1017 	mov	a,r1
      000291 2B               [12] 1018 	add	a, r3
      000292 F5 82            [12] 1019 	mov	dpl,a
      000294 EA               [12] 1020 	mov	a,r2
      000295 3C               [12] 1021 	addc	a, r4
      000296 F5 83            [12] 1022 	mov	dph,a
      000298 E4               [12] 1023 	clr	a
      000299 F0               [24] 1024 	movx	@dptr,a
                                   1025 ;	dirt.c:76: }
      00029A 22               [24] 1026 	ret
                                   1027 ;------------------------------------------------------------
                                   1028 ;Allocation info for local variables in function 'intToStr'
                                   1029 ;------------------------------------------------------------
                                   1030 ;str                       Allocated with name '_intToStr_PARM_2'
                                   1031 ;num                       Allocated to registers r6 r7 
                                   1032 ;i                         Allocated with name '_intToStr_i_10000_69'
                                   1033 ;isNegative                Allocated to registers 
                                   1034 ;start                     Allocated with name '_intToStr_start_10001_71'
                                   1035 ;end                       Allocated to registers 
                                   1036 ;temp                      Allocated with name '_intToStr_temp_10001_71'
                                   1037 ;sloc0                     Allocated with name '_intToStr_sloc0_1_0'
                                   1038 ;------------------------------------------------------------
                                   1039 ;	dirt.c:79: void intToStr(int num, char str[]) 
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function intToStr
                                   1042 ;	-----------------------------------------
      00029B                       1043 _intToStr:
      00029B AE 82            [24] 1044 	mov	r6, dpl
      00029D AF 83            [24] 1045 	mov	r7, dph
                                   1046 ;	dirt.c:84: do 
      00029F E4               [12] 1047 	clr	a
      0002A0 F5 1B            [12] 1048 	mov	_intToStr_i_10000_69,a
      0002A2 F5 1C            [12] 1049 	mov	(_intToStr_i_10000_69 + 1),a
      0002A4                       1050 00101$:
                                   1051 ;	dirt.c:86: str[i++] = num % 10 + '0'; 
      0002A4 E5 1B            [12] 1052 	mov	a,_intToStr_i_10000_69
      0002A6 25 18            [12] 1053 	add	a, _intToStr_PARM_2
      0002A8 F9               [12] 1054 	mov	r1,a
      0002A9 E5 1C            [12] 1055 	mov	a,(_intToStr_i_10000_69 + 1)
      0002AB 35 19            [12] 1056 	addc	a, (_intToStr_PARM_2 + 1)
      0002AD FA               [12] 1057 	mov	r2,a
      0002AE AB 1A            [24] 1058 	mov	r3,(_intToStr_PARM_2 + 2)
      0002B0 05 1B            [12] 1059 	inc	_intToStr_i_10000_69
      0002B2 E4               [12] 1060 	clr	a
      0002B3 B5 1B 02         [24] 1061 	cjne	a,_intToStr_i_10000_69,00135$
      0002B6 05 1C            [12] 1062 	inc	(_intToStr_i_10000_69 + 1)
      0002B8                       1063 00135$:
      0002B8 75 23 0A         [24] 1064 	mov	__modsint_PARM_2,#0x0a
      0002BB 75 24 00         [24] 1065 	mov	(__modsint_PARM_2 + 1),#0x00
      0002BE 8E 82            [24] 1066 	mov	dpl, r6
      0002C0 8F 83            [24] 1067 	mov	dph, r7
      0002C2 C0 07            [24] 1068 	push	ar7
      0002C4 C0 06            [24] 1069 	push	ar6
      0002C6 C0 03            [24] 1070 	push	ar3
      0002C8 C0 02            [24] 1071 	push	ar2
      0002CA C0 01            [24] 1072 	push	ar1
      0002CC 12 0A D3         [24] 1073 	lcall	__modsint
      0002CF A8 82            [24] 1074 	mov	r0, dpl
      0002D1 D0 01            [24] 1075 	pop	ar1
      0002D3 D0 02            [24] 1076 	pop	ar2
      0002D5 D0 03            [24] 1077 	pop	ar3
      0002D7 D0 06            [24] 1078 	pop	ar6
      0002D9 D0 07            [24] 1079 	pop	ar7
      0002DB 74 30            [12] 1080 	mov	a,#0x30
      0002DD 28               [12] 1081 	add	a, r0
      0002DE 89 82            [24] 1082 	mov	dpl,r1
      0002E0 8A 83            [24] 1083 	mov	dph,r2
      0002E2 8B F0            [24] 1084 	mov	b,r3
      0002E4 12 07 CF         [24] 1085 	lcall	__gptrput
                                   1086 ;	dirt.c:87: num /= 10;
      0002E7 75 23 0A         [24] 1087 	mov	__divsint_PARM_2,#0x0a
      0002EA 75 24 00         [24] 1088 	mov	(__divsint_PARM_2 + 1),#0x00
                                   1089 ;	dirt.c:88: }while (num != 0);
      0002ED 8E 82            [24] 1090 	mov	dpl, r6
      0002EF 8F 83            [24] 1091 	mov	dph, r7
      0002F1 12 0B 36         [24] 1092 	lcall	__divsint
      0002F4 AE 82            [24] 1093 	mov	r6, dpl
      0002F6 AF 83            [24] 1094 	mov	r7, dph
      0002F8 EE               [12] 1095 	mov	a,r6
      0002F9 4F               [12] 1096 	orl	a,r7
      0002FA 70 A8            [24] 1097 	jnz	00101$
                                   1098 ;	dirt.c:90: str[i] = '\0'; 
      0002FC E5 1B            [12] 1099 	mov	a,_intToStr_i_10000_69
      0002FE 25 18            [12] 1100 	add	a, _intToStr_PARM_2
      000300 FD               [12] 1101 	mov	r5,a
      000301 E5 1C            [12] 1102 	mov	a,(_intToStr_i_10000_69 + 1)
      000303 35 19            [12] 1103 	addc	a, (_intToStr_PARM_2 + 1)
      000305 FE               [12] 1104 	mov	r6,a
      000306 AF 1A            [24] 1105 	mov	r7,(_intToStr_PARM_2 + 2)
      000308 8D 82            [24] 1106 	mov	dpl,r5
      00030A 8E 83            [24] 1107 	mov	dph,r6
      00030C 8F F0            [24] 1108 	mov	b,r7
      00030E E4               [12] 1109 	clr	a
      00030F 12 07 CF         [24] 1110 	lcall	__gptrput
                                   1111 ;	dirt.c:93: int end = i - 1;
      000312 E5 1B            [12] 1112 	mov	a,_intToStr_i_10000_69
      000314 24 FF            [12] 1113 	add	a,#0xff
      000316 FE               [12] 1114 	mov	r6,a
      000317 E5 1C            [12] 1115 	mov	a,(_intToStr_i_10000_69 + 1)
      000319 34 FF            [12] 1116 	addc	a,#0xff
      00031B FF               [12] 1117 	mov	r7,a
                                   1118 ;	dirt.c:95: while (start < end) {
      00031C E4               [12] 1119 	clr	a
      00031D F5 1D            [12] 1120 	mov	_intToStr_start_10001_71,a
      00031F F5 1E            [12] 1121 	mov	(_intToStr_start_10001_71 + 1),a
      000321                       1122 00104$:
      000321 C3               [12] 1123 	clr	c
      000322 E5 1D            [12] 1124 	mov	a,_intToStr_start_10001_71
      000324 9E               [12] 1125 	subb	a,r6
      000325 E5 1E            [12] 1126 	mov	a,(_intToStr_start_10001_71 + 1)
      000327 64 80            [12] 1127 	xrl	a,#0x80
      000329 8F F0            [24] 1128 	mov	b,r7
      00032B 63 F0 80         [24] 1129 	xrl	b,#0x80
      00032E 95 F0            [12] 1130 	subb	a,b
      000330 50 56            [24] 1131 	jnc	00107$
                                   1132 ;	dirt.c:96: temp = str[start];
      000332 E5 1D            [12] 1133 	mov	a,_intToStr_start_10001_71
      000334 25 18            [12] 1134 	add	a, _intToStr_PARM_2
      000336 F9               [12] 1135 	mov	r1,a
      000337 E5 1E            [12] 1136 	mov	a,(_intToStr_start_10001_71 + 1)
      000339 35 19            [12] 1137 	addc	a, (_intToStr_PARM_2 + 1)
      00033B FA               [12] 1138 	mov	r2,a
      00033C AB 1A            [24] 1139 	mov	r3,(_intToStr_PARM_2 + 2)
      00033E 89 82            [24] 1140 	mov	dpl,r1
      000340 8A 83            [24] 1141 	mov	dph,r2
      000342 8B F0            [24] 1142 	mov	b,r3
      000344 12 0A B7         [24] 1143 	lcall	__gptrget
      000347 F5 1F            [12] 1144 	mov	_intToStr_temp_10001_71,a
                                   1145 ;	dirt.c:97: str[start] = str[end];
      000349 EE               [12] 1146 	mov	a,r6
      00034A 25 18            [12] 1147 	add	a, _intToStr_PARM_2
      00034C F5 20            [12] 1148 	mov	_intToStr_sloc0_1_0,a
      00034E EF               [12] 1149 	mov	a,r7
      00034F 35 19            [12] 1150 	addc	a, (_intToStr_PARM_2 + 1)
      000351 F5 21            [12] 1151 	mov	(_intToStr_sloc0_1_0 + 1),a
      000353 85 1A 22         [24] 1152 	mov	(_intToStr_sloc0_1_0 + 2),(_intToStr_PARM_2 + 2)
      000356 85 20 82         [24] 1153 	mov	dpl,_intToStr_sloc0_1_0
      000359 85 21 83         [24] 1154 	mov	dph,(_intToStr_sloc0_1_0 + 1)
      00035C 85 22 F0         [24] 1155 	mov	b,(_intToStr_sloc0_1_0 + 2)
      00035F 12 0A B7         [24] 1156 	lcall	__gptrget
      000362 89 82            [24] 1157 	mov	dpl,r1
      000364 8A 83            [24] 1158 	mov	dph,r2
      000366 8B F0            [24] 1159 	mov	b,r3
      000368 12 07 CF         [24] 1160 	lcall	__gptrput
                                   1161 ;	dirt.c:98: str[end] = temp;
      00036B 85 20 82         [24] 1162 	mov	dpl,_intToStr_sloc0_1_0
      00036E 85 21 83         [24] 1163 	mov	dph,(_intToStr_sloc0_1_0 + 1)
      000371 85 22 F0         [24] 1164 	mov	b,(_intToStr_sloc0_1_0 + 2)
      000374 E5 1F            [12] 1165 	mov	a,_intToStr_temp_10001_71
      000376 12 07 CF         [24] 1166 	lcall	__gptrput
                                   1167 ;	dirt.c:99: start++;
      000379 05 1D            [12] 1168 	inc	_intToStr_start_10001_71
      00037B E4               [12] 1169 	clr	a
      00037C B5 1D 02         [24] 1170 	cjne	a,_intToStr_start_10001_71,00138$
      00037F 05 1E            [12] 1171 	inc	(_intToStr_start_10001_71 + 1)
      000381                       1172 00138$:
                                   1173 ;	dirt.c:100: end--;
      000381 1E               [12] 1174 	dec	r6
      000382 BE FF 01         [24] 1175 	cjne	r6,#0xff,00139$
      000385 1F               [12] 1176 	dec	r7
      000386                       1177 00139$:
      000386 80 99            [24] 1178 	sjmp	00104$
      000388                       1179 00107$:
                                   1180 ;	dirt.c:102: }
      000388 22               [24] 1181 	ret
                                   1182 ;------------------------------------------------------------
                                   1183 ;Allocation info for local variables in function 'UART_SendByte'
                                   1184 ;------------------------------------------------------------
                                   1185 ;dat                       Allocated to registers 
                                   1186 ;------------------------------------------------------------
                                   1187 ;	dirt.c:104: void UART_SendByte(char dat) {
                                   1188 ;	-----------------------------------------
                                   1189 ;	 function UART_SendByte
                                   1190 ;	-----------------------------------------
      000389                       1191 _UART_SendByte:
      000389 85 82 99         [24] 1192 	mov	_SBUF,dpl
                                   1193 ;	dirt.c:106: while (!TI);
      00038C                       1194 00101$:
                                   1195 ;	dirt.c:107: TI=0;     
                                   1196 ;	assignBit
      00038C 10 99 02         [24] 1197 	jbc	_TI,00118$
      00038F 80 FB            [24] 1198 	sjmp	00101$
      000391                       1199 00118$:
                                   1200 ;	dirt.c:108: }
      000391 22               [24] 1201 	ret
                                   1202 ;------------------------------------------------------------
                                   1203 ;Allocation info for local variables in function 'UART_SendString'
                                   1204 ;------------------------------------------------------------
                                   1205 ;str                       Allocated to registers 
                                   1206 ;------------------------------------------------------------
                                   1207 ;	dirt.c:110: void UART_SendString(char* str) {
                                   1208 ;	-----------------------------------------
                                   1209 ;	 function UART_SendString
                                   1210 ;	-----------------------------------------
      000392                       1211 _UART_SendString:
      000392 AD 82            [24] 1212 	mov	r5, dpl
      000394 AE 83            [24] 1213 	mov	r6, dph
      000396 AF F0            [24] 1214 	mov	r7, b
                                   1215 ;	dirt.c:111: while (*str) {
      000398                       1216 00101$:
      000398 8D 82            [24] 1217 	mov	dpl,r5
      00039A 8E 83            [24] 1218 	mov	dph,r6
      00039C 8F F0            [24] 1219 	mov	b,r7
      00039E 12 0A B7         [24] 1220 	lcall	__gptrget
      0003A1 FC               [12] 1221 	mov	r4,a
      0003A2 60 18            [24] 1222 	jz	00104$
                                   1223 ;	dirt.c:112: UART_SendByte(*str++); 
      0003A4 8C 82            [24] 1224 	mov	dpl,r4
      0003A6 0D               [12] 1225 	inc	r5
      0003A7 BD 00 01         [24] 1226 	cjne	r5,#0x00,00120$
      0003AA 0E               [12] 1227 	inc	r6
      0003AB                       1228 00120$:
      0003AB C0 07            [24] 1229 	push	ar7
      0003AD C0 06            [24] 1230 	push	ar6
      0003AF C0 05            [24] 1231 	push	ar5
      0003B1 12 03 89         [24] 1232 	lcall	_UART_SendByte
      0003B4 D0 05            [24] 1233 	pop	ar5
      0003B6 D0 06            [24] 1234 	pop	ar6
      0003B8 D0 07            [24] 1235 	pop	ar7
      0003BA 80 DC            [24] 1236 	sjmp	00101$
      0003BC                       1237 00104$:
                                   1238 ;	dirt.c:115: }
      0003BC 22               [24] 1239 	ret
                                   1240 ;------------------------------------------------------------
                                   1241 ;Allocation info for local variables in function 'Uart1_Init'
                                   1242 ;------------------------------------------------------------
                                   1243 ;	dirt.c:117: void Uart1_Init(void)	//115200bps@12.000MHz
                                   1244 ;	-----------------------------------------
                                   1245 ;	 function Uart1_Init
                                   1246 ;	-----------------------------------------
      0003BD                       1247 _Uart1_Init:
                                   1248 ;	dirt.c:119: SCON = 0x50;		
      0003BD 75 98 50         [24] 1249 	mov	_SCON,#0x50
                                   1250 ;	dirt.c:120: AUXR |= 0x01;		
      0003C0 43 8E 01         [24] 1251 	orl	_AUXR,#0x01
                                   1252 ;	dirt.c:121: AUXR |= 0x04;		
      0003C3 43 8E 04         [24] 1253 	orl	_AUXR,#0x04
                                   1254 ;	dirt.c:122: T2L = 0xE6;			
      0003C6 75 D7 E6         [24] 1255 	mov	_T2L,#0xe6
                                   1256 ;	dirt.c:123: T2H = 0xFF;			
      0003C9 75 D6 FF         [24] 1257 	mov	_T2H,#0xff
                                   1258 ;	dirt.c:124: AUXR |= 0x10;		
      0003CC 43 8E 10         [24] 1259 	orl	_AUXR,#0x10
                                   1260 ;	dirt.c:125: }
      0003CF 22               [24] 1261 	ret
                                   1262 ;------------------------------------------------------------
                                   1263 ;Allocation info for local variables in function 'reopenUART'
                                   1264 ;------------------------------------------------------------
                                   1265 ;	dirt.c:127: void reopenUART(void)
                                   1266 ;	-----------------------------------------
                                   1267 ;	 function reopenUART
                                   1268 ;	-----------------------------------------
      0003D0                       1269 _reopenUART:
                                   1270 ;	dirt.c:129: SCON = 0x00;
      0003D0 75 98 00         [24] 1271 	mov	_SCON,#0x00
                                   1272 ;	dirt.c:130: Uart1_Init();
                                   1273 ;	dirt.c:131: return;
                                   1274 ;	dirt.c:132: }
      0003D3 02 03 BD         [24] 1275 	ljmp	_Uart1_Init
                                   1276 ;------------------------------------------------------------
                                   1277 ;Allocation info for local variables in function 'sendDataToServer'
                                   1278 ;------------------------------------------------------------
                                   1279 ;mositure                  Allocated to registers r4 r5 r6 r7 
                                   1280 ;bodyLength                Allocated to registers r6 r7 
                                   1281 ;body                      Allocated with name '_sendDataToServer_body_10001_84'
                                   1282 ;mositureStr               Allocated with name '_sendDataToServer_mositureStr_10002_85'
                                   1283 ;bodyLengthStr             Allocated with name '_sendDataToServer_bodyLengthStr_10004_87'
                                   1284 ;------------------------------------------------------------
                                   1285 ;	dirt.c:134: void sendDataToServer(float mositure)
                                   1286 ;	-----------------------------------------
                                   1287 ;	 function sendDataToServer
                                   1288 ;	-----------------------------------------
      0003D6                       1289 _sendDataToServer:
      0003D6 AC 82            [24] 1290 	mov	r4,dpl
      0003D8 AD 83            [24] 1291 	mov	r5,dph
      0003DA AE F0            [24] 1292 	mov	r6,b
      0003DC FF               [12] 1293 	mov	r7,a
                                   1294 ;	dirt.c:136: ESP01S_RST = 0;
                                   1295 ;	assignBit
      0003DD C2 A5            [12] 1296 	clr	_P25
                                   1297 ;	dirt.c:137: delay_ms(200);
      0003DF 90 00 C8         [24] 1298 	mov	dptr,#0x00c8
      0003E2 C0 07            [24] 1299 	push	ar7
      0003E4 C0 06            [24] 1300 	push	ar6
      0003E6 C0 05            [24] 1301 	push	ar5
      0003E8 C0 04            [24] 1302 	push	ar4
      0003EA 12 00 74         [24] 1303 	lcall	_delay_ms
                                   1304 ;	dirt.c:138: ESP01S_RST = 1;
                                   1305 ;	assignBit
      0003ED D2 A5            [12] 1306 	setb	_P25
                                   1307 ;	dirt.c:139: delay_ms(500);
      0003EF 90 01 F4         [24] 1308 	mov	dptr,#0x01f4
      0003F2 12 00 74         [24] 1309 	lcall	_delay_ms
                                   1310 ;	dirt.c:141: Uart1_Init();
      0003F5 12 03 BD         [24] 1311 	lcall	_Uart1_Init
                                   1312 ;	dirt.c:143: UART_SendString("AT+CWMODE=1\r\n");   
      0003F8 90 0C 22         [24] 1313 	mov	dptr,#___str_0
      0003FB 75 F0 80         [24] 1314 	mov	b, #0x80
      0003FE 12 03 92         [24] 1315 	lcall	_UART_SendString
                                   1316 ;	dirt.c:145: reopenUART();
      000401 12 03 D0         [24] 1317 	lcall	_reopenUART
                                   1318 ;	dirt.c:146: delay_ms(400);
      000404 90 01 90         [24] 1319 	mov	dptr,#0x0190
      000407 12 00 74         [24] 1320 	lcall	_delay_ms
                                   1321 ;	dirt.c:147: UART_SendString("AT+CWJAP=\"HUAWEI-10HOL3\",\"88588681\"\r\n");  
      00040A 90 0C 30         [24] 1322 	mov	dptr,#___str_1
      00040D 75 F0 80         [24] 1323 	mov	b, #0x80
      000410 12 03 92         [24] 1324 	lcall	_UART_SendString
                                   1325 ;	dirt.c:150: reopenUART();
      000413 12 03 D0         [24] 1326 	lcall	_reopenUART
                                   1327 ;	dirt.c:151: delay_ms(6000);
      000416 90 17 70         [24] 1328 	mov	dptr,#0x1770
      000419 12 00 74         [24] 1329 	lcall	_delay_ms
                                   1330 ;	dirt.c:152: UART_SendString("AT+CIPSTART=\"TCP\",\"www.homemoni.xyz\",80\r\n"); //Change the server address at any time
      00041C 90 0C 56         [24] 1331 	mov	dptr,#___str_2
      00041F 75 F0 80         [24] 1332 	mov	b, #0x80
      000422 12 03 92         [24] 1333 	lcall	_UART_SendString
                                   1334 ;	dirt.c:154: reopenUART();
      000425 12 03 D0         [24] 1335 	lcall	_reopenUART
                                   1336 ;	dirt.c:155: delay_ms(2000);
      000428 90 07 D0         [24] 1337 	mov	dptr,#0x07d0
      00042B 12 00 74         [24] 1338 	lcall	_delay_ms
                                   1339 ;	dirt.c:160: memset(body,0,200);
      00042E 75 23 00         [24] 1340 	mov	_memset_PARM_2,#0x00
      000431 75 24 C8         [24] 1341 	mov	_memset_PARM_3,#0xc8
      000434 75 25 00         [24] 1342 	mov	(_memset_PARM_3 + 1),#0x00
      000437 90 00 03         [24] 1343 	mov	dptr,#_sendDataToServer_body_10001_84
      00043A 75 F0 00         [24] 1344 	mov	b, #0x00
      00043D 12 07 5A         [24] 1345 	lcall	_memset
                                   1346 ;	dirt.c:161: strcat(body,"POST /api/dirt HTTP/1.1\r\nHost: www.homemoni.xyz\r\nContent-Type: application/json\r\nContent-Length: 80\r\n\r\n{\"mositure\":");
      000440 75 23 80         [24] 1347 	mov	_strcat_PARM_2,#___str_3
      000443 75 24 0C         [24] 1348 	mov	(_strcat_PARM_2 + 1),#(___str_3 >> 8)
      000446 75 25 80         [24] 1349 	mov	(_strcat_PARM_2 + 2),#0x80
      000449 90 00 03         [24] 1350 	mov	dptr,#_sendDataToServer_body_10001_84
      00044C 75 F0 00         [24] 1351 	mov	b, #0x00
      00044F 12 07 79         [24] 1352 	lcall	_strcat
      000452 D0 04            [24] 1353 	pop	ar4
      000454 D0 05            [24] 1354 	pop	ar5
      000456 D0 06            [24] 1355 	pop	ar6
      000458 D0 07            [24] 1356 	pop	ar7
                                   1357 ;	dirt.c:164: floatToStr(mositure,mositureStr);
      00045A 90 00 01         [24] 1358 	mov	dptr,#_floatToStr_PARM_2
      00045D 74 CB            [12] 1359 	mov	a,#_sendDataToServer_mositureStr_10002_85
      00045F F0               [24] 1360 	movx	@dptr,a
      000460 74 00            [12] 1361 	mov	a,#(_sendDataToServer_mositureStr_10002_85 >> 8)
      000462 A3               [24] 1362 	inc	dptr
      000463 F0               [24] 1363 	movx	@dptr,a
      000464 8C 82            [24] 1364 	mov	dpl, r4
      000466 8D 83            [24] 1365 	mov	dph, r5
      000468 8E F0            [24] 1366 	mov	b, r6
      00046A EF               [12] 1367 	mov	a, r7
      00046B 12 00 B2         [24] 1368 	lcall	_floatToStr
                                   1369 ;	dirt.c:165: strcat(body,mositureStr);
      00046E 75 23 CB         [24] 1370 	mov	_strcat_PARM_2,#_sendDataToServer_mositureStr_10002_85
      000471 75 24 00         [24] 1371 	mov	(_strcat_PARM_2 + 1),#(_sendDataToServer_mositureStr_10002_85 >> 8)
      000474 75 25 00         [24] 1372 	mov	(_strcat_PARM_2 + 2),#0x00
      000477 90 00 03         [24] 1373 	mov	dptr,#_sendDataToServer_body_10001_84
      00047A 75 F0 00         [24] 1374 	mov	b, #0x00
      00047D 12 07 79         [24] 1375 	lcall	_strcat
                                   1376 ;	dirt.c:167: strcat(body,",\"siteName\":\"Pot 1\"}\r\n");
      000480 75 23 F4         [24] 1377 	mov	_strcat_PARM_2,#___str_4
      000483 75 24 0C         [24] 1378 	mov	(_strcat_PARM_2 + 1),#(___str_4 >> 8)
      000486 75 25 80         [24] 1379 	mov	(_strcat_PARM_2 + 2),#0x80
      000489 90 00 03         [24] 1380 	mov	dptr,#_sendDataToServer_body_10001_84
      00048C 75 F0 00         [24] 1381 	mov	b, #0x00
      00048F 12 07 79         [24] 1382 	lcall	_strcat
                                   1383 ;	dirt.c:169: unsigned int bodyLength = strlen(body);
      000492 90 00 03         [24] 1384 	mov	dptr,#_sendDataToServer_body_10001_84
      000495 75 F0 00         [24] 1385 	mov	b, #0x00
      000498 12 09 DC         [24] 1386 	lcall	_strlen
      00049B AE 82            [24] 1387 	mov	r6, dpl
      00049D AF 83            [24] 1388 	mov	r7, dph
                                   1389 ;	dirt.c:171: reopenUART();
      00049F C0 07            [24] 1390 	push	ar7
      0004A1 C0 06            [24] 1391 	push	ar6
      0004A3 12 03 D0         [24] 1392 	lcall	_reopenUART
                                   1393 ;	dirt.c:172: UART_SendString("AT+CIPSEND=");
      0004A6 90 0D 0B         [24] 1394 	mov	dptr,#___str_5
      0004A9 75 F0 80         [24] 1395 	mov	b, #0x80
      0004AC 12 03 92         [24] 1396 	lcall	_UART_SendString
      0004AF D0 06            [24] 1397 	pop	ar6
      0004B1 D0 07            [24] 1398 	pop	ar7
                                   1399 ;	dirt.c:174: intToStr(bodyLength,bodyLengthStr);
      0004B3 75 18 D1         [24] 1400 	mov	_intToStr_PARM_2,#_sendDataToServer_bodyLengthStr_10004_87
      0004B6 75 19 00         [24] 1401 	mov	(_intToStr_PARM_2 + 1),#(_sendDataToServer_bodyLengthStr_10004_87 >> 8)
      0004B9 75 1A 00         [24] 1402 	mov	(_intToStr_PARM_2 + 2),#0x00
      0004BC 8E 82            [24] 1403 	mov	dpl, r6
      0004BE 8F 83            [24] 1404 	mov	dph, r7
      0004C0 12 02 9B         [24] 1405 	lcall	_intToStr
                                   1406 ;	dirt.c:175: UART_SendString(bodyLengthStr);
      0004C3 90 00 D1         [24] 1407 	mov	dptr,#_sendDataToServer_bodyLengthStr_10004_87
      0004C6 75 F0 00         [24] 1408 	mov	b, #0x00
      0004C9 12 03 92         [24] 1409 	lcall	_UART_SendString
                                   1410 ;	dirt.c:176: UART_SendString("\r\n");
      0004CC 90 0D 17         [24] 1411 	mov	dptr,#___str_6
      0004CF 75 F0 80         [24] 1412 	mov	b, #0x80
      0004D2 12 03 92         [24] 1413 	lcall	_UART_SendString
                                   1414 ;	dirt.c:177: delay_ms(1000);
      0004D5 90 03 E8         [24] 1415 	mov	dptr,#0x03e8
      0004D8 12 00 74         [24] 1416 	lcall	_delay_ms
                                   1417 ;	dirt.c:179: reopenUART();
      0004DB 12 03 D0         [24] 1418 	lcall	_reopenUART
                                   1419 ;	dirt.c:180: UART_SendString(body);
      0004DE 90 00 03         [24] 1420 	mov	dptr,#_sendDataToServer_body_10001_84
      0004E1 75 F0 00         [24] 1421 	mov	b, #0x00
      0004E4 12 03 92         [24] 1422 	lcall	_UART_SendString
                                   1423 ;	dirt.c:182: delay_ms(500);
      0004E7 90 01 F4         [24] 1424 	mov	dptr,#0x01f4
      0004EA 12 00 74         [24] 1425 	lcall	_delay_ms
                                   1426 ;	dirt.c:185: reopenUART();
      0004ED 12 03 D0         [24] 1427 	lcall	_reopenUART
                                   1428 ;	dirt.c:186: UART_SendString("AT+GSLP=720000\r\n");
      0004F0 90 0D 1A         [24] 1429 	mov	dptr,#___str_7
      0004F3 75 F0 80         [24] 1430 	mov	b, #0x80
      0004F6 12 03 92         [24] 1431 	lcall	_UART_SendString
                                   1432 ;	dirt.c:187: reopenUART();
                                   1433 ;	dirt.c:189: }
      0004F9 02 03 D0         [24] 1434 	ljmp	_reopenUART
                                   1435 ;------------------------------------------------------------
                                   1436 ;Allocation info for local variables in function 'ADC_Read'
                                   1437 ;------------------------------------------------------------
                                   1438 ;	dirt.c:191: unsigned int ADC_Read(void) {
                                   1439 ;	-----------------------------------------
                                   1440 ;	 function ADC_Read
                                   1441 ;	-----------------------------------------
      0004FC                       1442 _ADC_Read:
                                   1443 ;	dirt.c:192: ADC_CONTR |= 0x08; // 启动ADC转换
      0004FC 43 BC 08         [24] 1444 	orl	_ADC_CONTR,#0x08
                                   1445 ;	dirt.c:193: delay_ms(50);
      0004FF 90 00 32         [24] 1446 	mov	dptr,#0x0032
      000502 12 00 74         [24] 1447 	lcall	_delay_ms
                                   1448 ;	dirt.c:194: while (!(ADC_CONTR & 0x10)); // 等待ADC转换完成
      000505                       1449 00101$:
      000505 E5 BC            [12] 1450 	mov	a,_ADC_CONTR
      000507 30 E4 FB         [24] 1451 	jnb	acc.4,00101$
                                   1452 ;	dirt.c:195: ADC_CONTR = 0x80; // 清除完成标志
      00050A 75 BC 80         [24] 1453 	mov	_ADC_CONTR,#0x80
                                   1454 ;	dirt.c:196: return ((ADC_RES << 2) | (ADC_RESL & 0x03)); // 返回ADC结果
      00050D AE BD            [24] 1455 	mov	r6,_ADC_RES
      00050F 7F 00            [12] 1456 	mov	r7,#0x00
      000511 EE               [12] 1457 	mov	a,r6
      000512 2E               [12] 1458 	add	a,r6
      000513 FE               [12] 1459 	mov	r6,a
      000514 EF               [12] 1460 	mov	a,r7
      000515 33               [12] 1461 	rlc	a
      000516 FF               [12] 1462 	mov	r7,a
      000517 EE               [12] 1463 	mov	a,r6
      000518 2E               [12] 1464 	add	a,r6
      000519 FE               [12] 1465 	mov	r6,a
      00051A EF               [12] 1466 	mov	a,r7
      00051B 33               [12] 1467 	rlc	a
      00051C FF               [12] 1468 	mov	r7,a
      00051D AC BE            [24] 1469 	mov	r4,_ADC_RESL
      00051F 53 04 03         [24] 1470 	anl	ar4,#0x03
      000522 7D 00            [12] 1471 	mov	r5,#0x00
      000524 EC               [12] 1472 	mov	a,r4
      000525 4E               [12] 1473 	orl	a,r6
      000526 F5 82            [12] 1474 	mov	dpl,a
      000528 ED               [12] 1475 	mov	a,r5
      000529 4F               [12] 1476 	orl	a,r7
      00052A F5 83            [12] 1477 	mov	dph,a
                                   1478 ;	dirt.c:197: }
      00052C 22               [24] 1479 	ret
                                   1480 ;------------------------------------------------------------
                                   1481 ;Allocation info for local variables in function 'sendADCDataToUART'
                                   1482 ;------------------------------------------------------------
                                   1483 ;adc_value                 Allocated to registers 
                                   1484 ;adcStr                    Allocated with name '_sendADCDataToUART_adcStr_10000_91'
                                   1485 ;------------------------------------------------------------
                                   1486 ;	dirt.c:199: void sendADCDataToUART(void) {
                                   1487 ;	-----------------------------------------
                                   1488 ;	 function sendADCDataToUART
                                   1489 ;	-----------------------------------------
      00052D                       1490 _sendADCDataToUART:
                                   1491 ;	dirt.c:200: unsigned int adc_value = ADC_Read(); 
      00052D 12 04 FC         [24] 1492 	lcall	_ADC_Read
                                   1493 ;	dirt.c:203: intToStr(adc_value, adcStr);
      000530 75 18 D5         [24] 1494 	mov	_intToStr_PARM_2,#_sendADCDataToUART_adcStr_10000_91
      000533 75 19 00         [24] 1495 	mov	(_intToStr_PARM_2 + 1),#(_sendADCDataToUART_adcStr_10000_91 >> 8)
      000536 75 1A 00         [24] 1496 	mov	(_intToStr_PARM_2 + 2),#0x00
      000539 12 02 9B         [24] 1497 	lcall	_intToStr
                                   1498 ;	dirt.c:204: UART_SendString(adcStr);
      00053C 90 00 D5         [24] 1499 	mov	dptr,#_sendADCDataToUART_adcStr_10000_91
      00053F 75 F0 00         [24] 1500 	mov	b, #0x00
                                   1501 ;	dirt.c:205: }
      000542 02 03 92         [24] 1502 	ljmp	_UART_SendString
                                   1503 ;------------------------------------------------------------
                                   1504 ;Allocation info for local variables in function 'main'
                                   1505 ;------------------------------------------------------------
                                   1506 ;data1                     Allocated to registers r6 r7 
                                   1507 ;data2                     Allocated to registers r4 r5 
                                   1508 ;data3                     Allocated to registers r2 r3 
                                   1509 ;realData                  Allocated to registers r4 r5 r6 r7 
                                   1510 ;i                         Allocated to registers r6 r7 
                                   1511 ;------------------------------------------------------------
                                   1512 ;	dirt.c:209: void main(void) {
                                   1513 ;	-----------------------------------------
                                   1514 ;	 function main
                                   1515 ;	-----------------------------------------
      000545                       1516 _main:
                                   1517 ;	dirt.c:210: delay_ms(300);
      000545 90 01 2C         [24] 1518 	mov	dptr,#0x012c
      000548 12 00 74         [24] 1519 	lcall	_delay_ms
                                   1520 ;	dirt.c:211: PUMP = 1;
                                   1521 ;	assignBit
      00054B D2 A3            [12] 1522 	setb	_P23
                                   1523 ;	dirt.c:212: Uart1_Init();
      00054D 12 03 BD         [24] 1524 	lcall	_Uart1_Init
                                   1525 ;	dirt.c:214: reopenUART();
      000550 12 03 D0         [24] 1526 	lcall	_reopenUART
                                   1527 ;	dirt.c:215: ADC_Init(); 
      000553 12 00 A1         [24] 1528 	lcall	_ADC_Init
                                   1529 ;	dirt.c:217: reopenUART();
      000556 12 03 D0         [24] 1530 	lcall	_reopenUART
                                   1531 ;	dirt.c:219: while (1) {
      000559                       1532 00108$:
                                   1533 ;	dirt.c:220: int data1 = ADC_Read();
      000559 12 04 FC         [24] 1534 	lcall	_ADC_Read
      00055C AE 82            [24] 1535 	mov	r6, dpl
      00055E AF 83            [24] 1536 	mov	r7, dph
                                   1537 ;	dirt.c:221: delay_ms(100);
      000560 90 00 64         [24] 1538 	mov	dptr,#0x0064
      000563 C0 07            [24] 1539 	push	ar7
      000565 C0 06            [24] 1540 	push	ar6
      000567 12 00 74         [24] 1541 	lcall	_delay_ms
                                   1542 ;	dirt.c:223: int data2 = ADC_Read();
      00056A 12 04 FC         [24] 1543 	lcall	_ADC_Read
      00056D AC 82            [24] 1544 	mov	r4, dpl
      00056F AD 83            [24] 1545 	mov	r5, dph
                                   1546 ;	dirt.c:224: delay_ms(100);
      000571 90 00 64         [24] 1547 	mov	dptr,#0x0064
      000574 C0 05            [24] 1548 	push	ar5
      000576 C0 04            [24] 1549 	push	ar4
      000578 12 00 74         [24] 1550 	lcall	_delay_ms
                                   1551 ;	dirt.c:226: int data3 = ADC_Read();
      00057B 12 04 FC         [24] 1552 	lcall	_ADC_Read
      00057E AA 82            [24] 1553 	mov	r2, dpl
      000580 AB 83            [24] 1554 	mov	r3, dph
                                   1555 ;	dirt.c:227: delay_ms(100);
      000582 90 00 64         [24] 1556 	mov	dptr,#0x0064
      000585 C0 03            [24] 1557 	push	ar3
      000587 C0 02            [24] 1558 	push	ar2
      000589 12 00 74         [24] 1559 	lcall	_delay_ms
      00058C D0 02            [24] 1560 	pop	ar2
      00058E D0 03            [24] 1561 	pop	ar3
      000590 D0 04            [24] 1562 	pop	ar4
      000592 D0 05            [24] 1563 	pop	ar5
      000594 D0 06            [24] 1564 	pop	ar6
      000596 D0 07            [24] 1565 	pop	ar7
                                   1566 ;	dirt.c:229: float realData = (data1 + data2 + data3) / 3.0;
      000598 EC               [12] 1567 	mov	a,r4
      000599 2E               [12] 1568 	add	a, r6
      00059A FE               [12] 1569 	mov	r6,a
      00059B ED               [12] 1570 	mov	a,r5
      00059C 3F               [12] 1571 	addc	a, r7
      00059D FF               [12] 1572 	mov	r7,a
      00059E EA               [12] 1573 	mov	a,r2
      00059F 2E               [12] 1574 	add	a, r6
      0005A0 F5 82            [12] 1575 	mov	dpl,a
      0005A2 EB               [12] 1576 	mov	a,r3
      0005A3 3F               [12] 1577 	addc	a, r7
      0005A4 F5 83            [12] 1578 	mov	dph,a
      0005A6 12 09 66         [24] 1579 	lcall	___sint2fs
      0005A9 AC 82            [24] 1580 	mov	r4, dpl
      0005AB AD 83            [24] 1581 	mov	r5, dph
      0005AD AE F0            [24] 1582 	mov	r6, b
      0005AF FF               [12] 1583 	mov	r7, a
      0005B0 E4               [12] 1584 	clr	a
      0005B1 C0 E0            [24] 1585 	push	acc
      0005B3 C0 E0            [24] 1586 	push	acc
      0005B5 74 40            [12] 1587 	mov	a,#0x40
      0005B7 C0 E0            [24] 1588 	push	acc
      0005B9 C0 E0            [24] 1589 	push	acc
                                   1590 ;	dirt.c:230: sendDataToServer(realData);
      0005BB 8C 82            [24] 1591 	mov	dpl, r4
      0005BD 8D 83            [24] 1592 	mov	dph, r5
      0005BF 8E F0            [24] 1593 	mov	b, r6
      0005C1 EF               [12] 1594 	mov	a, r7
      0005C2 12 09 F4         [24] 1595 	lcall	___fsdiv
      0005C5 AC 82            [24] 1596 	mov	r4, dpl
      0005C7 AD 83            [24] 1597 	mov	r5, dph
      0005C9 AE F0            [24] 1598 	mov	r6, b
      0005CB FF               [12] 1599 	mov	r7, a
      0005CC E5 81            [12] 1600 	mov	a,sp
      0005CE 24 FC            [12] 1601 	add	a,#0xfc
      0005D0 F5 81            [12] 1602 	mov	sp,a
      0005D2 8C 82            [24] 1603 	mov	dpl, r4
      0005D4 8D 83            [24] 1604 	mov	dph, r5
      0005D6 8E F0            [24] 1605 	mov	b, r6
      0005D8 EF               [12] 1606 	mov	a, r7
      0005D9 C0 07            [24] 1607 	push	ar7
      0005DB C0 06            [24] 1608 	push	ar6
      0005DD C0 05            [24] 1609 	push	ar5
      0005DF C0 04            [24] 1610 	push	ar4
      0005E1 12 03 D6         [24] 1611 	lcall	_sendDataToServer
      0005E4 D0 04            [24] 1612 	pop	ar4
      0005E6 D0 05            [24] 1613 	pop	ar5
      0005E8 D0 06            [24] 1614 	pop	ar6
      0005EA D0 07            [24] 1615 	pop	ar7
                                   1616 ;	dirt.c:232: if(realData>650)
      0005EC C0 04            [24] 1617 	push	ar4
      0005EE C0 05            [24] 1618 	push	ar5
      0005F0 C0 06            [24] 1619 	push	ar6
      0005F2 C0 07            [24] 1620 	push	ar7
      0005F4 90 80 00         [24] 1621 	mov	dptr,#0x8000
      0005F7 75 F0 22         [24] 1622 	mov	b, #0x22
      0005FA 74 44            [12] 1623 	mov	a, #0x44
      0005FC 12 07 EA         [24] 1624 	lcall	___fslt
      0005FF AF 82            [24] 1625 	mov	r7, dpl
      000601 E5 81            [12] 1626 	mov	a,sp
      000603 24 FC            [12] 1627 	add	a,#0xfc
      000605 F5 81            [12] 1628 	mov	sp,a
      000607 EF               [12] 1629 	mov	a,r7
      000608 60 0C            [24] 1630 	jz	00102$
                                   1631 ;	dirt.c:234: PUMP = 0;
                                   1632 ;	assignBit
      00060A C2 A3            [12] 1633 	clr	_P23
                                   1634 ;	dirt.c:235: delay_ms(2000);
      00060C 90 07 D0         [24] 1635 	mov	dptr,#0x07d0
      00060F C0 07            [24] 1636 	push	ar7
      000611 12 00 74         [24] 1637 	lcall	_delay_ms
      000614 D0 07            [24] 1638 	pop	ar7
      000616                       1639 00102$:
                                   1640 ;	dirt.c:238: PUMP = 1;
                                   1641 ;	assignBit
      000616 D2 A3            [12] 1642 	setb	_P23
                                   1643 ;	dirt.c:240: if(realData>650)
      000618 EF               [12] 1644 	mov	a,r7
      000619 60 09            [24] 1645 	jz	00119$
                                   1646 ;	dirt.c:242: delay_ms(20000);
      00061B 90 4E 20         [24] 1647 	mov	dptr,#0x4e20
      00061E 12 00 74         [24] 1648 	lcall	_delay_ms
                                   1649 ;	dirt.c:243: continue;
      000621 02 05 59         [24] 1650 	ljmp	00108$
                                   1651 ;	dirt.c:247: for(int i=0;i<100;i++)
      000624                       1652 00119$:
      000624 7E 00            [12] 1653 	mov	r6,#0x00
      000626 7F 00            [12] 1654 	mov	r7,#0x00
      000628                       1655 00111$:
      000628 C3               [12] 1656 	clr	c
      000629 EE               [12] 1657 	mov	a,r6
      00062A 94 64            [12] 1658 	subb	a,#0x64
      00062C EF               [12] 1659 	mov	a,r7
      00062D 64 80            [12] 1660 	xrl	a,#0x80
      00062F 94 80            [12] 1661 	subb	a,#0x80
      000631 40 03            [24] 1662 	jc	00147$
      000633 02 05 59         [24] 1663 	ljmp	00108$
      000636                       1664 00147$:
                                   1665 ;	dirt.c:249: delay_ms(10000);
      000636 90 27 10         [24] 1666 	mov	dptr,#0x2710
      000639 C0 07            [24] 1667 	push	ar7
      00063B C0 06            [24] 1668 	push	ar6
      00063D 12 00 74         [24] 1669 	lcall	_delay_ms
      000640 D0 06            [24] 1670 	pop	ar6
      000642 D0 07            [24] 1671 	pop	ar7
                                   1672 ;	dirt.c:247: for(int i=0;i<100;i++)
      000644 0E               [12] 1673 	inc	r6
      000645 BE 00 E0         [24] 1674 	cjne	r6,#0x00,00111$
      000648 0F               [12] 1675 	inc	r7
                                   1676 ;	dirt.c:260: }
      000649 80 DD            [24] 1677 	sjmp	00111$
                                   1678 	.area CSEG    (CODE)
                                   1679 	.area CONST   (CODE)
                                   1680 	.area CONST   (CODE)
      000C22                       1681 ___str_0:
      000C22 41 54 2B 43 57 4D 4F  1682 	.ascii "AT+CWMODE=1"
             44 45 3D 31
      000C2D 0D                    1683 	.db 0x0d
      000C2E 0A                    1684 	.db 0x0a
      000C2F 00                    1685 	.db 0x00
                                   1686 	.area CSEG    (CODE)
                                   1687 	.area CONST   (CODE)
      000C30                       1688 ___str_1:
      000C30 41 54 2B 43 57 4A 41  1689 	.ascii "AT+CWJAP="
             50 3D
      000C39 22                    1690 	.db 0x22
      000C3A 48 55 41 57 45 49 2D  1691 	.ascii "HUAWEI-10HOL3"
             31 30 48 4F 4C 33
      000C47 22                    1692 	.db 0x22
      000C48 2C                    1693 	.ascii ","
      000C49 22                    1694 	.db 0x22
      000C4A 38 38 35 38 38 36 38  1695 	.ascii "88588681"
             31
      000C52 22                    1696 	.db 0x22
      000C53 0D                    1697 	.db 0x0d
      000C54 0A                    1698 	.db 0x0a
      000C55 00                    1699 	.db 0x00
                                   1700 	.area CSEG    (CODE)
                                   1701 	.area CONST   (CODE)
      000C56                       1702 ___str_2:
      000C56 41 54 2B 43 49 50 53  1703 	.ascii "AT+CIPSTART="
             54 41 52 54 3D
      000C62 22                    1704 	.db 0x22
      000C63 54 43 50              1705 	.ascii "TCP"
      000C66 22                    1706 	.db 0x22
      000C67 2C                    1707 	.ascii ","
      000C68 22                    1708 	.db 0x22
      000C69 77 77 77 2E 68 6F 6D  1709 	.ascii "www.homemoni.xyz"
             65 6D 6F 6E 69 2E 78
             79 7A
      000C79 22                    1710 	.db 0x22
      000C7A 2C 38 30              1711 	.ascii ",80"
      000C7D 0D                    1712 	.db 0x0d
      000C7E 0A                    1713 	.db 0x0a
      000C7F 00                    1714 	.db 0x00
                                   1715 	.area CSEG    (CODE)
                                   1716 	.area CONST   (CODE)
      000C80                       1717 ___str_3:
      000C80 50 4F 53 54 20 2F 61  1718 	.ascii "POST /api/dirt HTTP/1.1"
             70 69 2F 64 69 72 74
             20 48 54 54 50 2F 31
             2E 31
      000C97 0D                    1719 	.db 0x0d
      000C98 0A                    1720 	.db 0x0a
      000C99 48 6F 73 74 3A 20 77  1721 	.ascii "Host: www.homemoni.xyz"
             77 77 2E 68 6F 6D 65
             6D 6F 6E 69 2E 78 79
             7A
      000CAF 0D                    1722 	.db 0x0d
      000CB0 0A                    1723 	.db 0x0a
      000CB1 43 6F 6E 74 65 6E 74  1724 	.ascii "Content-Type: application/json"
             2D 54 79 70 65 3A 20
             61 70 70 6C 69 63 61
             74 69 6F 6E 2F 6A 73
             6F 6E
      000CCF 0D                    1725 	.db 0x0d
      000CD0 0A                    1726 	.db 0x0a
      000CD1 43 6F 6E 74 65 6E 74  1727 	.ascii "Content-Length: 80"
             2D 4C 65 6E 67 74 68
             3A 20 38 30
      000CE3 0D                    1728 	.db 0x0d
      000CE4 0A                    1729 	.db 0x0a
      000CE5 0D                    1730 	.db 0x0d
      000CE6 0A                    1731 	.db 0x0a
      000CE7 7B                    1732 	.ascii "{"
      000CE8 22                    1733 	.db 0x22
      000CE9 6D 6F 73 69 74 75 72  1734 	.ascii "mositure"
             65
      000CF1 22                    1735 	.db 0x22
      000CF2 3A                    1736 	.ascii ":"
      000CF3 00                    1737 	.db 0x00
                                   1738 	.area CSEG    (CODE)
                                   1739 	.area CONST   (CODE)
      000CF4                       1740 ___str_4:
      000CF4 2C                    1741 	.ascii ","
      000CF5 22                    1742 	.db 0x22
      000CF6 73 69 74 65 4E 61 6D  1743 	.ascii "siteName"
             65
      000CFE 22                    1744 	.db 0x22
      000CFF 3A                    1745 	.ascii ":"
      000D00 22                    1746 	.db 0x22
      000D01 50 6F 74 20 31        1747 	.ascii "Pot 1"
      000D06 22                    1748 	.db 0x22
      000D07 7D                    1749 	.ascii "}"
      000D08 0D                    1750 	.db 0x0d
      000D09 0A                    1751 	.db 0x0a
      000D0A 00                    1752 	.db 0x00
                                   1753 	.area CSEG    (CODE)
                                   1754 	.area CONST   (CODE)
      000D0B                       1755 ___str_5:
      000D0B 41 54 2B 43 49 50 53  1756 	.ascii "AT+CIPSEND="
             45 4E 44 3D
      000D16 00                    1757 	.db 0x00
                                   1758 	.area CSEG    (CODE)
                                   1759 	.area CONST   (CODE)
      000D17                       1760 ___str_6:
      000D17 0D                    1761 	.db 0x0d
      000D18 0A                    1762 	.db 0x0a
      000D19 00                    1763 	.db 0x00
                                   1764 	.area CSEG    (CODE)
                                   1765 	.area CONST   (CODE)
      000D1A                       1766 ___str_7:
      000D1A 41 54 2B 47 53 4C 50  1767 	.ascii "AT+GSLP=720000"
             3D 37 32 30 30 30 30
      000D28 0D                    1768 	.db 0x0d
      000D29 0A                    1769 	.db 0x0a
      000D2A 00                    1770 	.db 0x00
                                   1771 	.area CSEG    (CODE)
                                   1772 	.area XINIT   (CODE)
                                   1773 	.area CABS    (ABS,CODE)
