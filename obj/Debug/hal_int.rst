                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
                                      4 ; This file was generated Sat Apr 25 00:05:12 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module hal_int
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _MODE
                                     13 	.globl _RE
                                     14 	.globl _SLAVE
                                     15 	.globl _FE
                                     16 	.globl _ERR
                                     17 	.globl _RX_BYTE
                                     18 	.globl _TX_BYTE
                                     19 	.globl _ACTIVE
                                     20 	.globl _B_7
                                     21 	.globl _B_6
                                     22 	.globl _B_5
                                     23 	.globl _B_4
                                     24 	.globl _B_3
                                     25 	.globl _B_2
                                     26 	.globl _B_1
                                     27 	.globl _B_0
                                     28 	.globl _WDTIF
                                     29 	.globl _P1IF
                                     30 	.globl _UTX1IF
                                     31 	.globl _UTX0IF
                                     32 	.globl _P2IF
                                     33 	.globl _ACC_7
                                     34 	.globl _ACC_6
                                     35 	.globl _ACC_5
                                     36 	.globl _ACC_4
                                     37 	.globl _ACC_3
                                     38 	.globl _ACC_2
                                     39 	.globl _ACC_1
                                     40 	.globl _ACC_0
                                     41 	.globl _OVFIM
                                     42 	.globl _T4CH1IF
                                     43 	.globl _T4CH0IF
                                     44 	.globl _T4OVFIF
                                     45 	.globl _T3CH1IF
                                     46 	.globl _T3CH0IF
                                     47 	.globl _T3OVFIF
                                     48 	.globl _CY
                                     49 	.globl _AC
                                     50 	.globl _F0
                                     51 	.globl _RS1
                                     52 	.globl _RS0
                                     53 	.globl _OV
                                     54 	.globl _F1
                                     55 	.globl _P
                                     56 	.globl _STIF
                                     57 	.globl _P0IF
                                     58 	.globl _T4IF
                                     59 	.globl _T3IF
                                     60 	.globl _T2IF
                                     61 	.globl _T1IF
                                     62 	.globl _DMAIF
                                     63 	.globl _P0IE
                                     64 	.globl _T4IE
                                     65 	.globl _T3IE
                                     66 	.globl _T2IE
                                     67 	.globl _T1IE
                                     68 	.globl _DMAIE
                                     69 	.globl _EA
                                     70 	.globl _STIE
                                     71 	.globl _ENCIE
                                     72 	.globl _URX1IE
                                     73 	.globl _URX0IE
                                     74 	.globl _ADCIE
                                     75 	.globl _RFTXRXIE
                                     76 	.globl _P2_7
                                     77 	.globl _P2_6
                                     78 	.globl _P2_5
                                     79 	.globl _P2_4
                                     80 	.globl _P2_3
                                     81 	.globl _P2_2
                                     82 	.globl _P2_1
                                     83 	.globl _P2_0
                                     84 	.globl _ENCIF_1
                                     85 	.globl _ENCIF_0
                                     86 	.globl _P1_7
                                     87 	.globl _P1_6
                                     88 	.globl _P1_5
                                     89 	.globl _P1_4
                                     90 	.globl _P1_3
                                     91 	.globl _P1_2
                                     92 	.globl _P1_1
                                     93 	.globl _P1_0
                                     94 	.globl _URX1IF
                                     95 	.globl _ADCIF
                                     96 	.globl _URX0IF
                                     97 	.globl _IT1
                                     98 	.globl _RFTXRXIF
                                     99 	.globl _IT0
                                    100 	.globl _P0_7
                                    101 	.globl _P0_6
                                    102 	.globl _P0_5
                                    103 	.globl _P0_4
                                    104 	.globl _P0_3
                                    105 	.globl _P0_2
                                    106 	.globl _P0_1
                                    107 	.globl _P0_0
                                    108 	.globl _P2DIR
                                    109 	.globl _P1DIR
                                    110 	.globl _P0DIR
                                    111 	.globl _U1GCR
                                    112 	.globl _U1UCR
                                    113 	.globl _U1BAUD
                                    114 	.globl _U1DBUF
                                    115 	.globl _U1CSR
                                    116 	.globl _P2INP
                                    117 	.globl _P1INP
                                    118 	.globl _P2SEL
                                    119 	.globl _P1SEL
                                    120 	.globl _P0SEL
                                    121 	.globl _ADCCFG
                                    122 	.globl _PERCFG
                                    123 	.globl _B
                                    124 	.globl _T4CC1
                                    125 	.globl _T4CCTL1
                                    126 	.globl _T4CC0
                                    127 	.globl _T4CCTL0
                                    128 	.globl _T4CTL
                                    129 	.globl _T4CNT
                                    130 	.globl _RFIF
                                    131 	.globl _IRCON2
                                    132 	.globl _T1CCTL2
                                    133 	.globl _T1CCTL1
                                    134 	.globl _T1CCTL0
                                    135 	.globl _T1CTL
                                    136 	.globl _T1CNTH
                                    137 	.globl _T1CNTL
                                    138 	.globl _RFST
                                    139 	.globl _ACC
                                    140 	.globl _T1CC2H
                                    141 	.globl _T1CC2L
                                    142 	.globl _T1CC1H
                                    143 	.globl _T1CC1L
                                    144 	.globl _T1CC0H
                                    145 	.globl _T1CC0L
                                    146 	.globl _RFD
                                    147 	.globl _TIMIF
                                    148 	.globl _DMAREQ
                                    149 	.globl _DMAARM
                                    150 	.globl _DMA0CFGH
                                    151 	.globl _DMA0CFGL
                                    152 	.globl _DMA1CFGH
                                    153 	.globl _DMA1CFGL
                                    154 	.globl _DMAIRQ
                                    155 	.globl _PSW
                                    156 	.globl _T3CC1
                                    157 	.globl _T3CCTL1
                                    158 	.globl _T3CC0
                                    159 	.globl _T3CCTL0
                                    160 	.globl _T3CTL
                                    161 	.globl _T3CNT
                                    162 	.globl _WDCTL
                                    163 	.globl __SFRC8
                                    164 	.globl _MEMCTR
                                    165 	.globl _CLKCON
                                    166 	.globl _U0GCR
                                    167 	.globl _U0UCR
                                    168 	.globl __SFRC3
                                    169 	.globl _U0BAUD
                                    170 	.globl _U0DBUF
                                    171 	.globl _IRCON
                                    172 	.globl __SFRBF
                                    173 	.globl _SLEEP
                                    174 	.globl _RNDH
                                    175 	.globl _RNDL
                                    176 	.globl _ADCH
                                    177 	.globl _ADCL
                                    178 	.globl _IP1
                                    179 	.globl _IEN1
                                    180 	.globl __SFRB7
                                    181 	.globl _ADCCON3
                                    182 	.globl _ADCCON2
                                    183 	.globl _ADCCON1
                                    184 	.globl _ENCCS
                                    185 	.globl _ENCDO
                                    186 	.globl _ENCDI
                                    187 	.globl __SFRB0
                                    188 	.globl _FWDATA
                                    189 	.globl _FCTL
                                    190 	.globl _FADDRH
                                    191 	.globl _FADDRL
                                    192 	.globl _FWT
                                    193 	.globl __SFRAA
                                    194 	.globl _IP0
                                    195 	.globl _IEN0
                                    196 	.globl __SFRA7
                                    197 	.globl _WORTIME1
                                    198 	.globl _WORTIME0
                                    199 	.globl _WOREVT1
                                    200 	.globl _WOREVT0
                                    201 	.globl _WORCTRL
                                    202 	.globl _WORIRQ
                                    203 	.globl _P2
                                    204 	.globl __SFR9F
                                    205 	.globl _T2CTL
                                    206 	.globl _T2PR
                                    207 	.globl _T2CT
                                    208 	.globl _S1CON
                                    209 	.globl _IEN2
                                    210 	.globl __SFR99
                                    211 	.globl _S0CON
                                    212 	.globl __SFR97
                                    213 	.globl __SFR96
                                    214 	.globl __SFR95
                                    215 	.globl __SFR94
                                    216 	.globl __XPAGE
                                    217 	.globl _MPAGE
                                    218 	.globl _DPS
                                    219 	.globl _RFIM
                                    220 	.globl _P1
                                    221 	.globl _P0INP
                                    222 	.globl __SFR8E
                                    223 	.globl _P1IEN
                                    224 	.globl _PICTL
                                    225 	.globl _P2IFG
                                    226 	.globl _P1IFG
                                    227 	.globl _P0IFG
                                    228 	.globl _TCON
                                    229 	.globl _PCON
                                    230 	.globl _U0CSR
                                    231 	.globl _DPH1
                                    232 	.globl _DPL1
                                    233 	.globl _DPH0
                                    234 	.globl _DPL0
                                    235 	.globl _SP
                                    236 	.globl _P0
                                    237 	.globl _X_P2DIR
                                    238 	.globl _X_P1DIR
                                    239 	.globl _X_P0DIR
                                    240 	.globl _X_U1GCR
                                    241 	.globl _X_U1UCR
                                    242 	.globl _X_U1BAUD
                                    243 	.globl _X_U1DBUF
                                    244 	.globl _X_U1CSR
                                    245 	.globl _X_P2INP
                                    246 	.globl _X_P1INP
                                    247 	.globl _X_P2SEL
                                    248 	.globl _X_P1SEL
                                    249 	.globl _X_P0SEL
                                    250 	.globl _X_ADCCFG
                                    251 	.globl _X_PERCFG
                                    252 	.globl __NA_B
                                    253 	.globl _X_T4CC1
                                    254 	.globl _X_T4CCTL1
                                    255 	.globl _X_T4CC0
                                    256 	.globl _X_T4CCTL0
                                    257 	.globl _X_T4CTL
                                    258 	.globl _X_T4CNT
                                    259 	.globl _X_RFIF
                                    260 	.globl __NA_IRCON2
                                    261 	.globl _X_T1CCTL2
                                    262 	.globl _X_T1CCTL1
                                    263 	.globl _X_T1CCTL0
                                    264 	.globl _X_T1CTL
                                    265 	.globl _X_T1CNTH
                                    266 	.globl _X_T1CNTL
                                    267 	.globl _X_RFST
                                    268 	.globl __NA_ACC
                                    269 	.globl _X_T1CC2H
                                    270 	.globl _X_T1CC2L
                                    271 	.globl _X_T1CC1H
                                    272 	.globl _X_T1CC1L
                                    273 	.globl _X_T1CC0H
                                    274 	.globl _X_T1CC0L
                                    275 	.globl _X_RFD
                                    276 	.globl _X_TIMIF
                                    277 	.globl _X_DMAREQ
                                    278 	.globl _X_DMAARM
                                    279 	.globl _X_DMA0CFGH
                                    280 	.globl _X_DMA0CFGL
                                    281 	.globl _X_DMA1CFGH
                                    282 	.globl _X_DMA1CFGL
                                    283 	.globl _X_DMAIRQ
                                    284 	.globl __NA_PSW
                                    285 	.globl _X_T3CC1
                                    286 	.globl _X_T3CCTL1
                                    287 	.globl _X_T3CC0
                                    288 	.globl _X_T3CCTL0
                                    289 	.globl _X_T3CTL
                                    290 	.globl _X_T3CNT
                                    291 	.globl _X_WDCTL
                                    292 	.globl __X_SFRC8
                                    293 	.globl _X_MEMCTR
                                    294 	.globl _X_CLKCON
                                    295 	.globl _X_U0GCR
                                    296 	.globl _X_U0UCR
                                    297 	.globl __X_SFRC3
                                    298 	.globl _X_U0BAUD
                                    299 	.globl _X_U0DBUF
                                    300 	.globl __NA_IRCON
                                    301 	.globl __X_SFRBF
                                    302 	.globl _X_SLEEP
                                    303 	.globl _X_RNDH
                                    304 	.globl _X_RNDL
                                    305 	.globl _X_ADCH
                                    306 	.globl _X_ADCL
                                    307 	.globl __NA_IP1
                                    308 	.globl __NA_IEN1
                                    309 	.globl __X_SFRB7
                                    310 	.globl _X_ADCCON3
                                    311 	.globl _X_ADCCON2
                                    312 	.globl _X_ADCCON1
                                    313 	.globl _X_ENCCS
                                    314 	.globl _X_ENCDO
                                    315 	.globl _X_ENCDI
                                    316 	.globl __X_SFRB0
                                    317 	.globl _X_FWDATA
                                    318 	.globl _X_FCTL
                                    319 	.globl _X_FADDRH
                                    320 	.globl _X_FADDRL
                                    321 	.globl _X_FWT
                                    322 	.globl __X_SFRAA
                                    323 	.globl __NA_IP0
                                    324 	.globl __NA_IEN0
                                    325 	.globl __X_SFRA7
                                    326 	.globl _X_WORTIME1
                                    327 	.globl _X_WORTIME0
                                    328 	.globl _X_WOREVT1
                                    329 	.globl _X_WOREVT0
                                    330 	.globl _X_WORCTRL
                                    331 	.globl _X_WORIRQ
                                    332 	.globl __NA_P2
                                    333 	.globl __X_SFR9F
                                    334 	.globl _X_T2CTL
                                    335 	.globl _X_T2PR
                                    336 	.globl _X_T2CT
                                    337 	.globl __NA_S1CON
                                    338 	.globl __NA_IEN2
                                    339 	.globl __X_SFR99
                                    340 	.globl __NA_S0CON
                                    341 	.globl __X_SFR97
                                    342 	.globl __X_SFR96
                                    343 	.globl __X_SFR95
                                    344 	.globl __X_SFR94
                                    345 	.globl _X_MPAGE
                                    346 	.globl __NA_DPS
                                    347 	.globl _X_RFIM
                                    348 	.globl __NA_P1
                                    349 	.globl _X_P0INP
                                    350 	.globl __X_SFR8E
                                    351 	.globl _X_P1IEN
                                    352 	.globl _X_PICTL
                                    353 	.globl _X_P2IFG
                                    354 	.globl _X_P1IFG
                                    355 	.globl _X_P0IFG
                                    356 	.globl __NA_TCON
                                    357 	.globl __NA_PCON
                                    358 	.globl _X_U0CSR
                                    359 	.globl __NA_DPH1
                                    360 	.globl __NA_DPL1
                                    361 	.globl __NA_DPH0
                                    362 	.globl __NA_DPL0
                                    363 	.globl __NA_SP
                                    364 	.globl __NA_P0
                                    365 	.globl _I2SCLKF2
                                    366 	.globl _I2SCLKF1
                                    367 	.globl _I2SCLKF0
                                    368 	.globl _I2SSTAT
                                    369 	.globl _I2SWCNT
                                    370 	.globl _I2SDATH
                                    371 	.globl _I2SDATL
                                    372 	.globl _I2SCFG1
                                    373 	.globl _I2SCFG0
                                    374 	.globl _VCO_VC_DAC
                                    375 	.globl _PKTSTATUS
                                    376 	.globl _MARCSTATE
                                    377 	.globl _RSSI
                                    378 	.globl _LQI
                                    379 	.globl _FREQEST
                                    380 	.globl _VERSION
                                    381 	.globl _PARTNUM
                                    382 	.globl __XREGDF35
                                    383 	.globl __XREGDF34
                                    384 	.globl __XREGDF33
                                    385 	.globl __XREGDF32
                                    386 	.globl _IOCFG0
                                    387 	.globl _IOCFG1
                                    388 	.globl _IOCFG2
                                    389 	.globl _PA_TABLE0
                                    390 	.globl _PA_TABLE1
                                    391 	.globl _PA_TABLE2
                                    392 	.globl _PA_TABLE3
                                    393 	.globl _PA_TABLE4
                                    394 	.globl _PA_TABLE5
                                    395 	.globl _PA_TABLE6
                                    396 	.globl _PA_TABLE7
                                    397 	.globl __XREGDF26
                                    398 	.globl _TEST0
                                    399 	.globl _TEST1
                                    400 	.globl _TEST2
                                    401 	.globl __XREGDF22
                                    402 	.globl __XREGDF21
                                    403 	.globl __XREGDF20
                                    404 	.globl _FSCAL0
                                    405 	.globl _FSCAL1
                                    406 	.globl _FSCAL2
                                    407 	.globl _FSCAL3
                                    408 	.globl _FREND0
                                    409 	.globl _FREND1
                                    410 	.globl _AGCCTRL0
                                    411 	.globl _AGCCTRL1
                                    412 	.globl _AGCCTRL2
                                    413 	.globl _BSCFG
                                    414 	.globl _FOCCFG
                                    415 	.globl _MCSM0
                                    416 	.globl _MCSM1
                                    417 	.globl _MCSM2
                                    418 	.globl _DEVIATN
                                    419 	.globl _MDMCFG0
                                    420 	.globl _MDMCFG1
                                    421 	.globl _MDMCFG2
                                    422 	.globl _MDMCFG3
                                    423 	.globl _MDMCFG4
                                    424 	.globl _FREQ0
                                    425 	.globl _FREQ1
                                    426 	.globl _FREQ2
                                    427 	.globl _FSCTRL0
                                    428 	.globl _FSCTRL1
                                    429 	.globl _CHANNR
                                    430 	.globl _ADDR
                                    431 	.globl _PKTCTRL0
                                    432 	.globl _PKTCTRL1
                                    433 	.globl _PKTLEN
                                    434 	.globl _SYNC0
                                    435 	.globl _SYNC1
                                    436 	.globl _MDMCTRL0H
                                    437 	.globl _halIntOn
                                    438 	.globl _halIntOff
                                    439 	.globl _halIntLock
                                    440 	.globl _halIntUnlock
                                    441 ;--------------------------------------------------------
                                    442 ; special function registers
                                    443 ;--------------------------------------------------------
                                    444 	.area RSEG    (ABS,DATA)
      000000                        445 	.org 0x0000
                           000080   446 G$P0$0$0 == 0x0080
                           000080   447 _P0	=	0x0080
                           000081   448 G$SP$0$0 == 0x0081
                           000081   449 _SP	=	0x0081
                           000082   450 G$DPL0$0$0 == 0x0082
                           000082   451 _DPL0	=	0x0082
                           000083   452 G$DPH0$0$0 == 0x0083
                           000083   453 _DPH0	=	0x0083
                           000084   454 G$DPL1$0$0 == 0x0084
                           000084   455 _DPL1	=	0x0084
                           000085   456 G$DPH1$0$0 == 0x0085
                           000085   457 _DPH1	=	0x0085
                           000086   458 G$U0CSR$0$0 == 0x0086
                           000086   459 _U0CSR	=	0x0086
                           000087   460 G$PCON$0$0 == 0x0087
                           000087   461 _PCON	=	0x0087
                           000088   462 G$TCON$0$0 == 0x0088
                           000088   463 _TCON	=	0x0088
                           000089   464 G$P0IFG$0$0 == 0x0089
                           000089   465 _P0IFG	=	0x0089
                           00008A   466 G$P1IFG$0$0 == 0x008a
                           00008A   467 _P1IFG	=	0x008a
                           00008B   468 G$P2IFG$0$0 == 0x008b
                           00008B   469 _P2IFG	=	0x008b
                           00008C   470 G$PICTL$0$0 == 0x008c
                           00008C   471 _PICTL	=	0x008c
                           00008D   472 G$P1IEN$0$0 == 0x008d
                           00008D   473 _P1IEN	=	0x008d
                           00008E   474 G$_SFR8E$0$0 == 0x008e
                           00008E   475 __SFR8E	=	0x008e
                           00008F   476 G$P0INP$0$0 == 0x008f
                           00008F   477 _P0INP	=	0x008f
                           000090   478 G$P1$0$0 == 0x0090
                           000090   479 _P1	=	0x0090
                           000091   480 G$RFIM$0$0 == 0x0091
                           000091   481 _RFIM	=	0x0091
                           000092   482 G$DPS$0$0 == 0x0092
                           000092   483 _DPS	=	0x0092
                           000093   484 G$MPAGE$0$0 == 0x0093
                           000093   485 _MPAGE	=	0x0093
                           000093   486 G$_XPAGE$0$0 == 0x0093
                           000093   487 __XPAGE	=	0x0093
                           000094   488 G$_SFR94$0$0 == 0x0094
                           000094   489 __SFR94	=	0x0094
                           000095   490 G$_SFR95$0$0 == 0x0095
                           000095   491 __SFR95	=	0x0095
                           000096   492 G$_SFR96$0$0 == 0x0096
                           000096   493 __SFR96	=	0x0096
                           000097   494 G$_SFR97$0$0 == 0x0097
                           000097   495 __SFR97	=	0x0097
                           000098   496 G$S0CON$0$0 == 0x0098
                           000098   497 _S0CON	=	0x0098
                           000099   498 G$_SFR99$0$0 == 0x0099
                           000099   499 __SFR99	=	0x0099
                           00009A   500 G$IEN2$0$0 == 0x009a
                           00009A   501 _IEN2	=	0x009a
                           00009B   502 G$S1CON$0$0 == 0x009b
                           00009B   503 _S1CON	=	0x009b
                           00009C   504 G$T2CT$0$0 == 0x009c
                           00009C   505 _T2CT	=	0x009c
                           00009D   506 G$T2PR$0$0 == 0x009d
                           00009D   507 _T2PR	=	0x009d
                           00009E   508 G$T2CTL$0$0 == 0x009e
                           00009E   509 _T2CTL	=	0x009e
                           00009F   510 G$_SFR9F$0$0 == 0x009f
                           00009F   511 __SFR9F	=	0x009f
                           0000A0   512 G$P2$0$0 == 0x00a0
                           0000A0   513 _P2	=	0x00a0
                           0000A1   514 G$WORIRQ$0$0 == 0x00a1
                           0000A1   515 _WORIRQ	=	0x00a1
                           0000A2   516 G$WORCTRL$0$0 == 0x00a2
                           0000A2   517 _WORCTRL	=	0x00a2
                           0000A3   518 G$WOREVT0$0$0 == 0x00a3
                           0000A3   519 _WOREVT0	=	0x00a3
                           0000A4   520 G$WOREVT1$0$0 == 0x00a4
                           0000A4   521 _WOREVT1	=	0x00a4
                           0000A5   522 G$WORTIME0$0$0 == 0x00a5
                           0000A5   523 _WORTIME0	=	0x00a5
                           0000A6   524 G$WORTIME1$0$0 == 0x00a6
                           0000A6   525 _WORTIME1	=	0x00a6
                           0000A7   526 G$_SFRA7$0$0 == 0x00a7
                           0000A7   527 __SFRA7	=	0x00a7
                           0000A8   528 G$IEN0$0$0 == 0x00a8
                           0000A8   529 _IEN0	=	0x00a8
                           0000A9   530 G$IP0$0$0 == 0x00a9
                           0000A9   531 _IP0	=	0x00a9
                           0000AA   532 G$_SFRAA$0$0 == 0x00aa
                           0000AA   533 __SFRAA	=	0x00aa
                           0000AB   534 G$FWT$0$0 == 0x00ab
                           0000AB   535 _FWT	=	0x00ab
                           0000AC   536 G$FADDRL$0$0 == 0x00ac
                           0000AC   537 _FADDRL	=	0x00ac
                           0000AD   538 G$FADDRH$0$0 == 0x00ad
                           0000AD   539 _FADDRH	=	0x00ad
                           0000AE   540 G$FCTL$0$0 == 0x00ae
                           0000AE   541 _FCTL	=	0x00ae
                           0000AF   542 G$FWDATA$0$0 == 0x00af
                           0000AF   543 _FWDATA	=	0x00af
                           0000B0   544 G$_SFRB0$0$0 == 0x00b0
                           0000B0   545 __SFRB0	=	0x00b0
                           0000B1   546 G$ENCDI$0$0 == 0x00b1
                           0000B1   547 _ENCDI	=	0x00b1
                           0000B2   548 G$ENCDO$0$0 == 0x00b2
                           0000B2   549 _ENCDO	=	0x00b2
                           0000B3   550 G$ENCCS$0$0 == 0x00b3
                           0000B3   551 _ENCCS	=	0x00b3
                           0000B4   552 G$ADCCON1$0$0 == 0x00b4
                           0000B4   553 _ADCCON1	=	0x00b4
                           0000B5   554 G$ADCCON2$0$0 == 0x00b5
                           0000B5   555 _ADCCON2	=	0x00b5
                           0000B6   556 G$ADCCON3$0$0 == 0x00b6
                           0000B6   557 _ADCCON3	=	0x00b6
                           0000B7   558 G$_SFRB7$0$0 == 0x00b7
                           0000B7   559 __SFRB7	=	0x00b7
                           0000B8   560 G$IEN1$0$0 == 0x00b8
                           0000B8   561 _IEN1	=	0x00b8
                           0000B9   562 G$IP1$0$0 == 0x00b9
                           0000B9   563 _IP1	=	0x00b9
                           0000BA   564 G$ADCL$0$0 == 0x00ba
                           0000BA   565 _ADCL	=	0x00ba
                           0000BB   566 G$ADCH$0$0 == 0x00bb
                           0000BB   567 _ADCH	=	0x00bb
                           0000BC   568 G$RNDL$0$0 == 0x00bc
                           0000BC   569 _RNDL	=	0x00bc
                           0000BD   570 G$RNDH$0$0 == 0x00bd
                           0000BD   571 _RNDH	=	0x00bd
                           0000BE   572 G$SLEEP$0$0 == 0x00be
                           0000BE   573 _SLEEP	=	0x00be
                           0000BF   574 G$_SFRBF$0$0 == 0x00bf
                           0000BF   575 __SFRBF	=	0x00bf
                           0000C0   576 G$IRCON$0$0 == 0x00c0
                           0000C0   577 _IRCON	=	0x00c0
                           0000C1   578 G$U0DBUF$0$0 == 0x00c1
                           0000C1   579 _U0DBUF	=	0x00c1
                           0000C2   580 G$U0BAUD$0$0 == 0x00c2
                           0000C2   581 _U0BAUD	=	0x00c2
                           0000C3   582 G$_SFRC3$0$0 == 0x00c3
                           0000C3   583 __SFRC3	=	0x00c3
                           0000C4   584 G$U0UCR$0$0 == 0x00c4
                           0000C4   585 _U0UCR	=	0x00c4
                           0000C5   586 G$U0GCR$0$0 == 0x00c5
                           0000C5   587 _U0GCR	=	0x00c5
                           0000C6   588 G$CLKCON$0$0 == 0x00c6
                           0000C6   589 _CLKCON	=	0x00c6
                           0000C7   590 G$MEMCTR$0$0 == 0x00c7
                           0000C7   591 _MEMCTR	=	0x00c7
                           0000C8   592 G$_SFRC8$0$0 == 0x00c8
                           0000C8   593 __SFRC8	=	0x00c8
                           0000C9   594 G$WDCTL$0$0 == 0x00c9
                           0000C9   595 _WDCTL	=	0x00c9
                           0000CA   596 G$T3CNT$0$0 == 0x00ca
                           0000CA   597 _T3CNT	=	0x00ca
                           0000CB   598 G$T3CTL$0$0 == 0x00cb
                           0000CB   599 _T3CTL	=	0x00cb
                           0000CC   600 G$T3CCTL0$0$0 == 0x00cc
                           0000CC   601 _T3CCTL0	=	0x00cc
                           0000CD   602 G$T3CC0$0$0 == 0x00cd
                           0000CD   603 _T3CC0	=	0x00cd
                           0000CE   604 G$T3CCTL1$0$0 == 0x00ce
                           0000CE   605 _T3CCTL1	=	0x00ce
                           0000CF   606 G$T3CC1$0$0 == 0x00cf
                           0000CF   607 _T3CC1	=	0x00cf
                           0000D0   608 G$PSW$0$0 == 0x00d0
                           0000D0   609 _PSW	=	0x00d0
                           0000D1   610 G$DMAIRQ$0$0 == 0x00d1
                           0000D1   611 _DMAIRQ	=	0x00d1
                           0000D2   612 G$DMA1CFGL$0$0 == 0x00d2
                           0000D2   613 _DMA1CFGL	=	0x00d2
                           0000D3   614 G$DMA1CFGH$0$0 == 0x00d3
                           0000D3   615 _DMA1CFGH	=	0x00d3
                           0000D4   616 G$DMA0CFGL$0$0 == 0x00d4
                           0000D4   617 _DMA0CFGL	=	0x00d4
                           0000D5   618 G$DMA0CFGH$0$0 == 0x00d5
                           0000D5   619 _DMA0CFGH	=	0x00d5
                           0000D6   620 G$DMAARM$0$0 == 0x00d6
                           0000D6   621 _DMAARM	=	0x00d6
                           0000D7   622 G$DMAREQ$0$0 == 0x00d7
                           0000D7   623 _DMAREQ	=	0x00d7
                           0000D8   624 G$TIMIF$0$0 == 0x00d8
                           0000D8   625 _TIMIF	=	0x00d8
                           0000D9   626 G$RFD$0$0 == 0x00d9
                           0000D9   627 _RFD	=	0x00d9
                           0000DA   628 G$T1CC0L$0$0 == 0x00da
                           0000DA   629 _T1CC0L	=	0x00da
                           0000DB   630 G$T1CC0H$0$0 == 0x00db
                           0000DB   631 _T1CC0H	=	0x00db
                           0000DC   632 G$T1CC1L$0$0 == 0x00dc
                           0000DC   633 _T1CC1L	=	0x00dc
                           0000DD   634 G$T1CC1H$0$0 == 0x00dd
                           0000DD   635 _T1CC1H	=	0x00dd
                           0000DE   636 G$T1CC2L$0$0 == 0x00de
                           0000DE   637 _T1CC2L	=	0x00de
                           0000DF   638 G$T1CC2H$0$0 == 0x00df
                           0000DF   639 _T1CC2H	=	0x00df
                           0000E0   640 G$ACC$0$0 == 0x00e0
                           0000E0   641 _ACC	=	0x00e0
                           0000E1   642 G$RFST$0$0 == 0x00e1
                           0000E1   643 _RFST	=	0x00e1
                           0000E2   644 G$T1CNTL$0$0 == 0x00e2
                           0000E2   645 _T1CNTL	=	0x00e2
                           0000E3   646 G$T1CNTH$0$0 == 0x00e3
                           0000E3   647 _T1CNTH	=	0x00e3
                           0000E4   648 G$T1CTL$0$0 == 0x00e4
                           0000E4   649 _T1CTL	=	0x00e4
                           0000E5   650 G$T1CCTL0$0$0 == 0x00e5
                           0000E5   651 _T1CCTL0	=	0x00e5
                           0000E6   652 G$T1CCTL1$0$0 == 0x00e6
                           0000E6   653 _T1CCTL1	=	0x00e6
                           0000E7   654 G$T1CCTL2$0$0 == 0x00e7
                           0000E7   655 _T1CCTL2	=	0x00e7
                           0000E8   656 G$IRCON2$0$0 == 0x00e8
                           0000E8   657 _IRCON2	=	0x00e8
                           0000E9   658 G$RFIF$0$0 == 0x00e9
                           0000E9   659 _RFIF	=	0x00e9
                           0000EA   660 G$T4CNT$0$0 == 0x00ea
                           0000EA   661 _T4CNT	=	0x00ea
                           0000EB   662 G$T4CTL$0$0 == 0x00eb
                           0000EB   663 _T4CTL	=	0x00eb
                           0000EC   664 G$T4CCTL0$0$0 == 0x00ec
                           0000EC   665 _T4CCTL0	=	0x00ec
                           0000ED   666 G$T4CC0$0$0 == 0x00ed
                           0000ED   667 _T4CC0	=	0x00ed
                           0000EE   668 G$T4CCTL1$0$0 == 0x00ee
                           0000EE   669 _T4CCTL1	=	0x00ee
                           0000EF   670 G$T4CC1$0$0 == 0x00ef
                           0000EF   671 _T4CC1	=	0x00ef
                           0000F0   672 G$B$0$0 == 0x00f0
                           0000F0   673 _B	=	0x00f0
                           0000F1   674 G$PERCFG$0$0 == 0x00f1
                           0000F1   675 _PERCFG	=	0x00f1
                           0000F2   676 G$ADCCFG$0$0 == 0x00f2
                           0000F2   677 _ADCCFG	=	0x00f2
                           0000F3   678 G$P0SEL$0$0 == 0x00f3
                           0000F3   679 _P0SEL	=	0x00f3
                           0000F4   680 G$P1SEL$0$0 == 0x00f4
                           0000F4   681 _P1SEL	=	0x00f4
                           0000F5   682 G$P2SEL$0$0 == 0x00f5
                           0000F5   683 _P2SEL	=	0x00f5
                           0000F6   684 G$P1INP$0$0 == 0x00f6
                           0000F6   685 _P1INP	=	0x00f6
                           0000F7   686 G$P2INP$0$0 == 0x00f7
                           0000F7   687 _P2INP	=	0x00f7
                           0000F8   688 G$U1CSR$0$0 == 0x00f8
                           0000F8   689 _U1CSR	=	0x00f8
                           0000F9   690 G$U1DBUF$0$0 == 0x00f9
                           0000F9   691 _U1DBUF	=	0x00f9
                           0000FA   692 G$U1BAUD$0$0 == 0x00fa
                           0000FA   693 _U1BAUD	=	0x00fa
                           0000FB   694 G$U1UCR$0$0 == 0x00fb
                           0000FB   695 _U1UCR	=	0x00fb
                           0000FC   696 G$U1GCR$0$0 == 0x00fc
                           0000FC   697 _U1GCR	=	0x00fc
                           0000FD   698 G$P0DIR$0$0 == 0x00fd
                           0000FD   699 _P0DIR	=	0x00fd
                           0000FE   700 G$P1DIR$0$0 == 0x00fe
                           0000FE   701 _P1DIR	=	0x00fe
                           0000FF   702 G$P2DIR$0$0 == 0x00ff
                           0000FF   703 _P2DIR	=	0x00ff
                                    704 ;--------------------------------------------------------
                                    705 ; special function bits
                                    706 ;--------------------------------------------------------
                                    707 	.area RSEG    (ABS,DATA)
      000000                        708 	.org 0x0000
                           000080   709 G$P0_0$0$0 == 0x0080
                           000080   710 _P0_0	=	0x0080
                           000081   711 G$P0_1$0$0 == 0x0081
                           000081   712 _P0_1	=	0x0081
                           000082   713 G$P0_2$0$0 == 0x0082
                           000082   714 _P0_2	=	0x0082
                           000083   715 G$P0_3$0$0 == 0x0083
                           000083   716 _P0_3	=	0x0083
                           000084   717 G$P0_4$0$0 == 0x0084
                           000084   718 _P0_4	=	0x0084
                           000085   719 G$P0_5$0$0 == 0x0085
                           000085   720 _P0_5	=	0x0085
                           000086   721 G$P0_6$0$0 == 0x0086
                           000086   722 _P0_6	=	0x0086
                           000087   723 G$P0_7$0$0 == 0x0087
                           000087   724 _P0_7	=	0x0087
                           000088   725 G$IT0$0$0 == 0x0088
                           000088   726 _IT0	=	0x0088
                           000089   727 G$RFTXRXIF$0$0 == 0x0089
                           000089   728 _RFTXRXIF	=	0x0089
                           00008A   729 G$IT1$0$0 == 0x008a
                           00008A   730 _IT1	=	0x008a
                           00008B   731 G$URX0IF$0$0 == 0x008b
                           00008B   732 _URX0IF	=	0x008b
                           00008D   733 G$ADCIF$0$0 == 0x008d
                           00008D   734 _ADCIF	=	0x008d
                           00008F   735 G$URX1IF$0$0 == 0x008f
                           00008F   736 _URX1IF	=	0x008f
                           000090   737 G$P1_0$0$0 == 0x0090
                           000090   738 _P1_0	=	0x0090
                           000091   739 G$P1_1$0$0 == 0x0091
                           000091   740 _P1_1	=	0x0091
                           000092   741 G$P1_2$0$0 == 0x0092
                           000092   742 _P1_2	=	0x0092
                           000093   743 G$P1_3$0$0 == 0x0093
                           000093   744 _P1_3	=	0x0093
                           000094   745 G$P1_4$0$0 == 0x0094
                           000094   746 _P1_4	=	0x0094
                           000095   747 G$P1_5$0$0 == 0x0095
                           000095   748 _P1_5	=	0x0095
                           000096   749 G$P1_6$0$0 == 0x0096
                           000096   750 _P1_6	=	0x0096
                           000097   751 G$P1_7$0$0 == 0x0097
                           000097   752 _P1_7	=	0x0097
                           000098   753 G$ENCIF_0$0$0 == 0x0098
                           000098   754 _ENCIF_0	=	0x0098
                           000099   755 G$ENCIF_1$0$0 == 0x0099
                           000099   756 _ENCIF_1	=	0x0099
                           0000A0   757 G$P2_0$0$0 == 0x00a0
                           0000A0   758 _P2_0	=	0x00a0
                           0000A1   759 G$P2_1$0$0 == 0x00a1
                           0000A1   760 _P2_1	=	0x00a1
                           0000A2   761 G$P2_2$0$0 == 0x00a2
                           0000A2   762 _P2_2	=	0x00a2
                           0000A3   763 G$P2_3$0$0 == 0x00a3
                           0000A3   764 _P2_3	=	0x00a3
                           0000A4   765 G$P2_4$0$0 == 0x00a4
                           0000A4   766 _P2_4	=	0x00a4
                           0000A5   767 G$P2_5$0$0 == 0x00a5
                           0000A5   768 _P2_5	=	0x00a5
                           0000A6   769 G$P2_6$0$0 == 0x00a6
                           0000A6   770 _P2_6	=	0x00a6
                           0000A7   771 G$P2_7$0$0 == 0x00a7
                           0000A7   772 _P2_7	=	0x00a7
                           0000A8   773 G$RFTXRXIE$0$0 == 0x00a8
                           0000A8   774 _RFTXRXIE	=	0x00a8
                           0000A9   775 G$ADCIE$0$0 == 0x00a9
                           0000A9   776 _ADCIE	=	0x00a9
                           0000AA   777 G$URX0IE$0$0 == 0x00aa
                           0000AA   778 _URX0IE	=	0x00aa
                           0000AB   779 G$URX1IE$0$0 == 0x00ab
                           0000AB   780 _URX1IE	=	0x00ab
                           0000AC   781 G$ENCIE$0$0 == 0x00ac
                           0000AC   782 _ENCIE	=	0x00ac
                           0000AD   783 G$STIE$0$0 == 0x00ad
                           0000AD   784 _STIE	=	0x00ad
                           0000AF   785 G$EA$0$0 == 0x00af
                           0000AF   786 _EA	=	0x00af
                           0000B8   787 G$DMAIE$0$0 == 0x00b8
                           0000B8   788 _DMAIE	=	0x00b8
                           0000B9   789 G$T1IE$0$0 == 0x00b9
                           0000B9   790 _T1IE	=	0x00b9
                           0000BA   791 G$T2IE$0$0 == 0x00ba
                           0000BA   792 _T2IE	=	0x00ba
                           0000BB   793 G$T3IE$0$0 == 0x00bb
                           0000BB   794 _T3IE	=	0x00bb
                           0000BC   795 G$T4IE$0$0 == 0x00bc
                           0000BC   796 _T4IE	=	0x00bc
                           0000BD   797 G$P0IE$0$0 == 0x00bd
                           0000BD   798 _P0IE	=	0x00bd
                           0000C0   799 G$DMAIF$0$0 == 0x00c0
                           0000C0   800 _DMAIF	=	0x00c0
                           0000C1   801 G$T1IF$0$0 == 0x00c1
                           0000C1   802 _T1IF	=	0x00c1
                           0000C2   803 G$T2IF$0$0 == 0x00c2
                           0000C2   804 _T2IF	=	0x00c2
                           0000C3   805 G$T3IF$0$0 == 0x00c3
                           0000C3   806 _T3IF	=	0x00c3
                           0000C4   807 G$T4IF$0$0 == 0x00c4
                           0000C4   808 _T4IF	=	0x00c4
                           0000C5   809 G$P0IF$0$0 == 0x00c5
                           0000C5   810 _P0IF	=	0x00c5
                           0000C7   811 G$STIF$0$0 == 0x00c7
                           0000C7   812 _STIF	=	0x00c7
                           0000D0   813 G$P$0$0 == 0x00d0
                           0000D0   814 _P	=	0x00d0
                           0000D1   815 G$F1$0$0 == 0x00d1
                           0000D1   816 _F1	=	0x00d1
                           0000D2   817 G$OV$0$0 == 0x00d2
                           0000D2   818 _OV	=	0x00d2
                           0000D3   819 G$RS0$0$0 == 0x00d3
                           0000D3   820 _RS0	=	0x00d3
                           0000D4   821 G$RS1$0$0 == 0x00d4
                           0000D4   822 _RS1	=	0x00d4
                           0000D5   823 G$F0$0$0 == 0x00d5
                           0000D5   824 _F0	=	0x00d5
                           0000D6   825 G$AC$0$0 == 0x00d6
                           0000D6   826 _AC	=	0x00d6
                           0000D7   827 G$CY$0$0 == 0x00d7
                           0000D7   828 _CY	=	0x00d7
                           0000D8   829 G$T3OVFIF$0$0 == 0x00d8
                           0000D8   830 _T3OVFIF	=	0x00d8
                           0000D9   831 G$T3CH0IF$0$0 == 0x00d9
                           0000D9   832 _T3CH0IF	=	0x00d9
                           0000DA   833 G$T3CH1IF$0$0 == 0x00da
                           0000DA   834 _T3CH1IF	=	0x00da
                           0000DB   835 G$T4OVFIF$0$0 == 0x00db
                           0000DB   836 _T4OVFIF	=	0x00db
                           0000DC   837 G$T4CH0IF$0$0 == 0x00dc
                           0000DC   838 _T4CH0IF	=	0x00dc
                           0000DD   839 G$T4CH1IF$0$0 == 0x00dd
                           0000DD   840 _T4CH1IF	=	0x00dd
                           0000DE   841 G$OVFIM$0$0 == 0x00de
                           0000DE   842 _OVFIM	=	0x00de
                           0000E0   843 G$ACC_0$0$0 == 0x00e0
                           0000E0   844 _ACC_0	=	0x00e0
                           0000E1   845 G$ACC_1$0$0 == 0x00e1
                           0000E1   846 _ACC_1	=	0x00e1
                           0000E2   847 G$ACC_2$0$0 == 0x00e2
                           0000E2   848 _ACC_2	=	0x00e2
                           0000E3   849 G$ACC_3$0$0 == 0x00e3
                           0000E3   850 _ACC_3	=	0x00e3
                           0000E4   851 G$ACC_4$0$0 == 0x00e4
                           0000E4   852 _ACC_4	=	0x00e4
                           0000E5   853 G$ACC_5$0$0 == 0x00e5
                           0000E5   854 _ACC_5	=	0x00e5
                           0000E6   855 G$ACC_6$0$0 == 0x00e6
                           0000E6   856 _ACC_6	=	0x00e6
                           0000E7   857 G$ACC_7$0$0 == 0x00e7
                           0000E7   858 _ACC_7	=	0x00e7
                           0000E8   859 G$P2IF$0$0 == 0x00e8
                           0000E8   860 _P2IF	=	0x00e8
                           0000E9   861 G$UTX0IF$0$0 == 0x00e9
                           0000E9   862 _UTX0IF	=	0x00e9
                           0000EA   863 G$UTX1IF$0$0 == 0x00ea
                           0000EA   864 _UTX1IF	=	0x00ea
                           0000EB   865 G$P1IF$0$0 == 0x00eb
                           0000EB   866 _P1IF	=	0x00eb
                           0000EC   867 G$WDTIF$0$0 == 0x00ec
                           0000EC   868 _WDTIF	=	0x00ec
                           0000F0   869 G$B_0$0$0 == 0x00f0
                           0000F0   870 _B_0	=	0x00f0
                           0000F1   871 G$B_1$0$0 == 0x00f1
                           0000F1   872 _B_1	=	0x00f1
                           0000F2   873 G$B_2$0$0 == 0x00f2
                           0000F2   874 _B_2	=	0x00f2
                           0000F3   875 G$B_3$0$0 == 0x00f3
                           0000F3   876 _B_3	=	0x00f3
                           0000F4   877 G$B_4$0$0 == 0x00f4
                           0000F4   878 _B_4	=	0x00f4
                           0000F5   879 G$B_5$0$0 == 0x00f5
                           0000F5   880 _B_5	=	0x00f5
                           0000F6   881 G$B_6$0$0 == 0x00f6
                           0000F6   882 _B_6	=	0x00f6
                           0000F7   883 G$B_7$0$0 == 0x00f7
                           0000F7   884 _B_7	=	0x00f7
                           0000F8   885 G$ACTIVE$0$0 == 0x00f8
                           0000F8   886 _ACTIVE	=	0x00f8
                           0000F9   887 G$TX_BYTE$0$0 == 0x00f9
                           0000F9   888 _TX_BYTE	=	0x00f9
                           0000FA   889 G$RX_BYTE$0$0 == 0x00fa
                           0000FA   890 _RX_BYTE	=	0x00fa
                           0000FB   891 G$ERR$0$0 == 0x00fb
                           0000FB   892 _ERR	=	0x00fb
                           0000FC   893 G$FE$0$0 == 0x00fc
                           0000FC   894 _FE	=	0x00fc
                           0000FD   895 G$SLAVE$0$0 == 0x00fd
                           0000FD   896 _SLAVE	=	0x00fd
                           0000FE   897 G$RE$0$0 == 0x00fe
                           0000FE   898 _RE	=	0x00fe
                           0000FF   899 G$MODE$0$0 == 0x00ff
                           0000FF   900 _MODE	=	0x00ff
                                    901 ;--------------------------------------------------------
                                    902 ; overlayable register banks
                                    903 ;--------------------------------------------------------
                                    904 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        905 	.ds 8
                                    906 ;--------------------------------------------------------
                                    907 ; internal ram data
                                    908 ;--------------------------------------------------------
                                    909 	.area DSEG    (DATA)
                                    910 ;--------------------------------------------------------
                                    911 ; overlayable items in internal ram 
                                    912 ;--------------------------------------------------------
                                    913 ;--------------------------------------------------------
                                    914 ; indirectly addressable internal ram data
                                    915 ;--------------------------------------------------------
                                    916 	.area ISEG    (DATA)
                                    917 ;--------------------------------------------------------
                                    918 ; absolute internal ram data
                                    919 ;--------------------------------------------------------
                                    920 	.area IABS    (ABS,DATA)
                                    921 	.area IABS    (ABS,DATA)
                                    922 ;--------------------------------------------------------
                                    923 ; bit data
                                    924 ;--------------------------------------------------------
                                    925 	.area BSEG    (BIT)
                                    926 ;--------------------------------------------------------
                                    927 ; paged external ram data
                                    928 ;--------------------------------------------------------
                                    929 	.area PSEG    (PAG,XDATA)
                                    930 ;--------------------------------------------------------
                                    931 ; external ram data
                                    932 ;--------------------------------------------------------
                                    933 	.area XSEG    (XDATA)
                           00DF02   934 G$MDMCTRL0H$0$0 == 0xdf02
                           00DF02   935 _MDMCTRL0H	=	0xdf02
                           00DF00   936 G$SYNC1$0$0 == 0xdf00
                           00DF00   937 _SYNC1	=	0xdf00
                           00DF01   938 G$SYNC0$0$0 == 0xdf01
                           00DF01   939 _SYNC0	=	0xdf01
                           00DF02   940 G$PKTLEN$0$0 == 0xdf02
                           00DF02   941 _PKTLEN	=	0xdf02
                           00DF03   942 G$PKTCTRL1$0$0 == 0xdf03
                           00DF03   943 _PKTCTRL1	=	0xdf03
                           00DF04   944 G$PKTCTRL0$0$0 == 0xdf04
                           00DF04   945 _PKTCTRL0	=	0xdf04
                           00DF05   946 G$ADDR$0$0 == 0xdf05
                           00DF05   947 _ADDR	=	0xdf05
                           00DF06   948 G$CHANNR$0$0 == 0xdf06
                           00DF06   949 _CHANNR	=	0xdf06
                           00DF07   950 G$FSCTRL1$0$0 == 0xdf07
                           00DF07   951 _FSCTRL1	=	0xdf07
                           00DF08   952 G$FSCTRL0$0$0 == 0xdf08
                           00DF08   953 _FSCTRL0	=	0xdf08
                           00DF09   954 G$FREQ2$0$0 == 0xdf09
                           00DF09   955 _FREQ2	=	0xdf09
                           00DF0A   956 G$FREQ1$0$0 == 0xdf0a
                           00DF0A   957 _FREQ1	=	0xdf0a
                           00DF0B   958 G$FREQ0$0$0 == 0xdf0b
                           00DF0B   959 _FREQ0	=	0xdf0b
                           00DF0C   960 G$MDMCFG4$0$0 == 0xdf0c
                           00DF0C   961 _MDMCFG4	=	0xdf0c
                           00DF0D   962 G$MDMCFG3$0$0 == 0xdf0d
                           00DF0D   963 _MDMCFG3	=	0xdf0d
                           00DF0E   964 G$MDMCFG2$0$0 == 0xdf0e
                           00DF0E   965 _MDMCFG2	=	0xdf0e
                           00DF0F   966 G$MDMCFG1$0$0 == 0xdf0f
                           00DF0F   967 _MDMCFG1	=	0xdf0f
                           00DF10   968 G$MDMCFG0$0$0 == 0xdf10
                           00DF10   969 _MDMCFG0	=	0xdf10
                           00DF11   970 G$DEVIATN$0$0 == 0xdf11
                           00DF11   971 _DEVIATN	=	0xdf11
                           00DF12   972 G$MCSM2$0$0 == 0xdf12
                           00DF12   973 _MCSM2	=	0xdf12
                           00DF13   974 G$MCSM1$0$0 == 0xdf13
                           00DF13   975 _MCSM1	=	0xdf13
                           00DF14   976 G$MCSM0$0$0 == 0xdf14
                           00DF14   977 _MCSM0	=	0xdf14
                           00DF15   978 G$FOCCFG$0$0 == 0xdf15
                           00DF15   979 _FOCCFG	=	0xdf15
                           00DF16   980 G$BSCFG$0$0 == 0xdf16
                           00DF16   981 _BSCFG	=	0xdf16
                           00DF17   982 G$AGCCTRL2$0$0 == 0xdf17
                           00DF17   983 _AGCCTRL2	=	0xdf17
                           00DF18   984 G$AGCCTRL1$0$0 == 0xdf18
                           00DF18   985 _AGCCTRL1	=	0xdf18
                           00DF19   986 G$AGCCTRL0$0$0 == 0xdf19
                           00DF19   987 _AGCCTRL0	=	0xdf19
                           00DF1A   988 G$FREND1$0$0 == 0xdf1a
                           00DF1A   989 _FREND1	=	0xdf1a
                           00DF1B   990 G$FREND0$0$0 == 0xdf1b
                           00DF1B   991 _FREND0	=	0xdf1b
                           00DF1C   992 G$FSCAL3$0$0 == 0xdf1c
                           00DF1C   993 _FSCAL3	=	0xdf1c
                           00DF1D   994 G$FSCAL2$0$0 == 0xdf1d
                           00DF1D   995 _FSCAL2	=	0xdf1d
                           00DF1E   996 G$FSCAL1$0$0 == 0xdf1e
                           00DF1E   997 _FSCAL1	=	0xdf1e
                           00DF1F   998 G$FSCAL0$0$0 == 0xdf1f
                           00DF1F   999 _FSCAL0	=	0xdf1f
                           00DF20  1000 G$_XREGDF20$0$0 == 0xdf20
                           00DF20  1001 __XREGDF20	=	0xdf20
                           00DF21  1002 G$_XREGDF21$0$0 == 0xdf21
                           00DF21  1003 __XREGDF21	=	0xdf21
                           00DF22  1004 G$_XREGDF22$0$0 == 0xdf22
                           00DF22  1005 __XREGDF22	=	0xdf22
                           00DF23  1006 G$TEST2$0$0 == 0xdf23
                           00DF23  1007 _TEST2	=	0xdf23
                           00DF24  1008 G$TEST1$0$0 == 0xdf24
                           00DF24  1009 _TEST1	=	0xdf24
                           00DF25  1010 G$TEST0$0$0 == 0xdf25
                           00DF25  1011 _TEST0	=	0xdf25
                           00DF26  1012 G$_XREGDF26$0$0 == 0xdf26
                           00DF26  1013 __XREGDF26	=	0xdf26
                           00DF27  1014 G$PA_TABLE7$0$0 == 0xdf27
                           00DF27  1015 _PA_TABLE7	=	0xdf27
                           00DF28  1016 G$PA_TABLE6$0$0 == 0xdf28
                           00DF28  1017 _PA_TABLE6	=	0xdf28
                           00DF29  1018 G$PA_TABLE5$0$0 == 0xdf29
                           00DF29  1019 _PA_TABLE5	=	0xdf29
                           00DF2A  1020 G$PA_TABLE4$0$0 == 0xdf2a
                           00DF2A  1021 _PA_TABLE4	=	0xdf2a
                           00DF2B  1022 G$PA_TABLE3$0$0 == 0xdf2b
                           00DF2B  1023 _PA_TABLE3	=	0xdf2b
                           00DF2C  1024 G$PA_TABLE2$0$0 == 0xdf2c
                           00DF2C  1025 _PA_TABLE2	=	0xdf2c
                           00DF2D  1026 G$PA_TABLE1$0$0 == 0xdf2d
                           00DF2D  1027 _PA_TABLE1	=	0xdf2d
                           00DF2E  1028 G$PA_TABLE0$0$0 == 0xdf2e
                           00DF2E  1029 _PA_TABLE0	=	0xdf2e
                           00DF2F  1030 G$IOCFG2$0$0 == 0xdf2f
                           00DF2F  1031 _IOCFG2	=	0xdf2f
                           00DF30  1032 G$IOCFG1$0$0 == 0xdf30
                           00DF30  1033 _IOCFG1	=	0xdf30
                           00DF31  1034 G$IOCFG0$0$0 == 0xdf31
                           00DF31  1035 _IOCFG0	=	0xdf31
                           00DF32  1036 G$_XREGDF32$0$0 == 0xdf32
                           00DF32  1037 __XREGDF32	=	0xdf32
                           00DF33  1038 G$_XREGDF33$0$0 == 0xdf33
                           00DF33  1039 __XREGDF33	=	0xdf33
                           00DF34  1040 G$_XREGDF34$0$0 == 0xdf34
                           00DF34  1041 __XREGDF34	=	0xdf34
                           00DF35  1042 G$_XREGDF35$0$0 == 0xdf35
                           00DF35  1043 __XREGDF35	=	0xdf35
                           00DF36  1044 G$PARTNUM$0$0 == 0xdf36
                           00DF36  1045 _PARTNUM	=	0xdf36
                           00DF37  1046 G$VERSION$0$0 == 0xdf37
                           00DF37  1047 _VERSION	=	0xdf37
                           00DF38  1048 G$FREQEST$0$0 == 0xdf38
                           00DF38  1049 _FREQEST	=	0xdf38
                           00DF39  1050 G$LQI$0$0 == 0xdf39
                           00DF39  1051 _LQI	=	0xdf39
                           00DF3A  1052 G$RSSI$0$0 == 0xdf3a
                           00DF3A  1053 _RSSI	=	0xdf3a
                           00DF3B  1054 G$MARCSTATE$0$0 == 0xdf3b
                           00DF3B  1055 _MARCSTATE	=	0xdf3b
                           00DF3C  1056 G$PKTSTATUS$0$0 == 0xdf3c
                           00DF3C  1057 _PKTSTATUS	=	0xdf3c
                           00DF3D  1058 G$VCO_VC_DAC$0$0 == 0xdf3d
                           00DF3D  1059 _VCO_VC_DAC	=	0xdf3d
                           00DF40  1060 G$I2SCFG0$0$0 == 0xdf40
                           00DF40  1061 _I2SCFG0	=	0xdf40
                           00DF41  1062 G$I2SCFG1$0$0 == 0xdf41
                           00DF41  1063 _I2SCFG1	=	0xdf41
                           00DF42  1064 G$I2SDATL$0$0 == 0xdf42
                           00DF42  1065 _I2SDATL	=	0xdf42
                           00DF43  1066 G$I2SDATH$0$0 == 0xdf43
                           00DF43  1067 _I2SDATH	=	0xdf43
                           00DF44  1068 G$I2SWCNT$0$0 == 0xdf44
                           00DF44  1069 _I2SWCNT	=	0xdf44
                           00DF45  1070 G$I2SSTAT$0$0 == 0xdf45
                           00DF45  1071 _I2SSTAT	=	0xdf45
                           00DF46  1072 G$I2SCLKF0$0$0 == 0xdf46
                           00DF46  1073 _I2SCLKF0	=	0xdf46
                           00DF47  1074 G$I2SCLKF1$0$0 == 0xdf47
                           00DF47  1075 _I2SCLKF1	=	0xdf47
                           00DF48  1076 G$I2SCLKF2$0$0 == 0xdf48
                           00DF48  1077 _I2SCLKF2	=	0xdf48
                           00DF80  1078 G$_NA_P0$0$0 == 0xdf80
                           00DF80  1079 __NA_P0	=	0xdf80
                           00DF81  1080 G$_NA_SP$0$0 == 0xdf81
                           00DF81  1081 __NA_SP	=	0xdf81
                           00DF82  1082 G$_NA_DPL0$0$0 == 0xdf82
                           00DF82  1083 __NA_DPL0	=	0xdf82
                           00DF83  1084 G$_NA_DPH0$0$0 == 0xdf83
                           00DF83  1085 __NA_DPH0	=	0xdf83
                           00DF84  1086 G$_NA_DPL1$0$0 == 0xdf84
                           00DF84  1087 __NA_DPL1	=	0xdf84
                           00DF85  1088 G$_NA_DPH1$0$0 == 0xdf85
                           00DF85  1089 __NA_DPH1	=	0xdf85
                           00DF86  1090 G$X_U0CSR$0$0 == 0xdf86
                           00DF86  1091 _X_U0CSR	=	0xdf86
                           00DF87  1092 G$_NA_PCON$0$0 == 0xdf87
                           00DF87  1093 __NA_PCON	=	0xdf87
                           00DF88  1094 G$_NA_TCON$0$0 == 0xdf88
                           00DF88  1095 __NA_TCON	=	0xdf88
                           00DF89  1096 G$X_P0IFG$0$0 == 0xdf89
                           00DF89  1097 _X_P0IFG	=	0xdf89
                           00DF8A  1098 G$X_P1IFG$0$0 == 0xdf8a
                           00DF8A  1099 _X_P1IFG	=	0xdf8a
                           00DF8B  1100 G$X_P2IFG$0$0 == 0xdf8b
                           00DF8B  1101 _X_P2IFG	=	0xdf8b
                           00DF8C  1102 G$X_PICTL$0$0 == 0xdf8c
                           00DF8C  1103 _X_PICTL	=	0xdf8c
                           00DF8D  1104 G$X_P1IEN$0$0 == 0xdf8d
                           00DF8D  1105 _X_P1IEN	=	0xdf8d
                           00DF8E  1106 G$_X_SFR8E$0$0 == 0xdf8e
                           00DF8E  1107 __X_SFR8E	=	0xdf8e
                           00DF8F  1108 G$X_P0INP$0$0 == 0xdf8f
                           00DF8F  1109 _X_P0INP	=	0xdf8f
                           00DF90  1110 G$_NA_P1$0$0 == 0xdf90
                           00DF90  1111 __NA_P1	=	0xdf90
                           00DF91  1112 G$X_RFIM$0$0 == 0xdf91
                           00DF91  1113 _X_RFIM	=	0xdf91
                           00DF92  1114 G$_NA_DPS$0$0 == 0xdf92
                           00DF92  1115 __NA_DPS	=	0xdf92
                           00DF93  1116 G$X_MPAGE$0$0 == 0xdf93
                           00DF93  1117 _X_MPAGE	=	0xdf93
                           00DF94  1118 G$_X_SFR94$0$0 == 0xdf94
                           00DF94  1119 __X_SFR94	=	0xdf94
                           00DF95  1120 G$_X_SFR95$0$0 == 0xdf95
                           00DF95  1121 __X_SFR95	=	0xdf95
                           00DF96  1122 G$_X_SFR96$0$0 == 0xdf96
                           00DF96  1123 __X_SFR96	=	0xdf96
                           00DF97  1124 G$_X_SFR97$0$0 == 0xdf97
                           00DF97  1125 __X_SFR97	=	0xdf97
                           00DF98  1126 G$_NA_S0CON$0$0 == 0xdf98
                           00DF98  1127 __NA_S0CON	=	0xdf98
                           00DF99  1128 G$_X_SFR99$0$0 == 0xdf99
                           00DF99  1129 __X_SFR99	=	0xdf99
                           00DF9A  1130 G$_NA_IEN2$0$0 == 0xdf9a
                           00DF9A  1131 __NA_IEN2	=	0xdf9a
                           00DF9B  1132 G$_NA_S1CON$0$0 == 0xdf9b
                           00DF9B  1133 __NA_S1CON	=	0xdf9b
                           00DF9C  1134 G$X_T2CT$0$0 == 0xdf9c
                           00DF9C  1135 _X_T2CT	=	0xdf9c
                           00DF9D  1136 G$X_T2PR$0$0 == 0xdf9d
                           00DF9D  1137 _X_T2PR	=	0xdf9d
                           00DF9E  1138 G$X_T2CTL$0$0 == 0xdf9e
                           00DF9E  1139 _X_T2CTL	=	0xdf9e
                           00DF9F  1140 G$_X_SFR9F$0$0 == 0xdf9f
                           00DF9F  1141 __X_SFR9F	=	0xdf9f
                           00DFA0  1142 G$_NA_P2$0$0 == 0xdfa0
                           00DFA0  1143 __NA_P2	=	0xdfa0
                           00DFA1  1144 G$X_WORIRQ$0$0 == 0xdfa1
                           00DFA1  1145 _X_WORIRQ	=	0xdfa1
                           00DFA2  1146 G$X_WORCTRL$0$0 == 0xdfa2
                           00DFA2  1147 _X_WORCTRL	=	0xdfa2
                           00DFA3  1148 G$X_WOREVT0$0$0 == 0xdfa3
                           00DFA3  1149 _X_WOREVT0	=	0xdfa3
                           00DFA4  1150 G$X_WOREVT1$0$0 == 0xdfa4
                           00DFA4  1151 _X_WOREVT1	=	0xdfa4
                           00DFA5  1152 G$X_WORTIME0$0$0 == 0xdfa5
                           00DFA5  1153 _X_WORTIME0	=	0xdfa5
                           00DFA6  1154 G$X_WORTIME1$0$0 == 0xdfa6
                           00DFA6  1155 _X_WORTIME1	=	0xdfa6
                           00DFA7  1156 G$_X_SFRA7$0$0 == 0xdfa7
                           00DFA7  1157 __X_SFRA7	=	0xdfa7
                           00DFA8  1158 G$_NA_IEN0$0$0 == 0xdfa8
                           00DFA8  1159 __NA_IEN0	=	0xdfa8
                           00DFA9  1160 G$_NA_IP0$0$0 == 0xdfa9
                           00DFA9  1161 __NA_IP0	=	0xdfa9
                           00DFAA  1162 G$_X_SFRAA$0$0 == 0xdfaa
                           00DFAA  1163 __X_SFRAA	=	0xdfaa
                           00DFAB  1164 G$X_FWT$0$0 == 0xdfab
                           00DFAB  1165 _X_FWT	=	0xdfab
                           00DFAC  1166 G$X_FADDRL$0$0 == 0xdfac
                           00DFAC  1167 _X_FADDRL	=	0xdfac
                           00DFAD  1168 G$X_FADDRH$0$0 == 0xdfad
                           00DFAD  1169 _X_FADDRH	=	0xdfad
                           00DFAE  1170 G$X_FCTL$0$0 == 0xdfae
                           00DFAE  1171 _X_FCTL	=	0xdfae
                           00DFAF  1172 G$X_FWDATA$0$0 == 0xdfaf
                           00DFAF  1173 _X_FWDATA	=	0xdfaf
                           00DFB0  1174 G$_X_SFRB0$0$0 == 0xdfb0
                           00DFB0  1175 __X_SFRB0	=	0xdfb0
                           00DFB1  1176 G$X_ENCDI$0$0 == 0xdfb1
                           00DFB1  1177 _X_ENCDI	=	0xdfb1
                           00DFB2  1178 G$X_ENCDO$0$0 == 0xdfb2
                           00DFB2  1179 _X_ENCDO	=	0xdfb2
                           00DFB3  1180 G$X_ENCCS$0$0 == 0xdfb3
                           00DFB3  1181 _X_ENCCS	=	0xdfb3
                           00DFB4  1182 G$X_ADCCON1$0$0 == 0xdfb4
                           00DFB4  1183 _X_ADCCON1	=	0xdfb4
                           00DFB5  1184 G$X_ADCCON2$0$0 == 0xdfb5
                           00DFB5  1185 _X_ADCCON2	=	0xdfb5
                           00DFB6  1186 G$X_ADCCON3$0$0 == 0xdfb6
                           00DFB6  1187 _X_ADCCON3	=	0xdfb6
                           00DFB7  1188 G$_X_SFRB7$0$0 == 0xdfb7
                           00DFB7  1189 __X_SFRB7	=	0xdfb7
                           00DFB8  1190 G$_NA_IEN1$0$0 == 0xdfb8
                           00DFB8  1191 __NA_IEN1	=	0xdfb8
                           00DFB9  1192 G$_NA_IP1$0$0 == 0xdfb9
                           00DFB9  1193 __NA_IP1	=	0xdfb9
                           00DFBA  1194 G$X_ADCL$0$0 == 0xdfba
                           00DFBA  1195 _X_ADCL	=	0xdfba
                           00DFBB  1196 G$X_ADCH$0$0 == 0xdfbb
                           00DFBB  1197 _X_ADCH	=	0xdfbb
                           00DFBC  1198 G$X_RNDL$0$0 == 0xdfbc
                           00DFBC  1199 _X_RNDL	=	0xdfbc
                           00DFBD  1200 G$X_RNDH$0$0 == 0xdfbd
                           00DFBD  1201 _X_RNDH	=	0xdfbd
                           00DFBE  1202 G$X_SLEEP$0$0 == 0xdfbe
                           00DFBE  1203 _X_SLEEP	=	0xdfbe
                           00DFBF  1204 G$_X_SFRBF$0$0 == 0xdfbf
                           00DFBF  1205 __X_SFRBF	=	0xdfbf
                           00DFC0  1206 G$_NA_IRCON$0$0 == 0xdfc0
                           00DFC0  1207 __NA_IRCON	=	0xdfc0
                           00DFC1  1208 G$X_U0DBUF$0$0 == 0xdfc1
                           00DFC1  1209 _X_U0DBUF	=	0xdfc1
                           00DFC2  1210 G$X_U0BAUD$0$0 == 0xdfc2
                           00DFC2  1211 _X_U0BAUD	=	0xdfc2
                           00DFC3  1212 G$_X_SFRC3$0$0 == 0xdfc3
                           00DFC3  1213 __X_SFRC3	=	0xdfc3
                           00DFC4  1214 G$X_U0UCR$0$0 == 0xdfc4
                           00DFC4  1215 _X_U0UCR	=	0xdfc4
                           00DFC5  1216 G$X_U0GCR$0$0 == 0xdfc5
                           00DFC5  1217 _X_U0GCR	=	0xdfc5
                           00DFC6  1218 G$X_CLKCON$0$0 == 0xdfc6
                           00DFC6  1219 _X_CLKCON	=	0xdfc6
                           00DFC7  1220 G$X_MEMCTR$0$0 == 0xdfc7
                           00DFC7  1221 _X_MEMCTR	=	0xdfc7
                           00DFC8  1222 G$_X_SFRC8$0$0 == 0xdfc8
                           00DFC8  1223 __X_SFRC8	=	0xdfc8
                           00DFC9  1224 G$X_WDCTL$0$0 == 0xdfc9
                           00DFC9  1225 _X_WDCTL	=	0xdfc9
                           00DFCA  1226 G$X_T3CNT$0$0 == 0xdfca
                           00DFCA  1227 _X_T3CNT	=	0xdfca
                           00DFCB  1228 G$X_T3CTL$0$0 == 0xdfcb
                           00DFCB  1229 _X_T3CTL	=	0xdfcb
                           00DFCC  1230 G$X_T3CCTL0$0$0 == 0xdfcc
                           00DFCC  1231 _X_T3CCTL0	=	0xdfcc
                           00DFCD  1232 G$X_T3CC0$0$0 == 0xdfcd
                           00DFCD  1233 _X_T3CC0	=	0xdfcd
                           00DFCE  1234 G$X_T3CCTL1$0$0 == 0xdfce
                           00DFCE  1235 _X_T3CCTL1	=	0xdfce
                           00DFCF  1236 G$X_T3CC1$0$0 == 0xdfcf
                           00DFCF  1237 _X_T3CC1	=	0xdfcf
                           00DFD0  1238 G$_NA_PSW$0$0 == 0xdfd0
                           00DFD0  1239 __NA_PSW	=	0xdfd0
                           00DFD1  1240 G$X_DMAIRQ$0$0 == 0xdfd1
                           00DFD1  1241 _X_DMAIRQ	=	0xdfd1
                           00DFD2  1242 G$X_DMA1CFGL$0$0 == 0xdfd2
                           00DFD2  1243 _X_DMA1CFGL	=	0xdfd2
                           00DFD3  1244 G$X_DMA1CFGH$0$0 == 0xdfd3
                           00DFD3  1245 _X_DMA1CFGH	=	0xdfd3
                           00DFD4  1246 G$X_DMA0CFGL$0$0 == 0xdfd4
                           00DFD4  1247 _X_DMA0CFGL	=	0xdfd4
                           00DFD5  1248 G$X_DMA0CFGH$0$0 == 0xdfd5
                           00DFD5  1249 _X_DMA0CFGH	=	0xdfd5
                           00DFD6  1250 G$X_DMAARM$0$0 == 0xdfd6
                           00DFD6  1251 _X_DMAARM	=	0xdfd6
                           00DFD7  1252 G$X_DMAREQ$0$0 == 0xdfd7
                           00DFD7  1253 _X_DMAREQ	=	0xdfd7
                           00DFD8  1254 G$X_TIMIF$0$0 == 0xdfd8
                           00DFD8  1255 _X_TIMIF	=	0xdfd8
                           00DFD9  1256 G$X_RFD$0$0 == 0xdfd9
                           00DFD9  1257 _X_RFD	=	0xdfd9
                           00DFDA  1258 G$X_T1CC0L$0$0 == 0xdfda
                           00DFDA  1259 _X_T1CC0L	=	0xdfda
                           00DFDB  1260 G$X_T1CC0H$0$0 == 0xdfdb
                           00DFDB  1261 _X_T1CC0H	=	0xdfdb
                           00DFDC  1262 G$X_T1CC1L$0$0 == 0xdfdc
                           00DFDC  1263 _X_T1CC1L	=	0xdfdc
                           00DFDD  1264 G$X_T1CC1H$0$0 == 0xdfdd
                           00DFDD  1265 _X_T1CC1H	=	0xdfdd
                           00DFDE  1266 G$X_T1CC2L$0$0 == 0xdfde
                           00DFDE  1267 _X_T1CC2L	=	0xdfde
                           00DFDF  1268 G$X_T1CC2H$0$0 == 0xdfdf
                           00DFDF  1269 _X_T1CC2H	=	0xdfdf
                           00DFE0  1270 G$_NA_ACC$0$0 == 0xdfe0
                           00DFE0  1271 __NA_ACC	=	0xdfe0
                           00DFE1  1272 G$X_RFST$0$0 == 0xdfe1
                           00DFE1  1273 _X_RFST	=	0xdfe1
                           00DFE2  1274 G$X_T1CNTL$0$0 == 0xdfe2
                           00DFE2  1275 _X_T1CNTL	=	0xdfe2
                           00DFE3  1276 G$X_T1CNTH$0$0 == 0xdfe3
                           00DFE3  1277 _X_T1CNTH	=	0xdfe3
                           00DFE4  1278 G$X_T1CTL$0$0 == 0xdfe4
                           00DFE4  1279 _X_T1CTL	=	0xdfe4
                           00DFE5  1280 G$X_T1CCTL0$0$0 == 0xdfe5
                           00DFE5  1281 _X_T1CCTL0	=	0xdfe5
                           00DFE6  1282 G$X_T1CCTL1$0$0 == 0xdfe6
                           00DFE6  1283 _X_T1CCTL1	=	0xdfe6
                           00DFE7  1284 G$X_T1CCTL2$0$0 == 0xdfe7
                           00DFE7  1285 _X_T1CCTL2	=	0xdfe7
                           00DFE8  1286 G$_NA_IRCON2$0$0 == 0xdfe8
                           00DFE8  1287 __NA_IRCON2	=	0xdfe8
                           00DFE9  1288 G$X_RFIF$0$0 == 0xdfe9
                           00DFE9  1289 _X_RFIF	=	0xdfe9
                           00DFEA  1290 G$X_T4CNT$0$0 == 0xdfea
                           00DFEA  1291 _X_T4CNT	=	0xdfea
                           00DFEB  1292 G$X_T4CTL$0$0 == 0xdfeb
                           00DFEB  1293 _X_T4CTL	=	0xdfeb
                           00DFEC  1294 G$X_T4CCTL0$0$0 == 0xdfec
                           00DFEC  1295 _X_T4CCTL0	=	0xdfec
                           00DFED  1296 G$X_T4CC0$0$0 == 0xdfed
                           00DFED  1297 _X_T4CC0	=	0xdfed
                           00DFEE  1298 G$X_T4CCTL1$0$0 == 0xdfee
                           00DFEE  1299 _X_T4CCTL1	=	0xdfee
                           00DFEF  1300 G$X_T4CC1$0$0 == 0xdfef
                           00DFEF  1301 _X_T4CC1	=	0xdfef
                           00DFF0  1302 G$_NA_B$0$0 == 0xdff0
                           00DFF0  1303 __NA_B	=	0xdff0
                           00DFF1  1304 G$X_PERCFG$0$0 == 0xdff1
                           00DFF1  1305 _X_PERCFG	=	0xdff1
                           00DFF2  1306 G$X_ADCCFG$0$0 == 0xdff2
                           00DFF2  1307 _X_ADCCFG	=	0xdff2
                           00DFF3  1308 G$X_P0SEL$0$0 == 0xdff3
                           00DFF3  1309 _X_P0SEL	=	0xdff3
                           00DFF4  1310 G$X_P1SEL$0$0 == 0xdff4
                           00DFF4  1311 _X_P1SEL	=	0xdff4
                           00DFF5  1312 G$X_P2SEL$0$0 == 0xdff5
                           00DFF5  1313 _X_P2SEL	=	0xdff5
                           00DFF6  1314 G$X_P1INP$0$0 == 0xdff6
                           00DFF6  1315 _X_P1INP	=	0xdff6
                           00DFF7  1316 G$X_P2INP$0$0 == 0xdff7
                           00DFF7  1317 _X_P2INP	=	0xdff7
                           00DFF8  1318 G$X_U1CSR$0$0 == 0xdff8
                           00DFF8  1319 _X_U1CSR	=	0xdff8
                           00DFF9  1320 G$X_U1DBUF$0$0 == 0xdff9
                           00DFF9  1321 _X_U1DBUF	=	0xdff9
                           00DFFA  1322 G$X_U1BAUD$0$0 == 0xdffa
                           00DFFA  1323 _X_U1BAUD	=	0xdffa
                           00DFFB  1324 G$X_U1UCR$0$0 == 0xdffb
                           00DFFB  1325 _X_U1UCR	=	0xdffb
                           00DFFC  1326 G$X_U1GCR$0$0 == 0xdffc
                           00DFFC  1327 _X_U1GCR	=	0xdffc
                           00DFFD  1328 G$X_P0DIR$0$0 == 0xdffd
                           00DFFD  1329 _X_P0DIR	=	0xdffd
                           00DFFE  1330 G$X_P1DIR$0$0 == 0xdffe
                           00DFFE  1331 _X_P1DIR	=	0xdffe
                           00DFFF  1332 G$X_P2DIR$0$0 == 0xdfff
                           00DFFF  1333 _X_P2DIR	=	0xdfff
                           000000  1334 Lhal_int.halIntUnlock$key$1$18==.
      00023D                       1335 _halIntUnlock_key_1_18:
      00023D                       1336 	.ds 2
                                   1337 ;--------------------------------------------------------
                                   1338 ; absolute external ram data
                                   1339 ;--------------------------------------------------------
                                   1340 	.area XABS    (ABS,XDATA)
                                   1341 ;--------------------------------------------------------
                                   1342 ; external initialized ram data
                                   1343 ;--------------------------------------------------------
                                   1344 	.area XISEG   (XDATA)
                                   1345 	.area HOME    (CODE)
                                   1346 	.area GSINIT0 (CODE)
                                   1347 	.area GSINIT1 (CODE)
                                   1348 	.area GSINIT2 (CODE)
                                   1349 	.area GSINIT3 (CODE)
                                   1350 	.area GSINIT4 (CODE)
                                   1351 	.area GSINIT5 (CODE)
                                   1352 	.area GSINIT  (CODE)
                                   1353 	.area GSFINAL (CODE)
                                   1354 	.area CSEG    (CODE)
                                   1355 ;--------------------------------------------------------
                                   1356 ; global & static initialisations
                                   1357 ;--------------------------------------------------------
                                   1358 	.area HOME    (CODE)
                                   1359 	.area GSINIT  (CODE)
                                   1360 	.area GSFINAL (CODE)
                                   1361 	.area GSINIT  (CODE)
                                   1362 ;--------------------------------------------------------
                                   1363 ; Home
                                   1364 ;--------------------------------------------------------
                                   1365 	.area HOME    (CODE)
                                   1366 	.area HOME    (CODE)
                                   1367 ;--------------------------------------------------------
                                   1368 ; code
                                   1369 ;--------------------------------------------------------
                                   1370 	.area CSEG    (CODE)
                                   1371 ;------------------------------------------------------------
                                   1372 ;Allocation info for local variables in function 'halIntOn'
                                   1373 ;------------------------------------------------------------
                           000000  1374 	G$halIntOn$0$0 ==.
                           000000  1375 	C$hal_int.c$30$0$0 ==.
                                   1376 ;	hal_int.c:30: void halIntOn( void ) {
                                   1377 ;	-----------------------------------------
                                   1378 ;	 function halIntOn
                                   1379 ;	-----------------------------------------
      000A68                       1380 _halIntOn:
                           000007  1381 	ar7 = 0x07
                           000006  1382 	ar6 = 0x06
                           000005  1383 	ar5 = 0x05
                           000004  1384 	ar4 = 0x04
                           000003  1385 	ar3 = 0x03
                           000002  1386 	ar2 = 0x02
                           000001  1387 	ar1 = 0x01
                           000000  1388 	ar0 = 0x00
                           000000  1389 	C$hal_int.c$31$2$11 ==.
                                   1390 ;	hal_int.c:31: HAL_INT_ON( );
      000A68 D2 AF            [12] 1391 	setb	_EA
                           000002  1392 	C$hal_int.c$32$1$10 ==.
                           000002  1393 	XG$halIntOn$0$0 ==.
      000A6A 22               [24] 1394 	ret
                                   1395 ;------------------------------------------------------------
                                   1396 ;Allocation info for local variables in function 'halIntOff'
                                   1397 ;------------------------------------------------------------
                           000003  1398 	G$halIntOff$0$0 ==.
                           000003  1399 	C$hal_int.c$44$1$10 ==.
                                   1400 ;	hal_int.c:44: void halIntOff( void ) {
                                   1401 ;	-----------------------------------------
                                   1402 ;	 function halIntOff
                                   1403 ;	-----------------------------------------
      000A6B                       1404 _halIntOff:
                           000003  1405 	C$hal_int.c$45$2$14 ==.
                                   1406 ;	hal_int.c:45: HAL_INT_OFF( );
      000A6B C2 AF            [12] 1407 	clr	_EA
                           000005  1408 	C$hal_int.c$46$1$13 ==.
                           000005  1409 	XG$halIntOff$0$0 ==.
      000A6D 22               [24] 1410 	ret
                                   1411 ;------------------------------------------------------------
                                   1412 ;Allocation info for local variables in function 'halIntLock'
                                   1413 ;------------------------------------------------------------
                                   1414 ;key                       Allocated with name '_halIntLock_key_1_16'
                                   1415 ;------------------------------------------------------------
                           000006  1416 	G$halIntLock$0$0 ==.
                           000006  1417 	C$hal_int.c$59$1$13 ==.
                                   1418 ;	hal_int.c:59: uint16_t halIntLock( void ) {
                                   1419 ;	-----------------------------------------
                                   1420 ;	 function halIntLock
                                   1421 ;	-----------------------------------------
      000A6E                       1422 _halIntLock:
                           000006  1423 	C$hal_int.c$61$2$17 ==.
                                   1424 ;	hal_int.c:61: HAL_INT_LOCK( key );
      000A6E A2 AF            [12] 1425 	mov	c,_EA
      000A70 E4               [12] 1426 	clr	a
      000A71 33               [12] 1427 	rlc	a
      000A72 FE               [12] 1428 	mov	r6,a
      000A73 7F 00            [12] 1429 	mov	r7,#0x00
      000A75 C2 AF            [12] 1430 	clr	_EA
                           00000F  1431 	C$hal_int.c$62$1$16 ==.
                                   1432 ;	hal_int.c:62: return( key );
      000A77 8E 82            [24] 1433 	mov	dpl,r6
      000A79 8F 83            [24] 1434 	mov	dph,r7
                           000013  1435 	C$hal_int.c$63$1$16 ==.
                           000013  1436 	XG$halIntLock$0$0 ==.
      000A7B 22               [24] 1437 	ret
                                   1438 ;------------------------------------------------------------
                                   1439 ;Allocation info for local variables in function 'halIntUnlock'
                                   1440 ;------------------------------------------------------------
                                   1441 ;key                       Allocated with name '_halIntUnlock_key_1_18'
                                   1442 ;------------------------------------------------------------
                           000014  1443 	G$halIntUnlock$0$0 ==.
                           000014  1444 	C$hal_int.c$76$1$16 ==.
                                   1445 ;	hal_int.c:76: void halIntUnlock( uint16_t key ) {
                                   1446 ;	-----------------------------------------
                                   1447 ;	 function halIntUnlock
                                   1448 ;	-----------------------------------------
      000A7C                       1449 _halIntUnlock:
      000A7C AF 83            [24] 1450 	mov	r7,dph
      000A7E E5 82            [12] 1451 	mov	a,dpl
      000A80 90 02 3D         [24] 1452 	mov	dptr,#_halIntUnlock_key_1_18
      000A83 F0               [24] 1453 	movx	@dptr,a
      000A84 EF               [12] 1454 	mov	a,r7
      000A85 A3               [24] 1455 	inc	dptr
      000A86 F0               [24] 1456 	movx	@dptr,a
                           00001F  1457 	C$hal_int.c$77$2$20 ==.
                                   1458 ;	hal_int.c:77: HAL_INT_UNLOCK( key );
      000A87 90 02 3D         [24] 1459 	mov	dptr,#_halIntUnlock_key_1_18
      000A8A E0               [24] 1460 	movx	a,@dptr
      000A8B FE               [12] 1461 	mov	r6,a
      000A8C A3               [24] 1462 	inc	dptr
      000A8D E0               [24] 1463 	movx	a,@dptr
      000A8E 4E               [12] 1464 	orl	a,r6
      000A8F 24 FF            [12] 1465 	add	a,#0xff
      000A91 92 AF            [24] 1466 	mov	_EA,c
                           00002B  1467 	C$hal_int.c$78$1$19 ==.
                           00002B  1468 	XG$halIntUnlock$0$0 ==.
      000A93 22               [24] 1469 	ret
                                   1470 	.area CSEG    (CODE)
                                   1471 	.area CONST   (CODE)
                                   1472 	.area XINIT   (CODE)
                                   1473 	.area CABS    (ABS,CODE)
