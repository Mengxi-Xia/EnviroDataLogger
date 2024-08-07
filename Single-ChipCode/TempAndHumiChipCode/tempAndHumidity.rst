                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module tempAndHumidity
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _sendDataToServer
                                     13 	.globl _reopenUART
                                     14 	.globl _Uart1_Init
                                     15 	.globl _UART_SendString
                                     16 	.globl _UART_SendByte
                                     17 	.globl _DHT22_read
                                     18 	.globl _DHT22_init
                                     19 	.globl _display_number
                                     20 	.globl _INT0_ISR
                                     21 	.globl _delay_ms
                                     22 	.globl _delay_us
                                     23 	.globl _intToStr
                                     24 	.globl _floatToStr
                                     25 	.globl _strlen
                                     26 	.globl _memset
                                     27 	.globl _strcat
                                     28 	.globl _CCF0
                                     29 	.globl _CCF1
                                     30 	.globl _CCF2
                                     31 	.globl _CR
                                     32 	.globl _CF
                                     33 	.globl _R2I
                                     34 	.globl _T2I
                                     35 	.globl _R2B8
                                     36 	.globl _T2B8
                                     37 	.globl _R2EN
                                     38 	.globl _S2M2
                                     39 	.globl _S2M1
                                     40 	.globl _S2M0
                                     41 	.globl _RI
                                     42 	.globl _TI
                                     43 	.globl _RB8
                                     44 	.globl _TB8
                                     45 	.globl _REN
                                     46 	.globl _SM2
                                     47 	.globl _SM1
                                     48 	.globl _SM0
                                     49 	.globl _IT0
                                     50 	.globl _IE0
                                     51 	.globl _IT1
                                     52 	.globl _IE1
                                     53 	.globl _TR0
                                     54 	.globl _TF0
                                     55 	.globl _TR1
                                     56 	.globl _TF1
                                     57 	.globl _PX0
                                     58 	.globl _PT0
                                     59 	.globl _PX1
                                     60 	.globl _PT1
                                     61 	.globl _PS
                                     62 	.globl _PADC
                                     63 	.globl _PLVD
                                     64 	.globl _PPCA
                                     65 	.globl _EX0
                                     66 	.globl _ET0
                                     67 	.globl _EX1
                                     68 	.globl _ET1
                                     69 	.globl _ES
                                     70 	.globl _EADC
                                     71 	.globl _ELVD
                                     72 	.globl _EA
                                     73 	.globl _P77
                                     74 	.globl _P76
                                     75 	.globl _P75
                                     76 	.globl _P74
                                     77 	.globl _P73
                                     78 	.globl _P72
                                     79 	.globl _P71
                                     80 	.globl _P70
                                     81 	.globl _P67
                                     82 	.globl _P66
                                     83 	.globl _P65
                                     84 	.globl _P64
                                     85 	.globl _P63
                                     86 	.globl _P62
                                     87 	.globl _P61
                                     88 	.globl _P60
                                     89 	.globl _P57
                                     90 	.globl _P56
                                     91 	.globl _P55
                                     92 	.globl _P54
                                     93 	.globl _P53
                                     94 	.globl _P52
                                     95 	.globl _P51
                                     96 	.globl _P50
                                     97 	.globl _P47
                                     98 	.globl _P46
                                     99 	.globl _P45
                                    100 	.globl _P44
                                    101 	.globl _P43
                                    102 	.globl _P42
                                    103 	.globl _P41
                                    104 	.globl _P40
                                    105 	.globl _P37
                                    106 	.globl _P36
                                    107 	.globl _P35
                                    108 	.globl _P34
                                    109 	.globl _P33
                                    110 	.globl _P32
                                    111 	.globl _P31
                                    112 	.globl _P30
                                    113 	.globl _P27
                                    114 	.globl _P26
                                    115 	.globl _P25
                                    116 	.globl _P24
                                    117 	.globl _P23
                                    118 	.globl _P22
                                    119 	.globl _P21
                                    120 	.globl _P20
                                    121 	.globl _P17
                                    122 	.globl _P16
                                    123 	.globl _P15
                                    124 	.globl _P14
                                    125 	.globl _P13
                                    126 	.globl _P12
                                    127 	.globl _P11
                                    128 	.globl _P10
                                    129 	.globl _P07
                                    130 	.globl _P06
                                    131 	.globl _P05
                                    132 	.globl _P04
                                    133 	.globl _P03
                                    134 	.globl _P02
                                    135 	.globl _P01
                                    136 	.globl _P00
                                    137 	.globl _P
                                    138 	.globl _F1
                                    139 	.globl _OV
                                    140 	.globl _RS0
                                    141 	.globl _RS1
                                    142 	.globl _F0
                                    143 	.globl _AC
                                    144 	.globl _CY
                                    145 	.globl _PWMFDCR
                                    146 	.globl _PWMIF
                                    147 	.globl _PWMCR
                                    148 	.globl _PWMCFG
                                    149 	.globl _CMPCR2
                                    150 	.globl _CMPCR1
                                    151 	.globl _CCAP2H
                                    152 	.globl _CCAP1H
                                    153 	.globl _CCAP0H
                                    154 	.globl _PCA_PWM2
                                    155 	.globl _PCA_PWM1
                                    156 	.globl _PCA_PWM0
                                    157 	.globl _CCAP2L
                                    158 	.globl _CCAP1L
                                    159 	.globl _CCAP0L
                                    160 	.globl _CCAPM2
                                    161 	.globl _CCAPM1
                                    162 	.globl _CCAPM0
                                    163 	.globl _CH
                                    164 	.globl _CL
                                    165 	.globl _CMOD
                                    166 	.globl _CCON
                                    167 	.globl _IAP_CONTR
                                    168 	.globl _IAP_TRIG
                                    169 	.globl _IAP_CMD
                                    170 	.globl _IAP_ADDRL
                                    171 	.globl _IAP_ADDRH
                                    172 	.globl _IAP_DATA
                                    173 	.globl _SPDAT
                                    174 	.globl _SPCTL
                                    175 	.globl _SPSTAT
                                    176 	.globl _ADC_RESL
                                    177 	.globl _ADC_RES
                                    178 	.globl _ADC_CONTR
                                    179 	.globl _SADEN
                                    180 	.globl _SADDR
                                    181 	.globl _S4BUF
                                    182 	.globl _S4CON
                                    183 	.globl _S3BUF
                                    184 	.globl _S3CON
                                    185 	.globl _S2BUF
                                    186 	.globl _S2CON
                                    187 	.globl _SBUF
                                    188 	.globl _SCON
                                    189 	.globl _WDT_CONTR
                                    190 	.globl _WKTCH
                                    191 	.globl _WKTCL
                                    192 	.globl _T2L
                                    193 	.globl _T2H
                                    194 	.globl _T3L
                                    195 	.globl _T3H
                                    196 	.globl _T4L
                                    197 	.globl _T4H
                                    198 	.globl _T3T4M
                                    199 	.globl _T4T3M
                                    200 	.globl _TH1
                                    201 	.globl _TH0
                                    202 	.globl _TL1
                                    203 	.globl _TL0
                                    204 	.globl _TMOD
                                    205 	.globl _TCON
                                    206 	.globl _INT_CLKO
                                    207 	.globl _IP2
                                    208 	.globl _IE2
                                    209 	.globl _IP
                                    210 	.globl _IE
                                    211 	.globl _P_SW2
                                    212 	.globl _P1ASF
                                    213 	.globl _BUS_SPEED
                                    214 	.globl _CLK_DIV
                                    215 	.globl _P_SW1
                                    216 	.globl _AUXR1
                                    217 	.globl _AUXR
                                    218 	.globl _PCON
                                    219 	.globl _P7M1
                                    220 	.globl _P7M0
                                    221 	.globl _P6M1
                                    222 	.globl _P6M0
                                    223 	.globl _P5M1
                                    224 	.globl _P5M0
                                    225 	.globl _P4M1
                                    226 	.globl _P4M0
                                    227 	.globl _P3M1
                                    228 	.globl _P3M0
                                    229 	.globl _P2M1
                                    230 	.globl _P2M0
                                    231 	.globl _P1M1
                                    232 	.globl _P1M0
                                    233 	.globl _P0M1
                                    234 	.globl _P0M0
                                    235 	.globl _P7
                                    236 	.globl _P6
                                    237 	.globl _P5
                                    238 	.globl _P4
                                    239 	.globl _P3
                                    240 	.globl _P2
                                    241 	.globl _P1
                                    242 	.globl _P0
                                    243 	.globl _DPH
                                    244 	.globl _DPL
                                    245 	.globl _SP
                                    246 	.globl _PSW
                                    247 	.globl _B
                                    248 	.globl _ACC
                                    249 	.globl _floatToStr_PARM_2
                                    250 	.globl _sendDataToServer_PARM_2
                                    251 	.globl _display_number_PARM_2
                                    252 	.globl _intToStr_PARM_2
                                    253 	.globl _tempNegativeSign
                                    254 	.globl _comfimed
                                    255 	.globl _justPressed
                                    256 	.globl _displayHumidity
                                    257 	.globl _data
                                    258 	.globl _seg_code
                                    259 ;--------------------------------------------------------
                                    260 ; special function registers
                                    261 ;--------------------------------------------------------
                                    262 	.area RSEG    (ABS,DATA)
      000000                        263 	.org 0x0000
                           0000E0   264 _ACC	=	0x00e0
                           0000F0   265 _B	=	0x00f0
                           0000D0   266 _PSW	=	0x00d0
                           000081   267 _SP	=	0x0081
                           000082   268 _DPL	=	0x0082
                           000083   269 _DPH	=	0x0083
                           000080   270 _P0	=	0x0080
                           000090   271 _P1	=	0x0090
                           0000A0   272 _P2	=	0x00a0
                           0000B0   273 _P3	=	0x00b0
                           0000C0   274 _P4	=	0x00c0
                           0000C8   275 _P5	=	0x00c8
                           0000E8   276 _P6	=	0x00e8
                           0000F8   277 _P7	=	0x00f8
                           000094   278 _P0M0	=	0x0094
                           000093   279 _P0M1	=	0x0093
                           000092   280 _P1M0	=	0x0092
                           000091   281 _P1M1	=	0x0091
                           000096   282 _P2M0	=	0x0096
                           000095   283 _P2M1	=	0x0095
                           0000B2   284 _P3M0	=	0x00b2
                           0000B1   285 _P3M1	=	0x00b1
                           0000B4   286 _P4M0	=	0x00b4
                           0000B3   287 _P4M1	=	0x00b3
                           0000CA   288 _P5M0	=	0x00ca
                           0000C9   289 _P5M1	=	0x00c9
                           0000CC   290 _P6M0	=	0x00cc
                           0000CB   291 _P6M1	=	0x00cb
                           0000E2   292 _P7M0	=	0x00e2
                           0000E1   293 _P7M1	=	0x00e1
                           000087   294 _PCON	=	0x0087
                           00008E   295 _AUXR	=	0x008e
                           0000A2   296 _AUXR1	=	0x00a2
                           0000A2   297 _P_SW1	=	0x00a2
                           000097   298 _CLK_DIV	=	0x0097
                           0000A1   299 _BUS_SPEED	=	0x00a1
                           00009D   300 _P1ASF	=	0x009d
                           0000BA   301 _P_SW2	=	0x00ba
                           0000A8   302 _IE	=	0x00a8
                           0000B8   303 _IP	=	0x00b8
                           0000AF   304 _IE2	=	0x00af
                           0000B5   305 _IP2	=	0x00b5
                           00008F   306 _INT_CLKO	=	0x008f
                           000088   307 _TCON	=	0x0088
                           000089   308 _TMOD	=	0x0089
                           00008A   309 _TL0	=	0x008a
                           00008B   310 _TL1	=	0x008b
                           00008C   311 _TH0	=	0x008c
                           00008D   312 _TH1	=	0x008d
                           0000D1   313 _T4T3M	=	0x00d1
                           0000D1   314 _T3T4M	=	0x00d1
                           0000D2   315 _T4H	=	0x00d2
                           0000D3   316 _T4L	=	0x00d3
                           0000D4   317 _T3H	=	0x00d4
                           0000D5   318 _T3L	=	0x00d5
                           0000D6   319 _T2H	=	0x00d6
                           0000D7   320 _T2L	=	0x00d7
                           0000AA   321 _WKTCL	=	0x00aa
                           0000AB   322 _WKTCH	=	0x00ab
                           0000C1   323 _WDT_CONTR	=	0x00c1
                           000098   324 _SCON	=	0x0098
                           000099   325 _SBUF	=	0x0099
                           00009A   326 _S2CON	=	0x009a
                           00009B   327 _S2BUF	=	0x009b
                           0000AC   328 _S3CON	=	0x00ac
                           0000AD   329 _S3BUF	=	0x00ad
                           000084   330 _S4CON	=	0x0084
                           000085   331 _S4BUF	=	0x0085
                           0000A9   332 _SADDR	=	0x00a9
                           0000B9   333 _SADEN	=	0x00b9
                           0000BC   334 _ADC_CONTR	=	0x00bc
                           0000BD   335 _ADC_RES	=	0x00bd
                           0000BE   336 _ADC_RESL	=	0x00be
                           0000CD   337 _SPSTAT	=	0x00cd
                           0000CE   338 _SPCTL	=	0x00ce
                           0000CF   339 _SPDAT	=	0x00cf
                           0000C2   340 _IAP_DATA	=	0x00c2
                           0000C3   341 _IAP_ADDRH	=	0x00c3
                           0000C4   342 _IAP_ADDRL	=	0x00c4
                           0000C5   343 _IAP_CMD	=	0x00c5
                           0000C6   344 _IAP_TRIG	=	0x00c6
                           0000C7   345 _IAP_CONTR	=	0x00c7
                           0000D8   346 _CCON	=	0x00d8
                           0000D9   347 _CMOD	=	0x00d9
                           0000E9   348 _CL	=	0x00e9
                           0000F9   349 _CH	=	0x00f9
                           0000DA   350 _CCAPM0	=	0x00da
                           0000DB   351 _CCAPM1	=	0x00db
                           0000DC   352 _CCAPM2	=	0x00dc
                           0000EA   353 _CCAP0L	=	0x00ea
                           0000EB   354 _CCAP1L	=	0x00eb
                           0000EC   355 _CCAP2L	=	0x00ec
                           0000F2   356 _PCA_PWM0	=	0x00f2
                           0000F3   357 _PCA_PWM1	=	0x00f3
                           0000F4   358 _PCA_PWM2	=	0x00f4
                           0000FA   359 _CCAP0H	=	0x00fa
                           0000FB   360 _CCAP1H	=	0x00fb
                           0000FC   361 _CCAP2H	=	0x00fc
                           0000E6   362 _CMPCR1	=	0x00e6
                           0000E7   363 _CMPCR2	=	0x00e7
                           0000F1   364 _PWMCFG	=	0x00f1
                           0000F5   365 _PWMCR	=	0x00f5
                           0000F6   366 _PWMIF	=	0x00f6
                           0000F7   367 _PWMFDCR	=	0x00f7
                                    368 ;--------------------------------------------------------
                                    369 ; special function bits
                                    370 ;--------------------------------------------------------
                                    371 	.area RSEG    (ABS,DATA)
      000000                        372 	.org 0x0000
                           0000D7   373 _CY	=	0x00d7
                           0000D6   374 _AC	=	0x00d6
                           0000D5   375 _F0	=	0x00d5
                           0000D4   376 _RS1	=	0x00d4
                           0000D3   377 _RS0	=	0x00d3
                           0000D2   378 _OV	=	0x00d2
                           0000D1   379 _F1	=	0x00d1
                           0000D0   380 _P	=	0x00d0
                           000080   381 _P00	=	0x0080
                           000081   382 _P01	=	0x0081
                           000082   383 _P02	=	0x0082
                           000083   384 _P03	=	0x0083
                           000084   385 _P04	=	0x0084
                           000085   386 _P05	=	0x0085
                           000086   387 _P06	=	0x0086
                           000087   388 _P07	=	0x0087
                           000090   389 _P10	=	0x0090
                           000091   390 _P11	=	0x0091
                           000092   391 _P12	=	0x0092
                           000093   392 _P13	=	0x0093
                           000094   393 _P14	=	0x0094
                           000095   394 _P15	=	0x0095
                           000096   395 _P16	=	0x0096
                           000097   396 _P17	=	0x0097
                           0000A0   397 _P20	=	0x00a0
                           0000A1   398 _P21	=	0x00a1
                           0000A2   399 _P22	=	0x00a2
                           0000A3   400 _P23	=	0x00a3
                           0000A4   401 _P24	=	0x00a4
                           0000A5   402 _P25	=	0x00a5
                           0000A6   403 _P26	=	0x00a6
                           0000A7   404 _P27	=	0x00a7
                           0000B0   405 _P30	=	0x00b0
                           0000B1   406 _P31	=	0x00b1
                           0000B2   407 _P32	=	0x00b2
                           0000B3   408 _P33	=	0x00b3
                           0000B4   409 _P34	=	0x00b4
                           0000B5   410 _P35	=	0x00b5
                           0000B6   411 _P36	=	0x00b6
                           0000B7   412 _P37	=	0x00b7
                           0000C0   413 _P40	=	0x00c0
                           0000C1   414 _P41	=	0x00c1
                           0000C2   415 _P42	=	0x00c2
                           0000C3   416 _P43	=	0x00c3
                           0000C4   417 _P44	=	0x00c4
                           0000C5   418 _P45	=	0x00c5
                           0000C6   419 _P46	=	0x00c6
                           0000C7   420 _P47	=	0x00c7
                           0000C8   421 _P50	=	0x00c8
                           0000C9   422 _P51	=	0x00c9
                           0000CA   423 _P52	=	0x00ca
                           0000CB   424 _P53	=	0x00cb
                           0000CC   425 _P54	=	0x00cc
                           0000CD   426 _P55	=	0x00cd
                           0000CE   427 _P56	=	0x00ce
                           0000CF   428 _P57	=	0x00cf
                           0000E8   429 _P60	=	0x00e8
                           0000E9   430 _P61	=	0x00e9
                           0000EA   431 _P62	=	0x00ea
                           0000EB   432 _P63	=	0x00eb
                           0000EC   433 _P64	=	0x00ec
                           0000ED   434 _P65	=	0x00ed
                           0000EE   435 _P66	=	0x00ee
                           0000EF   436 _P67	=	0x00ef
                           0000F8   437 _P70	=	0x00f8
                           0000F9   438 _P71	=	0x00f9
                           0000FA   439 _P72	=	0x00fa
                           0000FB   440 _P73	=	0x00fb
                           0000FC   441 _P74	=	0x00fc
                           0000FD   442 _P75	=	0x00fd
                           0000FE   443 _P76	=	0x00fe
                           0000FF   444 _P77	=	0x00ff
                           0000AF   445 _EA	=	0x00af
                           0000AE   446 _ELVD	=	0x00ae
                           0000AD   447 _EADC	=	0x00ad
                           0000AC   448 _ES	=	0x00ac
                           0000AB   449 _ET1	=	0x00ab
                           0000AA   450 _EX1	=	0x00aa
                           0000A9   451 _ET0	=	0x00a9
                           0000A8   452 _EX0	=	0x00a8
                           0000BF   453 _PPCA	=	0x00bf
                           0000BE   454 _PLVD	=	0x00be
                           0000BD   455 _PADC	=	0x00bd
                           0000BC   456 _PS	=	0x00bc
                           0000BB   457 _PT1	=	0x00bb
                           0000BA   458 _PX1	=	0x00ba
                           0000B9   459 _PT0	=	0x00b9
                           0000B8   460 _PX0	=	0x00b8
                           00008F   461 _TF1	=	0x008f
                           00008E   462 _TR1	=	0x008e
                           00008D   463 _TF0	=	0x008d
                           00008C   464 _TR0	=	0x008c
                           00008B   465 _IE1	=	0x008b
                           00008A   466 _IT1	=	0x008a
                           000089   467 _IE0	=	0x0089
                           000088   468 _IT0	=	0x0088
                           00009F   469 _SM0	=	0x009f
                           00009E   470 _SM1	=	0x009e
                           00009D   471 _SM2	=	0x009d
                           00009C   472 _REN	=	0x009c
                           00009B   473 _TB8	=	0x009b
                           00009A   474 _RB8	=	0x009a
                           000099   475 _TI	=	0x0099
                           000098   476 _RI	=	0x0098
                           0000A1   477 _S2M0	=	0x00a1
                           0000A0   478 _S2M1	=	0x00a0
                           00009F   479 _S2M2	=	0x009f
                           00009E   480 _R2EN	=	0x009e
                           00009D   481 _T2B8	=	0x009d
                           00009C   482 _R2B8	=	0x009c
                           00009B   483 _T2I	=	0x009b
                           00009A   484 _R2I	=	0x009a
                           0000DF   485 _CF	=	0x00df
                           0000DE   486 _CR	=	0x00de
                           0000DA   487 _CCF2	=	0x00da
                           0000D9   488 _CCF1	=	0x00d9
                           0000D8   489 _CCF0	=	0x00d8
                                    490 ;--------------------------------------------------------
                                    491 ; overlayable register banks
                                    492 ;--------------------------------------------------------
                                    493 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        494 	.ds 8
                                    495 ;--------------------------------------------------------
                                    496 ; internal ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area DSEG    (DATA)
      000008                        499 _seg_code::
      000008                        500 	.ds 11
      000013                        501 _data::
      000013                        502 	.ds 5
      000018                        503 _displayHumidity::
      000018                        504 	.ds 1
      000019                        505 _justPressed::
      000019                        506 	.ds 1
      00001A                        507 _comfimed::
      00001A                        508 	.ds 2
      00001C                        509 _tempNegativeSign::
      00001C                        510 	.ds 1
      00001D                        511 _floatToStr_num_10000_49:
      00001D                        512 	.ds 4
      000021                        513 _floatToStr_negative_10000_50:
      000021                        514 	.ds 1
      000022                        515 _floatToStr_integerPart_10001_52:
      000022                        516 	.ds 2
      000024                        517 _floatToStr_start_10002_54:
      000024                        518 	.ds 2
      000026                        519 _floatToStr_temp_30003_59:
      000026                        520 	.ds 1
      000027                        521 _floatToStr_sloc0_1_0:
      000027                        522 	.ds 2
      000029                        523 _floatToStr_sloc1_1_0:
      000029                        524 	.ds 2
      00002B                        525 _floatToStr_sloc2_1_0:
      00002B                        526 	.ds 2
      00002D                        527 _intToStr_PARM_2:
      00002D                        528 	.ds 3
      000030                        529 _intToStr_i_10000_61:
      000030                        530 	.ds 2
      000032                        531 _intToStr_start_10001_63:
      000032                        532 	.ds 2
      000034                        533 _intToStr_temp_10001_63:
      000034                        534 	.ds 1
      000035                        535 _intToStr_sloc0_1_0:
      000035                        536 	.ds 3
      000038                        537 _display_number_PARM_2:
      000038                        538 	.ds 1
      000039                        539 _sendDataToServer_PARM_2:
      000039                        540 	.ds 4
      00003D                        541 _main_tempSecondDigit_30002_109:
      00003D                        542 	.ds 1
      00003E                        543 _main_tempFirstDigit_30002_109:
      00003E                        544 	.ds 1
      00003F                        545 _main_tempPointFirstDigit_30002_109:
      00003F                        546 	.ds 1
      000040                        547 _main_humidityThirdDigit_30002_109:
      000040                        548 	.ds 1
      000041                        549 _main_humiditySecondDigit_30002_109:
      000041                        550 	.ds 1
      000042                        551 _main_humidityFirstDigit_30002_109:
      000042                        552 	.ds 1
      000043                        553 _main_humidityPointFirstDigit_30002_109:
      000043                        554 	.ds 1
      000044                        555 _main_true_temp_30002_109:
      000044                        556 	.ds 4
                                    557 ;--------------------------------------------------------
                                    558 ; overlayable items in internal ram
                                    559 ;--------------------------------------------------------
                                    560 	.area	OSEG    (OVR,DATA)
                                    561 	.area	OSEG    (OVR,DATA)
                                    562 ;--------------------------------------------------------
                                    563 ; Stack segment in internal ram
                                    564 ;--------------------------------------------------------
                                    565 	.area SSEG
      00004E                        566 __start__stack:
      00004E                        567 	.ds	1
                                    568 
                                    569 ;--------------------------------------------------------
                                    570 ; indirectly addressable internal ram data
                                    571 ;--------------------------------------------------------
                                    572 	.area ISEG    (DATA)
                                    573 ;--------------------------------------------------------
                                    574 ; absolute internal ram data
                                    575 ;--------------------------------------------------------
                                    576 	.area IABS    (ABS,DATA)
                                    577 	.area IABS    (ABS,DATA)
                                    578 ;--------------------------------------------------------
                                    579 ; bit data
                                    580 ;--------------------------------------------------------
                                    581 	.area BSEG    (BIT)
                                    582 ;--------------------------------------------------------
                                    583 ; paged external ram data
                                    584 ;--------------------------------------------------------
                                    585 	.area PSEG    (PAG,XDATA)
                                    586 ;--------------------------------------------------------
                                    587 ; uninitialized external ram data
                                    588 ;--------------------------------------------------------
                                    589 	.area XSEG    (XDATA)
      000001                        590 _floatToStr_PARM_2:
      000001                        591 	.ds 2
      000003                        592 _sendDataToServer_body_10001_99:
      000003                        593 	.ds 200
      0000CB                        594 _sendDataToServer_tempStr_10002_100:
      0000CB                        595 	.ds 6
      0000D1                        596 _sendDataToServer_humiStr_10003_101:
      0000D1                        597 	.ds 6
      0000D7                        598 _sendDataToServer_bodyLengthStr_10005_103:
      0000D7                        599 	.ds 4
                                    600 ;--------------------------------------------------------
                                    601 ; absolute external ram data
                                    602 ;--------------------------------------------------------
                                    603 	.area XABS    (ABS,XDATA)
                                    604 ;--------------------------------------------------------
                                    605 ; initialized external ram data
                                    606 ;--------------------------------------------------------
                                    607 	.area XISEG   (XDATA)
                                    608 	.area HOME    (CODE)
                                    609 	.area GSINIT0 (CODE)
                                    610 	.area GSINIT1 (CODE)
                                    611 	.area GSINIT2 (CODE)
                                    612 	.area GSINIT3 (CODE)
                                    613 	.area GSINIT4 (CODE)
                                    614 	.area GSINIT5 (CODE)
                                    615 	.area GSINIT  (CODE)
                                    616 	.area GSFINAL (CODE)
                                    617 	.area CSEG    (CODE)
                                    618 ;--------------------------------------------------------
                                    619 ; interrupt vector
                                    620 ;--------------------------------------------------------
                                    621 	.area HOME    (CODE)
      000000                        622 __interrupt_vect:
      000000 02 00 09         [24]  623 	ljmp	__sdcc_gsinit_startup
      000003 02 03 9C         [24]  624 	ljmp	_INT0_ISR
                                    625 ;--------------------------------------------------------
                                    626 ; global & static initialisations
                                    627 ;--------------------------------------------------------
                                    628 	.area HOME    (CODE)
                                    629 	.area GSINIT  (CODE)
                                    630 	.area GSFINAL (CODE)
                                    631 	.area GSINIT  (CODE)
                                    632 	.globl __sdcc_gsinit_startup
                                    633 	.globl __sdcc_program_startup
                                    634 	.globl __start__stack
                                    635 	.globl __mcs51_genXINIT
                                    636 	.globl __mcs51_genXRAMCLEAR
                                    637 	.globl __mcs51_genRAMCLEAR
                                    638 ;	tempAndHumidity.c:35: unsigned char seg_code[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x40};
      000062 75 08 3F         [24]  639 	mov	_seg_code,#0x3f
      000065 75 09 06         [24]  640 	mov	(_seg_code + 0x0001),#0x06
      000068 75 0A 5B         [24]  641 	mov	(_seg_code + 0x0002),#0x5b
      00006B 75 0B 4F         [24]  642 	mov	(_seg_code + 0x0003),#0x4f
      00006E 75 0C 66         [24]  643 	mov	(_seg_code + 0x0004),#0x66
      000071 75 0D 6D         [24]  644 	mov	(_seg_code + 0x0005),#0x6d
      000074 75 0E 7D         [24]  645 	mov	(_seg_code + 0x0006),#0x7d
      000077 75 0F 07         [24]  646 	mov	(_seg_code + 0x0007),#0x07
      00007A 75 10 7F         [24]  647 	mov	(_seg_code + 0x0008),#0x7f
      00007D 75 11 6F         [24]  648 	mov	(_seg_code + 0x0009),#0x6f
      000080 75 12 40         [24]  649 	mov	(_seg_code + 0x000a),#0x40
                                    650 	.area GSFINAL (CODE)
      000083 02 00 06         [24]  651 	ljmp	__sdcc_program_startup
                                    652 ;--------------------------------------------------------
                                    653 ; Home
                                    654 ;--------------------------------------------------------
                                    655 	.area HOME    (CODE)
                                    656 	.area HOME    (CODE)
      000006                        657 __sdcc_program_startup:
      000006 02 06 78         [24]  658 	ljmp	_main
                                    659 ;	return from main will return to caller
                                    660 ;--------------------------------------------------------
                                    661 ; code
                                    662 ;--------------------------------------------------------
                                    663 	.area CSEG    (CODE)
                                    664 ;------------------------------------------------------------
                                    665 ;Allocation info for local variables in function 'floatToStr'
                                    666 ;------------------------------------------------------------
                                    667 ;num                       Allocated with name '_floatToStr_num_10000_49'
                                    668 ;negative                  Allocated with name '_floatToStr_negative_10000_50'
                                    669 ;integerPart               Allocated with name '_floatToStr_integerPart_10001_52'
                                    670 ;decimalPart               Allocated to registers 
                                    671 ;i                         Allocated to registers r1 r2 
                                    672 ;start                     Allocated with name '_floatToStr_start_10002_54'
                                    673 ;end                       Allocated to registers 
                                    674 ;temp                      Allocated with name '_floatToStr_temp_30003_59'
                                    675 ;sloc0                     Allocated with name '_floatToStr_sloc0_1_0'
                                    676 ;sloc1                     Allocated with name '_floatToStr_sloc1_1_0'
                                    677 ;sloc2                     Allocated with name '_floatToStr_sloc2_1_0'
                                    678 ;str                       Allocated with name '_floatToStr_PARM_2'
                                    679 ;------------------------------------------------------------
                                    680 ;	tempAndHumidity.c:43: void floatToStr(float num,__xdata unsigned char str[]) 
                                    681 ;	-----------------------------------------
                                    682 ;	 function floatToStr
                                    683 ;	-----------------------------------------
      000086                        684 _floatToStr:
                           000007   685 	ar7 = 0x07
                           000006   686 	ar6 = 0x06
                           000005   687 	ar5 = 0x05
                           000004   688 	ar4 = 0x04
                           000003   689 	ar3 = 0x03
                           000002   690 	ar2 = 0x02
                           000001   691 	ar1 = 0x01
                           000000   692 	ar0 = 0x00
      000086 85 82 1D         [24]  693 	mov	_floatToStr_num_10000_49,dpl
      000089 85 83 1E         [24]  694 	mov	(_floatToStr_num_10000_49 + 1),dph
      00008C 85 F0 1F         [24]  695 	mov	(_floatToStr_num_10000_49 + 2),b
      00008F F5 20            [12]  696 	mov	(_floatToStr_num_10000_49 + 3),a
                                    697 ;	tempAndHumidity.c:45: bool negative = 0;
                                    698 ;	tempAndHumidity.c:46: if (num < 0) 
      000091 E4               [12]  699 	clr	a
      000092 F5 21            [12]  700 	mov	_floatToStr_negative_10000_50,a
      000094 C0 E0            [24]  701 	push	acc
      000096 C0 E0            [24]  702 	push	acc
      000098 C0 E0            [24]  703 	push	acc
      00009A C0 E0            [24]  704 	push	acc
      00009C 85 1D 82         [24]  705 	mov	dpl, _floatToStr_num_10000_49
      00009F 85 1E 83         [24]  706 	mov	dph, (_floatToStr_num_10000_49 + 1)
      0000A2 85 1F F0         [24]  707 	mov	b, (_floatToStr_num_10000_49 + 2)
      0000A5 E5 20            [12]  708 	mov	a, (_floatToStr_num_10000_49 + 3)
      0000A7 12 0A EB         [24]  709 	lcall	___fslt
      0000AA AB 82            [24]  710 	mov	r3, dpl
      0000AC E5 81            [12]  711 	mov	a,sp
      0000AE 24 FC            [12]  712 	add	a,#0xfc
      0000B0 F5 81            [12]  713 	mov	sp,a
      0000B2 EB               [12]  714 	mov	a,r3
      0000B3 60 09            [24]  715 	jz	00102$
                                    716 ;	tempAndHumidity.c:48: num = -num;
      0000B5 E5 20            [12]  717 	mov	a,(_floatToStr_num_10000_49 + 3)
      0000B7 B2 E7            [12]  718 	cpl	acc.7
      0000B9 F5 20            [12]  719 	mov	(_floatToStr_num_10000_49 + 3),a
                                    720 ;	tempAndHumidity.c:49: negative = 1;
      0000BB 75 21 01         [24]  721 	mov	_floatToStr_negative_10000_50,#0x01
      0000BE                        722 00102$:
                                    723 ;	tempAndHumidity.c:52: int integerPart = (int)num;
      0000BE 85 1D 82         [24]  724 	mov	dpl, _floatToStr_num_10000_49
      0000C1 85 1E 83         [24]  725 	mov	dph, (_floatToStr_num_10000_49 + 1)
      0000C4 85 1F F0         [24]  726 	mov	b, (_floatToStr_num_10000_49 + 2)
      0000C7 E5 20            [12]  727 	mov	a, (_floatToStr_num_10000_49 + 3)
      0000C9 12 0C 0A         [24]  728 	lcall	___fs2sint
                                    729 ;	tempAndHumidity.c:53: int decimalPart = (int)((num - (float)integerPart) * 10);
      0000CC 85 82 22         [24]  730 	mov	_floatToStr_integerPart_10001_52,dpl
      0000CF 85 83 23         [24]  731 	mov  (_floatToStr_integerPart_10001_52 + 1),dph
      0000D2 12 0C 3E         [24]  732 	lcall	___sint2fs
      0000D5 A8 82            [24]  733 	mov	r0, dpl
      0000D7 A9 83            [24]  734 	mov	r1, dph
      0000D9 AE F0            [24]  735 	mov	r6, b
      0000DB FF               [12]  736 	mov	r7, a
      0000DC C0 00            [24]  737 	push	ar0
      0000DE C0 01            [24]  738 	push	ar1
      0000E0 C0 06            [24]  739 	push	ar6
      0000E2 C0 07            [24]  740 	push	ar7
      0000E4 85 1D 82         [24]  741 	mov	dpl, _floatToStr_num_10000_49
      0000E7 85 1E 83         [24]  742 	mov	dph, (_floatToStr_num_10000_49 + 1)
      0000EA 85 1F F0         [24]  743 	mov	b, (_floatToStr_num_10000_49 + 2)
      0000ED E5 20            [12]  744 	mov	a, (_floatToStr_num_10000_49 + 3)
      0000EF 12 09 23         [24]  745 	lcall	___fssub
      0000F2 AC 82            [24]  746 	mov	r4, dpl
      0000F4 AD 83            [24]  747 	mov	r5, dph
      0000F6 AE F0            [24]  748 	mov	r6, b
      0000F8 FF               [12]  749 	mov	r7, a
      0000F9 E5 81            [12]  750 	mov	a,sp
      0000FB 24 FC            [12]  751 	add	a,#0xfc
      0000FD F5 81            [12]  752 	mov	sp,a
      0000FF C0 04            [24]  753 	push	ar4
      000101 C0 05            [24]  754 	push	ar5
      000103 C0 06            [24]  755 	push	ar6
      000105 C0 07            [24]  756 	push	ar7
      000107 90 00 00         [24]  757 	mov	dptr,#0x0000
      00010A 75 F0 20         [24]  758 	mov	b, #0x20
      00010D 74 41            [12]  759 	mov	a, #0x41
      00010F 12 09 57         [24]  760 	lcall	___fsmul
      000112 AC 82            [24]  761 	mov	r4, dpl
      000114 AD 83            [24]  762 	mov	r5, dph
      000116 AE F0            [24]  763 	mov	r6, b
      000118 FF               [12]  764 	mov	r7, a
      000119 E5 81            [12]  765 	mov	a,sp
      00011B 24 FC            [12]  766 	add	a,#0xfc
      00011D F5 81            [12]  767 	mov	sp,a
      00011F 8C 82            [24]  768 	mov	dpl, r4
      000121 8D 83            [24]  769 	mov	dph, r5
      000123 8E F0            [24]  770 	mov	b, r6
      000125 EF               [12]  771 	mov	a, r7
      000126 12 0C 0A         [24]  772 	lcall	___fs2sint
      000129 AF 82            [24]  773 	mov	r7, dpl
                                    774 ;	tempAndHumidity.c:55: int i = 0;
                                    775 ;	tempAndHumidity.c:56: if (negative) 
      00012B E4               [12]  776 	clr	a
      00012C FD               [12]  777 	mov	r5,a
      00012D FE               [12]  778 	mov	r6,a
      00012E E5 21            [12]  779 	mov	a,_floatToStr_negative_10000_50
      000130 60 13            [24]  780 	jz	00104$
                                    781 ;	tempAndHumidity.c:58: str[i++] = '-';
      000132 7D 01            [12]  782 	mov	r5,#0x01
      000134 7E 00            [12]  783 	mov	r6,#0x00
      000136 90 00 01         [24]  784 	mov	dptr,#_floatToStr_PARM_2
      000139 E0               [24]  785 	movx	a,@dptr
      00013A F9               [12]  786 	mov	r1,a
      00013B A3               [24]  787 	inc	dptr
      00013C E0               [24]  788 	movx	a,@dptr
      00013D FC               [12]  789 	mov	r4,a
      00013E 89 82            [24]  790 	mov	dpl,r1
      000140 8C 83            [24]  791 	mov	dph,r4
      000142 74 2D            [12]  792 	mov	a,#0x2d
      000144 F0               [24]  793 	movx	@dptr,a
      000145                        794 00104$:
                                    795 ;	tempAndHumidity.c:60: int start = i;
      000145 8D 24            [24]  796 	mov	_floatToStr_start_10002_54,r5
      000147 8E 25            [24]  797 	mov	(_floatToStr_start_10002_54 + 1),r6
                                    798 ;	tempAndHumidity.c:61: if (integerPart == 0) 
      000149 E5 22            [12]  799 	mov	a,_floatToStr_integerPart_10001_52
      00014B 45 23            [12]  800 	orl	a,(_floatToStr_integerPart_10001_52 + 1)
      00014D 70 23            [24]  801 	jnz	00120$
                                    802 ;	tempAndHumidity.c:63: str[i++] = '0';
      00014F C0 07            [24]  803 	push	ar7
      000151 74 01            [12]  804 	mov	a,#0x01
      000153 2D               [12]  805 	add	a, r5
      000154 F5 27            [12]  806 	mov	_floatToStr_sloc0_1_0,a
      000156 E4               [12]  807 	clr	a
      000157 3E               [12]  808 	addc	a, r6
      000158 F5 28            [12]  809 	mov	(_floatToStr_sloc0_1_0 + 1),a
      00015A 90 00 01         [24]  810 	mov	dptr,#_floatToStr_PARM_2
      00015D E0               [24]  811 	movx	a,@dptr
      00015E F8               [12]  812 	mov	r0,a
      00015F A3               [24]  813 	inc	dptr
      000160 E0               [24]  814 	movx	a,@dptr
      000161 FF               [12]  815 	mov	r7,a
      000162 ED               [12]  816 	mov	a,r5
      000163 28               [12]  817 	add	a, r0
      000164 F5 82            [12]  818 	mov	dpl,a
      000166 EE               [12]  819 	mov	a,r6
      000167 3F               [12]  820 	addc	a, r7
      000168 F5 83            [12]  821 	mov	dph,a
      00016A 74 30            [12]  822 	mov	a,#0x30
      00016C F0               [24]  823 	movx	@dptr,a
      00016D D0 07            [24]  824 	pop	ar7
      00016F 02 02 33         [24]  825 	ljmp	00113$
                                    826 ;	tempAndHumidity.c:66: while (integerPart != 0) 
      000172                        827 00120$:
      000172 90 00 01         [24]  828 	mov	dptr,#_floatToStr_PARM_2
      000175 E0               [24]  829 	movx	a,@dptr
      000176 F5 29            [12]  830 	mov	_floatToStr_sloc1_1_0,a
      000178 A3               [24]  831 	inc	dptr
      000179 E0               [24]  832 	movx	a,@dptr
      00017A F5 2A            [12]  833 	mov	(_floatToStr_sloc1_1_0 + 1),a
      00017C                        834 00105$:
      00017C E5 22            [12]  835 	mov	a,_floatToStr_integerPart_10001_52
      00017E 45 23            [12]  836 	orl	a,(_floatToStr_integerPart_10001_52 + 1)
      000180 60 51            [24]  837 	jz	00123$
                                    838 ;	tempAndHumidity.c:68: str[i++] = (integerPart % 10) + '0';
      000182 ED               [12]  839 	mov	a,r5
      000183 25 29            [12]  840 	add	a, _floatToStr_sloc1_1_0
      000185 F8               [12]  841 	mov	r0,a
      000186 EE               [12]  842 	mov	a,r6
      000187 35 2A            [12]  843 	addc	a, (_floatToStr_sloc1_1_0 + 1)
      000189 FC               [12]  844 	mov	r4,a
      00018A 0D               [12]  845 	inc	r5
      00018B BD 00 01         [24]  846 	cjne	r5,#0x00,00171$
      00018E 0E               [12]  847 	inc	r6
      00018F                        848 00171$:
      00018F 75 48 0A         [24]  849 	mov	__modsint_PARM_2,#0x0a
      000192 75 49 00         [24]  850 	mov	(__modsint_PARM_2 + 1),#0x00
      000195 85 22 82         [24]  851 	mov	dpl, _floatToStr_integerPart_10001_52
      000198 85 23 83         [24]  852 	mov	dph, (_floatToStr_integerPart_10001_52 + 1)
      00019B C0 07            [24]  853 	push	ar7
      00019D C0 06            [24]  854 	push	ar6
      00019F C0 05            [24]  855 	push	ar5
      0001A1 C0 04            [24]  856 	push	ar4
      0001A3 C0 00            [24]  857 	push	ar0
      0001A5 12 0D B7         [24]  858 	lcall	__modsint
      0001A8 A9 82            [24]  859 	mov	r1, dpl
      0001AA D0 00            [24]  860 	pop	ar0
      0001AC D0 04            [24]  861 	pop	ar4
      0001AE 74 30            [12]  862 	mov	a,#0x30
      0001B0 29               [12]  863 	add	a, r1
      0001B1 88 82            [24]  864 	mov	dpl,r0
      0001B3 8C 83            [24]  865 	mov	dph,r4
      0001B5 F0               [24]  866 	movx	@dptr,a
                                    867 ;	tempAndHumidity.c:69: integerPart /= 10;
      0001B6 75 48 0A         [24]  868 	mov	__divsint_PARM_2,#0x0a
      0001B9 75 49 00         [24]  869 	mov	(__divsint_PARM_2 + 1),#0x00
      0001BC 85 22 82         [24]  870 	mov	dpl, _floatToStr_integerPart_10001_52
      0001BF 85 23 83         [24]  871 	mov	dph, (_floatToStr_integerPart_10001_52 + 1)
      0001C2 12 0E 2D         [24]  872 	lcall	__divsint
      0001C5 85 82 22         [24]  873 	mov	_floatToStr_integerPart_10001_52,dpl
      0001C8 85 83 23         [24]  874 	mov	(_floatToStr_integerPart_10001_52 + 1),dph
      0001CB D0 05            [24]  875 	pop	ar5
      0001CD D0 06            [24]  876 	pop	ar6
      0001CF D0 07            [24]  877 	pop	ar7
      0001D1 80 A9            [24]  878 	sjmp	00105$
      0001D3                        879 00123$:
      0001D3 8D 27            [24]  880 	mov	_floatToStr_sloc0_1_0,r5
      0001D5 8E 28            [24]  881 	mov	(_floatToStr_sloc0_1_0 + 1),r6
                                    882 ;	tempAndHumidity.c:71: int end = i - 1;
      0001D7 1D               [12]  883 	dec	r5
      0001D8 BD FF 01         [24]  884 	cjne	r5,#0xff,00172$
      0001DB 1E               [12]  885 	dec	r6
      0001DC                        886 00172$:
                                    887 ;	tempAndHumidity.c:72: while (start < end) 
      0001DC AB 29            [24]  888 	mov	r3,_floatToStr_sloc1_1_0
      0001DE AC 2A            [24]  889 	mov	r4,(_floatToStr_sloc1_1_0 + 1)
      0001E0 A9 24            [24]  890 	mov	r1,_floatToStr_start_10002_54
      0001E2 AA 25            [24]  891 	mov	r2,(_floatToStr_start_10002_54 + 1)
      0001E4                        892 00108$:
      0001E4 C3               [12]  893 	clr	c
      0001E5 E9               [12]  894 	mov	a,r1
      0001E6 9D               [12]  895 	subb	a,r5
      0001E7 EA               [12]  896 	mov	a,r2
      0001E8 64 80            [12]  897 	xrl	a,#0x80
      0001EA 8E F0            [24]  898 	mov	b,r6
      0001EC 63 F0 80         [24]  899 	xrl	b,#0x80
      0001EF 95 F0            [12]  900 	subb	a,b
      0001F1 50 40            [24]  901 	jnc	00113$
                                    902 ;	tempAndHumidity.c:74: char temp = str[start];
      0001F3 C0 07            [24]  903 	push	ar7
      0001F5 E9               [12]  904 	mov	a,r1
      0001F6 2B               [12]  905 	add	a, r3
      0001F7 F5 29            [12]  906 	mov	_floatToStr_sloc1_1_0,a
      0001F9 EA               [12]  907 	mov	a,r2
      0001FA 3C               [12]  908 	addc	a, r4
      0001FB F5 2A            [12]  909 	mov	(_floatToStr_sloc1_1_0 + 1),a
      0001FD 85 29 82         [24]  910 	mov	dpl,_floatToStr_sloc1_1_0
      000200 85 2A 83         [24]  911 	mov	dph,(_floatToStr_sloc1_1_0 + 1)
      000203 E0               [24]  912 	movx	a,@dptr
      000204 F5 26            [12]  913 	mov	_floatToStr_temp_30003_59,a
                                    914 ;	tempAndHumidity.c:75: str[start] = str[end];
      000206 ED               [12]  915 	mov	a,r5
      000207 2B               [12]  916 	add	a, r3
      000208 F5 2B            [12]  917 	mov	_floatToStr_sloc2_1_0,a
      00020A EE               [12]  918 	mov	a,r6
      00020B 3C               [12]  919 	addc	a, r4
      00020C F5 2C            [12]  920 	mov	(_floatToStr_sloc2_1_0 + 1),a
      00020E 85 2B 82         [24]  921 	mov	dpl,_floatToStr_sloc2_1_0
      000211 85 2C 83         [24]  922 	mov	dph,(_floatToStr_sloc2_1_0 + 1)
      000214 E0               [24]  923 	movx	a,@dptr
      000215 85 29 82         [24]  924 	mov	dpl,_floatToStr_sloc1_1_0
      000218 85 2A 83         [24]  925 	mov	dph,(_floatToStr_sloc1_1_0 + 1)
      00021B F0               [24]  926 	movx	@dptr,a
                                    927 ;	tempAndHumidity.c:76: str[end] = temp;
      00021C 85 2B 82         [24]  928 	mov	dpl,_floatToStr_sloc2_1_0
      00021F 85 2C 83         [24]  929 	mov	dph,(_floatToStr_sloc2_1_0 + 1)
      000222 E5 26            [12]  930 	mov	a,_floatToStr_temp_30003_59
      000224 F0               [24]  931 	movx	@dptr,a
                                    932 ;	tempAndHumidity.c:77: start++;
      000225 09               [12]  933 	inc	r1
      000226 B9 00 01         [24]  934 	cjne	r1,#0x00,00174$
      000229 0A               [12]  935 	inc	r2
      00022A                        936 00174$:
                                    937 ;	tempAndHumidity.c:78: end--;
      00022A 1D               [12]  938 	dec	r5
      00022B BD FF 01         [24]  939 	cjne	r5,#0xff,00175$
      00022E 1E               [12]  940 	dec	r6
      00022F                        941 00175$:
      00022F D0 07            [24]  942 	pop	ar7
      000231 80 B1            [24]  943 	sjmp	00108$
      000233                        944 00113$:
                                    945 ;	tempAndHumidity.c:82: str[i++] = '.';
      000233 74 01            [12]  946 	mov	a,#0x01
      000235 25 27            [12]  947 	add	a, _floatToStr_sloc0_1_0
      000237 FD               [12]  948 	mov	r5,a
      000238 E4               [12]  949 	clr	a
      000239 35 28            [12]  950 	addc	a, (_floatToStr_sloc0_1_0 + 1)
      00023B FE               [12]  951 	mov	r6,a
      00023C 90 00 01         [24]  952 	mov	dptr,#_floatToStr_PARM_2
      00023F E0               [24]  953 	movx	a,@dptr
      000240 FB               [12]  954 	mov	r3,a
      000241 A3               [24]  955 	inc	dptr
      000242 E0               [24]  956 	movx	a,@dptr
      000243 FC               [12]  957 	mov	r4,a
      000244 E5 27            [12]  958 	mov	a,_floatToStr_sloc0_1_0
      000246 2B               [12]  959 	add	a, r3
      000247 F5 82            [12]  960 	mov	dpl,a
      000249 E5 28            [12]  961 	mov	a,(_floatToStr_sloc0_1_0 + 1)
      00024B 3C               [12]  962 	addc	a, r4
      00024C F5 83            [12]  963 	mov	dph,a
      00024E 74 2E            [12]  964 	mov	a,#0x2e
      000250 F0               [24]  965 	movx	@dptr,a
                                    966 ;	tempAndHumidity.c:83: str[i++] = decimalPart + '0';
      000251 74 01            [12]  967 	mov	a,#0x01
      000253 2D               [12]  968 	add	a, r5
      000254 F9               [12]  969 	mov	r1,a
      000255 E4               [12]  970 	clr	a
      000256 3E               [12]  971 	addc	a, r6
      000257 FA               [12]  972 	mov	r2,a
      000258 ED               [12]  973 	mov	a,r5
      000259 2B               [12]  974 	add	a, r3
      00025A F5 82            [12]  975 	mov	dpl,a
      00025C EE               [12]  976 	mov	a,r6
      00025D 3C               [12]  977 	addc	a, r4
      00025E F5 83            [12]  978 	mov	dph,a
      000260 74 30            [12]  979 	mov	a,#0x30
      000262 2F               [12]  980 	add	a, r7
      000263 F0               [24]  981 	movx	@dptr,a
                                    982 ;	tempAndHumidity.c:85: str[i] = '\0';
      000264 E9               [12]  983 	mov	a,r1
      000265 2B               [12]  984 	add	a, r3
      000266 F5 82            [12]  985 	mov	dpl,a
      000268 EA               [12]  986 	mov	a,r2
      000269 3C               [12]  987 	addc	a, r4
      00026A F5 83            [12]  988 	mov	dph,a
      00026C E4               [12]  989 	clr	a
      00026D F0               [24]  990 	movx	@dptr,a
                                    991 ;	tempAndHumidity.c:86: }
      00026E 22               [24]  992 	ret
                                    993 ;------------------------------------------------------------
                                    994 ;Allocation info for local variables in function 'intToStr'
                                    995 ;------------------------------------------------------------
                                    996 ;str                       Allocated with name '_intToStr_PARM_2'
                                    997 ;num                       Allocated to registers r6 r7 
                                    998 ;i                         Allocated with name '_intToStr_i_10000_61'
                                    999 ;isNegative                Allocated to registers 
                                   1000 ;start                     Allocated with name '_intToStr_start_10001_63'
                                   1001 ;end                       Allocated to registers 
                                   1002 ;temp                      Allocated with name '_intToStr_temp_10001_63'
                                   1003 ;sloc0                     Allocated with name '_intToStr_sloc0_1_0'
                                   1004 ;------------------------------------------------------------
                                   1005 ;	tempAndHumidity.c:89: void intToStr(int num, char str[]) 
                                   1006 ;	-----------------------------------------
                                   1007 ;	 function intToStr
                                   1008 ;	-----------------------------------------
      00026F                       1009 _intToStr:
      00026F AE 82            [24] 1010 	mov	r6, dpl
      000271 AF 83            [24] 1011 	mov	r7, dph
                                   1012 ;	tempAndHumidity.c:94: do 
      000273 E4               [12] 1013 	clr	a
      000274 F5 30            [12] 1014 	mov	_intToStr_i_10000_61,a
      000276 F5 31            [12] 1015 	mov	(_intToStr_i_10000_61 + 1),a
      000278                       1016 00101$:
                                   1017 ;	tempAndHumidity.c:96: str[i++] = num % 10 + '0'; 
      000278 E5 30            [12] 1018 	mov	a,_intToStr_i_10000_61
      00027A 25 2D            [12] 1019 	add	a, _intToStr_PARM_2
      00027C F9               [12] 1020 	mov	r1,a
      00027D E5 31            [12] 1021 	mov	a,(_intToStr_i_10000_61 + 1)
      00027F 35 2E            [12] 1022 	addc	a, (_intToStr_PARM_2 + 1)
      000281 FA               [12] 1023 	mov	r2,a
      000282 AB 2F            [24] 1024 	mov	r3,(_intToStr_PARM_2 + 2)
      000284 05 30            [12] 1025 	inc	_intToStr_i_10000_61
      000286 E4               [12] 1026 	clr	a
      000287 B5 30 02         [24] 1027 	cjne	a,_intToStr_i_10000_61,00135$
      00028A 05 31            [12] 1028 	inc	(_intToStr_i_10000_61 + 1)
      00028C                       1029 00135$:
      00028C 75 48 0A         [24] 1030 	mov	__modsint_PARM_2,#0x0a
      00028F 75 49 00         [24] 1031 	mov	(__modsint_PARM_2 + 1),#0x00
      000292 8E 82            [24] 1032 	mov	dpl, r6
      000294 8F 83            [24] 1033 	mov	dph, r7
      000296 C0 07            [24] 1034 	push	ar7
      000298 C0 06            [24] 1035 	push	ar6
      00029A C0 03            [24] 1036 	push	ar3
      00029C C0 02            [24] 1037 	push	ar2
      00029E C0 01            [24] 1038 	push	ar1
      0002A0 12 0D B7         [24] 1039 	lcall	__modsint
      0002A3 A8 82            [24] 1040 	mov	r0, dpl
      0002A5 D0 01            [24] 1041 	pop	ar1
      0002A7 D0 02            [24] 1042 	pop	ar2
      0002A9 D0 03            [24] 1043 	pop	ar3
      0002AB D0 06            [24] 1044 	pop	ar6
      0002AD D0 07            [24] 1045 	pop	ar7
      0002AF 74 30            [12] 1046 	mov	a,#0x30
      0002B1 28               [12] 1047 	add	a, r0
      0002B2 89 82            [24] 1048 	mov	dpl,r1
      0002B4 8A 83            [24] 1049 	mov	dph,r2
      0002B6 8B F0            [24] 1050 	mov	b,r3
      0002B8 12 0A D0         [24] 1051 	lcall	__gptrput
                                   1052 ;	tempAndHumidity.c:97: num /= 10;
      0002BB 75 48 0A         [24] 1053 	mov	__divsint_PARM_2,#0x0a
      0002BE 75 49 00         [24] 1054 	mov	(__divsint_PARM_2 + 1),#0x00
                                   1055 ;	tempAndHumidity.c:98: }while (num != 0);
      0002C1 8E 82            [24] 1056 	mov	dpl, r6
      0002C3 8F 83            [24] 1057 	mov	dph, r7
      0002C5 12 0E 2D         [24] 1058 	lcall	__divsint
      0002C8 AE 82            [24] 1059 	mov	r6, dpl
      0002CA AF 83            [24] 1060 	mov	r7, dph
      0002CC EE               [12] 1061 	mov	a,r6
      0002CD 4F               [12] 1062 	orl	a,r7
      0002CE 70 A8            [24] 1063 	jnz	00101$
                                   1064 ;	tempAndHumidity.c:100: str[i] = '\0'; 
      0002D0 E5 30            [12] 1065 	mov	a,_intToStr_i_10000_61
      0002D2 25 2D            [12] 1066 	add	a, _intToStr_PARM_2
      0002D4 FD               [12] 1067 	mov	r5,a
      0002D5 E5 31            [12] 1068 	mov	a,(_intToStr_i_10000_61 + 1)
      0002D7 35 2E            [12] 1069 	addc	a, (_intToStr_PARM_2 + 1)
      0002D9 FE               [12] 1070 	mov	r6,a
      0002DA AF 2F            [24] 1071 	mov	r7,(_intToStr_PARM_2 + 2)
      0002DC 8D 82            [24] 1072 	mov	dpl,r5
      0002DE 8E 83            [24] 1073 	mov	dph,r6
      0002E0 8F F0            [24] 1074 	mov	b,r7
      0002E2 E4               [12] 1075 	clr	a
      0002E3 12 0A D0         [24] 1076 	lcall	__gptrput
                                   1077 ;	tempAndHumidity.c:103: int end = i - 1;
      0002E6 E5 30            [12] 1078 	mov	a,_intToStr_i_10000_61
      0002E8 24 FF            [12] 1079 	add	a,#0xff
      0002EA FE               [12] 1080 	mov	r6,a
      0002EB E5 31            [12] 1081 	mov	a,(_intToStr_i_10000_61 + 1)
      0002ED 34 FF            [12] 1082 	addc	a,#0xff
      0002EF FF               [12] 1083 	mov	r7,a
                                   1084 ;	tempAndHumidity.c:105: while (start < end) {
      0002F0 E4               [12] 1085 	clr	a
      0002F1 F5 32            [12] 1086 	mov	_intToStr_start_10001_63,a
      0002F3 F5 33            [12] 1087 	mov	(_intToStr_start_10001_63 + 1),a
      0002F5                       1088 00104$:
      0002F5 C3               [12] 1089 	clr	c
      0002F6 E5 32            [12] 1090 	mov	a,_intToStr_start_10001_63
      0002F8 9E               [12] 1091 	subb	a,r6
      0002F9 E5 33            [12] 1092 	mov	a,(_intToStr_start_10001_63 + 1)
      0002FB 64 80            [12] 1093 	xrl	a,#0x80
      0002FD 8F F0            [24] 1094 	mov	b,r7
      0002FF 63 F0 80         [24] 1095 	xrl	b,#0x80
      000302 95 F0            [12] 1096 	subb	a,b
      000304 50 56            [24] 1097 	jnc	00107$
                                   1098 ;	tempAndHumidity.c:106: temp = str[start];
      000306 E5 32            [12] 1099 	mov	a,_intToStr_start_10001_63
      000308 25 2D            [12] 1100 	add	a, _intToStr_PARM_2
      00030A F9               [12] 1101 	mov	r1,a
      00030B E5 33            [12] 1102 	mov	a,(_intToStr_start_10001_63 + 1)
      00030D 35 2E            [12] 1103 	addc	a, (_intToStr_PARM_2 + 1)
      00030F FA               [12] 1104 	mov	r2,a
      000310 AB 2F            [24] 1105 	mov	r3,(_intToStr_PARM_2 + 2)
      000312 89 82            [24] 1106 	mov	dpl,r1
      000314 8A 83            [24] 1107 	mov	dph,r2
      000316 8B F0            [24] 1108 	mov	b,r3
      000318 12 0D 9B         [24] 1109 	lcall	__gptrget
      00031B F5 34            [12] 1110 	mov	_intToStr_temp_10001_63,a
                                   1111 ;	tempAndHumidity.c:107: str[start] = str[end];
      00031D EE               [12] 1112 	mov	a,r6
      00031E 25 2D            [12] 1113 	add	a, _intToStr_PARM_2
      000320 F5 35            [12] 1114 	mov	_intToStr_sloc0_1_0,a
      000322 EF               [12] 1115 	mov	a,r7
      000323 35 2E            [12] 1116 	addc	a, (_intToStr_PARM_2 + 1)
      000325 F5 36            [12] 1117 	mov	(_intToStr_sloc0_1_0 + 1),a
      000327 85 2F 37         [24] 1118 	mov	(_intToStr_sloc0_1_0 + 2),(_intToStr_PARM_2 + 2)
      00032A 85 35 82         [24] 1119 	mov	dpl,_intToStr_sloc0_1_0
      00032D 85 36 83         [24] 1120 	mov	dph,(_intToStr_sloc0_1_0 + 1)
      000330 85 37 F0         [24] 1121 	mov	b,(_intToStr_sloc0_1_0 + 2)
      000333 12 0D 9B         [24] 1122 	lcall	__gptrget
      000336 89 82            [24] 1123 	mov	dpl,r1
      000338 8A 83            [24] 1124 	mov	dph,r2
      00033A 8B F0            [24] 1125 	mov	b,r3
      00033C 12 0A D0         [24] 1126 	lcall	__gptrput
                                   1127 ;	tempAndHumidity.c:108: str[end] = temp;
      00033F 85 35 82         [24] 1128 	mov	dpl,_intToStr_sloc0_1_0
      000342 85 36 83         [24] 1129 	mov	dph,(_intToStr_sloc0_1_0 + 1)
      000345 85 37 F0         [24] 1130 	mov	b,(_intToStr_sloc0_1_0 + 2)
      000348 E5 34            [12] 1131 	mov	a,_intToStr_temp_10001_63
      00034A 12 0A D0         [24] 1132 	lcall	__gptrput
                                   1133 ;	tempAndHumidity.c:109: start++;
      00034D 05 32            [12] 1134 	inc	_intToStr_start_10001_63
      00034F E4               [12] 1135 	clr	a
      000350 B5 32 02         [24] 1136 	cjne	a,_intToStr_start_10001_63,00138$
      000353 05 33            [12] 1137 	inc	(_intToStr_start_10001_63 + 1)
      000355                       1138 00138$:
                                   1139 ;	tempAndHumidity.c:110: end--;
      000355 1E               [12] 1140 	dec	r6
      000356 BE FF 01         [24] 1141 	cjne	r6,#0xff,00139$
      000359 1F               [12] 1142 	dec	r7
      00035A                       1143 00139$:
      00035A 80 99            [24] 1144 	sjmp	00104$
      00035C                       1145 00107$:
                                   1146 ;	tempAndHumidity.c:112: }
      00035C 22               [24] 1147 	ret
                                   1148 ;------------------------------------------------------------
                                   1149 ;Allocation info for local variables in function 'delay_us'
                                   1150 ;------------------------------------------------------------
                                   1151 ;us                        Allocated to registers 
                                   1152 ;------------------------------------------------------------
                                   1153 ;	tempAndHumidity.c:114: void delay_us(unsigned int us) {
                                   1154 ;	-----------------------------------------
                                   1155 ;	 function delay_us
                                   1156 ;	-----------------------------------------
      00035D                       1157 _delay_us:
      00035D AE 82            [24] 1158 	mov	r6, dpl
      00035F AF 83            [24] 1159 	mov	r7, dph
                                   1160 ;	tempAndHumidity.c:115: while (us--);
      000361                       1161 00101$:
      000361 8E 04            [24] 1162 	mov	ar4,r6
      000363 8F 05            [24] 1163 	mov	ar5,r7
      000365 1E               [12] 1164 	dec	r6
      000366 BE FF 01         [24] 1165 	cjne	r6,#0xff,00113$
      000369 1F               [12] 1166 	dec	r7
      00036A                       1167 00113$:
      00036A EC               [12] 1168 	mov	a,r4
      00036B 4D               [12] 1169 	orl	a,r5
      00036C 70 F3            [24] 1170 	jnz	00101$
                                   1171 ;	tempAndHumidity.c:116: }
      00036E 22               [24] 1172 	ret
                                   1173 ;------------------------------------------------------------
                                   1174 ;Allocation info for local variables in function 'delay_ms'
                                   1175 ;------------------------------------------------------------
                                   1176 ;ms                        Allocated to registers r6 r7 
                                   1177 ;i                         Allocated to registers r4 r5 
                                   1178 ;------------------------------------------------------------
                                   1179 ;	tempAndHumidity.c:118: void delay_ms(unsigned int ms) {
                                   1180 ;	-----------------------------------------
                                   1181 ;	 function delay_ms
                                   1182 ;	-----------------------------------------
      00036F                       1183 _delay_ms:
      00036F AE 82            [24] 1184 	mov	r6, dpl
      000371 AF 83            [24] 1185 	mov	r7, dph
                                   1186 ;	tempAndHumidity.c:120: for (i = 0; i < ms; i++) {
      000373 7C 00            [12] 1187 	mov	r4,#0x00
      000375 7D 00            [12] 1188 	mov	r5,#0x00
      000377                       1189 00103$:
      000377 C3               [12] 1190 	clr	c
      000378 EC               [12] 1191 	mov	a,r4
      000379 9E               [12] 1192 	subb	a,r6
      00037A ED               [12] 1193 	mov	a,r5
      00037B 9F               [12] 1194 	subb	a,r7
      00037C 50 1D            [24] 1195 	jnc	00105$
                                   1196 ;	tempAndHumidity.c:121: delay_us(1000);
      00037E 90 03 E8         [24] 1197 	mov	dptr,#0x03e8
      000381 C0 07            [24] 1198 	push	ar7
      000383 C0 06            [24] 1199 	push	ar6
      000385 C0 05            [24] 1200 	push	ar5
      000387 C0 04            [24] 1201 	push	ar4
      000389 12 03 5D         [24] 1202 	lcall	_delay_us
      00038C D0 04            [24] 1203 	pop	ar4
      00038E D0 05            [24] 1204 	pop	ar5
      000390 D0 06            [24] 1205 	pop	ar6
      000392 D0 07            [24] 1206 	pop	ar7
                                   1207 ;	tempAndHumidity.c:120: for (i = 0; i < ms; i++) {
      000394 0C               [12] 1208 	inc	r4
      000395 BC 00 DF         [24] 1209 	cjne	r4,#0x00,00103$
      000398 0D               [12] 1210 	inc	r5
      000399 80 DC            [24] 1211 	sjmp	00103$
      00039B                       1212 00105$:
                                   1213 ;	tempAndHumidity.c:123: }
      00039B 22               [24] 1214 	ret
                                   1215 ;------------------------------------------------------------
                                   1216 ;Allocation info for local variables in function 'INT0_ISR'
                                   1217 ;------------------------------------------------------------
                                   1218 ;	tempAndHumidity.c:125: void INT0_ISR(void) __interrupt (0)
                                   1219 ;	-----------------------------------------
                                   1220 ;	 function INT0_ISR
                                   1221 ;	-----------------------------------------
      00039C                       1222 _INT0_ISR:
      00039C C0 E0            [24] 1223 	push	acc
                                   1224 ;	tempAndHumidity.c:127: if(comfimed==0)
      00039E E5 1A            [12] 1225 	mov	a,_comfimed
      0003A0 45 1B            [12] 1226 	orl	a,(_comfimed + 1)
                                   1227 ;	tempAndHumidity.c:129: justPressed = true;
                                   1228 ;	tempAndHumidity.c:130: comfimed = 200;
      0003A2 70 08            [24] 1229 	jnz	00103$
      0003A4 75 19 01         [24] 1230 	mov	_justPressed,#0x01
      0003A7 75 1A C8         [24] 1231 	mov	_comfimed,#0xc8
      0003AA F5 1B            [12] 1232 	mov	(_comfimed + 1),a
      0003AC                       1233 00103$:
                                   1234 ;	tempAndHumidity.c:132: }
      0003AC D0 E0            [24] 1235 	pop	acc
      0003AE 32               [24] 1236 	reti
                                   1237 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1238 ;	eliminated unneeded push/pop not_psw
                                   1239 ;	eliminated unneeded push/pop dpl
                                   1240 ;	eliminated unneeded push/pop dph
                                   1241 ;	eliminated unneeded push/pop b
                                   1242 ;------------------------------------------------------------
                                   1243 ;Allocation info for local variables in function 'display_number'
                                   1244 ;------------------------------------------------------------
                                   1245 ;digit                     Allocated with name '_display_number_PARM_2'
                                   1246 ;num                       Allocated to registers r7 
                                   1247 ;------------------------------------------------------------
                                   1248 ;	tempAndHumidity.c:134: void display_number(unsigned char num, unsigned char digit) 
                                   1249 ;	-----------------------------------------
                                   1250 ;	 function display_number
                                   1251 ;	-----------------------------------------
      0003AF                       1252 _display_number:
      0003AF AF 82            [24] 1253 	mov	r7, dpl
                                   1254 ;	tempAndHumidity.c:136: DIG1 = 1;
                                   1255 ;	assignBit
      0003B1 D2 A0            [12] 1256 	setb	_P20
                                   1257 ;	tempAndHumidity.c:137: DIG2 = 1;
                                   1258 ;	assignBit
      0003B3 D2 A1            [12] 1259 	setb	_P21
                                   1260 ;	tempAndHumidity.c:138: DIG3 = 1;
                                   1261 ;	assignBit
      0003B5 D2 A2            [12] 1262 	setb	_P22
                                   1263 ;	tempAndHumidity.c:139: DIG4 = 1;
                                   1264 ;	assignBit
      0003B7 D2 A3            [12] 1265 	setb	_P23
                                   1266 ;	tempAndHumidity.c:141: if(digit == 1) DIG1 = 0;
      0003B9 74 01            [12] 1267 	mov	a,#0x01
      0003BB B5 38 02         [24] 1268 	cjne	a,_display_number_PARM_2,00102$
                                   1269 ;	assignBit
      0003BE C2 A0            [12] 1270 	clr	_P20
      0003C0                       1271 00102$:
                                   1272 ;	tempAndHumidity.c:142: if(digit == 2) DIG2 = 0;
      0003C0 74 02            [12] 1273 	mov	a,#0x02
      0003C2 B5 38 02         [24] 1274 	cjne	a,_display_number_PARM_2,00104$
                                   1275 ;	assignBit
      0003C5 C2 A1            [12] 1276 	clr	_P21
      0003C7                       1277 00104$:
                                   1278 ;	tempAndHumidity.c:143: if(digit == 3) DIG3 = 0;
      0003C7 74 03            [12] 1279 	mov	a,#0x03
      0003C9 B5 38 04         [24] 1280 	cjne	a,_display_number_PARM_2,00148$
      0003CC 74 01            [12] 1281 	mov	a,#0x01
      0003CE 80 01            [24] 1282 	sjmp	00149$
      0003D0                       1283 00148$:
      0003D0 E4               [12] 1284 	clr	a
      0003D1                       1285 00149$:
      0003D1 FE               [12] 1286 	mov	r6,a
      0003D2 60 02            [24] 1287 	jz	00106$
                                   1288 ;	assignBit
      0003D4 C2 A2            [12] 1289 	clr	_P22
      0003D6                       1290 00106$:
                                   1291 ;	tempAndHumidity.c:144: if(digit == 4) DIG4 = 0;
      0003D6 74 04            [12] 1292 	mov	a,#0x04
      0003D8 B5 38 02         [24] 1293 	cjne	a,_display_number_PARM_2,00108$
                                   1294 ;	assignBit
      0003DB C2 A3            [12] 1295 	clr	_P23
      0003DD                       1296 00108$:
                                   1297 ;	tempAndHumidity.c:146: SEG_A = (seg_code[num] ) & 0x01;
      0003DD EF               [12] 1298 	mov	a,r7
      0003DE 24 08            [12] 1299 	add	a, #_seg_code
      0003E0 F9               [12] 1300 	mov	r1,a
      0003E1 E7               [12] 1301 	mov	a,@r1
      0003E2 FF               [12] 1302 	mov	r7,a
      0003E3 54 01            [12] 1303 	anl	a,#0x01
                                   1304 ;	assignBit
      0003E5 24 FF            [12] 1305 	add	a,#0xff
      0003E7 92 90            [24] 1306 	mov	_P10,c
                                   1307 ;	tempAndHumidity.c:147: SEG_B = (seg_code[num] >> 1) & 0x01;
      0003E9 EF               [12] 1308 	mov	a,r7
      0003EA 03               [12] 1309 	rr	a
      0003EB 54 01            [12] 1310 	anl	a,#0x01
                                   1311 ;	assignBit
      0003ED 24 FF            [12] 1312 	add	a,#0xff
      0003EF 92 91            [24] 1313 	mov	_P11,c
                                   1314 ;	tempAndHumidity.c:148: SEG_C = (seg_code[num] >> 2) & 0x01;
      0003F1 EF               [12] 1315 	mov	a,r7
      0003F2 03               [12] 1316 	rr	a
      0003F3 03               [12] 1317 	rr	a
      0003F4 54 01            [12] 1318 	anl	a,#0x01
                                   1319 ;	assignBit
      0003F6 24 FF            [12] 1320 	add	a,#0xff
      0003F8 92 92            [24] 1321 	mov	_P12,c
                                   1322 ;	tempAndHumidity.c:149: SEG_D = (seg_code[num] >> 3) & 0x01;
      0003FA EF               [12] 1323 	mov	a,r7
      0003FB A2 E3            [12] 1324 	mov	c,acc.3
      0003FD E4               [12] 1325 	clr	a
      0003FE 33               [12] 1326 	rlc	a
                                   1327 ;	assignBit
      0003FF 24 FF            [12] 1328 	add	a,#0xff
      000401 92 93            [24] 1329 	mov	_P13,c
                                   1330 ;	tempAndHumidity.c:150: SEG_E = (seg_code[num] >> 4) & 0x01;
      000403 EF               [12] 1331 	mov	a,r7
      000404 C4               [12] 1332 	swap	a
      000405 54 01            [12] 1333 	anl	a,#0x01
                                   1334 ;	assignBit
      000407 24 FF            [12] 1335 	add	a,#0xff
      000409 92 94            [24] 1336 	mov	_P14,c
                                   1337 ;	tempAndHumidity.c:151: SEG_F = (seg_code[num] >> 5) & 0x01;
      00040B EF               [12] 1338 	mov	a,r7
      00040C A2 E5            [12] 1339 	mov	c,acc.5
      00040E E4               [12] 1340 	clr	a
      00040F 33               [12] 1341 	rlc	a
                                   1342 ;	assignBit
      000410 24 FF            [12] 1343 	add	a,#0xff
      000412 92 95            [24] 1344 	mov	_P15,c
                                   1345 ;	tempAndHumidity.c:152: SEG_G = (seg_code[num] >> 6) & 0x01;
      000414 EF               [12] 1346 	mov	a,r7
      000415 23               [12] 1347 	rl	a
      000416 23               [12] 1348 	rl	a
      000417 54 01            [12] 1349 	anl	a,#0x01
                                   1350 ;	assignBit
      000419 24 FF            [12] 1351 	add	a,#0xff
      00041B 92 96            [24] 1352 	mov	_P16,c
                                   1353 ;	tempAndHumidity.c:153: if(digit == 3)
      00041D EE               [12] 1354 	mov	a,r6
      00041E 60 04            [24] 1355 	jz	00110$
                                   1356 ;	tempAndHumidity.c:155: SEG_DP = 1;
                                   1357 ;	assignBit
      000420 D2 97            [12] 1358 	setb	_P17
      000422 80 02            [24] 1359 	sjmp	00111$
      000424                       1360 00110$:
                                   1361 ;	tempAndHumidity.c:159: SEG_DP = 0;
                                   1362 ;	assignBit
      000424 C2 97            [12] 1363 	clr	_P17
      000426                       1364 00111$:
                                   1365 ;	tempAndHumidity.c:162: delay_us(1000);
      000426 90 03 E8         [24] 1366 	mov	dptr,#0x03e8
      000429 12 03 5D         [24] 1367 	lcall	_delay_us
                                   1368 ;	tempAndHumidity.c:164: DIG1 = 1;
                                   1369 ;	assignBit
      00042C D2 A0            [12] 1370 	setb	_P20
                                   1371 ;	tempAndHumidity.c:165: DIG2 = 1;
                                   1372 ;	assignBit
      00042E D2 A1            [12] 1373 	setb	_P21
                                   1374 ;	tempAndHumidity.c:166: DIG3 = 1;
                                   1375 ;	assignBit
      000430 D2 A2            [12] 1376 	setb	_P22
                                   1377 ;	tempAndHumidity.c:167: DIG4 = 1;
                                   1378 ;	assignBit
      000432 D2 A3            [12] 1379 	setb	_P23
                                   1380 ;	tempAndHumidity.c:168: }
      000434 22               [24] 1381 	ret
                                   1382 ;------------------------------------------------------------
                                   1383 ;Allocation info for local variables in function 'DHT22_init'
                                   1384 ;------------------------------------------------------------
                                   1385 ;	tempAndHumidity.c:170: void DHT22_init(void) {
                                   1386 ;	-----------------------------------------
                                   1387 ;	 function DHT22_init
                                   1388 ;	-----------------------------------------
      000435                       1389 _DHT22_init:
                                   1390 ;	tempAndHumidity.c:171: DHT22_PIN = 1;
                                   1391 ;	assignBit
      000435 D2 B7            [12] 1392 	setb	_P37
                                   1393 ;	tempAndHumidity.c:172: }
      000437 22               [24] 1394 	ret
                                   1395 ;------------------------------------------------------------
                                   1396 ;Allocation info for local variables in function 'DHT22_read'
                                   1397 ;------------------------------------------------------------
                                   1398 ;i                         Allocated to registers r6 
                                   1399 ;j                         Allocated to registers r7 
                                   1400 ;------------------------------------------------------------
                                   1401 ;	tempAndHumidity.c:174: unsigned char DHT22_read(void) {
                                   1402 ;	-----------------------------------------
                                   1403 ;	 function DHT22_read
                                   1404 ;	-----------------------------------------
      000438                       1405 _DHT22_read:
                                   1406 ;	tempAndHumidity.c:177: DHT22_PIN = 0; 
                                   1407 ;	assignBit
      000438 C2 B7            [12] 1408 	clr	_P37
                                   1409 ;	tempAndHumidity.c:178: delay_ms(18);  
      00043A 90 00 12         [24] 1410 	mov	dptr,#0x0012
      00043D 12 03 6F         [24] 1411 	lcall	_delay_ms
                                   1412 ;	tempAndHumidity.c:179: DHT22_PIN = 1; 
                                   1413 ;	assignBit
      000440 D2 B7            [12] 1414 	setb	_P37
                                   1415 ;	tempAndHumidity.c:180: delay_us(30); 
      000442 90 00 1E         [24] 1416 	mov	dptr,#0x001e
      000445 12 03 5D         [24] 1417 	lcall	_delay_us
                                   1418 ;	tempAndHumidity.c:182: while (DHT22_PIN); 
      000448                       1419 00101$:
      000448 20 B7 FD         [24] 1420 	jb	_P37,00101$
                                   1421 ;	tempAndHumidity.c:183: while (!DHT22_PIN);
      00044B                       1422 00104$:
      00044B 30 B7 FD         [24] 1423 	jnb	_P37,00104$
                                   1424 ;	tempAndHumidity.c:184: while (DHT22_PIN);
      00044E                       1425 00107$:
      00044E 20 B7 FD         [24] 1426 	jb	_P37,00107$
                                   1427 ;	tempAndHumidity.c:186: for (j = 0; j < 5; j++)
      000451 7F 00            [12] 1428 	mov	r7,#0x00
      000453                       1429 00124$:
                                   1430 ;	tempAndHumidity.c:188: data[j] = 0;
      000453 EF               [12] 1431 	mov	a,r7
      000454 24 13            [12] 1432 	add	a, #_data
      000456 F8               [12] 1433 	mov	r0,a
      000457 76 00            [12] 1434 	mov	@r0,#0x00
                                   1435 ;	tempAndHumidity.c:191: while (!DHT22_PIN);
      000459 7E 00            [12] 1436 	mov	r6,#0x00
      00045B                       1437 00110$:
      00045B 30 B7 FD         [24] 1438 	jnb	_P37,00110$
                                   1439 ;	tempAndHumidity.c:192: delay_us(40);
      00045E 90 00 28         [24] 1440 	mov	dptr,#0x0028
      000461 C0 07            [24] 1441 	push	ar7
      000463 C0 06            [24] 1442 	push	ar6
      000465 12 03 5D         [24] 1443 	lcall	_delay_us
      000468 D0 06            [24] 1444 	pop	ar6
      00046A D0 07            [24] 1445 	pop	ar7
                                   1446 ;	tempAndHumidity.c:193: if (DHT22_PIN) {
      00046C 30 B7 1B         [24] 1447 	jnb	_P37,00115$
                                   1448 ;	tempAndHumidity.c:194: data[j] |= (1 << (7 - i));
      00046F EF               [12] 1449 	mov	a,r7
      000470 24 13            [12] 1450 	add	a, #_data
      000472 F9               [12] 1451 	mov	r1,a
      000473 87 05            [24] 1452 	mov	ar5,@r1
      000475 8E 04            [24] 1453 	mov	ar4,r6
      000477 74 07            [12] 1454 	mov	a,#0x07
      000479 C3               [12] 1455 	clr	c
      00047A 9C               [12] 1456 	subb	a,r4
      00047B F5 F0            [12] 1457 	mov	b,a
      00047D 05 F0            [12] 1458 	inc	b
      00047F 74 01            [12] 1459 	mov	a,#0x01
      000481 80 02            [24] 1460 	sjmp	00214$
      000483                       1461 00213$:
      000483 25 E0            [12] 1462 	add	a,acc
      000485                       1463 00214$:
      000485 D5 F0 FB         [24] 1464 	djnz	b,00213$
      000488 4D               [12] 1465 	orl	a,r5
      000489 F7               [12] 1466 	mov	@r1,a
                                   1467 ;	tempAndHumidity.c:196: while (DHT22_PIN);
      00048A                       1468 00115$:
      00048A 20 B7 FD         [24] 1469 	jb	_P37,00115$
                                   1470 ;	tempAndHumidity.c:189: for (i = 0; i < 8; i++)
      00048D 0E               [12] 1471 	inc	r6
      00048E BE 08 00         [24] 1472 	cjne	r6,#0x08,00216$
      000491                       1473 00216$:
      000491 40 C8            [24] 1474 	jc	00110$
                                   1475 ;	tempAndHumidity.c:186: for (j = 0; j < 5; j++)
      000493 0F               [12] 1476 	inc	r7
      000494 BF 05 00         [24] 1477 	cjne	r7,#0x05,00218$
      000497                       1478 00218$:
      000497 40 BA            [24] 1479 	jc	00124$
                                   1480 ;	tempAndHumidity.c:200: if ((data[0] + data[1] + data[2] + data[3]) != data[4]) 
      000499 AE 13            [24] 1481 	mov	r6,_data
      00049B 7F 00            [12] 1482 	mov	r7,#0x00
      00049D AC 14            [24] 1483 	mov	r4,(_data + 0x0001)
      00049F 7D 00            [12] 1484 	mov	r5,#0x00
      0004A1 EC               [12] 1485 	mov	a,r4
      0004A2 2E               [12] 1486 	add	a, r6
      0004A3 FE               [12] 1487 	mov	r6,a
      0004A4 ED               [12] 1488 	mov	a,r5
      0004A5 3F               [12] 1489 	addc	a, r7
      0004A6 FF               [12] 1490 	mov	r7,a
      0004A7 E5 15            [12] 1491 	mov	a,(_data + 0x0002)
      0004A9 2E               [12] 1492 	add	a, r6
      0004AA FE               [12] 1493 	mov	r6,a
      0004AB ED               [12] 1494 	mov	a,r5
      0004AC 3F               [12] 1495 	addc	a, r7
      0004AD FF               [12] 1496 	mov	r7,a
      0004AE E5 16            [12] 1497 	mov	a,(_data + 0x0003)
      0004B0 2E               [12] 1498 	add	a, r6
      0004B1 FE               [12] 1499 	mov	r6,a
      0004B2 ED               [12] 1500 	mov	a,r5
      0004B3 3F               [12] 1501 	addc	a, r7
      0004B4 FF               [12] 1502 	mov	r7,a
      0004B5 AC 17            [24] 1503 	mov	r4,(_data + 0x0004)
      0004B7 EE               [12] 1504 	mov	a,r6
      0004B8 B5 04 06         [24] 1505 	cjne	a,ar4,00220$
      0004BB EF               [12] 1506 	mov	a,r7
      0004BC B5 05 02         [24] 1507 	cjne	a,ar5,00220$
      0004BF 80 04            [24] 1508 	sjmp	00121$
      0004C1                       1509 00220$:
                                   1510 ;	tempAndHumidity.c:202: return 1;
      0004C1 75 82 01         [24] 1511 	mov	dpl, #0x01
      0004C4 22               [24] 1512 	ret
      0004C5                       1513 00121$:
                                   1514 ;	tempAndHumidity.c:204: return 0;
      0004C5 75 82 00         [24] 1515 	mov	dpl, #0x00
                                   1516 ;	tempAndHumidity.c:205: }
      0004C8 22               [24] 1517 	ret
                                   1518 ;------------------------------------------------------------
                                   1519 ;Allocation info for local variables in function 'UART_SendByte'
                                   1520 ;------------------------------------------------------------
                                   1521 ;dat                       Allocated to registers 
                                   1522 ;------------------------------------------------------------
                                   1523 ;	tempAndHumidity.c:207: void UART_SendByte(char dat) {
                                   1524 ;	-----------------------------------------
                                   1525 ;	 function UART_SendByte
                                   1526 ;	-----------------------------------------
      0004C9                       1527 _UART_SendByte:
      0004C9 85 82 99         [24] 1528 	mov	_SBUF,dpl
                                   1529 ;	tempAndHumidity.c:209: while (!TI);
      0004CC                       1530 00101$:
                                   1531 ;	tempAndHumidity.c:210: TI=0;     
                                   1532 ;	assignBit
      0004CC 10 99 02         [24] 1533 	jbc	_TI,00118$
      0004CF 80 FB            [24] 1534 	sjmp	00101$
      0004D1                       1535 00118$:
                                   1536 ;	tempAndHumidity.c:211: }
      0004D1 22               [24] 1537 	ret
                                   1538 ;------------------------------------------------------------
                                   1539 ;Allocation info for local variables in function 'UART_SendString'
                                   1540 ;------------------------------------------------------------
                                   1541 ;str                       Allocated to registers 
                                   1542 ;------------------------------------------------------------
                                   1543 ;	tempAndHumidity.c:213: void UART_SendString(char* str) {
                                   1544 ;	-----------------------------------------
                                   1545 ;	 function UART_SendString
                                   1546 ;	-----------------------------------------
      0004D2                       1547 _UART_SendString:
      0004D2 AD 82            [24] 1548 	mov	r5, dpl
      0004D4 AE 83            [24] 1549 	mov	r6, dph
      0004D6 AF F0            [24] 1550 	mov	r7, b
                                   1551 ;	tempAndHumidity.c:214: while (*str) {
      0004D8                       1552 00101$:
      0004D8 8D 82            [24] 1553 	mov	dpl,r5
      0004DA 8E 83            [24] 1554 	mov	dph,r6
      0004DC 8F F0            [24] 1555 	mov	b,r7
      0004DE 12 0D 9B         [24] 1556 	lcall	__gptrget
      0004E1 FC               [12] 1557 	mov	r4,a
      0004E2 60 18            [24] 1558 	jz	00104$
                                   1559 ;	tempAndHumidity.c:215: UART_SendByte(*str++); 
      0004E4 8C 82            [24] 1560 	mov	dpl,r4
      0004E6 0D               [12] 1561 	inc	r5
      0004E7 BD 00 01         [24] 1562 	cjne	r5,#0x00,00120$
      0004EA 0E               [12] 1563 	inc	r6
      0004EB                       1564 00120$:
      0004EB C0 07            [24] 1565 	push	ar7
      0004ED C0 06            [24] 1566 	push	ar6
      0004EF C0 05            [24] 1567 	push	ar5
      0004F1 12 04 C9         [24] 1568 	lcall	_UART_SendByte
      0004F4 D0 05            [24] 1569 	pop	ar5
      0004F6 D0 06            [24] 1570 	pop	ar6
      0004F8 D0 07            [24] 1571 	pop	ar7
      0004FA 80 DC            [24] 1572 	sjmp	00101$
      0004FC                       1573 00104$:
                                   1574 ;	tempAndHumidity.c:218: }
      0004FC 22               [24] 1575 	ret
                                   1576 ;------------------------------------------------------------
                                   1577 ;Allocation info for local variables in function 'Uart1_Init'
                                   1578 ;------------------------------------------------------------
                                   1579 ;	tempAndHumidity.c:220: void Uart1_Init(void)	//115200bps@12.000MHz
                                   1580 ;	-----------------------------------------
                                   1581 ;	 function Uart1_Init
                                   1582 ;	-----------------------------------------
      0004FD                       1583 _Uart1_Init:
                                   1584 ;	tempAndHumidity.c:222: SCON = 0x50;		
      0004FD 75 98 50         [24] 1585 	mov	_SCON,#0x50
                                   1586 ;	tempAndHumidity.c:223: AUXR |= 0x01;		
      000500 43 8E 01         [24] 1587 	orl	_AUXR,#0x01
                                   1588 ;	tempAndHumidity.c:224: AUXR |= 0x04;		
      000503 43 8E 04         [24] 1589 	orl	_AUXR,#0x04
                                   1590 ;	tempAndHumidity.c:225: T2L = 0xE6;			
      000506 75 D7 E6         [24] 1591 	mov	_T2L,#0xe6
                                   1592 ;	tempAndHumidity.c:226: T2H = 0xFF;			
      000509 75 D6 FF         [24] 1593 	mov	_T2H,#0xff
                                   1594 ;	tempAndHumidity.c:227: AUXR |= 0x10;		
      00050C 43 8E 10         [24] 1595 	orl	_AUXR,#0x10
                                   1596 ;	tempAndHumidity.c:230: }
      00050F 22               [24] 1597 	ret
                                   1598 ;------------------------------------------------------------
                                   1599 ;Allocation info for local variables in function 'reopenUART'
                                   1600 ;------------------------------------------------------------
                                   1601 ;	tempAndHumidity.c:232: void reopenUART(void)
                                   1602 ;	-----------------------------------------
                                   1603 ;	 function reopenUART
                                   1604 ;	-----------------------------------------
      000510                       1605 _reopenUART:
                                   1606 ;	tempAndHumidity.c:234: SCON = 0x00;
      000510 75 98 00         [24] 1607 	mov	_SCON,#0x00
                                   1608 ;	tempAndHumidity.c:235: Uart1_Init();
                                   1609 ;	tempAndHumidity.c:236: return;
                                   1610 ;	tempAndHumidity.c:237: }
      000513 02 04 FD         [24] 1611 	ljmp	_Uart1_Init
                                   1612 ;------------------------------------------------------------
                                   1613 ;Allocation info for local variables in function 'sendDataToServer'
                                   1614 ;------------------------------------------------------------
                                   1615 ;humidity                  Allocated with name '_sendDataToServer_PARM_2'
                                   1616 ;temp                      Allocated to registers r4 r5 r6 r7 
                                   1617 ;bodyLength                Allocated to registers r6 r7 
                                   1618 ;body                      Allocated with name '_sendDataToServer_body_10001_99'
                                   1619 ;tempStr                   Allocated with name '_sendDataToServer_tempStr_10002_100'
                                   1620 ;humiStr                   Allocated with name '_sendDataToServer_humiStr_10003_101'
                                   1621 ;bodyLengthStr             Allocated with name '_sendDataToServer_bodyLengthStr_10005_103'
                                   1622 ;------------------------------------------------------------
                                   1623 ;	tempAndHumidity.c:239: void sendDataToServer(float temp, float humidity)
                                   1624 ;	-----------------------------------------
                                   1625 ;	 function sendDataToServer
                                   1626 ;	-----------------------------------------
      000516                       1627 _sendDataToServer:
      000516 AC 82            [24] 1628 	mov	r4,dpl
      000518 AD 83            [24] 1629 	mov	r5,dph
      00051A AE F0            [24] 1630 	mov	r6,b
      00051C FF               [12] 1631 	mov	r7,a
                                   1632 ;	tempAndHumidity.c:241: ESP01S_RST = 0;
                                   1633 ;	assignBit
      00051D C2 A5            [12] 1634 	clr	_P25
                                   1635 ;	tempAndHumidity.c:242: delay_ms(200);
      00051F 90 00 C8         [24] 1636 	mov	dptr,#0x00c8
      000522 C0 07            [24] 1637 	push	ar7
      000524 C0 06            [24] 1638 	push	ar6
      000526 C0 05            [24] 1639 	push	ar5
      000528 C0 04            [24] 1640 	push	ar4
      00052A 12 03 6F         [24] 1641 	lcall	_delay_ms
                                   1642 ;	tempAndHumidity.c:243: ESP01S_RST = 1;
                                   1643 ;	assignBit
      00052D D2 A5            [12] 1644 	setb	_P25
                                   1645 ;	tempAndHumidity.c:244: delay_ms(500);
      00052F 90 01 F4         [24] 1646 	mov	dptr,#0x01f4
      000532 12 03 6F         [24] 1647 	lcall	_delay_ms
                                   1648 ;	tempAndHumidity.c:246: Uart1_Init();
      000535 12 04 FD         [24] 1649 	lcall	_Uart1_Init
                                   1650 ;	tempAndHumidity.c:248: UART_SendString("AT+CWMODE=1\r\n");   
      000538 90 0F 19         [24] 1651 	mov	dptr,#___str_0
      00053B 75 F0 80         [24] 1652 	mov	b, #0x80
      00053E 12 04 D2         [24] 1653 	lcall	_UART_SendString
                                   1654 ;	tempAndHumidity.c:250: reopenUART();
      000541 12 05 10         [24] 1655 	lcall	_reopenUART
                                   1656 ;	tempAndHumidity.c:251: delay_ms(400);
      000544 90 01 90         [24] 1657 	mov	dptr,#0x0190
      000547 12 03 6F         [24] 1658 	lcall	_delay_ms
                                   1659 ;	tempAndHumidity.c:252: UART_SendString("AT+CWJAP=\"HUAWEI-10HOL3\",\"88588681\"\r\n");  
      00054A 90 0F 27         [24] 1660 	mov	dptr,#___str_1
      00054D 75 F0 80         [24] 1661 	mov	b, #0x80
      000550 12 04 D2         [24] 1662 	lcall	_UART_SendString
                                   1663 ;	tempAndHumidity.c:255: reopenUART();
      000553 12 05 10         [24] 1664 	lcall	_reopenUART
                                   1665 ;	tempAndHumidity.c:256: delay_ms(6000);
      000556 90 17 70         [24] 1666 	mov	dptr,#0x1770
      000559 12 03 6F         [24] 1667 	lcall	_delay_ms
                                   1668 ;	tempAndHumidity.c:257: UART_SendString("AT+CIPSTART=\"TCP\",\"www.homemoni.xyz\",80\r\n"); //Change the server address at any time
      00055C 90 0F 4D         [24] 1669 	mov	dptr,#___str_2
      00055F 75 F0 80         [24] 1670 	mov	b, #0x80
      000562 12 04 D2         [24] 1671 	lcall	_UART_SendString
                                   1672 ;	tempAndHumidity.c:259: reopenUART();
      000565 12 05 10         [24] 1673 	lcall	_reopenUART
                                   1674 ;	tempAndHumidity.c:260: delay_ms(2000);
      000568 90 07 D0         [24] 1675 	mov	dptr,#0x07d0
      00056B 12 03 6F         [24] 1676 	lcall	_delay_ms
                                   1677 ;	tempAndHumidity.c:265: memset(body,0,200);
      00056E 75 48 00         [24] 1678 	mov	_memset_PARM_2,#0x00
      000571 75 49 C8         [24] 1679 	mov	_memset_PARM_3,#0xc8
      000574 75 4A 00         [24] 1680 	mov	(_memset_PARM_3 + 1),#0x00
      000577 90 00 03         [24] 1681 	mov	dptr,#_sendDataToServer_body_10001_99
      00057A 75 F0 00         [24] 1682 	mov	b, #0x00
      00057D 12 0A 5B         [24] 1683 	lcall	_memset
                                   1684 ;	tempAndHumidity.c:266: strcat(body,"POST /api/tempAndHumi HTTP/1.1\r\nHost: www.homemoni.xyz\r\nContent-Type: application/json\r\nContent-Length: 80\r\n\r\n{\"temperature\":");
      000580 75 48 77         [24] 1685 	mov	_strcat_PARM_2,#___str_3
      000583 75 49 0F         [24] 1686 	mov	(_strcat_PARM_2 + 1),#(___str_3 >> 8)
      000586 75 4A 80         [24] 1687 	mov	(_strcat_PARM_2 + 2),#0x80
      000589 90 00 03         [24] 1688 	mov	dptr,#_sendDataToServer_body_10001_99
      00058C 75 F0 00         [24] 1689 	mov	b, #0x00
      00058F 12 0A 7A         [24] 1690 	lcall	_strcat
      000592 D0 04            [24] 1691 	pop	ar4
      000594 D0 05            [24] 1692 	pop	ar5
      000596 D0 06            [24] 1693 	pop	ar6
      000598 D0 07            [24] 1694 	pop	ar7
                                   1695 ;	tempAndHumidity.c:269: floatToStr(temp,tempStr);
      00059A 90 00 01         [24] 1696 	mov	dptr,#_floatToStr_PARM_2
      00059D 74 CB            [12] 1697 	mov	a,#_sendDataToServer_tempStr_10002_100
      00059F F0               [24] 1698 	movx	@dptr,a
      0005A0 74 00            [12] 1699 	mov	a,#(_sendDataToServer_tempStr_10002_100 >> 8)
      0005A2 A3               [24] 1700 	inc	dptr
      0005A3 F0               [24] 1701 	movx	@dptr,a
      0005A4 8C 82            [24] 1702 	mov	dpl, r4
      0005A6 8D 83            [24] 1703 	mov	dph, r5
      0005A8 8E F0            [24] 1704 	mov	b, r6
      0005AA EF               [12] 1705 	mov	a, r7
      0005AB 12 00 86         [24] 1706 	lcall	_floatToStr
                                   1707 ;	tempAndHumidity.c:270: strcat(body,tempStr);
      0005AE 75 48 CB         [24] 1708 	mov	_strcat_PARM_2,#_sendDataToServer_tempStr_10002_100
      0005B1 75 49 00         [24] 1709 	mov	(_strcat_PARM_2 + 1),#(_sendDataToServer_tempStr_10002_100 >> 8)
      0005B4 75 4A 00         [24] 1710 	mov	(_strcat_PARM_2 + 2),#0x00
      0005B7 90 00 03         [24] 1711 	mov	dptr,#_sendDataToServer_body_10001_99
      0005BA 75 F0 00         [24] 1712 	mov	b, #0x00
      0005BD 12 0A 7A         [24] 1713 	lcall	_strcat
                                   1714 ;	tempAndHumidity.c:272: strcat(body,",\"humidity\":");
      0005C0 75 48 F5         [24] 1715 	mov	_strcat_PARM_2,#___str_4
      0005C3 75 49 0F         [24] 1716 	mov	(_strcat_PARM_2 + 1),#(___str_4 >> 8)
      0005C6 75 4A 80         [24] 1717 	mov	(_strcat_PARM_2 + 2),#0x80
      0005C9 90 00 03         [24] 1718 	mov	dptr,#_sendDataToServer_body_10001_99
      0005CC 75 F0 00         [24] 1719 	mov	b, #0x00
      0005CF 12 0A 7A         [24] 1720 	lcall	_strcat
                                   1721 ;	tempAndHumidity.c:275: floatToStr(humidity,humiStr);
      0005D2 90 00 01         [24] 1722 	mov	dptr,#_floatToStr_PARM_2
      0005D5 74 D1            [12] 1723 	mov	a,#_sendDataToServer_humiStr_10003_101
      0005D7 F0               [24] 1724 	movx	@dptr,a
      0005D8 74 00            [12] 1725 	mov	a,#(_sendDataToServer_humiStr_10003_101 >> 8)
      0005DA A3               [24] 1726 	inc	dptr
      0005DB F0               [24] 1727 	movx	@dptr,a
      0005DC 85 39 82         [24] 1728 	mov	dpl, _sendDataToServer_PARM_2
      0005DF 85 3A 83         [24] 1729 	mov	dph, (_sendDataToServer_PARM_2 + 1)
      0005E2 85 3B F0         [24] 1730 	mov	b, (_sendDataToServer_PARM_2 + 2)
      0005E5 E5 3C            [12] 1731 	mov	a, (_sendDataToServer_PARM_2 + 3)
      0005E7 12 00 86         [24] 1732 	lcall	_floatToStr
                                   1733 ;	tempAndHumidity.c:276: strcat(body,humiStr);
      0005EA 75 48 D1         [24] 1734 	mov	_strcat_PARM_2,#_sendDataToServer_humiStr_10003_101
      0005ED 75 49 00         [24] 1735 	mov	(_strcat_PARM_2 + 1),#(_sendDataToServer_humiStr_10003_101 >> 8)
      0005F0 75 4A 00         [24] 1736 	mov	(_strcat_PARM_2 + 2),#0x00
      0005F3 90 00 03         [24] 1737 	mov	dptr,#_sendDataToServer_body_10001_99
      0005F6 75 F0 00         [24] 1738 	mov	b, #0x00
      0005F9 12 0A 7A         [24] 1739 	lcall	_strcat
                                   1740 ;	tempAndHumidity.c:278: strcat(body,",\"siteName\":\"Living Room\"}\r\n");
      0005FC 75 48 02         [24] 1741 	mov	_strcat_PARM_2,#___str_5
      0005FF 75 49 10         [24] 1742 	mov	(_strcat_PARM_2 + 1),#(___str_5 >> 8)
      000602 75 4A 80         [24] 1743 	mov	(_strcat_PARM_2 + 2),#0x80
      000605 90 00 03         [24] 1744 	mov	dptr,#_sendDataToServer_body_10001_99
      000608 75 F0 00         [24] 1745 	mov	b, #0x00
      00060B 12 0A 7A         [24] 1746 	lcall	_strcat
                                   1747 ;	tempAndHumidity.c:280: unsigned int bodyLength = strlen(body);
      00060E 90 00 03         [24] 1748 	mov	dptr,#_sendDataToServer_body_10001_99
      000611 75 F0 00         [24] 1749 	mov	b, #0x00
      000614 12 0C C0         [24] 1750 	lcall	_strlen
      000617 AE 82            [24] 1751 	mov	r6, dpl
      000619 AF 83            [24] 1752 	mov	r7, dph
                                   1753 ;	tempAndHumidity.c:282: reopenUART();
      00061B C0 07            [24] 1754 	push	ar7
      00061D C0 06            [24] 1755 	push	ar6
      00061F 12 05 10         [24] 1756 	lcall	_reopenUART
                                   1757 ;	tempAndHumidity.c:283: UART_SendString("AT+CIPSEND=");
      000622 90 10 1F         [24] 1758 	mov	dptr,#___str_6
      000625 75 F0 80         [24] 1759 	mov	b, #0x80
      000628 12 04 D2         [24] 1760 	lcall	_UART_SendString
      00062B D0 06            [24] 1761 	pop	ar6
      00062D D0 07            [24] 1762 	pop	ar7
                                   1763 ;	tempAndHumidity.c:285: intToStr(bodyLength,bodyLengthStr);
      00062F 75 2D D7         [24] 1764 	mov	_intToStr_PARM_2,#_sendDataToServer_bodyLengthStr_10005_103
      000632 75 2E 00         [24] 1765 	mov	(_intToStr_PARM_2 + 1),#(_sendDataToServer_bodyLengthStr_10005_103 >> 8)
      000635 75 2F 00         [24] 1766 	mov	(_intToStr_PARM_2 + 2),#0x00
      000638 8E 82            [24] 1767 	mov	dpl, r6
      00063A 8F 83            [24] 1768 	mov	dph, r7
      00063C 12 02 6F         [24] 1769 	lcall	_intToStr
                                   1770 ;	tempAndHumidity.c:286: UART_SendString(bodyLengthStr);
      00063F 90 00 D7         [24] 1771 	mov	dptr,#_sendDataToServer_bodyLengthStr_10005_103
      000642 75 F0 00         [24] 1772 	mov	b, #0x00
      000645 12 04 D2         [24] 1773 	lcall	_UART_SendString
                                   1774 ;	tempAndHumidity.c:287: UART_SendString("\r\n");
      000648 90 10 2B         [24] 1775 	mov	dptr,#___str_7
      00064B 75 F0 80         [24] 1776 	mov	b, #0x80
      00064E 12 04 D2         [24] 1777 	lcall	_UART_SendString
                                   1778 ;	tempAndHumidity.c:288: delay_ms(1000);
      000651 90 03 E8         [24] 1779 	mov	dptr,#0x03e8
      000654 12 03 6F         [24] 1780 	lcall	_delay_ms
                                   1781 ;	tempAndHumidity.c:290: reopenUART();
      000657 12 05 10         [24] 1782 	lcall	_reopenUART
                                   1783 ;	tempAndHumidity.c:291: UART_SendString(body);
      00065A 90 00 03         [24] 1784 	mov	dptr,#_sendDataToServer_body_10001_99
      00065D 75 F0 00         [24] 1785 	mov	b, #0x00
      000660 12 04 D2         [24] 1786 	lcall	_UART_SendString
                                   1787 ;	tempAndHumidity.c:293: delay_ms(500);
      000663 90 01 F4         [24] 1788 	mov	dptr,#0x01f4
      000666 12 03 6F         [24] 1789 	lcall	_delay_ms
                                   1790 ;	tempAndHumidity.c:296: reopenUART();
      000669 12 05 10         [24] 1791 	lcall	_reopenUART
                                   1792 ;	tempAndHumidity.c:297: UART_SendString("AT+GSLP=720000\r\n");
      00066C 90 10 2E         [24] 1793 	mov	dptr,#___str_8
      00066F 75 F0 80         [24] 1794 	mov	b, #0x80
      000672 12 04 D2         [24] 1795 	lcall	_UART_SendString
                                   1796 ;	tempAndHumidity.c:298: reopenUART();
                                   1797 ;	tempAndHumidity.c:300: }
      000675 02 05 10         [24] 1798 	ljmp	_reopenUART
                                   1799 ;------------------------------------------------------------
                                   1800 ;Allocation info for local variables in function 'main'
                                   1801 ;------------------------------------------------------------
                                   1802 ;result                    Allocated to registers 
                                   1803 ;raw_temp                  Allocated to registers r6 r7 
                                   1804 ;raw_humidity              Allocated to registers r4 r5 
                                   1805 ;tempSecondDigit           Allocated with name '_main_tempSecondDigit_30002_109'
                                   1806 ;tempFirstDigit            Allocated with name '_main_tempFirstDigit_30002_109'
                                   1807 ;tempPointFirstDigit       Allocated with name '_main_tempPointFirstDigit_30002_109'
                                   1808 ;humidityThirdDigit        Allocated with name '_main_humidityThirdDigit_30002_109'
                                   1809 ;humiditySecondDigit       Allocated with name '_main_humiditySecondDigit_30002_109'
                                   1810 ;humidityFirstDigit        Allocated with name '_main_humidityFirstDigit_30002_109'
                                   1811 ;humidityPointFirstDigit   Allocated with name '_main_humidityPointFirstDigit_30002_109'
                                   1812 ;counter                   Allocated to registers r6 r7 
                                   1813 ;true_temp                 Allocated with name '_main_true_temp_30002_109'
                                   1814 ;true_humidity             Allocated to registers 
                                   1815 ;------------------------------------------------------------
                                   1816 ;	tempAndHumidity.c:304: void main(void) 
                                   1817 ;	-----------------------------------------
                                   1818 ;	 function main
                                   1819 ;	-----------------------------------------
      000678                       1820 _main:
                                   1821 ;	tempAndHumidity.c:306: ESP01S_RST = 1;
                                   1822 ;	assignBit
      000678 D2 A5            [12] 1823 	setb	_P25
                                   1824 ;	tempAndHumidity.c:307: delay_ms(500);
      00067A 90 01 F4         [24] 1825 	mov	dptr,#0x01f4
      00067D 12 03 6F         [24] 1826 	lcall	_delay_ms
                                   1827 ;	tempAndHumidity.c:309: Uart1_Init();
      000680 12 04 FD         [24] 1828 	lcall	_Uart1_Init
                                   1829 ;	tempAndHumidity.c:310: UART_SendString("AT+GSLP=720000\r\n");
      000683 90 10 2E         [24] 1830 	mov	dptr,#___str_8
      000686 75 F0 80         [24] 1831 	mov	b, #0x80
      000689 12 04 D2         [24] 1832 	lcall	_UART_SendString
                                   1833 ;	tempAndHumidity.c:311: reopenUART();
      00068C 12 05 10         [24] 1834 	lcall	_reopenUART
                                   1835 ;	tempAndHumidity.c:313: BUTTON_PIN = 0;
                                   1836 ;	assignBit
      00068F C2 B2            [12] 1837 	clr	_P32
                                   1838 ;	tempAndHumidity.c:315: IT0 = 0;   
                                   1839 ;	assignBit
      000691 C2 88            [12] 1840 	clr	_IT0
                                   1841 ;	tempAndHumidity.c:316: EX0 = 1;  
                                   1842 ;	assignBit
      000693 D2 A8            [12] 1843 	setb	_EX0
                                   1844 ;	tempAndHumidity.c:317: EA = 1;    
                                   1845 ;	assignBit
      000695 D2 AF            [12] 1846 	setb	_EA
                                   1847 ;	tempAndHumidity.c:321: displayHumidity = false;
      000697 75 18 00         [24] 1848 	mov	_displayHumidity,#0x00
                                   1849 ;	tempAndHumidity.c:322: justPressed = false;
      00069A 75 19 00         [24] 1850 	mov	_justPressed,#0x00
                                   1851 ;	tempAndHumidity.c:324: tempNegativeSign = false;
      00069D 75 1C 00         [24] 1852 	mov	_tempNegativeSign,#0x00
                                   1853 ;	tempAndHumidity.c:326: HUMIDITY_LED = 0;
                                   1854 ;	assignBit
      0006A0 C2 A7            [12] 1855 	clr	_P27
                                   1856 ;	tempAndHumidity.c:328: while (1) {
      0006A2                       1857 00122$:
                                   1858 ;	tempAndHumidity.c:330: DHT22_init();
      0006A2 12 04 35         [24] 1859 	lcall	_DHT22_init
                                   1860 ;	tempAndHumidity.c:331: result = DHT22_read();
      0006A5 12 04 38         [24] 1861 	lcall	_DHT22_read
                                   1862 ;	tempAndHumidity.c:334: unsigned int raw_temp = (data[2] & 0x7F) << 8 | data[3];
      0006A8 AE 15            [24] 1863 	mov	r6,(_data + 0x0002)
      0006AA 53 06 7F         [24] 1864 	anl	ar6,#0x7f
      0006AD 8E 07            [24] 1865 	mov	ar7,r6
      0006AF 7E 00            [12] 1866 	mov	r6,#0x00
      0006B1 AC 16            [24] 1867 	mov	r4,(_data + 0x0003)
      0006B3 7D 00            [12] 1868 	mov	r5,#0x00
      0006B5 EC               [12] 1869 	mov	a,r4
      0006B6 42 06            [12] 1870 	orl	ar6,a
      0006B8 ED               [12] 1871 	mov	a,r5
      0006B9 42 07            [12] 1872 	orl	ar7,a
                                   1873 ;	tempAndHumidity.c:335: unsigned int raw_humidity = (data[0] & 0x7F) << 8 | data[1];
      0006BB AC 13            [24] 1874 	mov	r4,_data
      0006BD 53 04 7F         [24] 1875 	anl	ar4,#0x7f
      0006C0 8C 05            [24] 1876 	mov	ar5,r4
      0006C2 7C 00            [12] 1877 	mov	r4,#0x00
      0006C4 AA 14            [24] 1878 	mov	r2,(_data + 0x0001)
      0006C6 7B 00            [12] 1879 	mov	r3,#0x00
      0006C8 EA               [12] 1880 	mov	a,r2
      0006C9 42 04            [12] 1881 	orl	ar4,a
      0006CB EB               [12] 1882 	mov	a,r3
      0006CC 42 05            [12] 1883 	orl	ar5,a
                                   1884 ;	tempAndHumidity.c:337: tempNegativeSign = data[2] & 0x80;
      0006CE E5 15            [12] 1885 	mov	a,(_data + 0x0002)
      0006D0 23               [12] 1886 	rl	a
      0006D1 54 01            [12] 1887 	anl	a,#0x01
      0006D3 F5 1C            [12] 1888 	mov	_tempNegativeSign,a
                                   1889 ;	tempAndHumidity.c:339: unsigned char tempSecondDigit = raw_temp / 100;
      0006D5 75 48 64         [24] 1890 	mov	__divuint_PARM_2,#0x64
      0006D8 75 49 00         [24] 1891 	mov	(__divuint_PARM_2 + 1),#0x00
      0006DB 8E 82            [24] 1892 	mov	dpl, r6
      0006DD 8F 83            [24] 1893 	mov	dph, r7
      0006DF C0 07            [24] 1894 	push	ar7
      0006E1 C0 06            [24] 1895 	push	ar6
      0006E3 C0 05            [24] 1896 	push	ar5
      0006E5 C0 04            [24] 1897 	push	ar4
      0006E7 12 09 2E         [24] 1898 	lcall	__divuint
      0006EA AA 82            [24] 1899 	mov	r2, dpl
      0006EC D0 04            [24] 1900 	pop	ar4
      0006EE D0 05            [24] 1901 	pop	ar5
      0006F0 D0 06            [24] 1902 	pop	ar6
      0006F2 D0 07            [24] 1903 	pop	ar7
      0006F4 8A 3D            [24] 1904 	mov	_main_tempSecondDigit_30002_109,r2
                                   1905 ;	tempAndHumidity.c:340: unsigned char tempFirstDigit = (raw_temp / 10) % 10;
      0006F6 75 48 0A         [24] 1906 	mov	__divuint_PARM_2,#0x0a
      0006F9 75 49 00         [24] 1907 	mov	(__divuint_PARM_2 + 1),#0x00
      0006FC 8E 82            [24] 1908 	mov	dpl, r6
      0006FE 8F 83            [24] 1909 	mov	dph, r7
      000700 C0 07            [24] 1910 	push	ar7
      000702 C0 06            [24] 1911 	push	ar6
      000704 C0 05            [24] 1912 	push	ar5
      000706 C0 04            [24] 1913 	push	ar4
      000708 12 09 2E         [24] 1914 	lcall	__divuint
      00070B 75 48 0A         [24] 1915 	mov	__moduint_PARM_2,#0x0a
      00070E 75 49 00         [24] 1916 	mov	(__moduint_PARM_2 + 1),#0x00
      000711 12 0B 1B         [24] 1917 	lcall	__moduint
      000714 AA 82            [24] 1918 	mov	r2, dpl
      000716 D0 04            [24] 1919 	pop	ar4
      000718 D0 05            [24] 1920 	pop	ar5
      00071A D0 06            [24] 1921 	pop	ar6
      00071C D0 07            [24] 1922 	pop	ar7
      00071E 8A 3E            [24] 1923 	mov	_main_tempFirstDigit_30002_109,r2
                                   1924 ;	tempAndHumidity.c:341: unsigned char tempPointFirstDigit = raw_temp % 10;
      000720 75 48 0A         [24] 1925 	mov	__moduint_PARM_2,#0x0a
      000723 75 49 00         [24] 1926 	mov	(__moduint_PARM_2 + 1),#0x00
      000726 8E 82            [24] 1927 	mov	dpl, r6
      000728 8F 83            [24] 1928 	mov	dph, r7
      00072A C0 07            [24] 1929 	push	ar7
      00072C C0 06            [24] 1930 	push	ar6
      00072E C0 05            [24] 1931 	push	ar5
      000730 C0 04            [24] 1932 	push	ar4
      000732 12 0B 1B         [24] 1933 	lcall	__moduint
      000735 AA 82            [24] 1934 	mov	r2, dpl
      000737 D0 04            [24] 1935 	pop	ar4
      000739 D0 05            [24] 1936 	pop	ar5
      00073B 8A 3F            [24] 1937 	mov	_main_tempPointFirstDigit_30002_109,r2
                                   1938 ;	tempAndHumidity.c:343: unsigned char humidityThirdDigit = raw_humidity / 1000;
      00073D 75 48 E8         [24] 1939 	mov	__divuint_PARM_2,#0xe8
      000740 75 49 03         [24] 1940 	mov	(__divuint_PARM_2 + 1),#0x03
      000743 8C 82            [24] 1941 	mov	dpl, r4
      000745 8D 83            [24] 1942 	mov	dph, r5
      000747 C0 05            [24] 1943 	push	ar5
      000749 C0 04            [24] 1944 	push	ar4
      00074B 12 09 2E         [24] 1945 	lcall	__divuint
      00074E AA 82            [24] 1946 	mov	r2, dpl
      000750 D0 04            [24] 1947 	pop	ar4
      000752 D0 05            [24] 1948 	pop	ar5
      000754 8A 40            [24] 1949 	mov	_main_humidityThirdDigit_30002_109,r2
                                   1950 ;	tempAndHumidity.c:344: unsigned char humiditySecondDigit = raw_humidity / 100 % 10;
      000756 75 48 64         [24] 1951 	mov	__divuint_PARM_2,#0x64
      000759 75 49 00         [24] 1952 	mov	(__divuint_PARM_2 + 1),#0x00
      00075C 8C 82            [24] 1953 	mov	dpl, r4
      00075E 8D 83            [24] 1954 	mov	dph, r5
      000760 C0 05            [24] 1955 	push	ar5
      000762 C0 04            [24] 1956 	push	ar4
      000764 12 09 2E         [24] 1957 	lcall	__divuint
      000767 75 48 0A         [24] 1958 	mov	__moduint_PARM_2,#0x0a
      00076A 75 49 00         [24] 1959 	mov	(__moduint_PARM_2 + 1),#0x00
      00076D 12 0B 1B         [24] 1960 	lcall	__moduint
      000770 AA 82            [24] 1961 	mov	r2, dpl
      000772 D0 04            [24] 1962 	pop	ar4
      000774 D0 05            [24] 1963 	pop	ar5
      000776 8A 41            [24] 1964 	mov	_main_humiditySecondDigit_30002_109,r2
                                   1965 ;	tempAndHumidity.c:345: unsigned char humidityFirstDigit = (raw_humidity / 10) % 10;
      000778 75 48 0A         [24] 1966 	mov	__divuint_PARM_2,#0x0a
      00077B 75 49 00         [24] 1967 	mov	(__divuint_PARM_2 + 1),#0x00
      00077E 8C 82            [24] 1968 	mov	dpl, r4
      000780 8D 83            [24] 1969 	mov	dph, r5
      000782 C0 05            [24] 1970 	push	ar5
      000784 C0 04            [24] 1971 	push	ar4
      000786 12 09 2E         [24] 1972 	lcall	__divuint
      000789 75 48 0A         [24] 1973 	mov	__moduint_PARM_2,#0x0a
      00078C 75 49 00         [24] 1974 	mov	(__moduint_PARM_2 + 1),#0x00
      00078F 12 0B 1B         [24] 1975 	lcall	__moduint
      000792 AA 82            [24] 1976 	mov	r2, dpl
      000794 D0 04            [24] 1977 	pop	ar4
      000796 D0 05            [24] 1978 	pop	ar5
      000798 8A 42            [24] 1979 	mov	_main_humidityFirstDigit_30002_109,r2
                                   1980 ;	tempAndHumidity.c:346: unsigned char humidityPointFirstDigit = raw_humidity % 10;
      00079A 75 48 0A         [24] 1981 	mov	__moduint_PARM_2,#0x0a
      00079D 75 49 00         [24] 1982 	mov	(__moduint_PARM_2 + 1),#0x00
      0007A0 8C 82            [24] 1983 	mov	dpl, r4
      0007A2 8D 83            [24] 1984 	mov	dph, r5
      0007A4 C0 05            [24] 1985 	push	ar5
      0007A6 C0 04            [24] 1986 	push	ar4
      0007A8 12 0B 1B         [24] 1987 	lcall	__moduint
      0007AB AA 82            [24] 1988 	mov	r2, dpl
      0007AD D0 04            [24] 1989 	pop	ar4
      0007AF D0 05            [24] 1990 	pop	ar5
      0007B1 D0 06            [24] 1991 	pop	ar6
      0007B3 D0 07            [24] 1992 	pop	ar7
      0007B5 8A 43            [24] 1993 	mov	_main_humidityPointFirstDigit_30002_109,r2
                                   1994 ;	tempAndHumidity.c:351: float true_temp = raw_temp / 10.0;
      0007B7 8E 82            [24] 1995 	mov	dpl, r6
      0007B9 8F 83            [24] 1996 	mov	dph, r7
      0007BB C0 05            [24] 1997 	push	ar5
      0007BD C0 04            [24] 1998 	push	ar4
      0007BF 12 0C 4B         [24] 1999 	lcall	___uint2fs
      0007C2 AA 82            [24] 2000 	mov	r2, dpl
      0007C4 AB 83            [24] 2001 	mov	r3, dph
      0007C6 AE F0            [24] 2002 	mov	r6, b
      0007C8 FF               [12] 2003 	mov	r7, a
      0007C9 E4               [12] 2004 	clr	a
      0007CA C0 E0            [24] 2005 	push	acc
      0007CC C0 E0            [24] 2006 	push	acc
      0007CE 74 20            [12] 2007 	mov	a,#0x20
      0007D0 C0 E0            [24] 2008 	push	acc
      0007D2 74 41            [12] 2009 	mov	a,#0x41
      0007D4 C0 E0            [24] 2010 	push	acc
                                   2011 ;	tempAndHumidity.c:352: float true_humidity = raw_humidity / 10.0;
      0007D6 8A 82            [24] 2012 	mov	dpl, r2
      0007D8 8B 83            [24] 2013 	mov	dph, r3
      0007DA 8E F0            [24] 2014 	mov	b, r6
      0007DC EF               [12] 2015 	mov	a, r7
      0007DD 12 0C D8         [24] 2016 	lcall	___fsdiv
      0007E0 85 82 44         [24] 2017 	mov	_main_true_temp_30002_109,dpl
      0007E3 85 83 45         [24] 2018 	mov	(_main_true_temp_30002_109 + 1),dph
      0007E6 85 F0 46         [24] 2019 	mov	(_main_true_temp_30002_109 + 2),b
      0007E9 F5 47            [12] 2020 	mov	(_main_true_temp_30002_109 + 3),a
      0007EB E5 81            [12] 2021 	mov	a,sp
      0007ED 24 FC            [12] 2022 	add	a,#0xfc
      0007EF F5 81            [12] 2023 	mov	sp,a
      0007F1 D0 04            [24] 2024 	pop	ar4
      0007F3 D0 05            [24] 2025 	pop	ar5
      0007F5 8C 82            [24] 2026 	mov	dpl, r4
      0007F7 8D 83            [24] 2027 	mov	dph, r5
      0007F9 12 0C 4B         [24] 2028 	lcall	___uint2fs
      0007FC AC 82            [24] 2029 	mov	r4, dpl
      0007FE AD 83            [24] 2030 	mov	r5, dph
      000800 AE F0            [24] 2031 	mov	r6, b
      000802 FF               [12] 2032 	mov	r7, a
      000803 E4               [12] 2033 	clr	a
      000804 C0 E0            [24] 2034 	push	acc
      000806 C0 E0            [24] 2035 	push	acc
      000808 74 20            [12] 2036 	mov	a,#0x20
      00080A C0 E0            [24] 2037 	push	acc
      00080C 74 41            [12] 2038 	mov	a,#0x41
      00080E C0 E0            [24] 2039 	push	acc
                                   2040 ;	tempAndHumidity.c:353: sendDataToServer(true_temp,true_humidity);
      000810 8C 82            [24] 2041 	mov	dpl, r4
      000812 8D 83            [24] 2042 	mov	dph, r5
      000814 8E F0            [24] 2043 	mov	b, r6
      000816 EF               [12] 2044 	mov	a, r7
      000817 12 0C D8         [24] 2045 	lcall	___fsdiv
      00081A 85 82 39         [24] 2046 	mov	_sendDataToServer_PARM_2,dpl
      00081D 85 83 3A         [24] 2047 	mov	(_sendDataToServer_PARM_2 + 1),dph
      000820 85 F0 3B         [24] 2048 	mov	(_sendDataToServer_PARM_2 + 2),b
      000823 F5 3C            [12] 2049 	mov	(_sendDataToServer_PARM_2 + 3),a
      000825 E5 81            [12] 2050 	mov	a,sp
      000827 24 FC            [12] 2051 	add	a,#0xfc
      000829 F5 81            [12] 2052 	mov	sp,a
      00082B 85 44 82         [24] 2053 	mov	dpl, _main_true_temp_30002_109
      00082E 85 45 83         [24] 2054 	mov	dph, (_main_true_temp_30002_109 + 1)
      000831 85 46 F0         [24] 2055 	mov	b, (_main_true_temp_30002_109 + 2)
      000834 E5 47            [12] 2056 	mov	a, (_main_true_temp_30002_109 + 3)
      000836 12 05 16         [24] 2057 	lcall	_sendDataToServer
                                   2058 ;	tempAndHumidity.c:356: while(counter--)
      000839 7E B8            [12] 2059 	mov	r6,#0xb8
      00083B 7F 0B            [12] 2060 	mov	r7,#0x0b
      00083D                       2061 00114$:
      00083D 8E 04            [24] 2062 	mov	ar4,r6
      00083F 8F 05            [24] 2063 	mov	ar5,r7
      000841 1E               [12] 2064 	dec	r6
      000842 BE FF 01         [24] 2065 	cjne	r6,#0xff,00187$
      000845 1F               [12] 2066 	dec	r7
      000846                       2067 00187$:
      000846 EC               [12] 2068 	mov	a,r4
      000847 4D               [12] 2069 	orl	a,r5
      000848 70 03            [24] 2070 	jnz	00188$
      00084A 02 09 04         [24] 2071 	ljmp	00116$
      00084D                       2072 00188$:
                                   2073 ;	tempAndHumidity.c:358: if(comfimed!=0)
      00084D E5 1A            [12] 2074 	mov	a,_comfimed
      00084F 45 1B            [12] 2075 	orl	a,(_comfimed + 1)
      000851 60 09            [24] 2076 	jz	00102$
                                   2077 ;	tempAndHumidity.c:360: comfimed--;
      000853 15 1A            [12] 2078 	dec	_comfimed
      000855 74 FF            [12] 2079 	mov	a,#0xff
      000857 B5 1A 02         [24] 2080 	cjne	a,_comfimed,00190$
      00085A 15 1B            [12] 2081 	dec	(_comfimed + 1)
      00085C                       2082 00190$:
      00085C                       2083 00102$:
                                   2084 ;	tempAndHumidity.c:363: if(justPressed)
      00085C E5 19            [12] 2085 	mov	a,_justPressed
      00085E 60 03            [24] 2086 	jz	00191$
      000860 02 09 04         [24] 2087 	ljmp	00116$
      000863                       2088 00191$:
                                   2089 ;	tempAndHumidity.c:368: if(displayHumidity)
      000863 E5 18            [12] 2090 	mov	a,_displayHumidity
      000865 60 4C            [24] 2091 	jz	00112$
                                   2092 ;	tempAndHumidity.c:370: HUMIDITY_LED = 1;
                                   2093 ;	assignBit
      000867 D2 A7            [12] 2094 	setb	_P27
                                   2095 ;	tempAndHumidity.c:371: if(humidityThirdDigit!=0)
      000869 E5 40            [12] 2096 	mov	a,_main_humidityThirdDigit_30002_109
      00086B 60 11            [24] 2097 	jz	00106$
                                   2098 ;	tempAndHumidity.c:373: display_number(humidityThirdDigit,1);
      00086D 75 38 01         [24] 2099 	mov	_display_number_PARM_2,#0x01
      000870 85 40 82         [24] 2100 	mov	dpl, _main_humidityThirdDigit_30002_109
      000873 C0 07            [24] 2101 	push	ar7
      000875 C0 06            [24] 2102 	push	ar6
      000877 12 03 AF         [24] 2103 	lcall	_display_number
      00087A D0 06            [24] 2104 	pop	ar6
      00087C D0 07            [24] 2105 	pop	ar7
      00087E                       2106 00106$:
                                   2107 ;	tempAndHumidity.c:375: display_number(humiditySecondDigit,2);
      00087E 75 38 02         [24] 2108 	mov	_display_number_PARM_2,#0x02
      000881 85 41 82         [24] 2109 	mov	dpl, _main_humiditySecondDigit_30002_109
      000884 C0 07            [24] 2110 	push	ar7
      000886 C0 06            [24] 2111 	push	ar6
      000888 12 03 AF         [24] 2112 	lcall	_display_number
      00088B D0 06            [24] 2113 	pop	ar6
      00088D D0 07            [24] 2114 	pop	ar7
                                   2115 ;	tempAndHumidity.c:376: display_number(humidityFirstDigit,3);
      00088F 75 38 03         [24] 2116 	mov	_display_number_PARM_2,#0x03
      000892 85 42 82         [24] 2117 	mov	dpl, _main_humidityFirstDigit_30002_109
      000895 C0 07            [24] 2118 	push	ar7
      000897 C0 06            [24] 2119 	push	ar6
      000899 12 03 AF         [24] 2120 	lcall	_display_number
      00089C D0 06            [24] 2121 	pop	ar6
      00089E D0 07            [24] 2122 	pop	ar7
                                   2123 ;	tempAndHumidity.c:377: display_number(humidityPointFirstDigit,4);
      0008A0 75 38 04         [24] 2124 	mov	_display_number_PARM_2,#0x04
      0008A3 85 43 82         [24] 2125 	mov	dpl, _main_humidityPointFirstDigit_30002_109
      0008A6 C0 07            [24] 2126 	push	ar7
      0008A8 C0 06            [24] 2127 	push	ar6
      0008AA 12 03 AF         [24] 2128 	lcall	_display_number
      0008AD D0 06            [24] 2129 	pop	ar6
      0008AF D0 07            [24] 2130 	pop	ar7
      0008B1 80 8A            [24] 2131 	sjmp	00114$
      0008B3                       2132 00112$:
                                   2133 ;	tempAndHumidity.c:381: HUMIDITY_LED = 0;
                                   2134 ;	assignBit
      0008B3 C2 A7            [12] 2135 	clr	_P27
                                   2136 ;	tempAndHumidity.c:382: if(tempNegativeSign)
      0008B5 E5 1C            [12] 2137 	mov	a,_tempNegativeSign
      0008B7 60 11            [24] 2138 	jz	00108$
                                   2139 ;	tempAndHumidity.c:384: display_number(10,1);
      0008B9 75 38 01         [24] 2140 	mov	_display_number_PARM_2,#0x01
      0008BC 75 82 0A         [24] 2141 	mov	dpl, #0x0a
      0008BF C0 07            [24] 2142 	push	ar7
      0008C1 C0 06            [24] 2143 	push	ar6
      0008C3 12 03 AF         [24] 2144 	lcall	_display_number
      0008C6 D0 06            [24] 2145 	pop	ar6
      0008C8 D0 07            [24] 2146 	pop	ar7
      0008CA                       2147 00108$:
                                   2148 ;	tempAndHumidity.c:386: if(tempSecondDigit!=0)
      0008CA E5 3D            [12] 2149 	mov	a,_main_tempSecondDigit_30002_109
      0008CC 60 11            [24] 2150 	jz	00110$
                                   2151 ;	tempAndHumidity.c:388: display_number(tempSecondDigit,2);
      0008CE 75 38 02         [24] 2152 	mov	_display_number_PARM_2,#0x02
      0008D1 85 3D 82         [24] 2153 	mov	dpl, _main_tempSecondDigit_30002_109
      0008D4 C0 07            [24] 2154 	push	ar7
      0008D6 C0 06            [24] 2155 	push	ar6
      0008D8 12 03 AF         [24] 2156 	lcall	_display_number
      0008DB D0 06            [24] 2157 	pop	ar6
      0008DD D0 07            [24] 2158 	pop	ar7
      0008DF                       2159 00110$:
                                   2160 ;	tempAndHumidity.c:391: display_number(tempFirstDigit,3);
      0008DF 75 38 03         [24] 2161 	mov	_display_number_PARM_2,#0x03
      0008E2 85 3E 82         [24] 2162 	mov	dpl, _main_tempFirstDigit_30002_109
      0008E5 C0 07            [24] 2163 	push	ar7
      0008E7 C0 06            [24] 2164 	push	ar6
      0008E9 12 03 AF         [24] 2165 	lcall	_display_number
      0008EC D0 06            [24] 2166 	pop	ar6
      0008EE D0 07            [24] 2167 	pop	ar7
                                   2168 ;	tempAndHumidity.c:392: display_number(tempPointFirstDigit,4);
      0008F0 75 38 04         [24] 2169 	mov	_display_number_PARM_2,#0x04
      0008F3 85 3F 82         [24] 2170 	mov	dpl, _main_tempPointFirstDigit_30002_109
      0008F6 C0 07            [24] 2171 	push	ar7
      0008F8 C0 06            [24] 2172 	push	ar6
      0008FA 12 03 AF         [24] 2173 	lcall	_display_number
      0008FD D0 06            [24] 2174 	pop	ar6
      0008FF D0 07            [24] 2175 	pop	ar7
      000901 02 08 3D         [24] 2176 	ljmp	00114$
      000904                       2177 00116$:
                                   2178 ;	tempAndHumidity.c:396: if(justPressed)
      000904 E5 19            [12] 2179 	mov	a,_justPressed
      000906 60 12            [24] 2180 	jz	00118$
                                   2181 ;	tempAndHumidity.c:398: delay_ms(150);
      000908 90 00 96         [24] 2182 	mov	dptr,#0x0096
      00090B 12 03 6F         [24] 2183 	lcall	_delay_ms
                                   2184 ;	tempAndHumidity.c:399: displayHumidity = !displayHumidity;
      00090E E5 18            [12] 2185 	mov	a,_displayHumidity
      000910 B4 01 00         [24] 2186 	cjne	a,#0x01,00197$
      000913                       2187 00197$:
      000913 E4               [12] 2188 	clr	a
      000914 33               [12] 2189 	rlc	a
      000915 F5 18            [12] 2190 	mov	_displayHumidity,a
                                   2191 ;	tempAndHumidity.c:400: justPressed = false;
      000917 75 19 00         [24] 2192 	mov	_justPressed,#0x00
      00091A                       2193 00118$:
                                   2194 ;	tempAndHumidity.c:402: delay_ms(1);
      00091A 90 00 01         [24] 2195 	mov	dptr,#0x0001
      00091D 12 03 6F         [24] 2196 	lcall	_delay_ms
                                   2197 ;	tempAndHumidity.c:405: }
      000920 02 06 A2         [24] 2198 	ljmp	00122$
                                   2199 	.area CSEG    (CODE)
                                   2200 	.area CONST   (CODE)
                                   2201 	.area CONST   (CODE)
      000F19                       2202 ___str_0:
      000F19 41 54 2B 43 57 4D 4F  2203 	.ascii "AT+CWMODE=1"
             44 45 3D 31
      000F24 0D                    2204 	.db 0x0d
      000F25 0A                    2205 	.db 0x0a
      000F26 00                    2206 	.db 0x00
                                   2207 	.area CSEG    (CODE)
                                   2208 	.area CONST   (CODE)
      000F27                       2209 ___str_1:
      000F27 41 54 2B 43 57 4A 41  2210 	.ascii "AT+CWJAP="
             50 3D
      000F30 22                    2211 	.db 0x22
      000F31 48 55 41 57 45 49 2D  2212 	.ascii "HUAWEI-10HOL3"
             31 30 48 4F 4C 33
      000F3E 22                    2213 	.db 0x22
      000F3F 2C                    2214 	.ascii ","
      000F40 22                    2215 	.db 0x22
      000F41 38 38 35 38 38 36 38  2216 	.ascii "88588681"
             31
      000F49 22                    2217 	.db 0x22
      000F4A 0D                    2218 	.db 0x0d
      000F4B 0A                    2219 	.db 0x0a
      000F4C 00                    2220 	.db 0x00
                                   2221 	.area CSEG    (CODE)
                                   2222 	.area CONST   (CODE)
      000F4D                       2223 ___str_2:
      000F4D 41 54 2B 43 49 50 53  2224 	.ascii "AT+CIPSTART="
             54 41 52 54 3D
      000F59 22                    2225 	.db 0x22
      000F5A 54 43 50              2226 	.ascii "TCP"
      000F5D 22                    2227 	.db 0x22
      000F5E 2C                    2228 	.ascii ","
      000F5F 22                    2229 	.db 0x22
      000F60 77 77 77 2E 68 6F 6D  2230 	.ascii "www.homemoni.xyz"
             65 6D 6F 6E 69 2E 78
             79 7A
      000F70 22                    2231 	.db 0x22
      000F71 2C 38 30              2232 	.ascii ",80"
      000F74 0D                    2233 	.db 0x0d
      000F75 0A                    2234 	.db 0x0a
      000F76 00                    2235 	.db 0x00
                                   2236 	.area CSEG    (CODE)
                                   2237 	.area CONST   (CODE)
      000F77                       2238 ___str_3:
      000F77 50 4F 53 54 20 2F 61  2239 	.ascii "POST /api/tempAndHumi HTTP/1.1"
             70 69 2F 74 65 6D 70
             41 6E 64 48 75 6D 69
             20 48 54 54 50 2F 31
             2E 31
      000F95 0D                    2240 	.db 0x0d
      000F96 0A                    2241 	.db 0x0a
      000F97 48 6F 73 74 3A 20 77  2242 	.ascii "Host: www.homemoni.xyz"
             77 77 2E 68 6F 6D 65
             6D 6F 6E 69 2E 78 79
             7A
      000FAD 0D                    2243 	.db 0x0d
      000FAE 0A                    2244 	.db 0x0a
      000FAF 43 6F 6E 74 65 6E 74  2245 	.ascii "Content-Type: application/json"
             2D 54 79 70 65 3A 20
             61 70 70 6C 69 63 61
             74 69 6F 6E 2F 6A 73
             6F 6E
      000FCD 0D                    2246 	.db 0x0d
      000FCE 0A                    2247 	.db 0x0a
      000FCF 43 6F 6E 74 65 6E 74  2248 	.ascii "Content-Length: 80"
             2D 4C 65 6E 67 74 68
             3A 20 38 30
      000FE1 0D                    2249 	.db 0x0d
      000FE2 0A                    2250 	.db 0x0a
      000FE3 0D                    2251 	.db 0x0d
      000FE4 0A                    2252 	.db 0x0a
      000FE5 7B                    2253 	.ascii "{"
      000FE6 22                    2254 	.db 0x22
      000FE7 74 65 6D 70 65 72 61  2255 	.ascii "temperature"
             74 75 72 65
      000FF2 22                    2256 	.db 0x22
      000FF3 3A                    2257 	.ascii ":"
      000FF4 00                    2258 	.db 0x00
                                   2259 	.area CSEG    (CODE)
                                   2260 	.area CONST   (CODE)
      000FF5                       2261 ___str_4:
      000FF5 2C                    2262 	.ascii ","
      000FF6 22                    2263 	.db 0x22
      000FF7 68 75 6D 69 64 69 74  2264 	.ascii "humidity"
             79
      000FFF 22                    2265 	.db 0x22
      001000 3A                    2266 	.ascii ":"
      001001 00                    2267 	.db 0x00
                                   2268 	.area CSEG    (CODE)
                                   2269 	.area CONST   (CODE)
      001002                       2270 ___str_5:
      001002 2C                    2271 	.ascii ","
      001003 22                    2272 	.db 0x22
      001004 73 69 74 65 4E 61 6D  2273 	.ascii "siteName"
             65
      00100C 22                    2274 	.db 0x22
      00100D 3A                    2275 	.ascii ":"
      00100E 22                    2276 	.db 0x22
      00100F 4C 69 76 69 6E 67 20  2277 	.ascii "Living Room"
             52 6F 6F 6D
      00101A 22                    2278 	.db 0x22
      00101B 7D                    2279 	.ascii "}"
      00101C 0D                    2280 	.db 0x0d
      00101D 0A                    2281 	.db 0x0a
      00101E 00                    2282 	.db 0x00
                                   2283 	.area CSEG    (CODE)
                                   2284 	.area CONST   (CODE)
      00101F                       2285 ___str_6:
      00101F 41 54 2B 43 49 50 53  2286 	.ascii "AT+CIPSEND="
             45 4E 44 3D
      00102A 00                    2287 	.db 0x00
                                   2288 	.area CSEG    (CODE)
                                   2289 	.area CONST   (CODE)
      00102B                       2290 ___str_7:
      00102B 0D                    2291 	.db 0x0d
      00102C 0A                    2292 	.db 0x0a
      00102D 00                    2293 	.db 0x00
                                   2294 	.area CSEG    (CODE)
                                   2295 	.area CONST   (CODE)
      00102E                       2296 ___str_8:
      00102E 41 54 2B 47 53 4C 50  2297 	.ascii "AT+GSLP=720000"
             3D 37 32 30 30 30 30
      00103C 0D                    2298 	.db 0x0d
      00103D 0A                    2299 	.db 0x0a
      00103E 00                    2300 	.db 0x00
                                   2301 	.area CSEG    (CODE)
                                   2302 	.area XINIT   (CODE)
                                   2303 	.area CABS    (ABS,CODE)
