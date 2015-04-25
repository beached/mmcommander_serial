                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
                                      4 ; This file was generated Sat Apr 25 00:05:14 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module util_buffer
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _halIntUnlock
                                     13 	.globl _halIntLock
                                     14 	.globl _MODE
                                     15 	.globl _RE
                                     16 	.globl _SLAVE
                                     17 	.globl _FE
                                     18 	.globl _ERR
                                     19 	.globl _RX_BYTE
                                     20 	.globl _TX_BYTE
                                     21 	.globl _ACTIVE
                                     22 	.globl _B_7
                                     23 	.globl _B_6
                                     24 	.globl _B_5
                                     25 	.globl _B_4
                                     26 	.globl _B_3
                                     27 	.globl _B_2
                                     28 	.globl _B_1
                                     29 	.globl _B_0
                                     30 	.globl _WDTIF
                                     31 	.globl _P1IF
                                     32 	.globl _UTX1IF
                                     33 	.globl _UTX0IF
                                     34 	.globl _P2IF
                                     35 	.globl _ACC_7
                                     36 	.globl _ACC_6
                                     37 	.globl _ACC_5
                                     38 	.globl _ACC_4
                                     39 	.globl _ACC_3
                                     40 	.globl _ACC_2
                                     41 	.globl _ACC_1
                                     42 	.globl _ACC_0
                                     43 	.globl _OVFIM
                                     44 	.globl _T4CH1IF
                                     45 	.globl _T4CH0IF
                                     46 	.globl _T4OVFIF
                                     47 	.globl _T3CH1IF
                                     48 	.globl _T3CH0IF
                                     49 	.globl _T3OVFIF
                                     50 	.globl _CY
                                     51 	.globl _AC
                                     52 	.globl _F0
                                     53 	.globl _RS1
                                     54 	.globl _RS0
                                     55 	.globl _OV
                                     56 	.globl _F1
                                     57 	.globl _P
                                     58 	.globl _STIF
                                     59 	.globl _P0IF
                                     60 	.globl _T4IF
                                     61 	.globl _T3IF
                                     62 	.globl _T2IF
                                     63 	.globl _T1IF
                                     64 	.globl _DMAIF
                                     65 	.globl _P0IE
                                     66 	.globl _T4IE
                                     67 	.globl _T3IE
                                     68 	.globl _T2IE
                                     69 	.globl _T1IE
                                     70 	.globl _DMAIE
                                     71 	.globl _EA
                                     72 	.globl _STIE
                                     73 	.globl _ENCIE
                                     74 	.globl _URX1IE
                                     75 	.globl _URX0IE
                                     76 	.globl _ADCIE
                                     77 	.globl _RFTXRXIE
                                     78 	.globl _P2_7
                                     79 	.globl _P2_6
                                     80 	.globl _P2_5
                                     81 	.globl _P2_4
                                     82 	.globl _P2_3
                                     83 	.globl _P2_2
                                     84 	.globl _P2_1
                                     85 	.globl _P2_0
                                     86 	.globl _ENCIF_1
                                     87 	.globl _ENCIF_0
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _URX1IF
                                     97 	.globl _ADCIF
                                     98 	.globl _URX0IF
                                     99 	.globl _IT1
                                    100 	.globl _RFTXRXIF
                                    101 	.globl _IT0
                                    102 	.globl _P0_7
                                    103 	.globl _P0_6
                                    104 	.globl _P0_5
                                    105 	.globl _P0_4
                                    106 	.globl _P0_3
                                    107 	.globl _P0_2
                                    108 	.globl _P0_1
                                    109 	.globl _P0_0
                                    110 	.globl _P2DIR
                                    111 	.globl _P1DIR
                                    112 	.globl _P0DIR
                                    113 	.globl _U1GCR
                                    114 	.globl _U1UCR
                                    115 	.globl _U1BAUD
                                    116 	.globl _U1DBUF
                                    117 	.globl _U1CSR
                                    118 	.globl _P2INP
                                    119 	.globl _P1INP
                                    120 	.globl _P2SEL
                                    121 	.globl _P1SEL
                                    122 	.globl _P0SEL
                                    123 	.globl _ADCCFG
                                    124 	.globl _PERCFG
                                    125 	.globl _B
                                    126 	.globl _T4CC1
                                    127 	.globl _T4CCTL1
                                    128 	.globl _T4CC0
                                    129 	.globl _T4CCTL0
                                    130 	.globl _T4CTL
                                    131 	.globl _T4CNT
                                    132 	.globl _RFIF
                                    133 	.globl _IRCON2
                                    134 	.globl _T1CCTL2
                                    135 	.globl _T1CCTL1
                                    136 	.globl _T1CCTL0
                                    137 	.globl _T1CTL
                                    138 	.globl _T1CNTH
                                    139 	.globl _T1CNTL
                                    140 	.globl _RFST
                                    141 	.globl _ACC
                                    142 	.globl _T1CC2H
                                    143 	.globl _T1CC2L
                                    144 	.globl _T1CC1H
                                    145 	.globl _T1CC1L
                                    146 	.globl _T1CC0H
                                    147 	.globl _T1CC0L
                                    148 	.globl _RFD
                                    149 	.globl _TIMIF
                                    150 	.globl _DMAREQ
                                    151 	.globl _DMAARM
                                    152 	.globl _DMA0CFGH
                                    153 	.globl _DMA0CFGL
                                    154 	.globl _DMA1CFGH
                                    155 	.globl _DMA1CFGL
                                    156 	.globl _DMAIRQ
                                    157 	.globl _PSW
                                    158 	.globl _T3CC1
                                    159 	.globl _T3CCTL1
                                    160 	.globl _T3CC0
                                    161 	.globl _T3CCTL0
                                    162 	.globl _T3CTL
                                    163 	.globl _T3CNT
                                    164 	.globl _WDCTL
                                    165 	.globl __SFRC8
                                    166 	.globl _MEMCTR
                                    167 	.globl _CLKCON
                                    168 	.globl _U0GCR
                                    169 	.globl _U0UCR
                                    170 	.globl __SFRC3
                                    171 	.globl _U0BAUD
                                    172 	.globl _U0DBUF
                                    173 	.globl _IRCON
                                    174 	.globl __SFRBF
                                    175 	.globl _SLEEP
                                    176 	.globl _RNDH
                                    177 	.globl _RNDL
                                    178 	.globl _ADCH
                                    179 	.globl _ADCL
                                    180 	.globl _IP1
                                    181 	.globl _IEN1
                                    182 	.globl __SFRB7
                                    183 	.globl _ADCCON3
                                    184 	.globl _ADCCON2
                                    185 	.globl _ADCCON1
                                    186 	.globl _ENCCS
                                    187 	.globl _ENCDO
                                    188 	.globl _ENCDI
                                    189 	.globl __SFRB0
                                    190 	.globl _FWDATA
                                    191 	.globl _FCTL
                                    192 	.globl _FADDRH
                                    193 	.globl _FADDRL
                                    194 	.globl _FWT
                                    195 	.globl __SFRAA
                                    196 	.globl _IP0
                                    197 	.globl _IEN0
                                    198 	.globl __SFRA7
                                    199 	.globl _WORTIME1
                                    200 	.globl _WORTIME0
                                    201 	.globl _WOREVT1
                                    202 	.globl _WOREVT0
                                    203 	.globl _WORCTRL
                                    204 	.globl _WORIRQ
                                    205 	.globl _P2
                                    206 	.globl __SFR9F
                                    207 	.globl _T2CTL
                                    208 	.globl _T2PR
                                    209 	.globl _T2CT
                                    210 	.globl _S1CON
                                    211 	.globl _IEN2
                                    212 	.globl __SFR99
                                    213 	.globl _S0CON
                                    214 	.globl __SFR97
                                    215 	.globl __SFR96
                                    216 	.globl __SFR95
                                    217 	.globl __SFR94
                                    218 	.globl __XPAGE
                                    219 	.globl _MPAGE
                                    220 	.globl _DPS
                                    221 	.globl _RFIM
                                    222 	.globl _P1
                                    223 	.globl _P0INP
                                    224 	.globl __SFR8E
                                    225 	.globl _P1IEN
                                    226 	.globl _PICTL
                                    227 	.globl _P2IFG
                                    228 	.globl _P1IFG
                                    229 	.globl _P0IFG
                                    230 	.globl _TCON
                                    231 	.globl _PCON
                                    232 	.globl _U0CSR
                                    233 	.globl _DPH1
                                    234 	.globl _DPL1
                                    235 	.globl _DPH0
                                    236 	.globl _DPL0
                                    237 	.globl _SP
                                    238 	.globl _P0
                                    239 	.globl _bufPeek_PARM_3
                                    240 	.globl _bufPeek_PARM_2
                                    241 	.globl _bufGet_PARM_3
                                    242 	.globl _bufGet_PARM_2
                                    243 	.globl _bufPut_PARM_3
                                    244 	.globl _bufPut_PARM_2
                                    245 	.globl _X_P2DIR
                                    246 	.globl _X_P1DIR
                                    247 	.globl _X_P0DIR
                                    248 	.globl _X_U1GCR
                                    249 	.globl _X_U1UCR
                                    250 	.globl _X_U1BAUD
                                    251 	.globl _X_U1DBUF
                                    252 	.globl _X_U1CSR
                                    253 	.globl _X_P2INP
                                    254 	.globl _X_P1INP
                                    255 	.globl _X_P2SEL
                                    256 	.globl _X_P1SEL
                                    257 	.globl _X_P0SEL
                                    258 	.globl _X_ADCCFG
                                    259 	.globl _X_PERCFG
                                    260 	.globl __NA_B
                                    261 	.globl _X_T4CC1
                                    262 	.globl _X_T4CCTL1
                                    263 	.globl _X_T4CC0
                                    264 	.globl _X_T4CCTL0
                                    265 	.globl _X_T4CTL
                                    266 	.globl _X_T4CNT
                                    267 	.globl _X_RFIF
                                    268 	.globl __NA_IRCON2
                                    269 	.globl _X_T1CCTL2
                                    270 	.globl _X_T1CCTL1
                                    271 	.globl _X_T1CCTL0
                                    272 	.globl _X_T1CTL
                                    273 	.globl _X_T1CNTH
                                    274 	.globl _X_T1CNTL
                                    275 	.globl _X_RFST
                                    276 	.globl __NA_ACC
                                    277 	.globl _X_T1CC2H
                                    278 	.globl _X_T1CC2L
                                    279 	.globl _X_T1CC1H
                                    280 	.globl _X_T1CC1L
                                    281 	.globl _X_T1CC0H
                                    282 	.globl _X_T1CC0L
                                    283 	.globl _X_RFD
                                    284 	.globl _X_TIMIF
                                    285 	.globl _X_DMAREQ
                                    286 	.globl _X_DMAARM
                                    287 	.globl _X_DMA0CFGH
                                    288 	.globl _X_DMA0CFGL
                                    289 	.globl _X_DMA1CFGH
                                    290 	.globl _X_DMA1CFGL
                                    291 	.globl _X_DMAIRQ
                                    292 	.globl __NA_PSW
                                    293 	.globl _X_T3CC1
                                    294 	.globl _X_T3CCTL1
                                    295 	.globl _X_T3CC0
                                    296 	.globl _X_T3CCTL0
                                    297 	.globl _X_T3CTL
                                    298 	.globl _X_T3CNT
                                    299 	.globl _X_WDCTL
                                    300 	.globl __X_SFRC8
                                    301 	.globl _X_MEMCTR
                                    302 	.globl _X_CLKCON
                                    303 	.globl _X_U0GCR
                                    304 	.globl _X_U0UCR
                                    305 	.globl __X_SFRC3
                                    306 	.globl _X_U0BAUD
                                    307 	.globl _X_U0DBUF
                                    308 	.globl __NA_IRCON
                                    309 	.globl __X_SFRBF
                                    310 	.globl _X_SLEEP
                                    311 	.globl _X_RNDH
                                    312 	.globl _X_RNDL
                                    313 	.globl _X_ADCH
                                    314 	.globl _X_ADCL
                                    315 	.globl __NA_IP1
                                    316 	.globl __NA_IEN1
                                    317 	.globl __X_SFRB7
                                    318 	.globl _X_ADCCON3
                                    319 	.globl _X_ADCCON2
                                    320 	.globl _X_ADCCON1
                                    321 	.globl _X_ENCCS
                                    322 	.globl _X_ENCDO
                                    323 	.globl _X_ENCDI
                                    324 	.globl __X_SFRB0
                                    325 	.globl _X_FWDATA
                                    326 	.globl _X_FCTL
                                    327 	.globl _X_FADDRH
                                    328 	.globl _X_FADDRL
                                    329 	.globl _X_FWT
                                    330 	.globl __X_SFRAA
                                    331 	.globl __NA_IP0
                                    332 	.globl __NA_IEN0
                                    333 	.globl __X_SFRA7
                                    334 	.globl _X_WORTIME1
                                    335 	.globl _X_WORTIME0
                                    336 	.globl _X_WOREVT1
                                    337 	.globl _X_WOREVT0
                                    338 	.globl _X_WORCTRL
                                    339 	.globl _X_WORIRQ
                                    340 	.globl __NA_P2
                                    341 	.globl __X_SFR9F
                                    342 	.globl _X_T2CTL
                                    343 	.globl _X_T2PR
                                    344 	.globl _X_T2CT
                                    345 	.globl __NA_S1CON
                                    346 	.globl __NA_IEN2
                                    347 	.globl __X_SFR99
                                    348 	.globl __NA_S0CON
                                    349 	.globl __X_SFR97
                                    350 	.globl __X_SFR96
                                    351 	.globl __X_SFR95
                                    352 	.globl __X_SFR94
                                    353 	.globl _X_MPAGE
                                    354 	.globl __NA_DPS
                                    355 	.globl _X_RFIM
                                    356 	.globl __NA_P1
                                    357 	.globl _X_P0INP
                                    358 	.globl __X_SFR8E
                                    359 	.globl _X_P1IEN
                                    360 	.globl _X_PICTL
                                    361 	.globl _X_P2IFG
                                    362 	.globl _X_P1IFG
                                    363 	.globl _X_P0IFG
                                    364 	.globl __NA_TCON
                                    365 	.globl __NA_PCON
                                    366 	.globl _X_U0CSR
                                    367 	.globl __NA_DPH1
                                    368 	.globl __NA_DPL1
                                    369 	.globl __NA_DPH0
                                    370 	.globl __NA_DPL0
                                    371 	.globl __NA_SP
                                    372 	.globl __NA_P0
                                    373 	.globl _I2SCLKF2
                                    374 	.globl _I2SCLKF1
                                    375 	.globl _I2SCLKF0
                                    376 	.globl _I2SSTAT
                                    377 	.globl _I2SWCNT
                                    378 	.globl _I2SDATH
                                    379 	.globl _I2SDATL
                                    380 	.globl _I2SCFG1
                                    381 	.globl _I2SCFG0
                                    382 	.globl _VCO_VC_DAC
                                    383 	.globl _PKTSTATUS
                                    384 	.globl _MARCSTATE
                                    385 	.globl _RSSI
                                    386 	.globl _LQI
                                    387 	.globl _FREQEST
                                    388 	.globl _VERSION
                                    389 	.globl _PARTNUM
                                    390 	.globl __XREGDF35
                                    391 	.globl __XREGDF34
                                    392 	.globl __XREGDF33
                                    393 	.globl __XREGDF32
                                    394 	.globl _IOCFG0
                                    395 	.globl _IOCFG1
                                    396 	.globl _IOCFG2
                                    397 	.globl _PA_TABLE0
                                    398 	.globl _PA_TABLE1
                                    399 	.globl _PA_TABLE2
                                    400 	.globl _PA_TABLE3
                                    401 	.globl _PA_TABLE4
                                    402 	.globl _PA_TABLE5
                                    403 	.globl _PA_TABLE6
                                    404 	.globl _PA_TABLE7
                                    405 	.globl __XREGDF26
                                    406 	.globl _TEST0
                                    407 	.globl _TEST1
                                    408 	.globl _TEST2
                                    409 	.globl __XREGDF22
                                    410 	.globl __XREGDF21
                                    411 	.globl __XREGDF20
                                    412 	.globl _FSCAL0
                                    413 	.globl _FSCAL1
                                    414 	.globl _FSCAL2
                                    415 	.globl _FSCAL3
                                    416 	.globl _FREND0
                                    417 	.globl _FREND1
                                    418 	.globl _AGCCTRL0
                                    419 	.globl _AGCCTRL1
                                    420 	.globl _AGCCTRL2
                                    421 	.globl _BSCFG
                                    422 	.globl _FOCCFG
                                    423 	.globl _MCSM0
                                    424 	.globl _MCSM1
                                    425 	.globl _MCSM2
                                    426 	.globl _DEVIATN
                                    427 	.globl _MDMCFG0
                                    428 	.globl _MDMCFG1
                                    429 	.globl _MDMCFG2
                                    430 	.globl _MDMCFG3
                                    431 	.globl _MDMCFG4
                                    432 	.globl _FREQ0
                                    433 	.globl _FREQ1
                                    434 	.globl _FREQ2
                                    435 	.globl _FSCTRL0
                                    436 	.globl _FSCTRL1
                                    437 	.globl _CHANNR
                                    438 	.globl _ADDR
                                    439 	.globl _PKTCTRL0
                                    440 	.globl _PKTCTRL1
                                    441 	.globl _PKTLEN
                                    442 	.globl _SYNC0
                                    443 	.globl _SYNC1
                                    444 	.globl _MDMCTRL0H
                                    445 	.globl _bufInit
                                    446 	.globl _bufPut
                                    447 	.globl _bufGet
                                    448 	.globl _bufPeek
                                    449 	.globl _bufNumBytes
                                    450 ;--------------------------------------------------------
                                    451 ; special function registers
                                    452 ;--------------------------------------------------------
                                    453 	.area RSEG    (ABS,DATA)
      000000                        454 	.org 0x0000
                           000080   455 G$P0$0$0 == 0x0080
                           000080   456 _P0	=	0x0080
                           000081   457 G$SP$0$0 == 0x0081
                           000081   458 _SP	=	0x0081
                           000082   459 G$DPL0$0$0 == 0x0082
                           000082   460 _DPL0	=	0x0082
                           000083   461 G$DPH0$0$0 == 0x0083
                           000083   462 _DPH0	=	0x0083
                           000084   463 G$DPL1$0$0 == 0x0084
                           000084   464 _DPL1	=	0x0084
                           000085   465 G$DPH1$0$0 == 0x0085
                           000085   466 _DPH1	=	0x0085
                           000086   467 G$U0CSR$0$0 == 0x0086
                           000086   468 _U0CSR	=	0x0086
                           000087   469 G$PCON$0$0 == 0x0087
                           000087   470 _PCON	=	0x0087
                           000088   471 G$TCON$0$0 == 0x0088
                           000088   472 _TCON	=	0x0088
                           000089   473 G$P0IFG$0$0 == 0x0089
                           000089   474 _P0IFG	=	0x0089
                           00008A   475 G$P1IFG$0$0 == 0x008a
                           00008A   476 _P1IFG	=	0x008a
                           00008B   477 G$P2IFG$0$0 == 0x008b
                           00008B   478 _P2IFG	=	0x008b
                           00008C   479 G$PICTL$0$0 == 0x008c
                           00008C   480 _PICTL	=	0x008c
                           00008D   481 G$P1IEN$0$0 == 0x008d
                           00008D   482 _P1IEN	=	0x008d
                           00008E   483 G$_SFR8E$0$0 == 0x008e
                           00008E   484 __SFR8E	=	0x008e
                           00008F   485 G$P0INP$0$0 == 0x008f
                           00008F   486 _P0INP	=	0x008f
                           000090   487 G$P1$0$0 == 0x0090
                           000090   488 _P1	=	0x0090
                           000091   489 G$RFIM$0$0 == 0x0091
                           000091   490 _RFIM	=	0x0091
                           000092   491 G$DPS$0$0 == 0x0092
                           000092   492 _DPS	=	0x0092
                           000093   493 G$MPAGE$0$0 == 0x0093
                           000093   494 _MPAGE	=	0x0093
                           000093   495 G$_XPAGE$0$0 == 0x0093
                           000093   496 __XPAGE	=	0x0093
                           000094   497 G$_SFR94$0$0 == 0x0094
                           000094   498 __SFR94	=	0x0094
                           000095   499 G$_SFR95$0$0 == 0x0095
                           000095   500 __SFR95	=	0x0095
                           000096   501 G$_SFR96$0$0 == 0x0096
                           000096   502 __SFR96	=	0x0096
                           000097   503 G$_SFR97$0$0 == 0x0097
                           000097   504 __SFR97	=	0x0097
                           000098   505 G$S0CON$0$0 == 0x0098
                           000098   506 _S0CON	=	0x0098
                           000099   507 G$_SFR99$0$0 == 0x0099
                           000099   508 __SFR99	=	0x0099
                           00009A   509 G$IEN2$0$0 == 0x009a
                           00009A   510 _IEN2	=	0x009a
                           00009B   511 G$S1CON$0$0 == 0x009b
                           00009B   512 _S1CON	=	0x009b
                           00009C   513 G$T2CT$0$0 == 0x009c
                           00009C   514 _T2CT	=	0x009c
                           00009D   515 G$T2PR$0$0 == 0x009d
                           00009D   516 _T2PR	=	0x009d
                           00009E   517 G$T2CTL$0$0 == 0x009e
                           00009E   518 _T2CTL	=	0x009e
                           00009F   519 G$_SFR9F$0$0 == 0x009f
                           00009F   520 __SFR9F	=	0x009f
                           0000A0   521 G$P2$0$0 == 0x00a0
                           0000A0   522 _P2	=	0x00a0
                           0000A1   523 G$WORIRQ$0$0 == 0x00a1
                           0000A1   524 _WORIRQ	=	0x00a1
                           0000A2   525 G$WORCTRL$0$0 == 0x00a2
                           0000A2   526 _WORCTRL	=	0x00a2
                           0000A3   527 G$WOREVT0$0$0 == 0x00a3
                           0000A3   528 _WOREVT0	=	0x00a3
                           0000A4   529 G$WOREVT1$0$0 == 0x00a4
                           0000A4   530 _WOREVT1	=	0x00a4
                           0000A5   531 G$WORTIME0$0$0 == 0x00a5
                           0000A5   532 _WORTIME0	=	0x00a5
                           0000A6   533 G$WORTIME1$0$0 == 0x00a6
                           0000A6   534 _WORTIME1	=	0x00a6
                           0000A7   535 G$_SFRA7$0$0 == 0x00a7
                           0000A7   536 __SFRA7	=	0x00a7
                           0000A8   537 G$IEN0$0$0 == 0x00a8
                           0000A8   538 _IEN0	=	0x00a8
                           0000A9   539 G$IP0$0$0 == 0x00a9
                           0000A9   540 _IP0	=	0x00a9
                           0000AA   541 G$_SFRAA$0$0 == 0x00aa
                           0000AA   542 __SFRAA	=	0x00aa
                           0000AB   543 G$FWT$0$0 == 0x00ab
                           0000AB   544 _FWT	=	0x00ab
                           0000AC   545 G$FADDRL$0$0 == 0x00ac
                           0000AC   546 _FADDRL	=	0x00ac
                           0000AD   547 G$FADDRH$0$0 == 0x00ad
                           0000AD   548 _FADDRH	=	0x00ad
                           0000AE   549 G$FCTL$0$0 == 0x00ae
                           0000AE   550 _FCTL	=	0x00ae
                           0000AF   551 G$FWDATA$0$0 == 0x00af
                           0000AF   552 _FWDATA	=	0x00af
                           0000B0   553 G$_SFRB0$0$0 == 0x00b0
                           0000B0   554 __SFRB0	=	0x00b0
                           0000B1   555 G$ENCDI$0$0 == 0x00b1
                           0000B1   556 _ENCDI	=	0x00b1
                           0000B2   557 G$ENCDO$0$0 == 0x00b2
                           0000B2   558 _ENCDO	=	0x00b2
                           0000B3   559 G$ENCCS$0$0 == 0x00b3
                           0000B3   560 _ENCCS	=	0x00b3
                           0000B4   561 G$ADCCON1$0$0 == 0x00b4
                           0000B4   562 _ADCCON1	=	0x00b4
                           0000B5   563 G$ADCCON2$0$0 == 0x00b5
                           0000B5   564 _ADCCON2	=	0x00b5
                           0000B6   565 G$ADCCON3$0$0 == 0x00b6
                           0000B6   566 _ADCCON3	=	0x00b6
                           0000B7   567 G$_SFRB7$0$0 == 0x00b7
                           0000B7   568 __SFRB7	=	0x00b7
                           0000B8   569 G$IEN1$0$0 == 0x00b8
                           0000B8   570 _IEN1	=	0x00b8
                           0000B9   571 G$IP1$0$0 == 0x00b9
                           0000B9   572 _IP1	=	0x00b9
                           0000BA   573 G$ADCL$0$0 == 0x00ba
                           0000BA   574 _ADCL	=	0x00ba
                           0000BB   575 G$ADCH$0$0 == 0x00bb
                           0000BB   576 _ADCH	=	0x00bb
                           0000BC   577 G$RNDL$0$0 == 0x00bc
                           0000BC   578 _RNDL	=	0x00bc
                           0000BD   579 G$RNDH$0$0 == 0x00bd
                           0000BD   580 _RNDH	=	0x00bd
                           0000BE   581 G$SLEEP$0$0 == 0x00be
                           0000BE   582 _SLEEP	=	0x00be
                           0000BF   583 G$_SFRBF$0$0 == 0x00bf
                           0000BF   584 __SFRBF	=	0x00bf
                           0000C0   585 G$IRCON$0$0 == 0x00c0
                           0000C0   586 _IRCON	=	0x00c0
                           0000C1   587 G$U0DBUF$0$0 == 0x00c1
                           0000C1   588 _U0DBUF	=	0x00c1
                           0000C2   589 G$U0BAUD$0$0 == 0x00c2
                           0000C2   590 _U0BAUD	=	0x00c2
                           0000C3   591 G$_SFRC3$0$0 == 0x00c3
                           0000C3   592 __SFRC3	=	0x00c3
                           0000C4   593 G$U0UCR$0$0 == 0x00c4
                           0000C4   594 _U0UCR	=	0x00c4
                           0000C5   595 G$U0GCR$0$0 == 0x00c5
                           0000C5   596 _U0GCR	=	0x00c5
                           0000C6   597 G$CLKCON$0$0 == 0x00c6
                           0000C6   598 _CLKCON	=	0x00c6
                           0000C7   599 G$MEMCTR$0$0 == 0x00c7
                           0000C7   600 _MEMCTR	=	0x00c7
                           0000C8   601 G$_SFRC8$0$0 == 0x00c8
                           0000C8   602 __SFRC8	=	0x00c8
                           0000C9   603 G$WDCTL$0$0 == 0x00c9
                           0000C9   604 _WDCTL	=	0x00c9
                           0000CA   605 G$T3CNT$0$0 == 0x00ca
                           0000CA   606 _T3CNT	=	0x00ca
                           0000CB   607 G$T3CTL$0$0 == 0x00cb
                           0000CB   608 _T3CTL	=	0x00cb
                           0000CC   609 G$T3CCTL0$0$0 == 0x00cc
                           0000CC   610 _T3CCTL0	=	0x00cc
                           0000CD   611 G$T3CC0$0$0 == 0x00cd
                           0000CD   612 _T3CC0	=	0x00cd
                           0000CE   613 G$T3CCTL1$0$0 == 0x00ce
                           0000CE   614 _T3CCTL1	=	0x00ce
                           0000CF   615 G$T3CC1$0$0 == 0x00cf
                           0000CF   616 _T3CC1	=	0x00cf
                           0000D0   617 G$PSW$0$0 == 0x00d0
                           0000D0   618 _PSW	=	0x00d0
                           0000D1   619 G$DMAIRQ$0$0 == 0x00d1
                           0000D1   620 _DMAIRQ	=	0x00d1
                           0000D2   621 G$DMA1CFGL$0$0 == 0x00d2
                           0000D2   622 _DMA1CFGL	=	0x00d2
                           0000D3   623 G$DMA1CFGH$0$0 == 0x00d3
                           0000D3   624 _DMA1CFGH	=	0x00d3
                           0000D4   625 G$DMA0CFGL$0$0 == 0x00d4
                           0000D4   626 _DMA0CFGL	=	0x00d4
                           0000D5   627 G$DMA0CFGH$0$0 == 0x00d5
                           0000D5   628 _DMA0CFGH	=	0x00d5
                           0000D6   629 G$DMAARM$0$0 == 0x00d6
                           0000D6   630 _DMAARM	=	0x00d6
                           0000D7   631 G$DMAREQ$0$0 == 0x00d7
                           0000D7   632 _DMAREQ	=	0x00d7
                           0000D8   633 G$TIMIF$0$0 == 0x00d8
                           0000D8   634 _TIMIF	=	0x00d8
                           0000D9   635 G$RFD$0$0 == 0x00d9
                           0000D9   636 _RFD	=	0x00d9
                           0000DA   637 G$T1CC0L$0$0 == 0x00da
                           0000DA   638 _T1CC0L	=	0x00da
                           0000DB   639 G$T1CC0H$0$0 == 0x00db
                           0000DB   640 _T1CC0H	=	0x00db
                           0000DC   641 G$T1CC1L$0$0 == 0x00dc
                           0000DC   642 _T1CC1L	=	0x00dc
                           0000DD   643 G$T1CC1H$0$0 == 0x00dd
                           0000DD   644 _T1CC1H	=	0x00dd
                           0000DE   645 G$T1CC2L$0$0 == 0x00de
                           0000DE   646 _T1CC2L	=	0x00de
                           0000DF   647 G$T1CC2H$0$0 == 0x00df
                           0000DF   648 _T1CC2H	=	0x00df
                           0000E0   649 G$ACC$0$0 == 0x00e0
                           0000E0   650 _ACC	=	0x00e0
                           0000E1   651 G$RFST$0$0 == 0x00e1
                           0000E1   652 _RFST	=	0x00e1
                           0000E2   653 G$T1CNTL$0$0 == 0x00e2
                           0000E2   654 _T1CNTL	=	0x00e2
                           0000E3   655 G$T1CNTH$0$0 == 0x00e3
                           0000E3   656 _T1CNTH	=	0x00e3
                           0000E4   657 G$T1CTL$0$0 == 0x00e4
                           0000E4   658 _T1CTL	=	0x00e4
                           0000E5   659 G$T1CCTL0$0$0 == 0x00e5
                           0000E5   660 _T1CCTL0	=	0x00e5
                           0000E6   661 G$T1CCTL1$0$0 == 0x00e6
                           0000E6   662 _T1CCTL1	=	0x00e6
                           0000E7   663 G$T1CCTL2$0$0 == 0x00e7
                           0000E7   664 _T1CCTL2	=	0x00e7
                           0000E8   665 G$IRCON2$0$0 == 0x00e8
                           0000E8   666 _IRCON2	=	0x00e8
                           0000E9   667 G$RFIF$0$0 == 0x00e9
                           0000E9   668 _RFIF	=	0x00e9
                           0000EA   669 G$T4CNT$0$0 == 0x00ea
                           0000EA   670 _T4CNT	=	0x00ea
                           0000EB   671 G$T4CTL$0$0 == 0x00eb
                           0000EB   672 _T4CTL	=	0x00eb
                           0000EC   673 G$T4CCTL0$0$0 == 0x00ec
                           0000EC   674 _T4CCTL0	=	0x00ec
                           0000ED   675 G$T4CC0$0$0 == 0x00ed
                           0000ED   676 _T4CC0	=	0x00ed
                           0000EE   677 G$T4CCTL1$0$0 == 0x00ee
                           0000EE   678 _T4CCTL1	=	0x00ee
                           0000EF   679 G$T4CC1$0$0 == 0x00ef
                           0000EF   680 _T4CC1	=	0x00ef
                           0000F0   681 G$B$0$0 == 0x00f0
                           0000F0   682 _B	=	0x00f0
                           0000F1   683 G$PERCFG$0$0 == 0x00f1
                           0000F1   684 _PERCFG	=	0x00f1
                           0000F2   685 G$ADCCFG$0$0 == 0x00f2
                           0000F2   686 _ADCCFG	=	0x00f2
                           0000F3   687 G$P0SEL$0$0 == 0x00f3
                           0000F3   688 _P0SEL	=	0x00f3
                           0000F4   689 G$P1SEL$0$0 == 0x00f4
                           0000F4   690 _P1SEL	=	0x00f4
                           0000F5   691 G$P2SEL$0$0 == 0x00f5
                           0000F5   692 _P2SEL	=	0x00f5
                           0000F6   693 G$P1INP$0$0 == 0x00f6
                           0000F6   694 _P1INP	=	0x00f6
                           0000F7   695 G$P2INP$0$0 == 0x00f7
                           0000F7   696 _P2INP	=	0x00f7
                           0000F8   697 G$U1CSR$0$0 == 0x00f8
                           0000F8   698 _U1CSR	=	0x00f8
                           0000F9   699 G$U1DBUF$0$0 == 0x00f9
                           0000F9   700 _U1DBUF	=	0x00f9
                           0000FA   701 G$U1BAUD$0$0 == 0x00fa
                           0000FA   702 _U1BAUD	=	0x00fa
                           0000FB   703 G$U1UCR$0$0 == 0x00fb
                           0000FB   704 _U1UCR	=	0x00fb
                           0000FC   705 G$U1GCR$0$0 == 0x00fc
                           0000FC   706 _U1GCR	=	0x00fc
                           0000FD   707 G$P0DIR$0$0 == 0x00fd
                           0000FD   708 _P0DIR	=	0x00fd
                           0000FE   709 G$P1DIR$0$0 == 0x00fe
                           0000FE   710 _P1DIR	=	0x00fe
                           0000FF   711 G$P2DIR$0$0 == 0x00ff
                           0000FF   712 _P2DIR	=	0x00ff
                                    713 ;--------------------------------------------------------
                                    714 ; special function bits
                                    715 ;--------------------------------------------------------
                                    716 	.area RSEG    (ABS,DATA)
      000000                        717 	.org 0x0000
                           000080   718 G$P0_0$0$0 == 0x0080
                           000080   719 _P0_0	=	0x0080
                           000081   720 G$P0_1$0$0 == 0x0081
                           000081   721 _P0_1	=	0x0081
                           000082   722 G$P0_2$0$0 == 0x0082
                           000082   723 _P0_2	=	0x0082
                           000083   724 G$P0_3$0$0 == 0x0083
                           000083   725 _P0_3	=	0x0083
                           000084   726 G$P0_4$0$0 == 0x0084
                           000084   727 _P0_4	=	0x0084
                           000085   728 G$P0_5$0$0 == 0x0085
                           000085   729 _P0_5	=	0x0085
                           000086   730 G$P0_6$0$0 == 0x0086
                           000086   731 _P0_6	=	0x0086
                           000087   732 G$P0_7$0$0 == 0x0087
                           000087   733 _P0_7	=	0x0087
                           000088   734 G$IT0$0$0 == 0x0088
                           000088   735 _IT0	=	0x0088
                           000089   736 G$RFTXRXIF$0$0 == 0x0089
                           000089   737 _RFTXRXIF	=	0x0089
                           00008A   738 G$IT1$0$0 == 0x008a
                           00008A   739 _IT1	=	0x008a
                           00008B   740 G$URX0IF$0$0 == 0x008b
                           00008B   741 _URX0IF	=	0x008b
                           00008D   742 G$ADCIF$0$0 == 0x008d
                           00008D   743 _ADCIF	=	0x008d
                           00008F   744 G$URX1IF$0$0 == 0x008f
                           00008F   745 _URX1IF	=	0x008f
                           000090   746 G$P1_0$0$0 == 0x0090
                           000090   747 _P1_0	=	0x0090
                           000091   748 G$P1_1$0$0 == 0x0091
                           000091   749 _P1_1	=	0x0091
                           000092   750 G$P1_2$0$0 == 0x0092
                           000092   751 _P1_2	=	0x0092
                           000093   752 G$P1_3$0$0 == 0x0093
                           000093   753 _P1_3	=	0x0093
                           000094   754 G$P1_4$0$0 == 0x0094
                           000094   755 _P1_4	=	0x0094
                           000095   756 G$P1_5$0$0 == 0x0095
                           000095   757 _P1_5	=	0x0095
                           000096   758 G$P1_6$0$0 == 0x0096
                           000096   759 _P1_6	=	0x0096
                           000097   760 G$P1_7$0$0 == 0x0097
                           000097   761 _P1_7	=	0x0097
                           000098   762 G$ENCIF_0$0$0 == 0x0098
                           000098   763 _ENCIF_0	=	0x0098
                           000099   764 G$ENCIF_1$0$0 == 0x0099
                           000099   765 _ENCIF_1	=	0x0099
                           0000A0   766 G$P2_0$0$0 == 0x00a0
                           0000A0   767 _P2_0	=	0x00a0
                           0000A1   768 G$P2_1$0$0 == 0x00a1
                           0000A1   769 _P2_1	=	0x00a1
                           0000A2   770 G$P2_2$0$0 == 0x00a2
                           0000A2   771 _P2_2	=	0x00a2
                           0000A3   772 G$P2_3$0$0 == 0x00a3
                           0000A3   773 _P2_3	=	0x00a3
                           0000A4   774 G$P2_4$0$0 == 0x00a4
                           0000A4   775 _P2_4	=	0x00a4
                           0000A5   776 G$P2_5$0$0 == 0x00a5
                           0000A5   777 _P2_5	=	0x00a5
                           0000A6   778 G$P2_6$0$0 == 0x00a6
                           0000A6   779 _P2_6	=	0x00a6
                           0000A7   780 G$P2_7$0$0 == 0x00a7
                           0000A7   781 _P2_7	=	0x00a7
                           0000A8   782 G$RFTXRXIE$0$0 == 0x00a8
                           0000A8   783 _RFTXRXIE	=	0x00a8
                           0000A9   784 G$ADCIE$0$0 == 0x00a9
                           0000A9   785 _ADCIE	=	0x00a9
                           0000AA   786 G$URX0IE$0$0 == 0x00aa
                           0000AA   787 _URX0IE	=	0x00aa
                           0000AB   788 G$URX1IE$0$0 == 0x00ab
                           0000AB   789 _URX1IE	=	0x00ab
                           0000AC   790 G$ENCIE$0$0 == 0x00ac
                           0000AC   791 _ENCIE	=	0x00ac
                           0000AD   792 G$STIE$0$0 == 0x00ad
                           0000AD   793 _STIE	=	0x00ad
                           0000AF   794 G$EA$0$0 == 0x00af
                           0000AF   795 _EA	=	0x00af
                           0000B8   796 G$DMAIE$0$0 == 0x00b8
                           0000B8   797 _DMAIE	=	0x00b8
                           0000B9   798 G$T1IE$0$0 == 0x00b9
                           0000B9   799 _T1IE	=	0x00b9
                           0000BA   800 G$T2IE$0$0 == 0x00ba
                           0000BA   801 _T2IE	=	0x00ba
                           0000BB   802 G$T3IE$0$0 == 0x00bb
                           0000BB   803 _T3IE	=	0x00bb
                           0000BC   804 G$T4IE$0$0 == 0x00bc
                           0000BC   805 _T4IE	=	0x00bc
                           0000BD   806 G$P0IE$0$0 == 0x00bd
                           0000BD   807 _P0IE	=	0x00bd
                           0000C0   808 G$DMAIF$0$0 == 0x00c0
                           0000C0   809 _DMAIF	=	0x00c0
                           0000C1   810 G$T1IF$0$0 == 0x00c1
                           0000C1   811 _T1IF	=	0x00c1
                           0000C2   812 G$T2IF$0$0 == 0x00c2
                           0000C2   813 _T2IF	=	0x00c2
                           0000C3   814 G$T3IF$0$0 == 0x00c3
                           0000C3   815 _T3IF	=	0x00c3
                           0000C4   816 G$T4IF$0$0 == 0x00c4
                           0000C4   817 _T4IF	=	0x00c4
                           0000C5   818 G$P0IF$0$0 == 0x00c5
                           0000C5   819 _P0IF	=	0x00c5
                           0000C7   820 G$STIF$0$0 == 0x00c7
                           0000C7   821 _STIF	=	0x00c7
                           0000D0   822 G$P$0$0 == 0x00d0
                           0000D0   823 _P	=	0x00d0
                           0000D1   824 G$F1$0$0 == 0x00d1
                           0000D1   825 _F1	=	0x00d1
                           0000D2   826 G$OV$0$0 == 0x00d2
                           0000D2   827 _OV	=	0x00d2
                           0000D3   828 G$RS0$0$0 == 0x00d3
                           0000D3   829 _RS0	=	0x00d3
                           0000D4   830 G$RS1$0$0 == 0x00d4
                           0000D4   831 _RS1	=	0x00d4
                           0000D5   832 G$F0$0$0 == 0x00d5
                           0000D5   833 _F0	=	0x00d5
                           0000D6   834 G$AC$0$0 == 0x00d6
                           0000D6   835 _AC	=	0x00d6
                           0000D7   836 G$CY$0$0 == 0x00d7
                           0000D7   837 _CY	=	0x00d7
                           0000D8   838 G$T3OVFIF$0$0 == 0x00d8
                           0000D8   839 _T3OVFIF	=	0x00d8
                           0000D9   840 G$T3CH0IF$0$0 == 0x00d9
                           0000D9   841 _T3CH0IF	=	0x00d9
                           0000DA   842 G$T3CH1IF$0$0 == 0x00da
                           0000DA   843 _T3CH1IF	=	0x00da
                           0000DB   844 G$T4OVFIF$0$0 == 0x00db
                           0000DB   845 _T4OVFIF	=	0x00db
                           0000DC   846 G$T4CH0IF$0$0 == 0x00dc
                           0000DC   847 _T4CH0IF	=	0x00dc
                           0000DD   848 G$T4CH1IF$0$0 == 0x00dd
                           0000DD   849 _T4CH1IF	=	0x00dd
                           0000DE   850 G$OVFIM$0$0 == 0x00de
                           0000DE   851 _OVFIM	=	0x00de
                           0000E0   852 G$ACC_0$0$0 == 0x00e0
                           0000E0   853 _ACC_0	=	0x00e0
                           0000E1   854 G$ACC_1$0$0 == 0x00e1
                           0000E1   855 _ACC_1	=	0x00e1
                           0000E2   856 G$ACC_2$0$0 == 0x00e2
                           0000E2   857 _ACC_2	=	0x00e2
                           0000E3   858 G$ACC_3$0$0 == 0x00e3
                           0000E3   859 _ACC_3	=	0x00e3
                           0000E4   860 G$ACC_4$0$0 == 0x00e4
                           0000E4   861 _ACC_4	=	0x00e4
                           0000E5   862 G$ACC_5$0$0 == 0x00e5
                           0000E5   863 _ACC_5	=	0x00e5
                           0000E6   864 G$ACC_6$0$0 == 0x00e6
                           0000E6   865 _ACC_6	=	0x00e6
                           0000E7   866 G$ACC_7$0$0 == 0x00e7
                           0000E7   867 _ACC_7	=	0x00e7
                           0000E8   868 G$P2IF$0$0 == 0x00e8
                           0000E8   869 _P2IF	=	0x00e8
                           0000E9   870 G$UTX0IF$0$0 == 0x00e9
                           0000E9   871 _UTX0IF	=	0x00e9
                           0000EA   872 G$UTX1IF$0$0 == 0x00ea
                           0000EA   873 _UTX1IF	=	0x00ea
                           0000EB   874 G$P1IF$0$0 == 0x00eb
                           0000EB   875 _P1IF	=	0x00eb
                           0000EC   876 G$WDTIF$0$0 == 0x00ec
                           0000EC   877 _WDTIF	=	0x00ec
                           0000F0   878 G$B_0$0$0 == 0x00f0
                           0000F0   879 _B_0	=	0x00f0
                           0000F1   880 G$B_1$0$0 == 0x00f1
                           0000F1   881 _B_1	=	0x00f1
                           0000F2   882 G$B_2$0$0 == 0x00f2
                           0000F2   883 _B_2	=	0x00f2
                           0000F3   884 G$B_3$0$0 == 0x00f3
                           0000F3   885 _B_3	=	0x00f3
                           0000F4   886 G$B_4$0$0 == 0x00f4
                           0000F4   887 _B_4	=	0x00f4
                           0000F5   888 G$B_5$0$0 == 0x00f5
                           0000F5   889 _B_5	=	0x00f5
                           0000F6   890 G$B_6$0$0 == 0x00f6
                           0000F6   891 _B_6	=	0x00f6
                           0000F7   892 G$B_7$0$0 == 0x00f7
                           0000F7   893 _B_7	=	0x00f7
                           0000F8   894 G$ACTIVE$0$0 == 0x00f8
                           0000F8   895 _ACTIVE	=	0x00f8
                           0000F9   896 G$TX_BYTE$0$0 == 0x00f9
                           0000F9   897 _TX_BYTE	=	0x00f9
                           0000FA   898 G$RX_BYTE$0$0 == 0x00fa
                           0000FA   899 _RX_BYTE	=	0x00fa
                           0000FB   900 G$ERR$0$0 == 0x00fb
                           0000FB   901 _ERR	=	0x00fb
                           0000FC   902 G$FE$0$0 == 0x00fc
                           0000FC   903 _FE	=	0x00fc
                           0000FD   904 G$SLAVE$0$0 == 0x00fd
                           0000FD   905 _SLAVE	=	0x00fd
                           0000FE   906 G$RE$0$0 == 0x00fe
                           0000FE   907 _RE	=	0x00fe
                           0000FF   908 G$MODE$0$0 == 0x00ff
                           0000FF   909 _MODE	=	0x00ff
                                    910 ;--------------------------------------------------------
                                    911 ; overlayable register banks
                                    912 ;--------------------------------------------------------
                                    913 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        914 	.ds 8
                                    915 ;--------------------------------------------------------
                                    916 ; internal ram data
                                    917 ;--------------------------------------------------------
                                    918 	.area DSEG    (DATA)
                           000000   919 Lutil_buffer.bufPut$sloc0$1$0==.
      00003B                        920 _bufPut_sloc0_1_0:
      00003B                        921 	.ds 2
                           000002   922 Lutil_buffer.bufPut$sloc1$1$0==.
      00003D                        923 _bufPut_sloc1_1_0:
      00003D                        924 	.ds 1
                           000003   925 Lutil_buffer.bufPut$sloc2$1$0==.
      00003E                        926 _bufPut_sloc2_1_0:
      00003E                        927 	.ds 2
                           000005   928 Lutil_buffer.bufPut$sloc3$1$0==.
      000040                        929 _bufPut_sloc3_1_0:
      000040                        930 	.ds 3
                           000008   931 Lutil_buffer.bufPut$sloc4$1$0==.
      000043                        932 _bufPut_sloc4_1_0:
      000043                        933 	.ds 3
                           00000B   934 Lutil_buffer.bufPut$sloc5$1$0==.
      000046                        935 _bufPut_sloc5_1_0:
      000046                        936 	.ds 3
                           00000E   937 Lutil_buffer.bufGet$sloc0$1$0==.
      000049                        938 _bufGet_sloc0_1_0:
      000049                        939 	.ds 3
                           000011   940 Lutil_buffer.bufGet$sloc1$1$0==.
      00004C                        941 _bufGet_sloc1_1_0:
      00004C                        942 	.ds 3
                           000014   943 Lutil_buffer.bufGet$sloc2$1$0==.
      00004F                        944 _bufGet_sloc2_1_0:
      00004F                        945 	.ds 1
                           000015   946 Lutil_buffer.bufGet$sloc3$1$0==.
      000050                        947 _bufGet_sloc3_1_0:
      000050                        948 	.ds 3
                           000018   949 Lutil_buffer.bufPeek$sloc0$1$0==.
      000053                        950 _bufPeek_sloc0_1_0:
      000053                        951 	.ds 3
                           00001B   952 Lutil_buffer.bufPeek$sloc1$1$0==.
      000056                        953 _bufPeek_sloc1_1_0:
      000056                        954 	.ds 1
                           00001C   955 Lutil_buffer.bufPeek$sloc2$1$0==.
      000057                        956 _bufPeek_sloc2_1_0:
      000057                        957 	.ds 1
                           00001D   958 Lutil_buffer.bufPeek$sloc3$1$0==.
      000058                        959 _bufPeek_sloc3_1_0:
      000058                        960 	.ds 3
                           000020   961 Lutil_buffer.bufPeek$sloc4$1$0==.
      00005B                        962 _bufPeek_sloc4_1_0:
      00005B                        963 	.ds 3
                                    964 ;--------------------------------------------------------
                                    965 ; overlayable items in internal ram 
                                    966 ;--------------------------------------------------------
                                    967 ;--------------------------------------------------------
                                    968 ; indirectly addressable internal ram data
                                    969 ;--------------------------------------------------------
                                    970 	.area ISEG    (DATA)
                                    971 ;--------------------------------------------------------
                                    972 ; absolute internal ram data
                                    973 ;--------------------------------------------------------
                                    974 	.area IABS    (ABS,DATA)
                                    975 	.area IABS    (ABS,DATA)
                                    976 ;--------------------------------------------------------
                                    977 ; bit data
                                    978 ;--------------------------------------------------------
                                    979 	.area BSEG    (BIT)
                                    980 ;--------------------------------------------------------
                                    981 ; paged external ram data
                                    982 ;--------------------------------------------------------
                                    983 	.area PSEG    (PAG,XDATA)
                                    984 ;--------------------------------------------------------
                                    985 ; external ram data
                                    986 ;--------------------------------------------------------
                                    987 	.area XSEG    (XDATA)
                           00DF02   988 G$MDMCTRL0H$0$0 == 0xdf02
                           00DF02   989 _MDMCTRL0H	=	0xdf02
                           00DF00   990 G$SYNC1$0$0 == 0xdf00
                           00DF00   991 _SYNC1	=	0xdf00
                           00DF01   992 G$SYNC0$0$0 == 0xdf01
                           00DF01   993 _SYNC0	=	0xdf01
                           00DF02   994 G$PKTLEN$0$0 == 0xdf02
                           00DF02   995 _PKTLEN	=	0xdf02
                           00DF03   996 G$PKTCTRL1$0$0 == 0xdf03
                           00DF03   997 _PKTCTRL1	=	0xdf03
                           00DF04   998 G$PKTCTRL0$0$0 == 0xdf04
                           00DF04   999 _PKTCTRL0	=	0xdf04
                           00DF05  1000 G$ADDR$0$0 == 0xdf05
                           00DF05  1001 _ADDR	=	0xdf05
                           00DF06  1002 G$CHANNR$0$0 == 0xdf06
                           00DF06  1003 _CHANNR	=	0xdf06
                           00DF07  1004 G$FSCTRL1$0$0 == 0xdf07
                           00DF07  1005 _FSCTRL1	=	0xdf07
                           00DF08  1006 G$FSCTRL0$0$0 == 0xdf08
                           00DF08  1007 _FSCTRL0	=	0xdf08
                           00DF09  1008 G$FREQ2$0$0 == 0xdf09
                           00DF09  1009 _FREQ2	=	0xdf09
                           00DF0A  1010 G$FREQ1$0$0 == 0xdf0a
                           00DF0A  1011 _FREQ1	=	0xdf0a
                           00DF0B  1012 G$FREQ0$0$0 == 0xdf0b
                           00DF0B  1013 _FREQ0	=	0xdf0b
                           00DF0C  1014 G$MDMCFG4$0$0 == 0xdf0c
                           00DF0C  1015 _MDMCFG4	=	0xdf0c
                           00DF0D  1016 G$MDMCFG3$0$0 == 0xdf0d
                           00DF0D  1017 _MDMCFG3	=	0xdf0d
                           00DF0E  1018 G$MDMCFG2$0$0 == 0xdf0e
                           00DF0E  1019 _MDMCFG2	=	0xdf0e
                           00DF0F  1020 G$MDMCFG1$0$0 == 0xdf0f
                           00DF0F  1021 _MDMCFG1	=	0xdf0f
                           00DF10  1022 G$MDMCFG0$0$0 == 0xdf10
                           00DF10  1023 _MDMCFG0	=	0xdf10
                           00DF11  1024 G$DEVIATN$0$0 == 0xdf11
                           00DF11  1025 _DEVIATN	=	0xdf11
                           00DF12  1026 G$MCSM2$0$0 == 0xdf12
                           00DF12  1027 _MCSM2	=	0xdf12
                           00DF13  1028 G$MCSM1$0$0 == 0xdf13
                           00DF13  1029 _MCSM1	=	0xdf13
                           00DF14  1030 G$MCSM0$0$0 == 0xdf14
                           00DF14  1031 _MCSM0	=	0xdf14
                           00DF15  1032 G$FOCCFG$0$0 == 0xdf15
                           00DF15  1033 _FOCCFG	=	0xdf15
                           00DF16  1034 G$BSCFG$0$0 == 0xdf16
                           00DF16  1035 _BSCFG	=	0xdf16
                           00DF17  1036 G$AGCCTRL2$0$0 == 0xdf17
                           00DF17  1037 _AGCCTRL2	=	0xdf17
                           00DF18  1038 G$AGCCTRL1$0$0 == 0xdf18
                           00DF18  1039 _AGCCTRL1	=	0xdf18
                           00DF19  1040 G$AGCCTRL0$0$0 == 0xdf19
                           00DF19  1041 _AGCCTRL0	=	0xdf19
                           00DF1A  1042 G$FREND1$0$0 == 0xdf1a
                           00DF1A  1043 _FREND1	=	0xdf1a
                           00DF1B  1044 G$FREND0$0$0 == 0xdf1b
                           00DF1B  1045 _FREND0	=	0xdf1b
                           00DF1C  1046 G$FSCAL3$0$0 == 0xdf1c
                           00DF1C  1047 _FSCAL3	=	0xdf1c
                           00DF1D  1048 G$FSCAL2$0$0 == 0xdf1d
                           00DF1D  1049 _FSCAL2	=	0xdf1d
                           00DF1E  1050 G$FSCAL1$0$0 == 0xdf1e
                           00DF1E  1051 _FSCAL1	=	0xdf1e
                           00DF1F  1052 G$FSCAL0$0$0 == 0xdf1f
                           00DF1F  1053 _FSCAL0	=	0xdf1f
                           00DF20  1054 G$_XREGDF20$0$0 == 0xdf20
                           00DF20  1055 __XREGDF20	=	0xdf20
                           00DF21  1056 G$_XREGDF21$0$0 == 0xdf21
                           00DF21  1057 __XREGDF21	=	0xdf21
                           00DF22  1058 G$_XREGDF22$0$0 == 0xdf22
                           00DF22  1059 __XREGDF22	=	0xdf22
                           00DF23  1060 G$TEST2$0$0 == 0xdf23
                           00DF23  1061 _TEST2	=	0xdf23
                           00DF24  1062 G$TEST1$0$0 == 0xdf24
                           00DF24  1063 _TEST1	=	0xdf24
                           00DF25  1064 G$TEST0$0$0 == 0xdf25
                           00DF25  1065 _TEST0	=	0xdf25
                           00DF26  1066 G$_XREGDF26$0$0 == 0xdf26
                           00DF26  1067 __XREGDF26	=	0xdf26
                           00DF27  1068 G$PA_TABLE7$0$0 == 0xdf27
                           00DF27  1069 _PA_TABLE7	=	0xdf27
                           00DF28  1070 G$PA_TABLE6$0$0 == 0xdf28
                           00DF28  1071 _PA_TABLE6	=	0xdf28
                           00DF29  1072 G$PA_TABLE5$0$0 == 0xdf29
                           00DF29  1073 _PA_TABLE5	=	0xdf29
                           00DF2A  1074 G$PA_TABLE4$0$0 == 0xdf2a
                           00DF2A  1075 _PA_TABLE4	=	0xdf2a
                           00DF2B  1076 G$PA_TABLE3$0$0 == 0xdf2b
                           00DF2B  1077 _PA_TABLE3	=	0xdf2b
                           00DF2C  1078 G$PA_TABLE2$0$0 == 0xdf2c
                           00DF2C  1079 _PA_TABLE2	=	0xdf2c
                           00DF2D  1080 G$PA_TABLE1$0$0 == 0xdf2d
                           00DF2D  1081 _PA_TABLE1	=	0xdf2d
                           00DF2E  1082 G$PA_TABLE0$0$0 == 0xdf2e
                           00DF2E  1083 _PA_TABLE0	=	0xdf2e
                           00DF2F  1084 G$IOCFG2$0$0 == 0xdf2f
                           00DF2F  1085 _IOCFG2	=	0xdf2f
                           00DF30  1086 G$IOCFG1$0$0 == 0xdf30
                           00DF30  1087 _IOCFG1	=	0xdf30
                           00DF31  1088 G$IOCFG0$0$0 == 0xdf31
                           00DF31  1089 _IOCFG0	=	0xdf31
                           00DF32  1090 G$_XREGDF32$0$0 == 0xdf32
                           00DF32  1091 __XREGDF32	=	0xdf32
                           00DF33  1092 G$_XREGDF33$0$0 == 0xdf33
                           00DF33  1093 __XREGDF33	=	0xdf33
                           00DF34  1094 G$_XREGDF34$0$0 == 0xdf34
                           00DF34  1095 __XREGDF34	=	0xdf34
                           00DF35  1096 G$_XREGDF35$0$0 == 0xdf35
                           00DF35  1097 __XREGDF35	=	0xdf35
                           00DF36  1098 G$PARTNUM$0$0 == 0xdf36
                           00DF36  1099 _PARTNUM	=	0xdf36
                           00DF37  1100 G$VERSION$0$0 == 0xdf37
                           00DF37  1101 _VERSION	=	0xdf37
                           00DF38  1102 G$FREQEST$0$0 == 0xdf38
                           00DF38  1103 _FREQEST	=	0xdf38
                           00DF39  1104 G$LQI$0$0 == 0xdf39
                           00DF39  1105 _LQI	=	0xdf39
                           00DF3A  1106 G$RSSI$0$0 == 0xdf3a
                           00DF3A  1107 _RSSI	=	0xdf3a
                           00DF3B  1108 G$MARCSTATE$0$0 == 0xdf3b
                           00DF3B  1109 _MARCSTATE	=	0xdf3b
                           00DF3C  1110 G$PKTSTATUS$0$0 == 0xdf3c
                           00DF3C  1111 _PKTSTATUS	=	0xdf3c
                           00DF3D  1112 G$VCO_VC_DAC$0$0 == 0xdf3d
                           00DF3D  1113 _VCO_VC_DAC	=	0xdf3d
                           00DF40  1114 G$I2SCFG0$0$0 == 0xdf40
                           00DF40  1115 _I2SCFG0	=	0xdf40
                           00DF41  1116 G$I2SCFG1$0$0 == 0xdf41
                           00DF41  1117 _I2SCFG1	=	0xdf41
                           00DF42  1118 G$I2SDATL$0$0 == 0xdf42
                           00DF42  1119 _I2SDATL	=	0xdf42
                           00DF43  1120 G$I2SDATH$0$0 == 0xdf43
                           00DF43  1121 _I2SDATH	=	0xdf43
                           00DF44  1122 G$I2SWCNT$0$0 == 0xdf44
                           00DF44  1123 _I2SWCNT	=	0xdf44
                           00DF45  1124 G$I2SSTAT$0$0 == 0xdf45
                           00DF45  1125 _I2SSTAT	=	0xdf45
                           00DF46  1126 G$I2SCLKF0$0$0 == 0xdf46
                           00DF46  1127 _I2SCLKF0	=	0xdf46
                           00DF47  1128 G$I2SCLKF1$0$0 == 0xdf47
                           00DF47  1129 _I2SCLKF1	=	0xdf47
                           00DF48  1130 G$I2SCLKF2$0$0 == 0xdf48
                           00DF48  1131 _I2SCLKF2	=	0xdf48
                           00DF80  1132 G$_NA_P0$0$0 == 0xdf80
                           00DF80  1133 __NA_P0	=	0xdf80
                           00DF81  1134 G$_NA_SP$0$0 == 0xdf81
                           00DF81  1135 __NA_SP	=	0xdf81
                           00DF82  1136 G$_NA_DPL0$0$0 == 0xdf82
                           00DF82  1137 __NA_DPL0	=	0xdf82
                           00DF83  1138 G$_NA_DPH0$0$0 == 0xdf83
                           00DF83  1139 __NA_DPH0	=	0xdf83
                           00DF84  1140 G$_NA_DPL1$0$0 == 0xdf84
                           00DF84  1141 __NA_DPL1	=	0xdf84
                           00DF85  1142 G$_NA_DPH1$0$0 == 0xdf85
                           00DF85  1143 __NA_DPH1	=	0xdf85
                           00DF86  1144 G$X_U0CSR$0$0 == 0xdf86
                           00DF86  1145 _X_U0CSR	=	0xdf86
                           00DF87  1146 G$_NA_PCON$0$0 == 0xdf87
                           00DF87  1147 __NA_PCON	=	0xdf87
                           00DF88  1148 G$_NA_TCON$0$0 == 0xdf88
                           00DF88  1149 __NA_TCON	=	0xdf88
                           00DF89  1150 G$X_P0IFG$0$0 == 0xdf89
                           00DF89  1151 _X_P0IFG	=	0xdf89
                           00DF8A  1152 G$X_P1IFG$0$0 == 0xdf8a
                           00DF8A  1153 _X_P1IFG	=	0xdf8a
                           00DF8B  1154 G$X_P2IFG$0$0 == 0xdf8b
                           00DF8B  1155 _X_P2IFG	=	0xdf8b
                           00DF8C  1156 G$X_PICTL$0$0 == 0xdf8c
                           00DF8C  1157 _X_PICTL	=	0xdf8c
                           00DF8D  1158 G$X_P1IEN$0$0 == 0xdf8d
                           00DF8D  1159 _X_P1IEN	=	0xdf8d
                           00DF8E  1160 G$_X_SFR8E$0$0 == 0xdf8e
                           00DF8E  1161 __X_SFR8E	=	0xdf8e
                           00DF8F  1162 G$X_P0INP$0$0 == 0xdf8f
                           00DF8F  1163 _X_P0INP	=	0xdf8f
                           00DF90  1164 G$_NA_P1$0$0 == 0xdf90
                           00DF90  1165 __NA_P1	=	0xdf90
                           00DF91  1166 G$X_RFIM$0$0 == 0xdf91
                           00DF91  1167 _X_RFIM	=	0xdf91
                           00DF92  1168 G$_NA_DPS$0$0 == 0xdf92
                           00DF92  1169 __NA_DPS	=	0xdf92
                           00DF93  1170 G$X_MPAGE$0$0 == 0xdf93
                           00DF93  1171 _X_MPAGE	=	0xdf93
                           00DF94  1172 G$_X_SFR94$0$0 == 0xdf94
                           00DF94  1173 __X_SFR94	=	0xdf94
                           00DF95  1174 G$_X_SFR95$0$0 == 0xdf95
                           00DF95  1175 __X_SFR95	=	0xdf95
                           00DF96  1176 G$_X_SFR96$0$0 == 0xdf96
                           00DF96  1177 __X_SFR96	=	0xdf96
                           00DF97  1178 G$_X_SFR97$0$0 == 0xdf97
                           00DF97  1179 __X_SFR97	=	0xdf97
                           00DF98  1180 G$_NA_S0CON$0$0 == 0xdf98
                           00DF98  1181 __NA_S0CON	=	0xdf98
                           00DF99  1182 G$_X_SFR99$0$0 == 0xdf99
                           00DF99  1183 __X_SFR99	=	0xdf99
                           00DF9A  1184 G$_NA_IEN2$0$0 == 0xdf9a
                           00DF9A  1185 __NA_IEN2	=	0xdf9a
                           00DF9B  1186 G$_NA_S1CON$0$0 == 0xdf9b
                           00DF9B  1187 __NA_S1CON	=	0xdf9b
                           00DF9C  1188 G$X_T2CT$0$0 == 0xdf9c
                           00DF9C  1189 _X_T2CT	=	0xdf9c
                           00DF9D  1190 G$X_T2PR$0$0 == 0xdf9d
                           00DF9D  1191 _X_T2PR	=	0xdf9d
                           00DF9E  1192 G$X_T2CTL$0$0 == 0xdf9e
                           00DF9E  1193 _X_T2CTL	=	0xdf9e
                           00DF9F  1194 G$_X_SFR9F$0$0 == 0xdf9f
                           00DF9F  1195 __X_SFR9F	=	0xdf9f
                           00DFA0  1196 G$_NA_P2$0$0 == 0xdfa0
                           00DFA0  1197 __NA_P2	=	0xdfa0
                           00DFA1  1198 G$X_WORIRQ$0$0 == 0xdfa1
                           00DFA1  1199 _X_WORIRQ	=	0xdfa1
                           00DFA2  1200 G$X_WORCTRL$0$0 == 0xdfa2
                           00DFA2  1201 _X_WORCTRL	=	0xdfa2
                           00DFA3  1202 G$X_WOREVT0$0$0 == 0xdfa3
                           00DFA3  1203 _X_WOREVT0	=	0xdfa3
                           00DFA4  1204 G$X_WOREVT1$0$0 == 0xdfa4
                           00DFA4  1205 _X_WOREVT1	=	0xdfa4
                           00DFA5  1206 G$X_WORTIME0$0$0 == 0xdfa5
                           00DFA5  1207 _X_WORTIME0	=	0xdfa5
                           00DFA6  1208 G$X_WORTIME1$0$0 == 0xdfa6
                           00DFA6  1209 _X_WORTIME1	=	0xdfa6
                           00DFA7  1210 G$_X_SFRA7$0$0 == 0xdfa7
                           00DFA7  1211 __X_SFRA7	=	0xdfa7
                           00DFA8  1212 G$_NA_IEN0$0$0 == 0xdfa8
                           00DFA8  1213 __NA_IEN0	=	0xdfa8
                           00DFA9  1214 G$_NA_IP0$0$0 == 0xdfa9
                           00DFA9  1215 __NA_IP0	=	0xdfa9
                           00DFAA  1216 G$_X_SFRAA$0$0 == 0xdfaa
                           00DFAA  1217 __X_SFRAA	=	0xdfaa
                           00DFAB  1218 G$X_FWT$0$0 == 0xdfab
                           00DFAB  1219 _X_FWT	=	0xdfab
                           00DFAC  1220 G$X_FADDRL$0$0 == 0xdfac
                           00DFAC  1221 _X_FADDRL	=	0xdfac
                           00DFAD  1222 G$X_FADDRH$0$0 == 0xdfad
                           00DFAD  1223 _X_FADDRH	=	0xdfad
                           00DFAE  1224 G$X_FCTL$0$0 == 0xdfae
                           00DFAE  1225 _X_FCTL	=	0xdfae
                           00DFAF  1226 G$X_FWDATA$0$0 == 0xdfaf
                           00DFAF  1227 _X_FWDATA	=	0xdfaf
                           00DFB0  1228 G$_X_SFRB0$0$0 == 0xdfb0
                           00DFB0  1229 __X_SFRB0	=	0xdfb0
                           00DFB1  1230 G$X_ENCDI$0$0 == 0xdfb1
                           00DFB1  1231 _X_ENCDI	=	0xdfb1
                           00DFB2  1232 G$X_ENCDO$0$0 == 0xdfb2
                           00DFB2  1233 _X_ENCDO	=	0xdfb2
                           00DFB3  1234 G$X_ENCCS$0$0 == 0xdfb3
                           00DFB3  1235 _X_ENCCS	=	0xdfb3
                           00DFB4  1236 G$X_ADCCON1$0$0 == 0xdfb4
                           00DFB4  1237 _X_ADCCON1	=	0xdfb4
                           00DFB5  1238 G$X_ADCCON2$0$0 == 0xdfb5
                           00DFB5  1239 _X_ADCCON2	=	0xdfb5
                           00DFB6  1240 G$X_ADCCON3$0$0 == 0xdfb6
                           00DFB6  1241 _X_ADCCON3	=	0xdfb6
                           00DFB7  1242 G$_X_SFRB7$0$0 == 0xdfb7
                           00DFB7  1243 __X_SFRB7	=	0xdfb7
                           00DFB8  1244 G$_NA_IEN1$0$0 == 0xdfb8
                           00DFB8  1245 __NA_IEN1	=	0xdfb8
                           00DFB9  1246 G$_NA_IP1$0$0 == 0xdfb9
                           00DFB9  1247 __NA_IP1	=	0xdfb9
                           00DFBA  1248 G$X_ADCL$0$0 == 0xdfba
                           00DFBA  1249 _X_ADCL	=	0xdfba
                           00DFBB  1250 G$X_ADCH$0$0 == 0xdfbb
                           00DFBB  1251 _X_ADCH	=	0xdfbb
                           00DFBC  1252 G$X_RNDL$0$0 == 0xdfbc
                           00DFBC  1253 _X_RNDL	=	0xdfbc
                           00DFBD  1254 G$X_RNDH$0$0 == 0xdfbd
                           00DFBD  1255 _X_RNDH	=	0xdfbd
                           00DFBE  1256 G$X_SLEEP$0$0 == 0xdfbe
                           00DFBE  1257 _X_SLEEP	=	0xdfbe
                           00DFBF  1258 G$_X_SFRBF$0$0 == 0xdfbf
                           00DFBF  1259 __X_SFRBF	=	0xdfbf
                           00DFC0  1260 G$_NA_IRCON$0$0 == 0xdfc0
                           00DFC0  1261 __NA_IRCON	=	0xdfc0
                           00DFC1  1262 G$X_U0DBUF$0$0 == 0xdfc1
                           00DFC1  1263 _X_U0DBUF	=	0xdfc1
                           00DFC2  1264 G$X_U0BAUD$0$0 == 0xdfc2
                           00DFC2  1265 _X_U0BAUD	=	0xdfc2
                           00DFC3  1266 G$_X_SFRC3$0$0 == 0xdfc3
                           00DFC3  1267 __X_SFRC3	=	0xdfc3
                           00DFC4  1268 G$X_U0UCR$0$0 == 0xdfc4
                           00DFC4  1269 _X_U0UCR	=	0xdfc4
                           00DFC5  1270 G$X_U0GCR$0$0 == 0xdfc5
                           00DFC5  1271 _X_U0GCR	=	0xdfc5
                           00DFC6  1272 G$X_CLKCON$0$0 == 0xdfc6
                           00DFC6  1273 _X_CLKCON	=	0xdfc6
                           00DFC7  1274 G$X_MEMCTR$0$0 == 0xdfc7
                           00DFC7  1275 _X_MEMCTR	=	0xdfc7
                           00DFC8  1276 G$_X_SFRC8$0$0 == 0xdfc8
                           00DFC8  1277 __X_SFRC8	=	0xdfc8
                           00DFC9  1278 G$X_WDCTL$0$0 == 0xdfc9
                           00DFC9  1279 _X_WDCTL	=	0xdfc9
                           00DFCA  1280 G$X_T3CNT$0$0 == 0xdfca
                           00DFCA  1281 _X_T3CNT	=	0xdfca
                           00DFCB  1282 G$X_T3CTL$0$0 == 0xdfcb
                           00DFCB  1283 _X_T3CTL	=	0xdfcb
                           00DFCC  1284 G$X_T3CCTL0$0$0 == 0xdfcc
                           00DFCC  1285 _X_T3CCTL0	=	0xdfcc
                           00DFCD  1286 G$X_T3CC0$0$0 == 0xdfcd
                           00DFCD  1287 _X_T3CC0	=	0xdfcd
                           00DFCE  1288 G$X_T3CCTL1$0$0 == 0xdfce
                           00DFCE  1289 _X_T3CCTL1	=	0xdfce
                           00DFCF  1290 G$X_T3CC1$0$0 == 0xdfcf
                           00DFCF  1291 _X_T3CC1	=	0xdfcf
                           00DFD0  1292 G$_NA_PSW$0$0 == 0xdfd0
                           00DFD0  1293 __NA_PSW	=	0xdfd0
                           00DFD1  1294 G$X_DMAIRQ$0$0 == 0xdfd1
                           00DFD1  1295 _X_DMAIRQ	=	0xdfd1
                           00DFD2  1296 G$X_DMA1CFGL$0$0 == 0xdfd2
                           00DFD2  1297 _X_DMA1CFGL	=	0xdfd2
                           00DFD3  1298 G$X_DMA1CFGH$0$0 == 0xdfd3
                           00DFD3  1299 _X_DMA1CFGH	=	0xdfd3
                           00DFD4  1300 G$X_DMA0CFGL$0$0 == 0xdfd4
                           00DFD4  1301 _X_DMA0CFGL	=	0xdfd4
                           00DFD5  1302 G$X_DMA0CFGH$0$0 == 0xdfd5
                           00DFD5  1303 _X_DMA0CFGH	=	0xdfd5
                           00DFD6  1304 G$X_DMAARM$0$0 == 0xdfd6
                           00DFD6  1305 _X_DMAARM	=	0xdfd6
                           00DFD7  1306 G$X_DMAREQ$0$0 == 0xdfd7
                           00DFD7  1307 _X_DMAREQ	=	0xdfd7
                           00DFD8  1308 G$X_TIMIF$0$0 == 0xdfd8
                           00DFD8  1309 _X_TIMIF	=	0xdfd8
                           00DFD9  1310 G$X_RFD$0$0 == 0xdfd9
                           00DFD9  1311 _X_RFD	=	0xdfd9
                           00DFDA  1312 G$X_T1CC0L$0$0 == 0xdfda
                           00DFDA  1313 _X_T1CC0L	=	0xdfda
                           00DFDB  1314 G$X_T1CC0H$0$0 == 0xdfdb
                           00DFDB  1315 _X_T1CC0H	=	0xdfdb
                           00DFDC  1316 G$X_T1CC1L$0$0 == 0xdfdc
                           00DFDC  1317 _X_T1CC1L	=	0xdfdc
                           00DFDD  1318 G$X_T1CC1H$0$0 == 0xdfdd
                           00DFDD  1319 _X_T1CC1H	=	0xdfdd
                           00DFDE  1320 G$X_T1CC2L$0$0 == 0xdfde
                           00DFDE  1321 _X_T1CC2L	=	0xdfde
                           00DFDF  1322 G$X_T1CC2H$0$0 == 0xdfdf
                           00DFDF  1323 _X_T1CC2H	=	0xdfdf
                           00DFE0  1324 G$_NA_ACC$0$0 == 0xdfe0
                           00DFE0  1325 __NA_ACC	=	0xdfe0
                           00DFE1  1326 G$X_RFST$0$0 == 0xdfe1
                           00DFE1  1327 _X_RFST	=	0xdfe1
                           00DFE2  1328 G$X_T1CNTL$0$0 == 0xdfe2
                           00DFE2  1329 _X_T1CNTL	=	0xdfe2
                           00DFE3  1330 G$X_T1CNTH$0$0 == 0xdfe3
                           00DFE3  1331 _X_T1CNTH	=	0xdfe3
                           00DFE4  1332 G$X_T1CTL$0$0 == 0xdfe4
                           00DFE4  1333 _X_T1CTL	=	0xdfe4
                           00DFE5  1334 G$X_T1CCTL0$0$0 == 0xdfe5
                           00DFE5  1335 _X_T1CCTL0	=	0xdfe5
                           00DFE6  1336 G$X_T1CCTL1$0$0 == 0xdfe6
                           00DFE6  1337 _X_T1CCTL1	=	0xdfe6
                           00DFE7  1338 G$X_T1CCTL2$0$0 == 0xdfe7
                           00DFE7  1339 _X_T1CCTL2	=	0xdfe7
                           00DFE8  1340 G$_NA_IRCON2$0$0 == 0xdfe8
                           00DFE8  1341 __NA_IRCON2	=	0xdfe8
                           00DFE9  1342 G$X_RFIF$0$0 == 0xdfe9
                           00DFE9  1343 _X_RFIF	=	0xdfe9
                           00DFEA  1344 G$X_T4CNT$0$0 == 0xdfea
                           00DFEA  1345 _X_T4CNT	=	0xdfea
                           00DFEB  1346 G$X_T4CTL$0$0 == 0xdfeb
                           00DFEB  1347 _X_T4CTL	=	0xdfeb
                           00DFEC  1348 G$X_T4CCTL0$0$0 == 0xdfec
                           00DFEC  1349 _X_T4CCTL0	=	0xdfec
                           00DFED  1350 G$X_T4CC0$0$0 == 0xdfed
                           00DFED  1351 _X_T4CC0	=	0xdfed
                           00DFEE  1352 G$X_T4CCTL1$0$0 == 0xdfee
                           00DFEE  1353 _X_T4CCTL1	=	0xdfee
                           00DFEF  1354 G$X_T4CC1$0$0 == 0xdfef
                           00DFEF  1355 _X_T4CC1	=	0xdfef
                           00DFF0  1356 G$_NA_B$0$0 == 0xdff0
                           00DFF0  1357 __NA_B	=	0xdff0
                           00DFF1  1358 G$X_PERCFG$0$0 == 0xdff1
                           00DFF1  1359 _X_PERCFG	=	0xdff1
                           00DFF2  1360 G$X_ADCCFG$0$0 == 0xdff2
                           00DFF2  1361 _X_ADCCFG	=	0xdff2
                           00DFF3  1362 G$X_P0SEL$0$0 == 0xdff3
                           00DFF3  1363 _X_P0SEL	=	0xdff3
                           00DFF4  1364 G$X_P1SEL$0$0 == 0xdff4
                           00DFF4  1365 _X_P1SEL	=	0xdff4
                           00DFF5  1366 G$X_P2SEL$0$0 == 0xdff5
                           00DFF5  1367 _X_P2SEL	=	0xdff5
                           00DFF6  1368 G$X_P1INP$0$0 == 0xdff6
                           00DFF6  1369 _X_P1INP	=	0xdff6
                           00DFF7  1370 G$X_P2INP$0$0 == 0xdff7
                           00DFF7  1371 _X_P2INP	=	0xdff7
                           00DFF8  1372 G$X_U1CSR$0$0 == 0xdff8
                           00DFF8  1373 _X_U1CSR	=	0xdff8
                           00DFF9  1374 G$X_U1DBUF$0$0 == 0xdff9
                           00DFF9  1375 _X_U1DBUF	=	0xdff9
                           00DFFA  1376 G$X_U1BAUD$0$0 == 0xdffa
                           00DFFA  1377 _X_U1BAUD	=	0xdffa
                           00DFFB  1378 G$X_U1UCR$0$0 == 0xdffb
                           00DFFB  1379 _X_U1UCR	=	0xdffb
                           00DFFC  1380 G$X_U1GCR$0$0 == 0xdffc
                           00DFFC  1381 _X_U1GCR	=	0xdffc
                           00DFFD  1382 G$X_P0DIR$0$0 == 0xdffd
                           00DFFD  1383 _X_P0DIR	=	0xdffd
                           00DFFE  1384 G$X_P1DIR$0$0 == 0xdffe
                           00DFFE  1385 _X_P1DIR	=	0xdffe
                           00DFFF  1386 G$X_P2DIR$0$0 == 0xdfff
                           00DFFF  1387 _X_P2DIR	=	0xdfff
                           000000  1388 Lutil_buffer.bufInit$pBuf$1$15==.
      0006F6                       1389 _bufInit_pBuf_1_15:
      0006F6                       1390 	.ds 3
                           000003  1391 Lutil_buffer.bufPut$pData$1$17==.
      0006F9                       1392 _bufPut_PARM_2:
      0006F9                       1393 	.ds 3
                           000006  1394 Lutil_buffer.bufPut$nBytes$1$17==.
      0006FC                       1395 _bufPut_PARM_3:
      0006FC                       1396 	.ds 1
                           000007  1397 Lutil_buffer.bufPut$pBuf$1$17==.
      0006FD                       1398 _bufPut_pBuf_1_17:
      0006FD                       1399 	.ds 3
                           00000A  1400 Lutil_buffer.bufPut$i$1$18==.
      000700                       1401 _bufPut_i_1_18:
      000700                       1402 	.ds 1
                           00000B  1403 Lutil_buffer.bufGet$pData$1$22==.
      000701                       1404 _bufGet_PARM_2:
      000701                       1405 	.ds 3
                           00000E  1406 Lutil_buffer.bufGet$nBytes$1$22==.
      000704                       1407 _bufGet_PARM_3:
      000704                       1408 	.ds 1
                           00000F  1409 Lutil_buffer.bufGet$pBuf$1$22==.
      000705                       1410 _bufGet_pBuf_1_22:
      000705                       1411 	.ds 3
                           000012  1412 Lutil_buffer.bufPeek$pData$1$25==.
      000708                       1413 _bufPeek_PARM_2:
      000708                       1414 	.ds 3
                           000015  1415 Lutil_buffer.bufPeek$nBytes$1$25==.
      00070B                       1416 _bufPeek_PARM_3:
      00070B                       1417 	.ds 1
                           000016  1418 Lutil_buffer.bufPeek$pBuf$1$25==.
      00070C                       1419 _bufPeek_pBuf_1_25:
      00070C                       1420 	.ds 3
                           000019  1421 Lutil_buffer.bufPeek$j$1$26==.
      00070F                       1422 _bufPeek_j_1_26:
      00070F                       1423 	.ds 1
                           00001A  1424 Lutil_buffer.bufNumBytes$pBuf$1$28==.
      000710                       1425 _bufNumBytes_pBuf_1_28:
      000710                       1426 	.ds 3
                                   1427 ;--------------------------------------------------------
                                   1428 ; absolute external ram data
                                   1429 ;--------------------------------------------------------
                                   1430 	.area XABS    (ABS,XDATA)
                                   1431 ;--------------------------------------------------------
                                   1432 ; external initialized ram data
                                   1433 ;--------------------------------------------------------
                                   1434 	.area XISEG   (XDATA)
                                   1435 	.area HOME    (CODE)
                                   1436 	.area GSINIT0 (CODE)
                                   1437 	.area GSINIT1 (CODE)
                                   1438 	.area GSINIT2 (CODE)
                                   1439 	.area GSINIT3 (CODE)
                                   1440 	.area GSINIT4 (CODE)
                                   1441 	.area GSINIT5 (CODE)
                                   1442 	.area GSINIT  (CODE)
                                   1443 	.area GSFINAL (CODE)
                                   1444 	.area CSEG    (CODE)
                                   1445 ;--------------------------------------------------------
                                   1446 ; global & static initialisations
                                   1447 ;--------------------------------------------------------
                                   1448 	.area HOME    (CODE)
                                   1449 	.area GSINIT  (CODE)
                                   1450 	.area GSFINAL (CODE)
                                   1451 	.area GSINIT  (CODE)
                                   1452 ;--------------------------------------------------------
                                   1453 ; Home
                                   1454 ;--------------------------------------------------------
                                   1455 	.area HOME    (CODE)
                                   1456 	.area HOME    (CODE)
                                   1457 ;--------------------------------------------------------
                                   1458 ; code
                                   1459 ;--------------------------------------------------------
                                   1460 	.area CSEG    (CODE)
                                   1461 ;------------------------------------------------------------
                                   1462 ;Allocation info for local variables in function 'bufInit'
                                   1463 ;------------------------------------------------------------
                                   1464 ;pBuf                      Allocated with name '_bufInit_pBuf_1_15'
                                   1465 ;s                         Allocated with name '_bufInit_s_1_16'
                                   1466 ;------------------------------------------------------------
                           000000  1467 	G$bufInit$0$0 ==.
                           000000  1468 	C$util_buffer.c$30$0$0 ==.
                                   1469 ;	util_buffer.c:30: void bufInit( ringBuf_t *pBuf ) {
                                   1470 ;	-----------------------------------------
                                   1471 ;	 function bufInit
                                   1472 ;	-----------------------------------------
      00181C                       1473 _bufInit:
                           000007  1474 	ar7 = 0x07
                           000006  1475 	ar6 = 0x06
                           000005  1476 	ar5 = 0x05
                           000004  1477 	ar4 = 0x04
                           000003  1478 	ar3 = 0x03
                           000002  1479 	ar2 = 0x02
                           000001  1480 	ar1 = 0x01
                           000000  1481 	ar0 = 0x00
      00181C AF F0            [24] 1482 	mov	r7,b
      00181E AE 83            [24] 1483 	mov	r6,dph
      001820 E5 82            [12] 1484 	mov	a,dpl
      001822 90 06 F6         [24] 1485 	mov	dptr,#_bufInit_pBuf_1_15
      001825 F0               [24] 1486 	movx	@dptr,a
      001826 EE               [12] 1487 	mov	a,r6
      001827 A3               [24] 1488 	inc	dptr
      001828 F0               [24] 1489 	movx	@dptr,a
      001829 EF               [12] 1490 	mov	a,r7
      00182A A3               [24] 1491 	inc	dptr
      00182B F0               [24] 1492 	movx	@dptr,a
                           000010  1493 	C$util_buffer.c$34$1$16 ==.
                                   1494 ;	util_buffer.c:34: s = halIntLock( );
      00182C 12 0A 6E         [24] 1495 	lcall	_halIntLock
      00182F AE 82            [24] 1496 	mov	r6,dpl
      001831 AF 83            [24] 1497 	mov	r7,dph
                           000017  1498 	C$util_buffer.c$36$1$16 ==.
                                   1499 ;	util_buffer.c:36: pBuf->nBytes = 0;
      001833 90 06 F6         [24] 1500 	mov	dptr,#_bufInit_pBuf_1_15
      001836 E0               [24] 1501 	movx	a,@dptr
      001837 FB               [12] 1502 	mov	r3,a
      001838 A3               [24] 1503 	inc	dptr
      001839 E0               [24] 1504 	movx	a,@dptr
      00183A FC               [12] 1505 	mov	r4,a
      00183B A3               [24] 1506 	inc	dptr
      00183C E0               [24] 1507 	movx	a,@dptr
      00183D FD               [12] 1508 	mov	r5,a
      00183E 74 80            [12] 1509 	mov	a,#0x80
      001840 2B               [12] 1510 	add	a,r3
      001841 F8               [12] 1511 	mov	r0,a
      001842 E4               [12] 1512 	clr	a
      001843 3C               [12] 1513 	addc	a,r4
      001844 F9               [12] 1514 	mov	r1,a
      001845 8D 02            [24] 1515 	mov	ar2,r5
      001847 88 82            [24] 1516 	mov	dpl,r0
      001849 89 83            [24] 1517 	mov	dph,r1
      00184B 8A F0            [24] 1518 	mov	b,r2
      00184D E4               [12] 1519 	clr	a
      00184E 12 1B E8         [24] 1520 	lcall	__gptrput
                           000035  1521 	C$util_buffer.c$37$1$16 ==.
                                   1522 ;	util_buffer.c:37: pBuf->iHead = 0;
      001851 74 81            [12] 1523 	mov	a,#0x81
      001853 2B               [12] 1524 	add	a,r3
      001854 F8               [12] 1525 	mov	r0,a
      001855 E4               [12] 1526 	clr	a
      001856 3C               [12] 1527 	addc	a,r4
      001857 F9               [12] 1528 	mov	r1,a
      001858 8D 02            [24] 1529 	mov	ar2,r5
      00185A 88 82            [24] 1530 	mov	dpl,r0
      00185C 89 83            [24] 1531 	mov	dph,r1
      00185E 8A F0            [24] 1532 	mov	b,r2
      001860 E4               [12] 1533 	clr	a
      001861 12 1B E8         [24] 1534 	lcall	__gptrput
                           000048  1535 	C$util_buffer.c$38$1$16 ==.
                                   1536 ;	util_buffer.c:38: pBuf->iTail = 0;
      001864 74 82            [12] 1537 	mov	a,#0x82
      001866 2B               [12] 1538 	add	a,r3
      001867 FB               [12] 1539 	mov	r3,a
      001868 E4               [12] 1540 	clr	a
      001869 3C               [12] 1541 	addc	a,r4
      00186A FC               [12] 1542 	mov	r4,a
      00186B 8B 82            [24] 1543 	mov	dpl,r3
      00186D 8C 83            [24] 1544 	mov	dph,r4
      00186F 8D F0            [24] 1545 	mov	b,r5
      001871 E4               [12] 1546 	clr	a
      001872 12 1B E8         [24] 1547 	lcall	__gptrput
                           000059  1548 	C$util_buffer.c$41$1$16 ==.
                                   1549 ;	util_buffer.c:41: halIntUnlock( s );
      001875 8E 82            [24] 1550 	mov	dpl,r6
      001877 8F 83            [24] 1551 	mov	dph,r7
      001879 12 0A 7C         [24] 1552 	lcall	_halIntUnlock
                           000060  1553 	C$util_buffer.c$42$1$16 ==.
                           000060  1554 	XG$bufInit$0$0 ==.
      00187C 22               [24] 1555 	ret
                                   1556 ;------------------------------------------------------------
                                   1557 ;Allocation info for local variables in function 'bufPut'
                                   1558 ;------------------------------------------------------------
                                   1559 ;sloc0                     Allocated with name '_bufPut_sloc0_1_0'
                                   1560 ;sloc1                     Allocated with name '_bufPut_sloc1_1_0'
                                   1561 ;sloc2                     Allocated with name '_bufPut_sloc2_1_0'
                                   1562 ;sloc3                     Allocated with name '_bufPut_sloc3_1_0'
                                   1563 ;sloc4                     Allocated with name '_bufPut_sloc4_1_0'
                                   1564 ;sloc5                     Allocated with name '_bufPut_sloc5_1_0'
                                   1565 ;pData                     Allocated with name '_bufPut_PARM_2'
                                   1566 ;nBytes                    Allocated with name '_bufPut_PARM_3'
                                   1567 ;pBuf                      Allocated with name '_bufPut_pBuf_1_17'
                                   1568 ;i                         Allocated with name '_bufPut_i_1_18'
                                   1569 ;s                         Allocated with name '_bufPut_s_1_18'
                                   1570 ;------------------------------------------------------------
                           000061  1571 	G$bufPut$0$0 ==.
                           000061  1572 	C$util_buffer.c$56$1$16 ==.
                                   1573 ;	util_buffer.c:56: uint8_t bufPut( ringBuf_t *pBuf, const uint8_t *pData, uint8_t nBytes ) {
                                   1574 ;	-----------------------------------------
                                   1575 ;	 function bufPut
                                   1576 ;	-----------------------------------------
      00187D                       1577 _bufPut:
      00187D AF F0            [24] 1578 	mov	r7,b
      00187F AE 83            [24] 1579 	mov	r6,dph
      001881 E5 82            [12] 1580 	mov	a,dpl
      001883 90 06 FD         [24] 1581 	mov	dptr,#_bufPut_pBuf_1_17
      001886 F0               [24] 1582 	movx	@dptr,a
      001887 EE               [12] 1583 	mov	a,r6
      001888 A3               [24] 1584 	inc	dptr
      001889 F0               [24] 1585 	movx	@dptr,a
      00188A EF               [12] 1586 	mov	a,r7
      00188B A3               [24] 1587 	inc	dptr
      00188C F0               [24] 1588 	movx	@dptr,a
                           000071  1589 	C$util_buffer.c$61$1$18 ==.
                                   1590 ;	util_buffer.c:61: s = halIntLock( );
      00188D 12 0A 6E         [24] 1591 	lcall	_halIntLock
      001890 85 82 3B         [24] 1592 	mov	_bufPut_sloc0_1_0,dpl
      001893 85 83 3C         [24] 1593 	mov	(_bufPut_sloc0_1_0 + 1),dph
                           00007A  1594 	C$util_buffer.c$63$1$18 ==.
                                   1595 ;	util_buffer.c:63: if( pBuf->nBytes + nBytes < BUF_SIZE ) {
      001896 90 06 FD         [24] 1596 	mov	dptr,#_bufPut_pBuf_1_17
      001899 E0               [24] 1597 	movx	a,@dptr
      00189A FB               [12] 1598 	mov	r3,a
      00189B A3               [24] 1599 	inc	dptr
      00189C E0               [24] 1600 	movx	a,@dptr
      00189D FC               [12] 1601 	mov	r4,a
      00189E A3               [24] 1602 	inc	dptr
      00189F E0               [24] 1603 	movx	a,@dptr
      0018A0 FD               [12] 1604 	mov	r5,a
      0018A1 74 80            [12] 1605 	mov	a,#0x80
      0018A3 2B               [12] 1606 	add	a,r3
      0018A4 F8               [12] 1607 	mov	r0,a
      0018A5 E4               [12] 1608 	clr	a
      0018A6 3C               [12] 1609 	addc	a,r4
      0018A7 F9               [12] 1610 	mov	r1,a
      0018A8 8D 02            [24] 1611 	mov	ar2,r5
      0018AA 88 82            [24] 1612 	mov	dpl,r0
      0018AC 89 83            [24] 1613 	mov	dph,r1
      0018AE 8A F0            [24] 1614 	mov	b,r2
      0018B0 12 1C 03         [24] 1615 	lcall	__gptrget
      0018B3 FF               [12] 1616 	mov	r7,a
      0018B4 8F 3E            [24] 1617 	mov	_bufPut_sloc2_1_0,r7
      0018B6 75 3F 00         [24] 1618 	mov	(_bufPut_sloc2_1_0 + 1),#0x00
      0018B9 90 06 FC         [24] 1619 	mov	dptr,#_bufPut_PARM_3
      0018BC E0               [24] 1620 	movx	a,@dptr
      0018BD F5 3D            [12] 1621 	mov	_bufPut_sloc1_1_0,a
      0018BF AE 3D            [24] 1622 	mov	r6,_bufPut_sloc1_1_0
      0018C1 7F 00            [12] 1623 	mov	r7,#0x00
      0018C3 EE               [12] 1624 	mov	a,r6
      0018C4 25 3E            [12] 1625 	add	a,_bufPut_sloc2_1_0
      0018C6 FE               [12] 1626 	mov	r6,a
      0018C7 EF               [12] 1627 	mov	a,r7
      0018C8 35 3F            [12] 1628 	addc	a,(_bufPut_sloc2_1_0 + 1)
      0018CA FF               [12] 1629 	mov	r7,a
      0018CB C3               [12] 1630 	clr	c
      0018CC EE               [12] 1631 	mov	a,r6
      0018CD 94 80            [12] 1632 	subb	a,#0x80
      0018CF EF               [12] 1633 	mov	a,r7
      0018D0 64 80            [12] 1634 	xrl	a,#0x80
      0018D2 94 80            [12] 1635 	subb	a,#0x80
      0018D4 40 03            [24] 1636 	jc	00124$
      0018D6 02 19 A0         [24] 1637 	ljmp	00107$
      0018D9                       1638 00124$:
                           0000BD  1639 	C$util_buffer.c$65$3$20 ==.
                                   1640 ;	util_buffer.c:65: while( i < nBytes ) {
      0018D9 90 06 F9         [24] 1641 	mov	dptr,#_bufPut_PARM_2
      0018DC E0               [24] 1642 	movx	a,@dptr
      0018DD F5 40            [12] 1643 	mov	_bufPut_sloc3_1_0,a
      0018DF A3               [24] 1644 	inc	dptr
      0018E0 E0               [24] 1645 	movx	a,@dptr
      0018E1 F5 41            [12] 1646 	mov	(_bufPut_sloc3_1_0 + 1),a
      0018E3 A3               [24] 1647 	inc	dptr
      0018E4 E0               [24] 1648 	movx	a,@dptr
      0018E5 F5 42            [12] 1649 	mov	(_bufPut_sloc3_1_0 + 2),a
      0018E7 7F 00            [12] 1650 	mov	r7,#0x00
      0018E9                       1651 00103$:
      0018E9 C3               [12] 1652 	clr	c
      0018EA EF               [12] 1653 	mov	a,r7
      0018EB 95 3D            [12] 1654 	subb	a,_bufPut_sloc1_1_0
      0018ED 40 03            [24] 1655 	jc	00125$
      0018EF 02 19 84         [24] 1656 	ljmp	00115$
      0018F2                       1657 00125$:
                           0000D6  1658 	C$util_buffer.c$66$1$18 ==.
                                   1659 ;	util_buffer.c:66: pBuf->pData[pBuf->iTail] = pData[i];
      0018F2 C0 00            [24] 1660 	push	ar0
      0018F4 C0 01            [24] 1661 	push	ar1
      0018F6 C0 02            [24] 1662 	push	ar2
      0018F8 74 82            [12] 1663 	mov	a,#0x82
      0018FA 2B               [12] 1664 	add	a,r3
      0018FB F5 43            [12] 1665 	mov	_bufPut_sloc4_1_0,a
      0018FD E4               [12] 1666 	clr	a
      0018FE 3C               [12] 1667 	addc	a,r4
      0018FF F5 44            [12] 1668 	mov	(_bufPut_sloc4_1_0 + 1),a
      001901 8D 45            [24] 1669 	mov	(_bufPut_sloc4_1_0 + 2),r5
      001903 85 43 82         [24] 1670 	mov	dpl,_bufPut_sloc4_1_0
      001906 85 44 83         [24] 1671 	mov	dph,(_bufPut_sloc4_1_0 + 1)
      001909 85 45 F0         [24] 1672 	mov	b,(_bufPut_sloc4_1_0 + 2)
      00190C 12 1C 03         [24] 1673 	lcall	__gptrget
      00190F 2B               [12] 1674 	add	a,r3
      001910 F5 46            [12] 1675 	mov	_bufPut_sloc5_1_0,a
      001912 E4               [12] 1676 	clr	a
      001913 3C               [12] 1677 	addc	a,r4
      001914 F5 47            [12] 1678 	mov	(_bufPut_sloc5_1_0 + 1),a
      001916 8D 48            [24] 1679 	mov	(_bufPut_sloc5_1_0 + 2),r5
      001918 EF               [12] 1680 	mov	a,r7
      001919 25 40            [12] 1681 	add	a,_bufPut_sloc3_1_0
      00191B F8               [12] 1682 	mov	r0,a
      00191C E4               [12] 1683 	clr	a
      00191D 35 41            [12] 1684 	addc	a,(_bufPut_sloc3_1_0 + 1)
      00191F FA               [12] 1685 	mov	r2,a
      001920 AE 42            [24] 1686 	mov	r6,(_bufPut_sloc3_1_0 + 2)
      001922 88 82            [24] 1687 	mov	dpl,r0
      001924 8A 83            [24] 1688 	mov	dph,r2
      001926 8E F0            [24] 1689 	mov	b,r6
      001928 12 1C 03         [24] 1690 	lcall	__gptrget
      00192B F8               [12] 1691 	mov	r0,a
      00192C 85 46 82         [24] 1692 	mov	dpl,_bufPut_sloc5_1_0
      00192F 85 47 83         [24] 1693 	mov	dph,(_bufPut_sloc5_1_0 + 1)
      001932 85 48 F0         [24] 1694 	mov	b,(_bufPut_sloc5_1_0 + 2)
      001935 12 1B E8         [24] 1695 	lcall	__gptrput
                           00011C  1696 	C$util_buffer.c$67$3$20 ==.
                                   1697 ;	util_buffer.c:67: pBuf->iTail++;
      001938 85 43 82         [24] 1698 	mov	dpl,_bufPut_sloc4_1_0
      00193B 85 44 83         [24] 1699 	mov	dph,(_bufPut_sloc4_1_0 + 1)
      00193E 85 45 F0         [24] 1700 	mov	b,(_bufPut_sloc4_1_0 + 2)
      001941 12 1C 03         [24] 1701 	lcall	__gptrget
      001944 FE               [12] 1702 	mov	r6,a
      001945 0E               [12] 1703 	inc	r6
      001946 85 43 82         [24] 1704 	mov	dpl,_bufPut_sloc4_1_0
      001949 85 44 83         [24] 1705 	mov	dph,(_bufPut_sloc4_1_0 + 1)
      00194C 85 45 F0         [24] 1706 	mov	b,(_bufPut_sloc4_1_0 + 2)
      00194F EE               [12] 1707 	mov	a,r6
      001950 12 1B E8         [24] 1708 	lcall	__gptrput
                           000137  1709 	C$util_buffer.c$68$3$20 ==.
                                   1710 ;	util_buffer.c:68: if( pBuf->iTail == BUF_SIZE )
      001953 85 43 82         [24] 1711 	mov	dpl,_bufPut_sloc4_1_0
      001956 85 44 83         [24] 1712 	mov	dph,(_bufPut_sloc4_1_0 + 1)
      001959 85 45 F0         [24] 1713 	mov	b,(_bufPut_sloc4_1_0 + 2)
      00195C 12 1C 03         [24] 1714 	lcall	__gptrget
      00195F FE               [12] 1715 	mov	r6,a
      001960 BE 80 02         [24] 1716 	cjne	r6,#0x80,00126$
      001963 80 08            [24] 1717 	sjmp	00127$
      001965                       1718 00126$:
      001965 D0 02            [24] 1719 	pop	ar2
      001967 D0 01            [24] 1720 	pop	ar1
      001969 D0 00            [24] 1721 	pop	ar0
      00196B 80 13            [24] 1722 	sjmp	00102$
      00196D                       1723 00127$:
      00196D D0 02            [24] 1724 	pop	ar2
      00196F D0 01            [24] 1725 	pop	ar1
      001971 D0 00            [24] 1726 	pop	ar0
                           000157  1727 	C$util_buffer.c$69$3$20 ==.
                                   1728 ;	util_buffer.c:69: pBuf->iTail = 0;
      001973 85 43 82         [24] 1729 	mov	dpl,_bufPut_sloc4_1_0
      001976 85 44 83         [24] 1730 	mov	dph,(_bufPut_sloc4_1_0 + 1)
      001979 85 45 F0         [24] 1731 	mov	b,(_bufPut_sloc4_1_0 + 2)
      00197C E4               [12] 1732 	clr	a
      00197D 12 1B E8         [24] 1733 	lcall	__gptrput
      001980                       1734 00102$:
                           000164  1735 	C$util_buffer.c$70$3$20 ==.
                                   1736 ;	util_buffer.c:70: i++;
      001980 0F               [12] 1737 	inc	r7
      001981 02 18 E9         [24] 1738 	ljmp	00103$
      001984                       1739 00115$:
      001984 90 07 00         [24] 1740 	mov	dptr,#_bufPut_i_1_18
      001987 EF               [12] 1741 	mov	a,r7
      001988 F0               [24] 1742 	movx	@dptr,a
                           00016D  1743 	C$util_buffer.c$72$2$19 ==.
                                   1744 ;	util_buffer.c:72: pBuf->nBytes += i;
      001989 88 82            [24] 1745 	mov	dpl,r0
      00198B 89 83            [24] 1746 	mov	dph,r1
      00198D 8A F0            [24] 1747 	mov	b,r2
      00198F 12 1C 03         [24] 1748 	lcall	__gptrget
      001992 FE               [12] 1749 	mov	r6,a
      001993 2F               [12] 1750 	add	a,r7
      001994 FF               [12] 1751 	mov	r7,a
      001995 88 82            [24] 1752 	mov	dpl,r0
      001997 89 83            [24] 1753 	mov	dph,r1
      001999 8A F0            [24] 1754 	mov	b,r2
      00199B 12 1B E8         [24] 1755 	lcall	__gptrput
      00199E 80 05            [24] 1756 	sjmp	00108$
      0019A0                       1757 00107$:
                           000184  1758 	C$util_buffer.c$74$2$21 ==.
                                   1759 ;	util_buffer.c:74: i = 0;
      0019A0 90 07 00         [24] 1760 	mov	dptr,#_bufPut_i_1_18
      0019A3 E4               [12] 1761 	clr	a
      0019A4 F0               [24] 1762 	movx	@dptr,a
      0019A5                       1763 00108$:
                           000189  1764 	C$util_buffer.c$78$1$18 ==.
                                   1765 ;	util_buffer.c:78: halIntUnlock( s );
      0019A5 85 3B 82         [24] 1766 	mov	dpl,_bufPut_sloc0_1_0
      0019A8 85 3C 83         [24] 1767 	mov	dph,(_bufPut_sloc0_1_0 + 1)
      0019AB 12 0A 7C         [24] 1768 	lcall	_halIntUnlock
                           000192  1769 	C$util_buffer.c$80$1$18 ==.
                                   1770 ;	util_buffer.c:80: return i;
      0019AE 90 07 00         [24] 1771 	mov	dptr,#_bufPut_i_1_18
      0019B1 E0               [24] 1772 	movx	a,@dptr
                           000196  1773 	C$util_buffer.c$81$1$18 ==.
                           000196  1774 	XG$bufPut$0$0 ==.
      0019B2 F5 82            [12] 1775 	mov	dpl,a
      0019B4 22               [24] 1776 	ret
                                   1777 ;------------------------------------------------------------
                                   1778 ;Allocation info for local variables in function 'bufGet'
                                   1779 ;------------------------------------------------------------
                                   1780 ;sloc0                     Allocated with name '_bufGet_sloc0_1_0'
                                   1781 ;sloc1                     Allocated with name '_bufGet_sloc1_1_0'
                                   1782 ;sloc2                     Allocated with name '_bufGet_sloc2_1_0'
                                   1783 ;sloc3                     Allocated with name '_bufGet_sloc3_1_0'
                                   1784 ;pData                     Allocated with name '_bufGet_PARM_2'
                                   1785 ;nBytes                    Allocated with name '_bufGet_PARM_3'
                                   1786 ;pBuf                      Allocated with name '_bufGet_pBuf_1_22'
                                   1787 ;i                         Allocated with name '_bufGet_i_1_23'
                                   1788 ;s                         Allocated with name '_bufGet_s_1_23'
                                   1789 ;------------------------------------------------------------
                           000199  1790 	G$bufGet$0$0 ==.
                           000199  1791 	C$util_buffer.c$95$1$18 ==.
                                   1792 ;	util_buffer.c:95: uint8_t bufGet( ringBuf_t *pBuf, uint8_t *pData, uint8_t nBytes ) {
                                   1793 ;	-----------------------------------------
                                   1794 ;	 function bufGet
                                   1795 ;	-----------------------------------------
      0019B5                       1796 _bufGet:
      0019B5 AF F0            [24] 1797 	mov	r7,b
      0019B7 AE 83            [24] 1798 	mov	r6,dph
      0019B9 E5 82            [12] 1799 	mov	a,dpl
      0019BB 90 07 05         [24] 1800 	mov	dptr,#_bufGet_pBuf_1_22
      0019BE F0               [24] 1801 	movx	@dptr,a
      0019BF EE               [12] 1802 	mov	a,r6
      0019C0 A3               [24] 1803 	inc	dptr
      0019C1 F0               [24] 1804 	movx	@dptr,a
      0019C2 EF               [12] 1805 	mov	a,r7
      0019C3 A3               [24] 1806 	inc	dptr
      0019C4 F0               [24] 1807 	movx	@dptr,a
                           0001A9  1808 	C$util_buffer.c$100$1$23 ==.
                                   1809 ;	util_buffer.c:100: s = halIntLock( );
      0019C5 12 0A 6E         [24] 1810 	lcall	_halIntLock
      0019C8 AE 82            [24] 1811 	mov	r6,dpl
      0019CA AF 83            [24] 1812 	mov	r7,dph
                           0001B0  1813 	C$util_buffer.c$103$2$24 ==.
                                   1814 ;	util_buffer.c:103: while( i < nBytes && i < pBuf->nBytes ) {
      0019CC 90 07 01         [24] 1815 	mov	dptr,#_bufGet_PARM_2
      0019CF E0               [24] 1816 	movx	a,@dptr
      0019D0 FB               [12] 1817 	mov	r3,a
      0019D1 A3               [24] 1818 	inc	dptr
      0019D2 E0               [24] 1819 	movx	a,@dptr
      0019D3 FC               [12] 1820 	mov	r4,a
      0019D4 A3               [24] 1821 	inc	dptr
      0019D5 E0               [24] 1822 	movx	a,@dptr
      0019D6 FD               [12] 1823 	mov	r5,a
      0019D7 90 07 04         [24] 1824 	mov	dptr,#_bufGet_PARM_3
      0019DA E0               [24] 1825 	movx	a,@dptr
      0019DB F5 4F            [12] 1826 	mov	_bufGet_sloc2_1_0,a
      0019DD 79 00            [12] 1827 	mov	r1,#0x00
      0019DF                       1828 00104$:
      0019DF C3               [12] 1829 	clr	c
      0019E0 E9               [12] 1830 	mov	a,r1
      0019E1 95 4F            [12] 1831 	subb	a,_bufGet_sloc2_1_0
      0019E3 40 03            [24] 1832 	jc	00122$
      0019E5 02 1A AA         [24] 1833 	ljmp	00106$
      0019E8                       1834 00122$:
      0019E8 C0 06            [24] 1835 	push	ar6
      0019EA C0 07            [24] 1836 	push	ar7
      0019EC 90 07 05         [24] 1837 	mov	dptr,#_bufGet_pBuf_1_22
      0019EF E0               [24] 1838 	movx	a,@dptr
      0019F0 F5 49            [12] 1839 	mov	_bufGet_sloc0_1_0,a
      0019F2 A3               [24] 1840 	inc	dptr
      0019F3 E0               [24] 1841 	movx	a,@dptr
      0019F4 F5 4A            [12] 1842 	mov	(_bufGet_sloc0_1_0 + 1),a
      0019F6 A3               [24] 1843 	inc	dptr
      0019F7 E0               [24] 1844 	movx	a,@dptr
      0019F8 F5 4B            [12] 1845 	mov	(_bufGet_sloc0_1_0 + 2),a
      0019FA 74 80            [12] 1846 	mov	a,#0x80
      0019FC 25 49            [12] 1847 	add	a,_bufGet_sloc0_1_0
      0019FE F8               [12] 1848 	mov	r0,a
      0019FF E4               [12] 1849 	clr	a
      001A00 35 4A            [12] 1850 	addc	a,(_bufGet_sloc0_1_0 + 1)
      001A02 FE               [12] 1851 	mov	r6,a
      001A03 AF 4B            [24] 1852 	mov	r7,(_bufGet_sloc0_1_0 + 2)
      001A05 88 82            [24] 1853 	mov	dpl,r0
      001A07 8E 83            [24] 1854 	mov	dph,r6
      001A09 8F F0            [24] 1855 	mov	b,r7
      001A0B 12 1C 03         [24] 1856 	lcall	__gptrget
      001A0E F8               [12] 1857 	mov	r0,a
      001A0F C3               [12] 1858 	clr	c
      001A10 E9               [12] 1859 	mov	a,r1
      001A11 98               [12] 1860 	subb	a,r0
      001A12 D0 07            [24] 1861 	pop	ar7
      001A14 D0 06            [24] 1862 	pop	ar6
      001A16 40 03            [24] 1863 	jc	00123$
      001A18 02 1A AA         [24] 1864 	ljmp	00106$
      001A1B                       1865 00123$:
                           0001FF  1866 	C$util_buffer.c$104$1$23 ==.
                                   1867 ;	util_buffer.c:104: pData[i] = pBuf->pData[pBuf->iHead];
      001A1B C0 06            [24] 1868 	push	ar6
      001A1D C0 07            [24] 1869 	push	ar7
      001A1F E9               [12] 1870 	mov	a,r1
      001A20 2B               [12] 1871 	add	a,r3
      001A21 F5 50            [12] 1872 	mov	_bufGet_sloc3_1_0,a
      001A23 E4               [12] 1873 	clr	a
      001A24 3C               [12] 1874 	addc	a,r4
      001A25 F5 51            [12] 1875 	mov	(_bufGet_sloc3_1_0 + 1),a
      001A27 8D 52            [24] 1876 	mov	(_bufGet_sloc3_1_0 + 2),r5
      001A29 74 81            [12] 1877 	mov	a,#0x81
      001A2B 25 49            [12] 1878 	add	a,_bufGet_sloc0_1_0
      001A2D F5 4C            [12] 1879 	mov	_bufGet_sloc1_1_0,a
      001A2F E4               [12] 1880 	clr	a
      001A30 35 4A            [12] 1881 	addc	a,(_bufGet_sloc0_1_0 + 1)
      001A32 F5 4D            [12] 1882 	mov	(_bufGet_sloc1_1_0 + 1),a
      001A34 85 4B 4E         [24] 1883 	mov	(_bufGet_sloc1_1_0 + 2),(_bufGet_sloc0_1_0 + 2)
      001A37 85 4C 82         [24] 1884 	mov	dpl,_bufGet_sloc1_1_0
      001A3A 85 4D 83         [24] 1885 	mov	dph,(_bufGet_sloc1_1_0 + 1)
      001A3D 85 4E F0         [24] 1886 	mov	b,(_bufGet_sloc1_1_0 + 2)
      001A40 12 1C 03         [24] 1887 	lcall	__gptrget
      001A43 25 49            [12] 1888 	add	a,_bufGet_sloc0_1_0
      001A45 FA               [12] 1889 	mov	r2,a
      001A46 E4               [12] 1890 	clr	a
      001A47 35 4A            [12] 1891 	addc	a,(_bufGet_sloc0_1_0 + 1)
      001A49 FE               [12] 1892 	mov	r6,a
      001A4A AF 4B            [24] 1893 	mov	r7,(_bufGet_sloc0_1_0 + 2)
      001A4C 8A 82            [24] 1894 	mov	dpl,r2
      001A4E 8E 83            [24] 1895 	mov	dph,r6
      001A50 8F F0            [24] 1896 	mov	b,r7
      001A52 12 1C 03         [24] 1897 	lcall	__gptrget
      001A55 FA               [12] 1898 	mov	r2,a
      001A56 85 50 82         [24] 1899 	mov	dpl,_bufGet_sloc3_1_0
      001A59 85 51 83         [24] 1900 	mov	dph,(_bufGet_sloc3_1_0 + 1)
      001A5C 85 52 F0         [24] 1901 	mov	b,(_bufGet_sloc3_1_0 + 2)
      001A5F 12 1B E8         [24] 1902 	lcall	__gptrput
                           000246  1903 	C$util_buffer.c$105$2$24 ==.
                                   1904 ;	util_buffer.c:105: pBuf->iHead++;
      001A62 85 4C 82         [24] 1905 	mov	dpl,_bufGet_sloc1_1_0
      001A65 85 4D 83         [24] 1906 	mov	dph,(_bufGet_sloc1_1_0 + 1)
      001A68 85 4E F0         [24] 1907 	mov	b,(_bufGet_sloc1_1_0 + 2)
      001A6B 12 1C 03         [24] 1908 	lcall	__gptrget
      001A6E FF               [12] 1909 	mov	r7,a
      001A6F 0F               [12] 1910 	inc	r7
      001A70 85 4C 82         [24] 1911 	mov	dpl,_bufGet_sloc1_1_0
      001A73 85 4D 83         [24] 1912 	mov	dph,(_bufGet_sloc1_1_0 + 1)
      001A76 85 4E F0         [24] 1913 	mov	b,(_bufGet_sloc1_1_0 + 2)
      001A79 EF               [12] 1914 	mov	a,r7
      001A7A 12 1B E8         [24] 1915 	lcall	__gptrput
                           000261  1916 	C$util_buffer.c$106$2$24 ==.
                                   1917 ;	util_buffer.c:106: if( pBuf->iHead == BUF_SIZE )
      001A7D 85 4C 82         [24] 1918 	mov	dpl,_bufGet_sloc1_1_0
      001A80 85 4D 83         [24] 1919 	mov	dph,(_bufGet_sloc1_1_0 + 1)
      001A83 85 4E F0         [24] 1920 	mov	b,(_bufGet_sloc1_1_0 + 2)
      001A86 12 1C 03         [24] 1921 	lcall	__gptrget
      001A89 FF               [12] 1922 	mov	r7,a
      001A8A BF 80 02         [24] 1923 	cjne	r7,#0x80,00124$
      001A8D 80 06            [24] 1924 	sjmp	00125$
      001A8F                       1925 00124$:
      001A8F D0 07            [24] 1926 	pop	ar7
      001A91 D0 06            [24] 1927 	pop	ar6
      001A93 80 11            [24] 1928 	sjmp	00102$
      001A95                       1929 00125$:
      001A95 D0 07            [24] 1930 	pop	ar7
      001A97 D0 06            [24] 1931 	pop	ar6
                           00027D  1932 	C$util_buffer.c$107$2$24 ==.
                                   1933 ;	util_buffer.c:107: pBuf->iHead = 0;
      001A99 85 4C 82         [24] 1934 	mov	dpl,_bufGet_sloc1_1_0
      001A9C 85 4D 83         [24] 1935 	mov	dph,(_bufGet_sloc1_1_0 + 1)
      001A9F 85 4E F0         [24] 1936 	mov	b,(_bufGet_sloc1_1_0 + 2)
      001AA2 E4               [12] 1937 	clr	a
      001AA3 12 1B E8         [24] 1938 	lcall	__gptrput
      001AA6                       1939 00102$:
                           00028A  1940 	C$util_buffer.c$108$2$24 ==.
                                   1941 ;	util_buffer.c:108: i++;
      001AA6 09               [12] 1942 	inc	r1
      001AA7 02 19 DF         [24] 1943 	ljmp	00104$
      001AAA                       1944 00106$:
                           00028E  1945 	C$util_buffer.c$110$1$23 ==.
                                   1946 ;	util_buffer.c:110: pBuf->nBytes -= i;
      001AAA 90 07 05         [24] 1947 	mov	dptr,#_bufGet_pBuf_1_22
      001AAD E0               [24] 1948 	movx	a,@dptr
      001AAE FB               [12] 1949 	mov	r3,a
      001AAF A3               [24] 1950 	inc	dptr
      001AB0 E0               [24] 1951 	movx	a,@dptr
      001AB1 FC               [12] 1952 	mov	r4,a
      001AB2 A3               [24] 1953 	inc	dptr
      001AB3 E0               [24] 1954 	movx	a,@dptr
      001AB4 FD               [12] 1955 	mov	r5,a
      001AB5 74 80            [12] 1956 	mov	a,#0x80
      001AB7 2B               [12] 1957 	add	a,r3
      001AB8 FB               [12] 1958 	mov	r3,a
      001AB9 E4               [12] 1959 	clr	a
      001ABA 3C               [12] 1960 	addc	a,r4
      001ABB FC               [12] 1961 	mov	r4,a
      001ABC 8B 82            [24] 1962 	mov	dpl,r3
      001ABE 8C 83            [24] 1963 	mov	dph,r4
      001AC0 8D F0            [24] 1964 	mov	b,r5
      001AC2 12 1C 03         [24] 1965 	lcall	__gptrget
      001AC5 C3               [12] 1966 	clr	c
      001AC6 99               [12] 1967 	subb	a,r1
      001AC7 8B 82            [24] 1968 	mov	dpl,r3
      001AC9 8C 83            [24] 1969 	mov	dph,r4
      001ACB 8D F0            [24] 1970 	mov	b,r5
      001ACD 12 1B E8         [24] 1971 	lcall	__gptrput
                           0002B4  1972 	C$util_buffer.c$113$1$23 ==.
                                   1973 ;	util_buffer.c:113: halIntUnlock( s );
      001AD0 8E 82            [24] 1974 	mov	dpl,r6
      001AD2 8F 83            [24] 1975 	mov	dph,r7
      001AD4 C0 01            [24] 1976 	push	ar1
      001AD6 12 0A 7C         [24] 1977 	lcall	_halIntUnlock
      001AD9 D0 01            [24] 1978 	pop	ar1
                           0002BF  1979 	C$util_buffer.c$114$1$23 ==.
                                   1980 ;	util_buffer.c:114: return i;
      001ADB 89 82            [24] 1981 	mov	dpl,r1
                           0002C1  1982 	C$util_buffer.c$115$1$23 ==.
                           0002C1  1983 	XG$bufGet$0$0 ==.
      001ADD 22               [24] 1984 	ret
                                   1985 ;------------------------------------------------------------
                                   1986 ;Allocation info for local variables in function 'bufPeek'
                                   1987 ;------------------------------------------------------------
                                   1988 ;sloc0                     Allocated with name '_bufPeek_sloc0_1_0'
                                   1989 ;sloc1                     Allocated with name '_bufPeek_sloc1_1_0'
                                   1990 ;sloc2                     Allocated with name '_bufPeek_sloc2_1_0'
                                   1991 ;sloc3                     Allocated with name '_bufPeek_sloc3_1_0'
                                   1992 ;sloc4                     Allocated with name '_bufPeek_sloc4_1_0'
                                   1993 ;pData                     Allocated with name '_bufPeek_PARM_2'
                                   1994 ;nBytes                    Allocated with name '_bufPeek_PARM_3'
                                   1995 ;pBuf                      Allocated with name '_bufPeek_pBuf_1_25'
                                   1996 ;i                         Allocated with name '_bufPeek_i_1_26'
                                   1997 ;j                         Allocated with name '_bufPeek_j_1_26'
                                   1998 ;s                         Allocated with name '_bufPeek_s_1_26'
                                   1999 ;------------------------------------------------------------
                           0002C2  2000 	G$bufPeek$0$0 ==.
                           0002C2  2001 	C$util_buffer.c$129$1$23 ==.
                                   2002 ;	util_buffer.c:129: uint8_t bufPeek( ringBuf_t *pBuf, uint8_t *pData, uint8_t nBytes ) {
                                   2003 ;	-----------------------------------------
                                   2004 ;	 function bufPeek
                                   2005 ;	-----------------------------------------
      001ADE                       2006 _bufPeek:
      001ADE AF F0            [24] 2007 	mov	r7,b
      001AE0 AE 83            [24] 2008 	mov	r6,dph
      001AE2 E5 82            [12] 2009 	mov	a,dpl
      001AE4 90 07 0C         [24] 2010 	mov	dptr,#_bufPeek_pBuf_1_25
      001AE7 F0               [24] 2011 	movx	@dptr,a
      001AE8 EE               [12] 2012 	mov	a,r6
      001AE9 A3               [24] 2013 	inc	dptr
      001AEA F0               [24] 2014 	movx	@dptr,a
      001AEB EF               [12] 2015 	mov	a,r7
      001AEC A3               [24] 2016 	inc	dptr
      001AED F0               [24] 2017 	movx	@dptr,a
                           0002D2  2018 	C$util_buffer.c$134$1$26 ==.
                                   2019 ;	util_buffer.c:134: s = halIntLock( );
      001AEE 12 0A 6E         [24] 2020 	lcall	_halIntLock
      001AF1 AE 82            [24] 2021 	mov	r6,dpl
      001AF3 AF 83            [24] 2022 	mov	r7,dph
                           0002D9  2023 	C$util_buffer.c$137$1$26 ==.
                                   2024 ;	util_buffer.c:137: j = pBuf->iHead;
      001AF5 90 07 0C         [24] 2025 	mov	dptr,#_bufPeek_pBuf_1_25
      001AF8 E0               [24] 2026 	movx	a,@dptr
      001AF9 FB               [12] 2027 	mov	r3,a
      001AFA A3               [24] 2028 	inc	dptr
      001AFB E0               [24] 2029 	movx	a,@dptr
      001AFC FC               [12] 2030 	mov	r4,a
      001AFD A3               [24] 2031 	inc	dptr
      001AFE E0               [24] 2032 	movx	a,@dptr
      001AFF FD               [12] 2033 	mov	r5,a
      001B00 74 81            [12] 2034 	mov	a,#0x81
      001B02 2B               [12] 2035 	add	a,r3
      001B03 F8               [12] 2036 	mov	r0,a
      001B04 E4               [12] 2037 	clr	a
      001B05 3C               [12] 2038 	addc	a,r4
      001B06 F9               [12] 2039 	mov	r1,a
      001B07 8D 02            [24] 2040 	mov	ar2,r5
      001B09 88 82            [24] 2041 	mov	dpl,r0
      001B0B 89 83            [24] 2042 	mov	dph,r1
      001B0D 8A F0            [24] 2043 	mov	b,r2
      001B0F 12 1C 03         [24] 2044 	lcall	__gptrget
      001B12 F8               [12] 2045 	mov	r0,a
      001B13 90 07 0F         [24] 2046 	mov	dptr,#_bufPeek_j_1_26
      001B16 F0               [24] 2047 	movx	@dptr,a
                           0002FB  2048 	C$util_buffer.c$138$1$26 ==.
                                   2049 ;	util_buffer.c:138: while( i < nBytes && i < pBuf->nBytes ) {
      001B17 74 80            [12] 2050 	mov	a,#0x80
      001B19 2B               [12] 2051 	add	a,r3
      001B1A F5 58            [12] 2052 	mov	_bufPeek_sloc3_1_0,a
      001B1C E4               [12] 2053 	clr	a
      001B1D 3C               [12] 2054 	addc	a,r4
      001B1E F5 59            [12] 2055 	mov	(_bufPeek_sloc3_1_0 + 1),a
      001B20 8D 5A            [24] 2056 	mov	(_bufPeek_sloc3_1_0 + 2),r5
      001B22 90 07 08         [24] 2057 	mov	dptr,#_bufPeek_PARM_2
      001B25 E0               [24] 2058 	movx	a,@dptr
      001B26 F5 53            [12] 2059 	mov	_bufPeek_sloc0_1_0,a
      001B28 A3               [24] 2060 	inc	dptr
      001B29 E0               [24] 2061 	movx	a,@dptr
      001B2A F5 54            [12] 2062 	mov	(_bufPeek_sloc0_1_0 + 1),a
      001B2C A3               [24] 2063 	inc	dptr
      001B2D E0               [24] 2064 	movx	a,@dptr
      001B2E F5 55            [12] 2065 	mov	(_bufPeek_sloc0_1_0 + 2),a
      001B30 90 07 0B         [24] 2066 	mov	dptr,#_bufPeek_PARM_3
      001B33 E0               [24] 2067 	movx	a,@dptr
      001B34 F5 56            [12] 2068 	mov	_bufPeek_sloc1_1_0,a
      001B36 75 57 00         [24] 2069 	mov	_bufPeek_sloc2_1_0,#0x00
      001B39                       2070 00104$:
      001B39 C3               [12] 2071 	clr	c
      001B3A E5 57            [12] 2072 	mov	a,_bufPeek_sloc2_1_0
      001B3C 95 56            [12] 2073 	subb	a,_bufPeek_sloc1_1_0
      001B3E 50 6F            [24] 2074 	jnc	00106$
      001B40 C0 06            [24] 2075 	push	ar6
      001B42 C0 07            [24] 2076 	push	ar7
      001B44 85 58 82         [24] 2077 	mov	dpl,_bufPeek_sloc3_1_0
      001B47 85 59 83         [24] 2078 	mov	dph,(_bufPeek_sloc3_1_0 + 1)
      001B4A 85 5A F0         [24] 2079 	mov	b,(_bufPeek_sloc3_1_0 + 2)
      001B4D 12 1C 03         [24] 2080 	lcall	__gptrget
      001B50 FF               [12] 2081 	mov	r7,a
      001B51 C3               [12] 2082 	clr	c
      001B52 E5 57            [12] 2083 	mov	a,_bufPeek_sloc2_1_0
      001B54 9F               [12] 2084 	subb	a,r7
      001B55 D0 07            [24] 2085 	pop	ar7
      001B57 D0 06            [24] 2086 	pop	ar6
      001B59 50 54            [24] 2087 	jnc	00106$
                           00033F  2088 	C$util_buffer.c$139$1$26 ==.
                                   2089 ;	util_buffer.c:139: pData[i] = pBuf->pData[j];
      001B5B C0 06            [24] 2090 	push	ar6
      001B5D C0 07            [24] 2091 	push	ar7
      001B5F E5 57            [12] 2092 	mov	a,_bufPeek_sloc2_1_0
      001B61 25 53            [12] 2093 	add	a,_bufPeek_sloc0_1_0
      001B63 F5 5B            [12] 2094 	mov	_bufPeek_sloc4_1_0,a
      001B65 E4               [12] 2095 	clr	a
      001B66 35 54            [12] 2096 	addc	a,(_bufPeek_sloc0_1_0 + 1)
      001B68 F5 5C            [12] 2097 	mov	(_bufPeek_sloc4_1_0 + 1),a
      001B6A 85 55 5D         [24] 2098 	mov	(_bufPeek_sloc4_1_0 + 2),(_bufPeek_sloc0_1_0 + 2)
      001B6D 90 07 0F         [24] 2099 	mov	dptr,#_bufPeek_j_1_26
      001B70 E0               [24] 2100 	movx	a,@dptr
      001B71 F9               [12] 2101 	mov	r1,a
      001B72 2B               [12] 2102 	add	a,r3
      001B73 F8               [12] 2103 	mov	r0,a
      001B74 E4               [12] 2104 	clr	a
      001B75 3C               [12] 2105 	addc	a,r4
      001B76 FE               [12] 2106 	mov	r6,a
      001B77 8D 07            [24] 2107 	mov	ar7,r5
      001B79 88 82            [24] 2108 	mov	dpl,r0
      001B7B 8E 83            [24] 2109 	mov	dph,r6
      001B7D 8F F0            [24] 2110 	mov	b,r7
      001B7F 12 1C 03         [24] 2111 	lcall	__gptrget
      001B82 F8               [12] 2112 	mov	r0,a
      001B83 85 5B 82         [24] 2113 	mov	dpl,_bufPeek_sloc4_1_0
      001B86 85 5C 83         [24] 2114 	mov	dph,(_bufPeek_sloc4_1_0 + 1)
      001B89 85 5D F0         [24] 2115 	mov	b,(_bufPeek_sloc4_1_0 + 2)
      001B8C 12 1B E8         [24] 2116 	lcall	__gptrput
                           000373  2117 	C$util_buffer.c$140$2$27 ==.
                                   2118 ;	util_buffer.c:140: j++;
      001B8F 90 07 0F         [24] 2119 	mov	dptr,#_bufPeek_j_1_26
      001B92 E9               [12] 2120 	mov	a,r1
      001B93 04               [12] 2121 	inc	a
      001B94 F0               [24] 2122 	movx	@dptr,a
                           000379  2123 	C$util_buffer.c$141$2$27 ==.
                                   2124 ;	util_buffer.c:141: if( j == BUF_SIZE )
      001B95 E0               [24] 2125 	movx	a,@dptr
      001B96 FF               [12] 2126 	mov	r7,a
      001B97 BF 80 02         [24] 2127 	cjne	r7,#0x80,00124$
      001B9A 80 06            [24] 2128 	sjmp	00125$
      001B9C                       2129 00124$:
      001B9C D0 07            [24] 2130 	pop	ar7
      001B9E D0 06            [24] 2131 	pop	ar6
      001BA0 80 09            [24] 2132 	sjmp	00102$
      001BA2                       2133 00125$:
      001BA2 D0 07            [24] 2134 	pop	ar7
      001BA4 D0 06            [24] 2135 	pop	ar6
                           00038A  2136 	C$util_buffer.c$142$2$27 ==.
                                   2137 ;	util_buffer.c:142: j = 0;
      001BA6 90 07 0F         [24] 2138 	mov	dptr,#_bufPeek_j_1_26
      001BA9 E4               [12] 2139 	clr	a
      001BAA F0               [24] 2140 	movx	@dptr,a
      001BAB                       2141 00102$:
                           00038F  2142 	C$util_buffer.c$143$2$27 ==.
                                   2143 ;	util_buffer.c:143: i++;
      001BAB 05 57            [12] 2144 	inc	_bufPeek_sloc2_1_0
      001BAD 80 8A            [24] 2145 	sjmp	00104$
      001BAF                       2146 00106$:
                           000393  2147 	C$util_buffer.c$147$1$26 ==.
                                   2148 ;	util_buffer.c:147: halIntUnlock( s );
      001BAF 8E 82            [24] 2149 	mov	dpl,r6
      001BB1 8F 83            [24] 2150 	mov	dph,r7
      001BB3 12 0A 7C         [24] 2151 	lcall	_halIntUnlock
                           00039A  2152 	C$util_buffer.c$148$1$26 ==.
                                   2153 ;	util_buffer.c:148: return i;
      001BB6 85 57 82         [24] 2154 	mov	dpl,_bufPeek_sloc2_1_0
                           00039D  2155 	C$util_buffer.c$149$1$26 ==.
                           00039D  2156 	XG$bufPeek$0$0 ==.
      001BB9 22               [24] 2157 	ret
                                   2158 ;------------------------------------------------------------
                                   2159 ;Allocation info for local variables in function 'bufNumBytes'
                                   2160 ;------------------------------------------------------------
                                   2161 ;pBuf                      Allocated with name '_bufNumBytes_pBuf_1_28'
                                   2162 ;------------------------------------------------------------
                           00039E  2163 	G$bufNumBytes$0$0 ==.
                           00039E  2164 	C$util_buffer.c$161$1$26 ==.
                                   2165 ;	util_buffer.c:161: uint8_t bufNumBytes( ringBuf_t *pBuf ) {
                                   2166 ;	-----------------------------------------
                                   2167 ;	 function bufNumBytes
                                   2168 ;	-----------------------------------------
      001BBA                       2169 _bufNumBytes:
      001BBA AF F0            [24] 2170 	mov	r7,b
      001BBC AE 83            [24] 2171 	mov	r6,dph
      001BBE E5 82            [12] 2172 	mov	a,dpl
      001BC0 90 07 10         [24] 2173 	mov	dptr,#_bufNumBytes_pBuf_1_28
      001BC3 F0               [24] 2174 	movx	@dptr,a
      001BC4 EE               [12] 2175 	mov	a,r6
      001BC5 A3               [24] 2176 	inc	dptr
      001BC6 F0               [24] 2177 	movx	@dptr,a
      001BC7 EF               [12] 2178 	mov	a,r7
      001BC8 A3               [24] 2179 	inc	dptr
      001BC9 F0               [24] 2180 	movx	@dptr,a
                           0003AE  2181 	C$util_buffer.c$162$1$29 ==.
                                   2182 ;	util_buffer.c:162: return pBuf->nBytes;
      001BCA 90 07 10         [24] 2183 	mov	dptr,#_bufNumBytes_pBuf_1_28
      001BCD E0               [24] 2184 	movx	a,@dptr
      001BCE FD               [12] 2185 	mov	r5,a
      001BCF A3               [24] 2186 	inc	dptr
      001BD0 E0               [24] 2187 	movx	a,@dptr
      001BD1 FE               [12] 2188 	mov	r6,a
      001BD2 A3               [24] 2189 	inc	dptr
      001BD3 E0               [24] 2190 	movx	a,@dptr
      001BD4 FF               [12] 2191 	mov	r7,a
      001BD5 74 80            [12] 2192 	mov	a,#0x80
      001BD7 2D               [12] 2193 	add	a,r5
      001BD8 FD               [12] 2194 	mov	r5,a
      001BD9 E4               [12] 2195 	clr	a
      001BDA 3E               [12] 2196 	addc	a,r6
      001BDB FE               [12] 2197 	mov	r6,a
      001BDC 8D 82            [24] 2198 	mov	dpl,r5
      001BDE 8E 83            [24] 2199 	mov	dph,r6
      001BE0 8F F0            [24] 2200 	mov	b,r7
      001BE2 12 1C 03         [24] 2201 	lcall	__gptrget
                           0003C9  2202 	C$util_buffer.c$163$1$29 ==.
                           0003C9  2203 	XG$bufNumBytes$0$0 ==.
      001BE5 F5 82            [12] 2204 	mov	dpl,a
      001BE7 22               [24] 2205 	ret
                                   2206 	.area CSEG    (CODE)
                                   2207 	.area CONST   (CODE)
                                   2208 	.area XINIT   (CODE)
                                   2209 	.area CABS    (ABS,CODE)
