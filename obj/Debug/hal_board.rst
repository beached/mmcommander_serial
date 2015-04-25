                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
                                      4 ; This file was generated Sat Apr 25 00:05:12 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module hal_board
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _halMcuInit
                                     13 	.globl _MODE
                                     14 	.globl _RE
                                     15 	.globl _SLAVE
                                     16 	.globl _FE
                                     17 	.globl _ERR
                                     18 	.globl _RX_BYTE
                                     19 	.globl _TX_BYTE
                                     20 	.globl _ACTIVE
                                     21 	.globl _B_7
                                     22 	.globl _B_6
                                     23 	.globl _B_5
                                     24 	.globl _B_4
                                     25 	.globl _B_3
                                     26 	.globl _B_2
                                     27 	.globl _B_1
                                     28 	.globl _B_0
                                     29 	.globl _WDTIF
                                     30 	.globl _P1IF
                                     31 	.globl _UTX1IF
                                     32 	.globl _UTX0IF
                                     33 	.globl _P2IF
                                     34 	.globl _ACC_7
                                     35 	.globl _ACC_6
                                     36 	.globl _ACC_5
                                     37 	.globl _ACC_4
                                     38 	.globl _ACC_3
                                     39 	.globl _ACC_2
                                     40 	.globl _ACC_1
                                     41 	.globl _ACC_0
                                     42 	.globl _OVFIM
                                     43 	.globl _T4CH1IF
                                     44 	.globl _T4CH0IF
                                     45 	.globl _T4OVFIF
                                     46 	.globl _T3CH1IF
                                     47 	.globl _T3CH0IF
                                     48 	.globl _T3OVFIF
                                     49 	.globl _CY
                                     50 	.globl _AC
                                     51 	.globl _F0
                                     52 	.globl _RS1
                                     53 	.globl _RS0
                                     54 	.globl _OV
                                     55 	.globl _F1
                                     56 	.globl _P
                                     57 	.globl _STIF
                                     58 	.globl _P0IF
                                     59 	.globl _T4IF
                                     60 	.globl _T3IF
                                     61 	.globl _T2IF
                                     62 	.globl _T1IF
                                     63 	.globl _DMAIF
                                     64 	.globl _P0IE
                                     65 	.globl _T4IE
                                     66 	.globl _T3IE
                                     67 	.globl _T2IE
                                     68 	.globl _T1IE
                                     69 	.globl _DMAIE
                                     70 	.globl _EA
                                     71 	.globl _STIE
                                     72 	.globl _ENCIE
                                     73 	.globl _URX1IE
                                     74 	.globl _URX0IE
                                     75 	.globl _ADCIE
                                     76 	.globl _RFTXRXIE
                                     77 	.globl _P2_7
                                     78 	.globl _P2_6
                                     79 	.globl _P2_5
                                     80 	.globl _P2_4
                                     81 	.globl _P2_3
                                     82 	.globl _P2_2
                                     83 	.globl _P2_1
                                     84 	.globl _P2_0
                                     85 	.globl _ENCIF_1
                                     86 	.globl _ENCIF_0
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _URX1IF
                                     96 	.globl _ADCIF
                                     97 	.globl _URX0IF
                                     98 	.globl _IT1
                                     99 	.globl _RFTXRXIF
                                    100 	.globl _IT0
                                    101 	.globl _P0_7
                                    102 	.globl _P0_6
                                    103 	.globl _P0_5
                                    104 	.globl _P0_4
                                    105 	.globl _P0_3
                                    106 	.globl _P0_2
                                    107 	.globl _P0_1
                                    108 	.globl _P0_0
                                    109 	.globl _P2DIR
                                    110 	.globl _P1DIR
                                    111 	.globl _P0DIR
                                    112 	.globl _U1GCR
                                    113 	.globl _U1UCR
                                    114 	.globl _U1BAUD
                                    115 	.globl _U1DBUF
                                    116 	.globl _U1CSR
                                    117 	.globl _P2INP
                                    118 	.globl _P1INP
                                    119 	.globl _P2SEL
                                    120 	.globl _P1SEL
                                    121 	.globl _P0SEL
                                    122 	.globl _ADCCFG
                                    123 	.globl _PERCFG
                                    124 	.globl _B
                                    125 	.globl _T4CC1
                                    126 	.globl _T4CCTL1
                                    127 	.globl _T4CC0
                                    128 	.globl _T4CCTL0
                                    129 	.globl _T4CTL
                                    130 	.globl _T4CNT
                                    131 	.globl _RFIF
                                    132 	.globl _IRCON2
                                    133 	.globl _T1CCTL2
                                    134 	.globl _T1CCTL1
                                    135 	.globl _T1CCTL0
                                    136 	.globl _T1CTL
                                    137 	.globl _T1CNTH
                                    138 	.globl _T1CNTL
                                    139 	.globl _RFST
                                    140 	.globl _ACC
                                    141 	.globl _T1CC2H
                                    142 	.globl _T1CC2L
                                    143 	.globl _T1CC1H
                                    144 	.globl _T1CC1L
                                    145 	.globl _T1CC0H
                                    146 	.globl _T1CC0L
                                    147 	.globl _RFD
                                    148 	.globl _TIMIF
                                    149 	.globl _DMAREQ
                                    150 	.globl _DMAARM
                                    151 	.globl _DMA0CFGH
                                    152 	.globl _DMA0CFGL
                                    153 	.globl _DMA1CFGH
                                    154 	.globl _DMA1CFGL
                                    155 	.globl _DMAIRQ
                                    156 	.globl _PSW
                                    157 	.globl _T3CC1
                                    158 	.globl _T3CCTL1
                                    159 	.globl _T3CC0
                                    160 	.globl _T3CCTL0
                                    161 	.globl _T3CTL
                                    162 	.globl _T3CNT
                                    163 	.globl _WDCTL
                                    164 	.globl __SFRC8
                                    165 	.globl _MEMCTR
                                    166 	.globl _CLKCON
                                    167 	.globl _U0GCR
                                    168 	.globl _U0UCR
                                    169 	.globl __SFRC3
                                    170 	.globl _U0BAUD
                                    171 	.globl _U0DBUF
                                    172 	.globl _IRCON
                                    173 	.globl __SFRBF
                                    174 	.globl _SLEEP
                                    175 	.globl _RNDH
                                    176 	.globl _RNDL
                                    177 	.globl _ADCH
                                    178 	.globl _ADCL
                                    179 	.globl _IP1
                                    180 	.globl _IEN1
                                    181 	.globl __SFRB7
                                    182 	.globl _ADCCON3
                                    183 	.globl _ADCCON2
                                    184 	.globl _ADCCON1
                                    185 	.globl _ENCCS
                                    186 	.globl _ENCDO
                                    187 	.globl _ENCDI
                                    188 	.globl __SFRB0
                                    189 	.globl _FWDATA
                                    190 	.globl _FCTL
                                    191 	.globl _FADDRH
                                    192 	.globl _FADDRL
                                    193 	.globl _FWT
                                    194 	.globl __SFRAA
                                    195 	.globl _IP0
                                    196 	.globl _IEN0
                                    197 	.globl __SFRA7
                                    198 	.globl _WORTIME1
                                    199 	.globl _WORTIME0
                                    200 	.globl _WOREVT1
                                    201 	.globl _WOREVT0
                                    202 	.globl _WORCTRL
                                    203 	.globl _WORIRQ
                                    204 	.globl _P2
                                    205 	.globl __SFR9F
                                    206 	.globl _T2CTL
                                    207 	.globl _T2PR
                                    208 	.globl _T2CT
                                    209 	.globl _S1CON
                                    210 	.globl _IEN2
                                    211 	.globl __SFR99
                                    212 	.globl _S0CON
                                    213 	.globl __SFR97
                                    214 	.globl __SFR96
                                    215 	.globl __SFR95
                                    216 	.globl __SFR94
                                    217 	.globl __XPAGE
                                    218 	.globl _MPAGE
                                    219 	.globl _DPS
                                    220 	.globl _RFIM
                                    221 	.globl _P1
                                    222 	.globl _P0INP
                                    223 	.globl __SFR8E
                                    224 	.globl _P1IEN
                                    225 	.globl _PICTL
                                    226 	.globl _P2IFG
                                    227 	.globl _P1IFG
                                    228 	.globl _P0IFG
                                    229 	.globl _TCON
                                    230 	.globl _PCON
                                    231 	.globl _U0CSR
                                    232 	.globl _DPH1
                                    233 	.globl _DPL1
                                    234 	.globl _DPH0
                                    235 	.globl _DPL0
                                    236 	.globl _SP
                                    237 	.globl _P0
                                    238 	.globl _X_P2DIR
                                    239 	.globl _X_P1DIR
                                    240 	.globl _X_P0DIR
                                    241 	.globl _X_U1GCR
                                    242 	.globl _X_U1UCR
                                    243 	.globl _X_U1BAUD
                                    244 	.globl _X_U1DBUF
                                    245 	.globl _X_U1CSR
                                    246 	.globl _X_P2INP
                                    247 	.globl _X_P1INP
                                    248 	.globl _X_P2SEL
                                    249 	.globl _X_P1SEL
                                    250 	.globl _X_P0SEL
                                    251 	.globl _X_ADCCFG
                                    252 	.globl _X_PERCFG
                                    253 	.globl __NA_B
                                    254 	.globl _X_T4CC1
                                    255 	.globl _X_T4CCTL1
                                    256 	.globl _X_T4CC0
                                    257 	.globl _X_T4CCTL0
                                    258 	.globl _X_T4CTL
                                    259 	.globl _X_T4CNT
                                    260 	.globl _X_RFIF
                                    261 	.globl __NA_IRCON2
                                    262 	.globl _X_T1CCTL2
                                    263 	.globl _X_T1CCTL1
                                    264 	.globl _X_T1CCTL0
                                    265 	.globl _X_T1CTL
                                    266 	.globl _X_T1CNTH
                                    267 	.globl _X_T1CNTL
                                    268 	.globl _X_RFST
                                    269 	.globl __NA_ACC
                                    270 	.globl _X_T1CC2H
                                    271 	.globl _X_T1CC2L
                                    272 	.globl _X_T1CC1H
                                    273 	.globl _X_T1CC1L
                                    274 	.globl _X_T1CC0H
                                    275 	.globl _X_T1CC0L
                                    276 	.globl _X_RFD
                                    277 	.globl _X_TIMIF
                                    278 	.globl _X_DMAREQ
                                    279 	.globl _X_DMAARM
                                    280 	.globl _X_DMA0CFGH
                                    281 	.globl _X_DMA0CFGL
                                    282 	.globl _X_DMA1CFGH
                                    283 	.globl _X_DMA1CFGL
                                    284 	.globl _X_DMAIRQ
                                    285 	.globl __NA_PSW
                                    286 	.globl _X_T3CC1
                                    287 	.globl _X_T3CCTL1
                                    288 	.globl _X_T3CC0
                                    289 	.globl _X_T3CCTL0
                                    290 	.globl _X_T3CTL
                                    291 	.globl _X_T3CNT
                                    292 	.globl _X_WDCTL
                                    293 	.globl __X_SFRC8
                                    294 	.globl _X_MEMCTR
                                    295 	.globl _X_CLKCON
                                    296 	.globl _X_U0GCR
                                    297 	.globl _X_U0UCR
                                    298 	.globl __X_SFRC3
                                    299 	.globl _X_U0BAUD
                                    300 	.globl _X_U0DBUF
                                    301 	.globl __NA_IRCON
                                    302 	.globl __X_SFRBF
                                    303 	.globl _X_SLEEP
                                    304 	.globl _X_RNDH
                                    305 	.globl _X_RNDL
                                    306 	.globl _X_ADCH
                                    307 	.globl _X_ADCL
                                    308 	.globl __NA_IP1
                                    309 	.globl __NA_IEN1
                                    310 	.globl __X_SFRB7
                                    311 	.globl _X_ADCCON3
                                    312 	.globl _X_ADCCON2
                                    313 	.globl _X_ADCCON1
                                    314 	.globl _X_ENCCS
                                    315 	.globl _X_ENCDO
                                    316 	.globl _X_ENCDI
                                    317 	.globl __X_SFRB0
                                    318 	.globl _X_FWDATA
                                    319 	.globl _X_FCTL
                                    320 	.globl _X_FADDRH
                                    321 	.globl _X_FADDRL
                                    322 	.globl _X_FWT
                                    323 	.globl __X_SFRAA
                                    324 	.globl __NA_IP0
                                    325 	.globl __NA_IEN0
                                    326 	.globl __X_SFRA7
                                    327 	.globl _X_WORTIME1
                                    328 	.globl _X_WORTIME0
                                    329 	.globl _X_WOREVT1
                                    330 	.globl _X_WOREVT0
                                    331 	.globl _X_WORCTRL
                                    332 	.globl _X_WORIRQ
                                    333 	.globl __NA_P2
                                    334 	.globl __X_SFR9F
                                    335 	.globl _X_T2CTL
                                    336 	.globl _X_T2PR
                                    337 	.globl _X_T2CT
                                    338 	.globl __NA_S1CON
                                    339 	.globl __NA_IEN2
                                    340 	.globl __X_SFR99
                                    341 	.globl __NA_S0CON
                                    342 	.globl __X_SFR97
                                    343 	.globl __X_SFR96
                                    344 	.globl __X_SFR95
                                    345 	.globl __X_SFR94
                                    346 	.globl _X_MPAGE
                                    347 	.globl __NA_DPS
                                    348 	.globl _X_RFIM
                                    349 	.globl __NA_P1
                                    350 	.globl _X_P0INP
                                    351 	.globl __X_SFR8E
                                    352 	.globl _X_P1IEN
                                    353 	.globl _X_PICTL
                                    354 	.globl _X_P2IFG
                                    355 	.globl _X_P1IFG
                                    356 	.globl _X_P0IFG
                                    357 	.globl __NA_TCON
                                    358 	.globl __NA_PCON
                                    359 	.globl _X_U0CSR
                                    360 	.globl __NA_DPH1
                                    361 	.globl __NA_DPL1
                                    362 	.globl __NA_DPH0
                                    363 	.globl __NA_DPL0
                                    364 	.globl __NA_SP
                                    365 	.globl __NA_P0
                                    366 	.globl _I2SCLKF2
                                    367 	.globl _I2SCLKF1
                                    368 	.globl _I2SCLKF0
                                    369 	.globl _I2SSTAT
                                    370 	.globl _I2SWCNT
                                    371 	.globl _I2SDATH
                                    372 	.globl _I2SDATL
                                    373 	.globl _I2SCFG1
                                    374 	.globl _I2SCFG0
                                    375 	.globl _VCO_VC_DAC
                                    376 	.globl _PKTSTATUS
                                    377 	.globl _MARCSTATE
                                    378 	.globl _RSSI
                                    379 	.globl _LQI
                                    380 	.globl _FREQEST
                                    381 	.globl _VERSION
                                    382 	.globl _PARTNUM
                                    383 	.globl __XREGDF35
                                    384 	.globl __XREGDF34
                                    385 	.globl __XREGDF33
                                    386 	.globl __XREGDF32
                                    387 	.globl _IOCFG0
                                    388 	.globl _IOCFG1
                                    389 	.globl _IOCFG2
                                    390 	.globl _PA_TABLE0
                                    391 	.globl _PA_TABLE1
                                    392 	.globl _PA_TABLE2
                                    393 	.globl _PA_TABLE3
                                    394 	.globl _PA_TABLE4
                                    395 	.globl _PA_TABLE5
                                    396 	.globl _PA_TABLE6
                                    397 	.globl _PA_TABLE7
                                    398 	.globl __XREGDF26
                                    399 	.globl _TEST0
                                    400 	.globl _TEST1
                                    401 	.globl _TEST2
                                    402 	.globl __XREGDF22
                                    403 	.globl __XREGDF21
                                    404 	.globl __XREGDF20
                                    405 	.globl _FSCAL0
                                    406 	.globl _FSCAL1
                                    407 	.globl _FSCAL2
                                    408 	.globl _FSCAL3
                                    409 	.globl _FREND0
                                    410 	.globl _FREND1
                                    411 	.globl _AGCCTRL0
                                    412 	.globl _AGCCTRL1
                                    413 	.globl _AGCCTRL2
                                    414 	.globl _BSCFG
                                    415 	.globl _FOCCFG
                                    416 	.globl _MCSM0
                                    417 	.globl _MCSM1
                                    418 	.globl _MCSM2
                                    419 	.globl _DEVIATN
                                    420 	.globl _MDMCFG0
                                    421 	.globl _MDMCFG1
                                    422 	.globl _MDMCFG2
                                    423 	.globl _MDMCFG3
                                    424 	.globl _MDMCFG4
                                    425 	.globl _FREQ0
                                    426 	.globl _FREQ1
                                    427 	.globl _FREQ2
                                    428 	.globl _FSCTRL0
                                    429 	.globl _FSCTRL1
                                    430 	.globl _CHANNR
                                    431 	.globl _ADDR
                                    432 	.globl _PKTCTRL0
                                    433 	.globl _PKTCTRL1
                                    434 	.globl _PKTLEN
                                    435 	.globl _SYNC0
                                    436 	.globl _SYNC1
                                    437 	.globl _MDMCTRL0H
                                    438 	.globl _halBoardInit
                                    439 ;--------------------------------------------------------
                                    440 ; special function registers
                                    441 ;--------------------------------------------------------
                                    442 	.area RSEG    (ABS,DATA)
      000000                        443 	.org 0x0000
                           000080   444 G$P0$0$0 == 0x0080
                           000080   445 _P0	=	0x0080
                           000081   446 G$SP$0$0 == 0x0081
                           000081   447 _SP	=	0x0081
                           000082   448 G$DPL0$0$0 == 0x0082
                           000082   449 _DPL0	=	0x0082
                           000083   450 G$DPH0$0$0 == 0x0083
                           000083   451 _DPH0	=	0x0083
                           000084   452 G$DPL1$0$0 == 0x0084
                           000084   453 _DPL1	=	0x0084
                           000085   454 G$DPH1$0$0 == 0x0085
                           000085   455 _DPH1	=	0x0085
                           000086   456 G$U0CSR$0$0 == 0x0086
                           000086   457 _U0CSR	=	0x0086
                           000087   458 G$PCON$0$0 == 0x0087
                           000087   459 _PCON	=	0x0087
                           000088   460 G$TCON$0$0 == 0x0088
                           000088   461 _TCON	=	0x0088
                           000089   462 G$P0IFG$0$0 == 0x0089
                           000089   463 _P0IFG	=	0x0089
                           00008A   464 G$P1IFG$0$0 == 0x008a
                           00008A   465 _P1IFG	=	0x008a
                           00008B   466 G$P2IFG$0$0 == 0x008b
                           00008B   467 _P2IFG	=	0x008b
                           00008C   468 G$PICTL$0$0 == 0x008c
                           00008C   469 _PICTL	=	0x008c
                           00008D   470 G$P1IEN$0$0 == 0x008d
                           00008D   471 _P1IEN	=	0x008d
                           00008E   472 G$_SFR8E$0$0 == 0x008e
                           00008E   473 __SFR8E	=	0x008e
                           00008F   474 G$P0INP$0$0 == 0x008f
                           00008F   475 _P0INP	=	0x008f
                           000090   476 G$P1$0$0 == 0x0090
                           000090   477 _P1	=	0x0090
                           000091   478 G$RFIM$0$0 == 0x0091
                           000091   479 _RFIM	=	0x0091
                           000092   480 G$DPS$0$0 == 0x0092
                           000092   481 _DPS	=	0x0092
                           000093   482 G$MPAGE$0$0 == 0x0093
                           000093   483 _MPAGE	=	0x0093
                           000093   484 G$_XPAGE$0$0 == 0x0093
                           000093   485 __XPAGE	=	0x0093
                           000094   486 G$_SFR94$0$0 == 0x0094
                           000094   487 __SFR94	=	0x0094
                           000095   488 G$_SFR95$0$0 == 0x0095
                           000095   489 __SFR95	=	0x0095
                           000096   490 G$_SFR96$0$0 == 0x0096
                           000096   491 __SFR96	=	0x0096
                           000097   492 G$_SFR97$0$0 == 0x0097
                           000097   493 __SFR97	=	0x0097
                           000098   494 G$S0CON$0$0 == 0x0098
                           000098   495 _S0CON	=	0x0098
                           000099   496 G$_SFR99$0$0 == 0x0099
                           000099   497 __SFR99	=	0x0099
                           00009A   498 G$IEN2$0$0 == 0x009a
                           00009A   499 _IEN2	=	0x009a
                           00009B   500 G$S1CON$0$0 == 0x009b
                           00009B   501 _S1CON	=	0x009b
                           00009C   502 G$T2CT$0$0 == 0x009c
                           00009C   503 _T2CT	=	0x009c
                           00009D   504 G$T2PR$0$0 == 0x009d
                           00009D   505 _T2PR	=	0x009d
                           00009E   506 G$T2CTL$0$0 == 0x009e
                           00009E   507 _T2CTL	=	0x009e
                           00009F   508 G$_SFR9F$0$0 == 0x009f
                           00009F   509 __SFR9F	=	0x009f
                           0000A0   510 G$P2$0$0 == 0x00a0
                           0000A0   511 _P2	=	0x00a0
                           0000A1   512 G$WORIRQ$0$0 == 0x00a1
                           0000A1   513 _WORIRQ	=	0x00a1
                           0000A2   514 G$WORCTRL$0$0 == 0x00a2
                           0000A2   515 _WORCTRL	=	0x00a2
                           0000A3   516 G$WOREVT0$0$0 == 0x00a3
                           0000A3   517 _WOREVT0	=	0x00a3
                           0000A4   518 G$WOREVT1$0$0 == 0x00a4
                           0000A4   519 _WOREVT1	=	0x00a4
                           0000A5   520 G$WORTIME0$0$0 == 0x00a5
                           0000A5   521 _WORTIME0	=	0x00a5
                           0000A6   522 G$WORTIME1$0$0 == 0x00a6
                           0000A6   523 _WORTIME1	=	0x00a6
                           0000A7   524 G$_SFRA7$0$0 == 0x00a7
                           0000A7   525 __SFRA7	=	0x00a7
                           0000A8   526 G$IEN0$0$0 == 0x00a8
                           0000A8   527 _IEN0	=	0x00a8
                           0000A9   528 G$IP0$0$0 == 0x00a9
                           0000A9   529 _IP0	=	0x00a9
                           0000AA   530 G$_SFRAA$0$0 == 0x00aa
                           0000AA   531 __SFRAA	=	0x00aa
                           0000AB   532 G$FWT$0$0 == 0x00ab
                           0000AB   533 _FWT	=	0x00ab
                           0000AC   534 G$FADDRL$0$0 == 0x00ac
                           0000AC   535 _FADDRL	=	0x00ac
                           0000AD   536 G$FADDRH$0$0 == 0x00ad
                           0000AD   537 _FADDRH	=	0x00ad
                           0000AE   538 G$FCTL$0$0 == 0x00ae
                           0000AE   539 _FCTL	=	0x00ae
                           0000AF   540 G$FWDATA$0$0 == 0x00af
                           0000AF   541 _FWDATA	=	0x00af
                           0000B0   542 G$_SFRB0$0$0 == 0x00b0
                           0000B0   543 __SFRB0	=	0x00b0
                           0000B1   544 G$ENCDI$0$0 == 0x00b1
                           0000B1   545 _ENCDI	=	0x00b1
                           0000B2   546 G$ENCDO$0$0 == 0x00b2
                           0000B2   547 _ENCDO	=	0x00b2
                           0000B3   548 G$ENCCS$0$0 == 0x00b3
                           0000B3   549 _ENCCS	=	0x00b3
                           0000B4   550 G$ADCCON1$0$0 == 0x00b4
                           0000B4   551 _ADCCON1	=	0x00b4
                           0000B5   552 G$ADCCON2$0$0 == 0x00b5
                           0000B5   553 _ADCCON2	=	0x00b5
                           0000B6   554 G$ADCCON3$0$0 == 0x00b6
                           0000B6   555 _ADCCON3	=	0x00b6
                           0000B7   556 G$_SFRB7$0$0 == 0x00b7
                           0000B7   557 __SFRB7	=	0x00b7
                           0000B8   558 G$IEN1$0$0 == 0x00b8
                           0000B8   559 _IEN1	=	0x00b8
                           0000B9   560 G$IP1$0$0 == 0x00b9
                           0000B9   561 _IP1	=	0x00b9
                           0000BA   562 G$ADCL$0$0 == 0x00ba
                           0000BA   563 _ADCL	=	0x00ba
                           0000BB   564 G$ADCH$0$0 == 0x00bb
                           0000BB   565 _ADCH	=	0x00bb
                           0000BC   566 G$RNDL$0$0 == 0x00bc
                           0000BC   567 _RNDL	=	0x00bc
                           0000BD   568 G$RNDH$0$0 == 0x00bd
                           0000BD   569 _RNDH	=	0x00bd
                           0000BE   570 G$SLEEP$0$0 == 0x00be
                           0000BE   571 _SLEEP	=	0x00be
                           0000BF   572 G$_SFRBF$0$0 == 0x00bf
                           0000BF   573 __SFRBF	=	0x00bf
                           0000C0   574 G$IRCON$0$0 == 0x00c0
                           0000C0   575 _IRCON	=	0x00c0
                           0000C1   576 G$U0DBUF$0$0 == 0x00c1
                           0000C1   577 _U0DBUF	=	0x00c1
                           0000C2   578 G$U0BAUD$0$0 == 0x00c2
                           0000C2   579 _U0BAUD	=	0x00c2
                           0000C3   580 G$_SFRC3$0$0 == 0x00c3
                           0000C3   581 __SFRC3	=	0x00c3
                           0000C4   582 G$U0UCR$0$0 == 0x00c4
                           0000C4   583 _U0UCR	=	0x00c4
                           0000C5   584 G$U0GCR$0$0 == 0x00c5
                           0000C5   585 _U0GCR	=	0x00c5
                           0000C6   586 G$CLKCON$0$0 == 0x00c6
                           0000C6   587 _CLKCON	=	0x00c6
                           0000C7   588 G$MEMCTR$0$0 == 0x00c7
                           0000C7   589 _MEMCTR	=	0x00c7
                           0000C8   590 G$_SFRC8$0$0 == 0x00c8
                           0000C8   591 __SFRC8	=	0x00c8
                           0000C9   592 G$WDCTL$0$0 == 0x00c9
                           0000C9   593 _WDCTL	=	0x00c9
                           0000CA   594 G$T3CNT$0$0 == 0x00ca
                           0000CA   595 _T3CNT	=	0x00ca
                           0000CB   596 G$T3CTL$0$0 == 0x00cb
                           0000CB   597 _T3CTL	=	0x00cb
                           0000CC   598 G$T3CCTL0$0$0 == 0x00cc
                           0000CC   599 _T3CCTL0	=	0x00cc
                           0000CD   600 G$T3CC0$0$0 == 0x00cd
                           0000CD   601 _T3CC0	=	0x00cd
                           0000CE   602 G$T3CCTL1$0$0 == 0x00ce
                           0000CE   603 _T3CCTL1	=	0x00ce
                           0000CF   604 G$T3CC1$0$0 == 0x00cf
                           0000CF   605 _T3CC1	=	0x00cf
                           0000D0   606 G$PSW$0$0 == 0x00d0
                           0000D0   607 _PSW	=	0x00d0
                           0000D1   608 G$DMAIRQ$0$0 == 0x00d1
                           0000D1   609 _DMAIRQ	=	0x00d1
                           0000D2   610 G$DMA1CFGL$0$0 == 0x00d2
                           0000D2   611 _DMA1CFGL	=	0x00d2
                           0000D3   612 G$DMA1CFGH$0$0 == 0x00d3
                           0000D3   613 _DMA1CFGH	=	0x00d3
                           0000D4   614 G$DMA0CFGL$0$0 == 0x00d4
                           0000D4   615 _DMA0CFGL	=	0x00d4
                           0000D5   616 G$DMA0CFGH$0$0 == 0x00d5
                           0000D5   617 _DMA0CFGH	=	0x00d5
                           0000D6   618 G$DMAARM$0$0 == 0x00d6
                           0000D6   619 _DMAARM	=	0x00d6
                           0000D7   620 G$DMAREQ$0$0 == 0x00d7
                           0000D7   621 _DMAREQ	=	0x00d7
                           0000D8   622 G$TIMIF$0$0 == 0x00d8
                           0000D8   623 _TIMIF	=	0x00d8
                           0000D9   624 G$RFD$0$0 == 0x00d9
                           0000D9   625 _RFD	=	0x00d9
                           0000DA   626 G$T1CC0L$0$0 == 0x00da
                           0000DA   627 _T1CC0L	=	0x00da
                           0000DB   628 G$T1CC0H$0$0 == 0x00db
                           0000DB   629 _T1CC0H	=	0x00db
                           0000DC   630 G$T1CC1L$0$0 == 0x00dc
                           0000DC   631 _T1CC1L	=	0x00dc
                           0000DD   632 G$T1CC1H$0$0 == 0x00dd
                           0000DD   633 _T1CC1H	=	0x00dd
                           0000DE   634 G$T1CC2L$0$0 == 0x00de
                           0000DE   635 _T1CC2L	=	0x00de
                           0000DF   636 G$T1CC2H$0$0 == 0x00df
                           0000DF   637 _T1CC2H	=	0x00df
                           0000E0   638 G$ACC$0$0 == 0x00e0
                           0000E0   639 _ACC	=	0x00e0
                           0000E1   640 G$RFST$0$0 == 0x00e1
                           0000E1   641 _RFST	=	0x00e1
                           0000E2   642 G$T1CNTL$0$0 == 0x00e2
                           0000E2   643 _T1CNTL	=	0x00e2
                           0000E3   644 G$T1CNTH$0$0 == 0x00e3
                           0000E3   645 _T1CNTH	=	0x00e3
                           0000E4   646 G$T1CTL$0$0 == 0x00e4
                           0000E4   647 _T1CTL	=	0x00e4
                           0000E5   648 G$T1CCTL0$0$0 == 0x00e5
                           0000E5   649 _T1CCTL0	=	0x00e5
                           0000E6   650 G$T1CCTL1$0$0 == 0x00e6
                           0000E6   651 _T1CCTL1	=	0x00e6
                           0000E7   652 G$T1CCTL2$0$0 == 0x00e7
                           0000E7   653 _T1CCTL2	=	0x00e7
                           0000E8   654 G$IRCON2$0$0 == 0x00e8
                           0000E8   655 _IRCON2	=	0x00e8
                           0000E9   656 G$RFIF$0$0 == 0x00e9
                           0000E9   657 _RFIF	=	0x00e9
                           0000EA   658 G$T4CNT$0$0 == 0x00ea
                           0000EA   659 _T4CNT	=	0x00ea
                           0000EB   660 G$T4CTL$0$0 == 0x00eb
                           0000EB   661 _T4CTL	=	0x00eb
                           0000EC   662 G$T4CCTL0$0$0 == 0x00ec
                           0000EC   663 _T4CCTL0	=	0x00ec
                           0000ED   664 G$T4CC0$0$0 == 0x00ed
                           0000ED   665 _T4CC0	=	0x00ed
                           0000EE   666 G$T4CCTL1$0$0 == 0x00ee
                           0000EE   667 _T4CCTL1	=	0x00ee
                           0000EF   668 G$T4CC1$0$0 == 0x00ef
                           0000EF   669 _T4CC1	=	0x00ef
                           0000F0   670 G$B$0$0 == 0x00f0
                           0000F0   671 _B	=	0x00f0
                           0000F1   672 G$PERCFG$0$0 == 0x00f1
                           0000F1   673 _PERCFG	=	0x00f1
                           0000F2   674 G$ADCCFG$0$0 == 0x00f2
                           0000F2   675 _ADCCFG	=	0x00f2
                           0000F3   676 G$P0SEL$0$0 == 0x00f3
                           0000F3   677 _P0SEL	=	0x00f3
                           0000F4   678 G$P1SEL$0$0 == 0x00f4
                           0000F4   679 _P1SEL	=	0x00f4
                           0000F5   680 G$P2SEL$0$0 == 0x00f5
                           0000F5   681 _P2SEL	=	0x00f5
                           0000F6   682 G$P1INP$0$0 == 0x00f6
                           0000F6   683 _P1INP	=	0x00f6
                           0000F7   684 G$P2INP$0$0 == 0x00f7
                           0000F7   685 _P2INP	=	0x00f7
                           0000F8   686 G$U1CSR$0$0 == 0x00f8
                           0000F8   687 _U1CSR	=	0x00f8
                           0000F9   688 G$U1DBUF$0$0 == 0x00f9
                           0000F9   689 _U1DBUF	=	0x00f9
                           0000FA   690 G$U1BAUD$0$0 == 0x00fa
                           0000FA   691 _U1BAUD	=	0x00fa
                           0000FB   692 G$U1UCR$0$0 == 0x00fb
                           0000FB   693 _U1UCR	=	0x00fb
                           0000FC   694 G$U1GCR$0$0 == 0x00fc
                           0000FC   695 _U1GCR	=	0x00fc
                           0000FD   696 G$P0DIR$0$0 == 0x00fd
                           0000FD   697 _P0DIR	=	0x00fd
                           0000FE   698 G$P1DIR$0$0 == 0x00fe
                           0000FE   699 _P1DIR	=	0x00fe
                           0000FF   700 G$P2DIR$0$0 == 0x00ff
                           0000FF   701 _P2DIR	=	0x00ff
                                    702 ;--------------------------------------------------------
                                    703 ; special function bits
                                    704 ;--------------------------------------------------------
                                    705 	.area RSEG    (ABS,DATA)
      000000                        706 	.org 0x0000
                           000080   707 G$P0_0$0$0 == 0x0080
                           000080   708 _P0_0	=	0x0080
                           000081   709 G$P0_1$0$0 == 0x0081
                           000081   710 _P0_1	=	0x0081
                           000082   711 G$P0_2$0$0 == 0x0082
                           000082   712 _P0_2	=	0x0082
                           000083   713 G$P0_3$0$0 == 0x0083
                           000083   714 _P0_3	=	0x0083
                           000084   715 G$P0_4$0$0 == 0x0084
                           000084   716 _P0_4	=	0x0084
                           000085   717 G$P0_5$0$0 == 0x0085
                           000085   718 _P0_5	=	0x0085
                           000086   719 G$P0_6$0$0 == 0x0086
                           000086   720 _P0_6	=	0x0086
                           000087   721 G$P0_7$0$0 == 0x0087
                           000087   722 _P0_7	=	0x0087
                           000088   723 G$IT0$0$0 == 0x0088
                           000088   724 _IT0	=	0x0088
                           000089   725 G$RFTXRXIF$0$0 == 0x0089
                           000089   726 _RFTXRXIF	=	0x0089
                           00008A   727 G$IT1$0$0 == 0x008a
                           00008A   728 _IT1	=	0x008a
                           00008B   729 G$URX0IF$0$0 == 0x008b
                           00008B   730 _URX0IF	=	0x008b
                           00008D   731 G$ADCIF$0$0 == 0x008d
                           00008D   732 _ADCIF	=	0x008d
                           00008F   733 G$URX1IF$0$0 == 0x008f
                           00008F   734 _URX1IF	=	0x008f
                           000090   735 G$P1_0$0$0 == 0x0090
                           000090   736 _P1_0	=	0x0090
                           000091   737 G$P1_1$0$0 == 0x0091
                           000091   738 _P1_1	=	0x0091
                           000092   739 G$P1_2$0$0 == 0x0092
                           000092   740 _P1_2	=	0x0092
                           000093   741 G$P1_3$0$0 == 0x0093
                           000093   742 _P1_3	=	0x0093
                           000094   743 G$P1_4$0$0 == 0x0094
                           000094   744 _P1_4	=	0x0094
                           000095   745 G$P1_5$0$0 == 0x0095
                           000095   746 _P1_5	=	0x0095
                           000096   747 G$P1_6$0$0 == 0x0096
                           000096   748 _P1_6	=	0x0096
                           000097   749 G$P1_7$0$0 == 0x0097
                           000097   750 _P1_7	=	0x0097
                           000098   751 G$ENCIF_0$0$0 == 0x0098
                           000098   752 _ENCIF_0	=	0x0098
                           000099   753 G$ENCIF_1$0$0 == 0x0099
                           000099   754 _ENCIF_1	=	0x0099
                           0000A0   755 G$P2_0$0$0 == 0x00a0
                           0000A0   756 _P2_0	=	0x00a0
                           0000A1   757 G$P2_1$0$0 == 0x00a1
                           0000A1   758 _P2_1	=	0x00a1
                           0000A2   759 G$P2_2$0$0 == 0x00a2
                           0000A2   760 _P2_2	=	0x00a2
                           0000A3   761 G$P2_3$0$0 == 0x00a3
                           0000A3   762 _P2_3	=	0x00a3
                           0000A4   763 G$P2_4$0$0 == 0x00a4
                           0000A4   764 _P2_4	=	0x00a4
                           0000A5   765 G$P2_5$0$0 == 0x00a5
                           0000A5   766 _P2_5	=	0x00a5
                           0000A6   767 G$P2_6$0$0 == 0x00a6
                           0000A6   768 _P2_6	=	0x00a6
                           0000A7   769 G$P2_7$0$0 == 0x00a7
                           0000A7   770 _P2_7	=	0x00a7
                           0000A8   771 G$RFTXRXIE$0$0 == 0x00a8
                           0000A8   772 _RFTXRXIE	=	0x00a8
                           0000A9   773 G$ADCIE$0$0 == 0x00a9
                           0000A9   774 _ADCIE	=	0x00a9
                           0000AA   775 G$URX0IE$0$0 == 0x00aa
                           0000AA   776 _URX0IE	=	0x00aa
                           0000AB   777 G$URX1IE$0$0 == 0x00ab
                           0000AB   778 _URX1IE	=	0x00ab
                           0000AC   779 G$ENCIE$0$0 == 0x00ac
                           0000AC   780 _ENCIE	=	0x00ac
                           0000AD   781 G$STIE$0$0 == 0x00ad
                           0000AD   782 _STIE	=	0x00ad
                           0000AF   783 G$EA$0$0 == 0x00af
                           0000AF   784 _EA	=	0x00af
                           0000B8   785 G$DMAIE$0$0 == 0x00b8
                           0000B8   786 _DMAIE	=	0x00b8
                           0000B9   787 G$T1IE$0$0 == 0x00b9
                           0000B9   788 _T1IE	=	0x00b9
                           0000BA   789 G$T2IE$0$0 == 0x00ba
                           0000BA   790 _T2IE	=	0x00ba
                           0000BB   791 G$T3IE$0$0 == 0x00bb
                           0000BB   792 _T3IE	=	0x00bb
                           0000BC   793 G$T4IE$0$0 == 0x00bc
                           0000BC   794 _T4IE	=	0x00bc
                           0000BD   795 G$P0IE$0$0 == 0x00bd
                           0000BD   796 _P0IE	=	0x00bd
                           0000C0   797 G$DMAIF$0$0 == 0x00c0
                           0000C0   798 _DMAIF	=	0x00c0
                           0000C1   799 G$T1IF$0$0 == 0x00c1
                           0000C1   800 _T1IF	=	0x00c1
                           0000C2   801 G$T2IF$0$0 == 0x00c2
                           0000C2   802 _T2IF	=	0x00c2
                           0000C3   803 G$T3IF$0$0 == 0x00c3
                           0000C3   804 _T3IF	=	0x00c3
                           0000C4   805 G$T4IF$0$0 == 0x00c4
                           0000C4   806 _T4IF	=	0x00c4
                           0000C5   807 G$P0IF$0$0 == 0x00c5
                           0000C5   808 _P0IF	=	0x00c5
                           0000C7   809 G$STIF$0$0 == 0x00c7
                           0000C7   810 _STIF	=	0x00c7
                           0000D0   811 G$P$0$0 == 0x00d0
                           0000D0   812 _P	=	0x00d0
                           0000D1   813 G$F1$0$0 == 0x00d1
                           0000D1   814 _F1	=	0x00d1
                           0000D2   815 G$OV$0$0 == 0x00d2
                           0000D2   816 _OV	=	0x00d2
                           0000D3   817 G$RS0$0$0 == 0x00d3
                           0000D3   818 _RS0	=	0x00d3
                           0000D4   819 G$RS1$0$0 == 0x00d4
                           0000D4   820 _RS1	=	0x00d4
                           0000D5   821 G$F0$0$0 == 0x00d5
                           0000D5   822 _F0	=	0x00d5
                           0000D6   823 G$AC$0$0 == 0x00d6
                           0000D6   824 _AC	=	0x00d6
                           0000D7   825 G$CY$0$0 == 0x00d7
                           0000D7   826 _CY	=	0x00d7
                           0000D8   827 G$T3OVFIF$0$0 == 0x00d8
                           0000D8   828 _T3OVFIF	=	0x00d8
                           0000D9   829 G$T3CH0IF$0$0 == 0x00d9
                           0000D9   830 _T3CH0IF	=	0x00d9
                           0000DA   831 G$T3CH1IF$0$0 == 0x00da
                           0000DA   832 _T3CH1IF	=	0x00da
                           0000DB   833 G$T4OVFIF$0$0 == 0x00db
                           0000DB   834 _T4OVFIF	=	0x00db
                           0000DC   835 G$T4CH0IF$0$0 == 0x00dc
                           0000DC   836 _T4CH0IF	=	0x00dc
                           0000DD   837 G$T4CH1IF$0$0 == 0x00dd
                           0000DD   838 _T4CH1IF	=	0x00dd
                           0000DE   839 G$OVFIM$0$0 == 0x00de
                           0000DE   840 _OVFIM	=	0x00de
                           0000E0   841 G$ACC_0$0$0 == 0x00e0
                           0000E0   842 _ACC_0	=	0x00e0
                           0000E1   843 G$ACC_1$0$0 == 0x00e1
                           0000E1   844 _ACC_1	=	0x00e1
                           0000E2   845 G$ACC_2$0$0 == 0x00e2
                           0000E2   846 _ACC_2	=	0x00e2
                           0000E3   847 G$ACC_3$0$0 == 0x00e3
                           0000E3   848 _ACC_3	=	0x00e3
                           0000E4   849 G$ACC_4$0$0 == 0x00e4
                           0000E4   850 _ACC_4	=	0x00e4
                           0000E5   851 G$ACC_5$0$0 == 0x00e5
                           0000E5   852 _ACC_5	=	0x00e5
                           0000E6   853 G$ACC_6$0$0 == 0x00e6
                           0000E6   854 _ACC_6	=	0x00e6
                           0000E7   855 G$ACC_7$0$0 == 0x00e7
                           0000E7   856 _ACC_7	=	0x00e7
                           0000E8   857 G$P2IF$0$0 == 0x00e8
                           0000E8   858 _P2IF	=	0x00e8
                           0000E9   859 G$UTX0IF$0$0 == 0x00e9
                           0000E9   860 _UTX0IF	=	0x00e9
                           0000EA   861 G$UTX1IF$0$0 == 0x00ea
                           0000EA   862 _UTX1IF	=	0x00ea
                           0000EB   863 G$P1IF$0$0 == 0x00eb
                           0000EB   864 _P1IF	=	0x00eb
                           0000EC   865 G$WDTIF$0$0 == 0x00ec
                           0000EC   866 _WDTIF	=	0x00ec
                           0000F0   867 G$B_0$0$0 == 0x00f0
                           0000F0   868 _B_0	=	0x00f0
                           0000F1   869 G$B_1$0$0 == 0x00f1
                           0000F1   870 _B_1	=	0x00f1
                           0000F2   871 G$B_2$0$0 == 0x00f2
                           0000F2   872 _B_2	=	0x00f2
                           0000F3   873 G$B_3$0$0 == 0x00f3
                           0000F3   874 _B_3	=	0x00f3
                           0000F4   875 G$B_4$0$0 == 0x00f4
                           0000F4   876 _B_4	=	0x00f4
                           0000F5   877 G$B_5$0$0 == 0x00f5
                           0000F5   878 _B_5	=	0x00f5
                           0000F6   879 G$B_6$0$0 == 0x00f6
                           0000F6   880 _B_6	=	0x00f6
                           0000F7   881 G$B_7$0$0 == 0x00f7
                           0000F7   882 _B_7	=	0x00f7
                           0000F8   883 G$ACTIVE$0$0 == 0x00f8
                           0000F8   884 _ACTIVE	=	0x00f8
                           0000F9   885 G$TX_BYTE$0$0 == 0x00f9
                           0000F9   886 _TX_BYTE	=	0x00f9
                           0000FA   887 G$RX_BYTE$0$0 == 0x00fa
                           0000FA   888 _RX_BYTE	=	0x00fa
                           0000FB   889 G$ERR$0$0 == 0x00fb
                           0000FB   890 _ERR	=	0x00fb
                           0000FC   891 G$FE$0$0 == 0x00fc
                           0000FC   892 _FE	=	0x00fc
                           0000FD   893 G$SLAVE$0$0 == 0x00fd
                           0000FD   894 _SLAVE	=	0x00fd
                           0000FE   895 G$RE$0$0 == 0x00fe
                           0000FE   896 _RE	=	0x00fe
                           0000FF   897 G$MODE$0$0 == 0x00ff
                           0000FF   898 _MODE	=	0x00ff
                                    899 ;--------------------------------------------------------
                                    900 ; overlayable register banks
                                    901 ;--------------------------------------------------------
                                    902 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        903 	.ds 8
                                    904 ;--------------------------------------------------------
                                    905 ; internal ram data
                                    906 ;--------------------------------------------------------
                                    907 	.area DSEG    (DATA)
                                    908 ;--------------------------------------------------------
                                    909 ; overlayable items in internal ram 
                                    910 ;--------------------------------------------------------
                                    911 ;--------------------------------------------------------
                                    912 ; indirectly addressable internal ram data
                                    913 ;--------------------------------------------------------
                                    914 	.area ISEG    (DATA)
                                    915 ;--------------------------------------------------------
                                    916 ; absolute internal ram data
                                    917 ;--------------------------------------------------------
                                    918 	.area IABS    (ABS,DATA)
                                    919 	.area IABS    (ABS,DATA)
                                    920 ;--------------------------------------------------------
                                    921 ; bit data
                                    922 ;--------------------------------------------------------
                                    923 	.area BSEG    (BIT)
                                    924 ;--------------------------------------------------------
                                    925 ; paged external ram data
                                    926 ;--------------------------------------------------------
                                    927 	.area PSEG    (PAG,XDATA)
                                    928 ;--------------------------------------------------------
                                    929 ; external ram data
                                    930 ;--------------------------------------------------------
                                    931 	.area XSEG    (XDATA)
                           00DF02   932 G$MDMCTRL0H$0$0 == 0xdf02
                           00DF02   933 _MDMCTRL0H	=	0xdf02
                           00DF00   934 G$SYNC1$0$0 == 0xdf00
                           00DF00   935 _SYNC1	=	0xdf00
                           00DF01   936 G$SYNC0$0$0 == 0xdf01
                           00DF01   937 _SYNC0	=	0xdf01
                           00DF02   938 G$PKTLEN$0$0 == 0xdf02
                           00DF02   939 _PKTLEN	=	0xdf02
                           00DF03   940 G$PKTCTRL1$0$0 == 0xdf03
                           00DF03   941 _PKTCTRL1	=	0xdf03
                           00DF04   942 G$PKTCTRL0$0$0 == 0xdf04
                           00DF04   943 _PKTCTRL0	=	0xdf04
                           00DF05   944 G$ADDR$0$0 == 0xdf05
                           00DF05   945 _ADDR	=	0xdf05
                           00DF06   946 G$CHANNR$0$0 == 0xdf06
                           00DF06   947 _CHANNR	=	0xdf06
                           00DF07   948 G$FSCTRL1$0$0 == 0xdf07
                           00DF07   949 _FSCTRL1	=	0xdf07
                           00DF08   950 G$FSCTRL0$0$0 == 0xdf08
                           00DF08   951 _FSCTRL0	=	0xdf08
                           00DF09   952 G$FREQ2$0$0 == 0xdf09
                           00DF09   953 _FREQ2	=	0xdf09
                           00DF0A   954 G$FREQ1$0$0 == 0xdf0a
                           00DF0A   955 _FREQ1	=	0xdf0a
                           00DF0B   956 G$FREQ0$0$0 == 0xdf0b
                           00DF0B   957 _FREQ0	=	0xdf0b
                           00DF0C   958 G$MDMCFG4$0$0 == 0xdf0c
                           00DF0C   959 _MDMCFG4	=	0xdf0c
                           00DF0D   960 G$MDMCFG3$0$0 == 0xdf0d
                           00DF0D   961 _MDMCFG3	=	0xdf0d
                           00DF0E   962 G$MDMCFG2$0$0 == 0xdf0e
                           00DF0E   963 _MDMCFG2	=	0xdf0e
                           00DF0F   964 G$MDMCFG1$0$0 == 0xdf0f
                           00DF0F   965 _MDMCFG1	=	0xdf0f
                           00DF10   966 G$MDMCFG0$0$0 == 0xdf10
                           00DF10   967 _MDMCFG0	=	0xdf10
                           00DF11   968 G$DEVIATN$0$0 == 0xdf11
                           00DF11   969 _DEVIATN	=	0xdf11
                           00DF12   970 G$MCSM2$0$0 == 0xdf12
                           00DF12   971 _MCSM2	=	0xdf12
                           00DF13   972 G$MCSM1$0$0 == 0xdf13
                           00DF13   973 _MCSM1	=	0xdf13
                           00DF14   974 G$MCSM0$0$0 == 0xdf14
                           00DF14   975 _MCSM0	=	0xdf14
                           00DF15   976 G$FOCCFG$0$0 == 0xdf15
                           00DF15   977 _FOCCFG	=	0xdf15
                           00DF16   978 G$BSCFG$0$0 == 0xdf16
                           00DF16   979 _BSCFG	=	0xdf16
                           00DF17   980 G$AGCCTRL2$0$0 == 0xdf17
                           00DF17   981 _AGCCTRL2	=	0xdf17
                           00DF18   982 G$AGCCTRL1$0$0 == 0xdf18
                           00DF18   983 _AGCCTRL1	=	0xdf18
                           00DF19   984 G$AGCCTRL0$0$0 == 0xdf19
                           00DF19   985 _AGCCTRL0	=	0xdf19
                           00DF1A   986 G$FREND1$0$0 == 0xdf1a
                           00DF1A   987 _FREND1	=	0xdf1a
                           00DF1B   988 G$FREND0$0$0 == 0xdf1b
                           00DF1B   989 _FREND0	=	0xdf1b
                           00DF1C   990 G$FSCAL3$0$0 == 0xdf1c
                           00DF1C   991 _FSCAL3	=	0xdf1c
                           00DF1D   992 G$FSCAL2$0$0 == 0xdf1d
                           00DF1D   993 _FSCAL2	=	0xdf1d
                           00DF1E   994 G$FSCAL1$0$0 == 0xdf1e
                           00DF1E   995 _FSCAL1	=	0xdf1e
                           00DF1F   996 G$FSCAL0$0$0 == 0xdf1f
                           00DF1F   997 _FSCAL0	=	0xdf1f
                           00DF20   998 G$_XREGDF20$0$0 == 0xdf20
                           00DF20   999 __XREGDF20	=	0xdf20
                           00DF21  1000 G$_XREGDF21$0$0 == 0xdf21
                           00DF21  1001 __XREGDF21	=	0xdf21
                           00DF22  1002 G$_XREGDF22$0$0 == 0xdf22
                           00DF22  1003 __XREGDF22	=	0xdf22
                           00DF23  1004 G$TEST2$0$0 == 0xdf23
                           00DF23  1005 _TEST2	=	0xdf23
                           00DF24  1006 G$TEST1$0$0 == 0xdf24
                           00DF24  1007 _TEST1	=	0xdf24
                           00DF25  1008 G$TEST0$0$0 == 0xdf25
                           00DF25  1009 _TEST0	=	0xdf25
                           00DF26  1010 G$_XREGDF26$0$0 == 0xdf26
                           00DF26  1011 __XREGDF26	=	0xdf26
                           00DF27  1012 G$PA_TABLE7$0$0 == 0xdf27
                           00DF27  1013 _PA_TABLE7	=	0xdf27
                           00DF28  1014 G$PA_TABLE6$0$0 == 0xdf28
                           00DF28  1015 _PA_TABLE6	=	0xdf28
                           00DF29  1016 G$PA_TABLE5$0$0 == 0xdf29
                           00DF29  1017 _PA_TABLE5	=	0xdf29
                           00DF2A  1018 G$PA_TABLE4$0$0 == 0xdf2a
                           00DF2A  1019 _PA_TABLE4	=	0xdf2a
                           00DF2B  1020 G$PA_TABLE3$0$0 == 0xdf2b
                           00DF2B  1021 _PA_TABLE3	=	0xdf2b
                           00DF2C  1022 G$PA_TABLE2$0$0 == 0xdf2c
                           00DF2C  1023 _PA_TABLE2	=	0xdf2c
                           00DF2D  1024 G$PA_TABLE1$0$0 == 0xdf2d
                           00DF2D  1025 _PA_TABLE1	=	0xdf2d
                           00DF2E  1026 G$PA_TABLE0$0$0 == 0xdf2e
                           00DF2E  1027 _PA_TABLE0	=	0xdf2e
                           00DF2F  1028 G$IOCFG2$0$0 == 0xdf2f
                           00DF2F  1029 _IOCFG2	=	0xdf2f
                           00DF30  1030 G$IOCFG1$0$0 == 0xdf30
                           00DF30  1031 _IOCFG1	=	0xdf30
                           00DF31  1032 G$IOCFG0$0$0 == 0xdf31
                           00DF31  1033 _IOCFG0	=	0xdf31
                           00DF32  1034 G$_XREGDF32$0$0 == 0xdf32
                           00DF32  1035 __XREGDF32	=	0xdf32
                           00DF33  1036 G$_XREGDF33$0$0 == 0xdf33
                           00DF33  1037 __XREGDF33	=	0xdf33
                           00DF34  1038 G$_XREGDF34$0$0 == 0xdf34
                           00DF34  1039 __XREGDF34	=	0xdf34
                           00DF35  1040 G$_XREGDF35$0$0 == 0xdf35
                           00DF35  1041 __XREGDF35	=	0xdf35
                           00DF36  1042 G$PARTNUM$0$0 == 0xdf36
                           00DF36  1043 _PARTNUM	=	0xdf36
                           00DF37  1044 G$VERSION$0$0 == 0xdf37
                           00DF37  1045 _VERSION	=	0xdf37
                           00DF38  1046 G$FREQEST$0$0 == 0xdf38
                           00DF38  1047 _FREQEST	=	0xdf38
                           00DF39  1048 G$LQI$0$0 == 0xdf39
                           00DF39  1049 _LQI	=	0xdf39
                           00DF3A  1050 G$RSSI$0$0 == 0xdf3a
                           00DF3A  1051 _RSSI	=	0xdf3a
                           00DF3B  1052 G$MARCSTATE$0$0 == 0xdf3b
                           00DF3B  1053 _MARCSTATE	=	0xdf3b
                           00DF3C  1054 G$PKTSTATUS$0$0 == 0xdf3c
                           00DF3C  1055 _PKTSTATUS	=	0xdf3c
                           00DF3D  1056 G$VCO_VC_DAC$0$0 == 0xdf3d
                           00DF3D  1057 _VCO_VC_DAC	=	0xdf3d
                           00DF40  1058 G$I2SCFG0$0$0 == 0xdf40
                           00DF40  1059 _I2SCFG0	=	0xdf40
                           00DF41  1060 G$I2SCFG1$0$0 == 0xdf41
                           00DF41  1061 _I2SCFG1	=	0xdf41
                           00DF42  1062 G$I2SDATL$0$0 == 0xdf42
                           00DF42  1063 _I2SDATL	=	0xdf42
                           00DF43  1064 G$I2SDATH$0$0 == 0xdf43
                           00DF43  1065 _I2SDATH	=	0xdf43
                           00DF44  1066 G$I2SWCNT$0$0 == 0xdf44
                           00DF44  1067 _I2SWCNT	=	0xdf44
                           00DF45  1068 G$I2SSTAT$0$0 == 0xdf45
                           00DF45  1069 _I2SSTAT	=	0xdf45
                           00DF46  1070 G$I2SCLKF0$0$0 == 0xdf46
                           00DF46  1071 _I2SCLKF0	=	0xdf46
                           00DF47  1072 G$I2SCLKF1$0$0 == 0xdf47
                           00DF47  1073 _I2SCLKF1	=	0xdf47
                           00DF48  1074 G$I2SCLKF2$0$0 == 0xdf48
                           00DF48  1075 _I2SCLKF2	=	0xdf48
                           00DF80  1076 G$_NA_P0$0$0 == 0xdf80
                           00DF80  1077 __NA_P0	=	0xdf80
                           00DF81  1078 G$_NA_SP$0$0 == 0xdf81
                           00DF81  1079 __NA_SP	=	0xdf81
                           00DF82  1080 G$_NA_DPL0$0$0 == 0xdf82
                           00DF82  1081 __NA_DPL0	=	0xdf82
                           00DF83  1082 G$_NA_DPH0$0$0 == 0xdf83
                           00DF83  1083 __NA_DPH0	=	0xdf83
                           00DF84  1084 G$_NA_DPL1$0$0 == 0xdf84
                           00DF84  1085 __NA_DPL1	=	0xdf84
                           00DF85  1086 G$_NA_DPH1$0$0 == 0xdf85
                           00DF85  1087 __NA_DPH1	=	0xdf85
                           00DF86  1088 G$X_U0CSR$0$0 == 0xdf86
                           00DF86  1089 _X_U0CSR	=	0xdf86
                           00DF87  1090 G$_NA_PCON$0$0 == 0xdf87
                           00DF87  1091 __NA_PCON	=	0xdf87
                           00DF88  1092 G$_NA_TCON$0$0 == 0xdf88
                           00DF88  1093 __NA_TCON	=	0xdf88
                           00DF89  1094 G$X_P0IFG$0$0 == 0xdf89
                           00DF89  1095 _X_P0IFG	=	0xdf89
                           00DF8A  1096 G$X_P1IFG$0$0 == 0xdf8a
                           00DF8A  1097 _X_P1IFG	=	0xdf8a
                           00DF8B  1098 G$X_P2IFG$0$0 == 0xdf8b
                           00DF8B  1099 _X_P2IFG	=	0xdf8b
                           00DF8C  1100 G$X_PICTL$0$0 == 0xdf8c
                           00DF8C  1101 _X_PICTL	=	0xdf8c
                           00DF8D  1102 G$X_P1IEN$0$0 == 0xdf8d
                           00DF8D  1103 _X_P1IEN	=	0xdf8d
                           00DF8E  1104 G$_X_SFR8E$0$0 == 0xdf8e
                           00DF8E  1105 __X_SFR8E	=	0xdf8e
                           00DF8F  1106 G$X_P0INP$0$0 == 0xdf8f
                           00DF8F  1107 _X_P0INP	=	0xdf8f
                           00DF90  1108 G$_NA_P1$0$0 == 0xdf90
                           00DF90  1109 __NA_P1	=	0xdf90
                           00DF91  1110 G$X_RFIM$0$0 == 0xdf91
                           00DF91  1111 _X_RFIM	=	0xdf91
                           00DF92  1112 G$_NA_DPS$0$0 == 0xdf92
                           00DF92  1113 __NA_DPS	=	0xdf92
                           00DF93  1114 G$X_MPAGE$0$0 == 0xdf93
                           00DF93  1115 _X_MPAGE	=	0xdf93
                           00DF94  1116 G$_X_SFR94$0$0 == 0xdf94
                           00DF94  1117 __X_SFR94	=	0xdf94
                           00DF95  1118 G$_X_SFR95$0$0 == 0xdf95
                           00DF95  1119 __X_SFR95	=	0xdf95
                           00DF96  1120 G$_X_SFR96$0$0 == 0xdf96
                           00DF96  1121 __X_SFR96	=	0xdf96
                           00DF97  1122 G$_X_SFR97$0$0 == 0xdf97
                           00DF97  1123 __X_SFR97	=	0xdf97
                           00DF98  1124 G$_NA_S0CON$0$0 == 0xdf98
                           00DF98  1125 __NA_S0CON	=	0xdf98
                           00DF99  1126 G$_X_SFR99$0$0 == 0xdf99
                           00DF99  1127 __X_SFR99	=	0xdf99
                           00DF9A  1128 G$_NA_IEN2$0$0 == 0xdf9a
                           00DF9A  1129 __NA_IEN2	=	0xdf9a
                           00DF9B  1130 G$_NA_S1CON$0$0 == 0xdf9b
                           00DF9B  1131 __NA_S1CON	=	0xdf9b
                           00DF9C  1132 G$X_T2CT$0$0 == 0xdf9c
                           00DF9C  1133 _X_T2CT	=	0xdf9c
                           00DF9D  1134 G$X_T2PR$0$0 == 0xdf9d
                           00DF9D  1135 _X_T2PR	=	0xdf9d
                           00DF9E  1136 G$X_T2CTL$0$0 == 0xdf9e
                           00DF9E  1137 _X_T2CTL	=	0xdf9e
                           00DF9F  1138 G$_X_SFR9F$0$0 == 0xdf9f
                           00DF9F  1139 __X_SFR9F	=	0xdf9f
                           00DFA0  1140 G$_NA_P2$0$0 == 0xdfa0
                           00DFA0  1141 __NA_P2	=	0xdfa0
                           00DFA1  1142 G$X_WORIRQ$0$0 == 0xdfa1
                           00DFA1  1143 _X_WORIRQ	=	0xdfa1
                           00DFA2  1144 G$X_WORCTRL$0$0 == 0xdfa2
                           00DFA2  1145 _X_WORCTRL	=	0xdfa2
                           00DFA3  1146 G$X_WOREVT0$0$0 == 0xdfa3
                           00DFA3  1147 _X_WOREVT0	=	0xdfa3
                           00DFA4  1148 G$X_WOREVT1$0$0 == 0xdfa4
                           00DFA4  1149 _X_WOREVT1	=	0xdfa4
                           00DFA5  1150 G$X_WORTIME0$0$0 == 0xdfa5
                           00DFA5  1151 _X_WORTIME0	=	0xdfa5
                           00DFA6  1152 G$X_WORTIME1$0$0 == 0xdfa6
                           00DFA6  1153 _X_WORTIME1	=	0xdfa6
                           00DFA7  1154 G$_X_SFRA7$0$0 == 0xdfa7
                           00DFA7  1155 __X_SFRA7	=	0xdfa7
                           00DFA8  1156 G$_NA_IEN0$0$0 == 0xdfa8
                           00DFA8  1157 __NA_IEN0	=	0xdfa8
                           00DFA9  1158 G$_NA_IP0$0$0 == 0xdfa9
                           00DFA9  1159 __NA_IP0	=	0xdfa9
                           00DFAA  1160 G$_X_SFRAA$0$0 == 0xdfaa
                           00DFAA  1161 __X_SFRAA	=	0xdfaa
                           00DFAB  1162 G$X_FWT$0$0 == 0xdfab
                           00DFAB  1163 _X_FWT	=	0xdfab
                           00DFAC  1164 G$X_FADDRL$0$0 == 0xdfac
                           00DFAC  1165 _X_FADDRL	=	0xdfac
                           00DFAD  1166 G$X_FADDRH$0$0 == 0xdfad
                           00DFAD  1167 _X_FADDRH	=	0xdfad
                           00DFAE  1168 G$X_FCTL$0$0 == 0xdfae
                           00DFAE  1169 _X_FCTL	=	0xdfae
                           00DFAF  1170 G$X_FWDATA$0$0 == 0xdfaf
                           00DFAF  1171 _X_FWDATA	=	0xdfaf
                           00DFB0  1172 G$_X_SFRB0$0$0 == 0xdfb0
                           00DFB0  1173 __X_SFRB0	=	0xdfb0
                           00DFB1  1174 G$X_ENCDI$0$0 == 0xdfb1
                           00DFB1  1175 _X_ENCDI	=	0xdfb1
                           00DFB2  1176 G$X_ENCDO$0$0 == 0xdfb2
                           00DFB2  1177 _X_ENCDO	=	0xdfb2
                           00DFB3  1178 G$X_ENCCS$0$0 == 0xdfb3
                           00DFB3  1179 _X_ENCCS	=	0xdfb3
                           00DFB4  1180 G$X_ADCCON1$0$0 == 0xdfb4
                           00DFB4  1181 _X_ADCCON1	=	0xdfb4
                           00DFB5  1182 G$X_ADCCON2$0$0 == 0xdfb5
                           00DFB5  1183 _X_ADCCON2	=	0xdfb5
                           00DFB6  1184 G$X_ADCCON3$0$0 == 0xdfb6
                           00DFB6  1185 _X_ADCCON3	=	0xdfb6
                           00DFB7  1186 G$_X_SFRB7$0$0 == 0xdfb7
                           00DFB7  1187 __X_SFRB7	=	0xdfb7
                           00DFB8  1188 G$_NA_IEN1$0$0 == 0xdfb8
                           00DFB8  1189 __NA_IEN1	=	0xdfb8
                           00DFB9  1190 G$_NA_IP1$0$0 == 0xdfb9
                           00DFB9  1191 __NA_IP1	=	0xdfb9
                           00DFBA  1192 G$X_ADCL$0$0 == 0xdfba
                           00DFBA  1193 _X_ADCL	=	0xdfba
                           00DFBB  1194 G$X_ADCH$0$0 == 0xdfbb
                           00DFBB  1195 _X_ADCH	=	0xdfbb
                           00DFBC  1196 G$X_RNDL$0$0 == 0xdfbc
                           00DFBC  1197 _X_RNDL	=	0xdfbc
                           00DFBD  1198 G$X_RNDH$0$0 == 0xdfbd
                           00DFBD  1199 _X_RNDH	=	0xdfbd
                           00DFBE  1200 G$X_SLEEP$0$0 == 0xdfbe
                           00DFBE  1201 _X_SLEEP	=	0xdfbe
                           00DFBF  1202 G$_X_SFRBF$0$0 == 0xdfbf
                           00DFBF  1203 __X_SFRBF	=	0xdfbf
                           00DFC0  1204 G$_NA_IRCON$0$0 == 0xdfc0
                           00DFC0  1205 __NA_IRCON	=	0xdfc0
                           00DFC1  1206 G$X_U0DBUF$0$0 == 0xdfc1
                           00DFC1  1207 _X_U0DBUF	=	0xdfc1
                           00DFC2  1208 G$X_U0BAUD$0$0 == 0xdfc2
                           00DFC2  1209 _X_U0BAUD	=	0xdfc2
                           00DFC3  1210 G$_X_SFRC3$0$0 == 0xdfc3
                           00DFC3  1211 __X_SFRC3	=	0xdfc3
                           00DFC4  1212 G$X_U0UCR$0$0 == 0xdfc4
                           00DFC4  1213 _X_U0UCR	=	0xdfc4
                           00DFC5  1214 G$X_U0GCR$0$0 == 0xdfc5
                           00DFC5  1215 _X_U0GCR	=	0xdfc5
                           00DFC6  1216 G$X_CLKCON$0$0 == 0xdfc6
                           00DFC6  1217 _X_CLKCON	=	0xdfc6
                           00DFC7  1218 G$X_MEMCTR$0$0 == 0xdfc7
                           00DFC7  1219 _X_MEMCTR	=	0xdfc7
                           00DFC8  1220 G$_X_SFRC8$0$0 == 0xdfc8
                           00DFC8  1221 __X_SFRC8	=	0xdfc8
                           00DFC9  1222 G$X_WDCTL$0$0 == 0xdfc9
                           00DFC9  1223 _X_WDCTL	=	0xdfc9
                           00DFCA  1224 G$X_T3CNT$0$0 == 0xdfca
                           00DFCA  1225 _X_T3CNT	=	0xdfca
                           00DFCB  1226 G$X_T3CTL$0$0 == 0xdfcb
                           00DFCB  1227 _X_T3CTL	=	0xdfcb
                           00DFCC  1228 G$X_T3CCTL0$0$0 == 0xdfcc
                           00DFCC  1229 _X_T3CCTL0	=	0xdfcc
                           00DFCD  1230 G$X_T3CC0$0$0 == 0xdfcd
                           00DFCD  1231 _X_T3CC0	=	0xdfcd
                           00DFCE  1232 G$X_T3CCTL1$0$0 == 0xdfce
                           00DFCE  1233 _X_T3CCTL1	=	0xdfce
                           00DFCF  1234 G$X_T3CC1$0$0 == 0xdfcf
                           00DFCF  1235 _X_T3CC1	=	0xdfcf
                           00DFD0  1236 G$_NA_PSW$0$0 == 0xdfd0
                           00DFD0  1237 __NA_PSW	=	0xdfd0
                           00DFD1  1238 G$X_DMAIRQ$0$0 == 0xdfd1
                           00DFD1  1239 _X_DMAIRQ	=	0xdfd1
                           00DFD2  1240 G$X_DMA1CFGL$0$0 == 0xdfd2
                           00DFD2  1241 _X_DMA1CFGL	=	0xdfd2
                           00DFD3  1242 G$X_DMA1CFGH$0$0 == 0xdfd3
                           00DFD3  1243 _X_DMA1CFGH	=	0xdfd3
                           00DFD4  1244 G$X_DMA0CFGL$0$0 == 0xdfd4
                           00DFD4  1245 _X_DMA0CFGL	=	0xdfd4
                           00DFD5  1246 G$X_DMA0CFGH$0$0 == 0xdfd5
                           00DFD5  1247 _X_DMA0CFGH	=	0xdfd5
                           00DFD6  1248 G$X_DMAARM$0$0 == 0xdfd6
                           00DFD6  1249 _X_DMAARM	=	0xdfd6
                           00DFD7  1250 G$X_DMAREQ$0$0 == 0xdfd7
                           00DFD7  1251 _X_DMAREQ	=	0xdfd7
                           00DFD8  1252 G$X_TIMIF$0$0 == 0xdfd8
                           00DFD8  1253 _X_TIMIF	=	0xdfd8
                           00DFD9  1254 G$X_RFD$0$0 == 0xdfd9
                           00DFD9  1255 _X_RFD	=	0xdfd9
                           00DFDA  1256 G$X_T1CC0L$0$0 == 0xdfda
                           00DFDA  1257 _X_T1CC0L	=	0xdfda
                           00DFDB  1258 G$X_T1CC0H$0$0 == 0xdfdb
                           00DFDB  1259 _X_T1CC0H	=	0xdfdb
                           00DFDC  1260 G$X_T1CC1L$0$0 == 0xdfdc
                           00DFDC  1261 _X_T1CC1L	=	0xdfdc
                           00DFDD  1262 G$X_T1CC1H$0$0 == 0xdfdd
                           00DFDD  1263 _X_T1CC1H	=	0xdfdd
                           00DFDE  1264 G$X_T1CC2L$0$0 == 0xdfde
                           00DFDE  1265 _X_T1CC2L	=	0xdfde
                           00DFDF  1266 G$X_T1CC2H$0$0 == 0xdfdf
                           00DFDF  1267 _X_T1CC2H	=	0xdfdf
                           00DFE0  1268 G$_NA_ACC$0$0 == 0xdfe0
                           00DFE0  1269 __NA_ACC	=	0xdfe0
                           00DFE1  1270 G$X_RFST$0$0 == 0xdfe1
                           00DFE1  1271 _X_RFST	=	0xdfe1
                           00DFE2  1272 G$X_T1CNTL$0$0 == 0xdfe2
                           00DFE2  1273 _X_T1CNTL	=	0xdfe2
                           00DFE3  1274 G$X_T1CNTH$0$0 == 0xdfe3
                           00DFE3  1275 _X_T1CNTH	=	0xdfe3
                           00DFE4  1276 G$X_T1CTL$0$0 == 0xdfe4
                           00DFE4  1277 _X_T1CTL	=	0xdfe4
                           00DFE5  1278 G$X_T1CCTL0$0$0 == 0xdfe5
                           00DFE5  1279 _X_T1CCTL0	=	0xdfe5
                           00DFE6  1280 G$X_T1CCTL1$0$0 == 0xdfe6
                           00DFE6  1281 _X_T1CCTL1	=	0xdfe6
                           00DFE7  1282 G$X_T1CCTL2$0$0 == 0xdfe7
                           00DFE7  1283 _X_T1CCTL2	=	0xdfe7
                           00DFE8  1284 G$_NA_IRCON2$0$0 == 0xdfe8
                           00DFE8  1285 __NA_IRCON2	=	0xdfe8
                           00DFE9  1286 G$X_RFIF$0$0 == 0xdfe9
                           00DFE9  1287 _X_RFIF	=	0xdfe9
                           00DFEA  1288 G$X_T4CNT$0$0 == 0xdfea
                           00DFEA  1289 _X_T4CNT	=	0xdfea
                           00DFEB  1290 G$X_T4CTL$0$0 == 0xdfeb
                           00DFEB  1291 _X_T4CTL	=	0xdfeb
                           00DFEC  1292 G$X_T4CCTL0$0$0 == 0xdfec
                           00DFEC  1293 _X_T4CCTL0	=	0xdfec
                           00DFED  1294 G$X_T4CC0$0$0 == 0xdfed
                           00DFED  1295 _X_T4CC0	=	0xdfed
                           00DFEE  1296 G$X_T4CCTL1$0$0 == 0xdfee
                           00DFEE  1297 _X_T4CCTL1	=	0xdfee
                           00DFEF  1298 G$X_T4CC1$0$0 == 0xdfef
                           00DFEF  1299 _X_T4CC1	=	0xdfef
                           00DFF0  1300 G$_NA_B$0$0 == 0xdff0
                           00DFF0  1301 __NA_B	=	0xdff0
                           00DFF1  1302 G$X_PERCFG$0$0 == 0xdff1
                           00DFF1  1303 _X_PERCFG	=	0xdff1
                           00DFF2  1304 G$X_ADCCFG$0$0 == 0xdff2
                           00DFF2  1305 _X_ADCCFG	=	0xdff2
                           00DFF3  1306 G$X_P0SEL$0$0 == 0xdff3
                           00DFF3  1307 _X_P0SEL	=	0xdff3
                           00DFF4  1308 G$X_P1SEL$0$0 == 0xdff4
                           00DFF4  1309 _X_P1SEL	=	0xdff4
                           00DFF5  1310 G$X_P2SEL$0$0 == 0xdff5
                           00DFF5  1311 _X_P2SEL	=	0xdff5
                           00DFF6  1312 G$X_P1INP$0$0 == 0xdff6
                           00DFF6  1313 _X_P1INP	=	0xdff6
                           00DFF7  1314 G$X_P2INP$0$0 == 0xdff7
                           00DFF7  1315 _X_P2INP	=	0xdff7
                           00DFF8  1316 G$X_U1CSR$0$0 == 0xdff8
                           00DFF8  1317 _X_U1CSR	=	0xdff8
                           00DFF9  1318 G$X_U1DBUF$0$0 == 0xdff9
                           00DFF9  1319 _X_U1DBUF	=	0xdff9
                           00DFFA  1320 G$X_U1BAUD$0$0 == 0xdffa
                           00DFFA  1321 _X_U1BAUD	=	0xdffa
                           00DFFB  1322 G$X_U1UCR$0$0 == 0xdffb
                           00DFFB  1323 _X_U1UCR	=	0xdffb
                           00DFFC  1324 G$X_U1GCR$0$0 == 0xdffc
                           00DFFC  1325 _X_U1GCR	=	0xdffc
                           00DFFD  1326 G$X_P0DIR$0$0 == 0xdffd
                           00DFFD  1327 _X_P0DIR	=	0xdffd
                           00DFFE  1328 G$X_P1DIR$0$0 == 0xdffe
                           00DFFE  1329 _X_P1DIR	=	0xdffe
                           00DFFF  1330 G$X_P2DIR$0$0 == 0xdfff
                           00DFFF  1331 _X_P2DIR	=	0xdfff
                                   1332 ;--------------------------------------------------------
                                   1333 ; absolute external ram data
                                   1334 ;--------------------------------------------------------
                                   1335 	.area XABS    (ABS,XDATA)
                                   1336 ;--------------------------------------------------------
                                   1337 ; external initialized ram data
                                   1338 ;--------------------------------------------------------
                                   1339 	.area XISEG   (XDATA)
                                   1340 	.area HOME    (CODE)
                                   1341 	.area GSINIT0 (CODE)
                                   1342 	.area GSINIT1 (CODE)
                                   1343 	.area GSINIT2 (CODE)
                                   1344 	.area GSINIT3 (CODE)
                                   1345 	.area GSINIT4 (CODE)
                                   1346 	.area GSINIT5 (CODE)
                                   1347 	.area GSINIT  (CODE)
                                   1348 	.area GSFINAL (CODE)
                                   1349 	.area CSEG    (CODE)
                                   1350 ;--------------------------------------------------------
                                   1351 ; global & static initialisations
                                   1352 ;--------------------------------------------------------
                                   1353 	.area HOME    (CODE)
                                   1354 	.area GSINIT  (CODE)
                                   1355 	.area GSFINAL (CODE)
                                   1356 	.area GSINIT  (CODE)
                                   1357 ;--------------------------------------------------------
                                   1358 ; Home
                                   1359 ;--------------------------------------------------------
                                   1360 	.area HOME    (CODE)
                                   1361 	.area HOME    (CODE)
                                   1362 ;--------------------------------------------------------
                                   1363 ; code
                                   1364 ;--------------------------------------------------------
                                   1365 	.area CSEG    (CODE)
                                   1366 ;------------------------------------------------------------
                                   1367 ;Allocation info for local variables in function 'halBoardInit'
                                   1368 ;------------------------------------------------------------
                           000000  1369 	G$halBoardInit$0$0 ==.
                           000000  1370 	C$hal_board.c$33$0$0 ==.
                                   1371 ;	hal_board.c:33: void halBoardInit( void ) {
                                   1372 ;	-----------------------------------------
                                   1373 ;	 function halBoardInit
                                   1374 ;	-----------------------------------------
      000A64                       1375 _halBoardInit:
                           000007  1376 	ar7 = 0x07
                           000006  1377 	ar6 = 0x06
                           000005  1378 	ar5 = 0x05
                           000004  1379 	ar4 = 0x04
                           000003  1380 	ar3 = 0x03
                           000002  1381 	ar2 = 0x02
                           000001  1382 	ar1 = 0x01
                           000000  1383 	ar0 = 0x00
                           000000  1384 	C$hal_board.c$35$1$12 ==.
                                   1385 ;	hal_board.c:35: halMcuInit( );
      000A64 12 0A 94         [24] 1386 	lcall	_halMcuInit
                           000003  1387 	C$hal_board.c$39$1$12 ==.
                           000003  1388 	XG$halBoardInit$0$0 ==.
      000A67 22               [24] 1389 	ret
                                   1390 	.area CSEG    (CODE)
                                   1391 	.area CONST   (CODE)
                                   1392 	.area XINIT   (CODE)
                                   1393 	.area CABS    (ABS,CODE)
