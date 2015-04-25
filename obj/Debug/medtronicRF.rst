                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
                                      4 ; This file was generated Sat Apr 25 00:05:13 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module medtronicRF
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _stopTimerInt
                                     13 	.globl _resetTimerCounter
                                     14 	.globl _enableTimerInt
                                     15 	.globl _txFilter
                                     16 	.globl _halUartGetNumRxBytes
                                     17 	.globl _halUartRead
                                     18 	.globl _halUartWrite
                                     19 	.globl _decode4b6b
                                     20 	.globl _encode4b6b
                                     21 	.globl _crc16
                                     22 	.globl _crc16Init
                                     23 	.globl _crc8
                                     24 	.globl _MODE
                                     25 	.globl _RE
                                     26 	.globl _SLAVE
                                     27 	.globl _FE
                                     28 	.globl _ERR
                                     29 	.globl _RX_BYTE
                                     30 	.globl _TX_BYTE
                                     31 	.globl _ACTIVE
                                     32 	.globl _B_7
                                     33 	.globl _B_6
                                     34 	.globl _B_5
                                     35 	.globl _B_4
                                     36 	.globl _B_3
                                     37 	.globl _B_2
                                     38 	.globl _B_1
                                     39 	.globl _B_0
                                     40 	.globl _WDTIF
                                     41 	.globl _P1IF
                                     42 	.globl _UTX1IF
                                     43 	.globl _UTX0IF
                                     44 	.globl _P2IF
                                     45 	.globl _ACC_7
                                     46 	.globl _ACC_6
                                     47 	.globl _ACC_5
                                     48 	.globl _ACC_4
                                     49 	.globl _ACC_3
                                     50 	.globl _ACC_2
                                     51 	.globl _ACC_1
                                     52 	.globl _ACC_0
                                     53 	.globl _OVFIM
                                     54 	.globl _T4CH1IF
                                     55 	.globl _T4CH0IF
                                     56 	.globl _T4OVFIF
                                     57 	.globl _T3CH1IF
                                     58 	.globl _T3CH0IF
                                     59 	.globl _T3OVFIF
                                     60 	.globl _CY
                                     61 	.globl _AC
                                     62 	.globl _F0
                                     63 	.globl _RS1
                                     64 	.globl _RS0
                                     65 	.globl _OV
                                     66 	.globl _F1
                                     67 	.globl _P
                                     68 	.globl _STIF
                                     69 	.globl _P0IF
                                     70 	.globl _T4IF
                                     71 	.globl _T3IF
                                     72 	.globl _T2IF
                                     73 	.globl _T1IF
                                     74 	.globl _DMAIF
                                     75 	.globl _P0IE
                                     76 	.globl _T4IE
                                     77 	.globl _T3IE
                                     78 	.globl _T2IE
                                     79 	.globl _T1IE
                                     80 	.globl _DMAIE
                                     81 	.globl _EA
                                     82 	.globl _STIE
                                     83 	.globl _ENCIE
                                     84 	.globl _URX1IE
                                     85 	.globl _URX0IE
                                     86 	.globl _ADCIE
                                     87 	.globl _RFTXRXIE
                                     88 	.globl _P2_7
                                     89 	.globl _P2_6
                                     90 	.globl _P2_5
                                     91 	.globl _P2_4
                                     92 	.globl _P2_3
                                     93 	.globl _P2_2
                                     94 	.globl _P2_1
                                     95 	.globl _P2_0
                                     96 	.globl _ENCIF_1
                                     97 	.globl _ENCIF_0
                                     98 	.globl _P1_7
                                     99 	.globl _P1_6
                                    100 	.globl _P1_5
                                    101 	.globl _P1_4
                                    102 	.globl _P1_3
                                    103 	.globl _P1_2
                                    104 	.globl _P1_1
                                    105 	.globl _P1_0
                                    106 	.globl _URX1IF
                                    107 	.globl _ADCIF
                                    108 	.globl _URX0IF
                                    109 	.globl _IT1
                                    110 	.globl _RFTXRXIF
                                    111 	.globl _IT0
                                    112 	.globl _P0_7
                                    113 	.globl _P0_6
                                    114 	.globl _P0_5
                                    115 	.globl _P0_4
                                    116 	.globl _P0_3
                                    117 	.globl _P0_2
                                    118 	.globl _P0_1
                                    119 	.globl _P0_0
                                    120 	.globl _P2DIR
                                    121 	.globl _P1DIR
                                    122 	.globl _P0DIR
                                    123 	.globl _U1GCR
                                    124 	.globl _U1UCR
                                    125 	.globl _U1BAUD
                                    126 	.globl _U1DBUF
                                    127 	.globl _U1CSR
                                    128 	.globl _P2INP
                                    129 	.globl _P1INP
                                    130 	.globl _P2SEL
                                    131 	.globl _P1SEL
                                    132 	.globl _P0SEL
                                    133 	.globl _ADCCFG
                                    134 	.globl _PERCFG
                                    135 	.globl _B
                                    136 	.globl _T4CC1
                                    137 	.globl _T4CCTL1
                                    138 	.globl _T4CC0
                                    139 	.globl _T4CCTL0
                                    140 	.globl _T4CTL
                                    141 	.globl _T4CNT
                                    142 	.globl _RFIF
                                    143 	.globl _IRCON2
                                    144 	.globl _T1CCTL2
                                    145 	.globl _T1CCTL1
                                    146 	.globl _T1CCTL0
                                    147 	.globl _T1CTL
                                    148 	.globl _T1CNTH
                                    149 	.globl _T1CNTL
                                    150 	.globl _RFST
                                    151 	.globl _ACC
                                    152 	.globl _T1CC2H
                                    153 	.globl _T1CC2L
                                    154 	.globl _T1CC1H
                                    155 	.globl _T1CC1L
                                    156 	.globl _T1CC0H
                                    157 	.globl _T1CC0L
                                    158 	.globl _RFD
                                    159 	.globl _TIMIF
                                    160 	.globl _DMAREQ
                                    161 	.globl _DMAARM
                                    162 	.globl _DMA0CFGH
                                    163 	.globl _DMA0CFGL
                                    164 	.globl _DMA1CFGH
                                    165 	.globl _DMA1CFGL
                                    166 	.globl _DMAIRQ
                                    167 	.globl _PSW
                                    168 	.globl _T3CC1
                                    169 	.globl _T3CCTL1
                                    170 	.globl _T3CC0
                                    171 	.globl _T3CCTL0
                                    172 	.globl _T3CTL
                                    173 	.globl _T3CNT
                                    174 	.globl _WDCTL
                                    175 	.globl __SFRC8
                                    176 	.globl _MEMCTR
                                    177 	.globl _CLKCON
                                    178 	.globl _U0GCR
                                    179 	.globl _U0UCR
                                    180 	.globl __SFRC3
                                    181 	.globl _U0BAUD
                                    182 	.globl _U0DBUF
                                    183 	.globl _IRCON
                                    184 	.globl __SFRBF
                                    185 	.globl _SLEEP
                                    186 	.globl _RNDH
                                    187 	.globl _RNDL
                                    188 	.globl _ADCH
                                    189 	.globl _ADCL
                                    190 	.globl _IP1
                                    191 	.globl _IEN1
                                    192 	.globl __SFRB7
                                    193 	.globl _ADCCON3
                                    194 	.globl _ADCCON2
                                    195 	.globl _ADCCON1
                                    196 	.globl _ENCCS
                                    197 	.globl _ENCDO
                                    198 	.globl _ENCDI
                                    199 	.globl __SFRB0
                                    200 	.globl _FWDATA
                                    201 	.globl _FCTL
                                    202 	.globl _FADDRH
                                    203 	.globl _FADDRL
                                    204 	.globl _FWT
                                    205 	.globl __SFRAA
                                    206 	.globl _IP0
                                    207 	.globl _IEN0
                                    208 	.globl __SFRA7
                                    209 	.globl _WORTIME1
                                    210 	.globl _WORTIME0
                                    211 	.globl _WOREVT1
                                    212 	.globl _WOREVT0
                                    213 	.globl _WORCTRL
                                    214 	.globl _WORIRQ
                                    215 	.globl _P2
                                    216 	.globl __SFR9F
                                    217 	.globl _T2CTL
                                    218 	.globl _T2PR
                                    219 	.globl _T2CT
                                    220 	.globl _S1CON
                                    221 	.globl _IEN2
                                    222 	.globl __SFR99
                                    223 	.globl _S0CON
                                    224 	.globl __SFR97
                                    225 	.globl __SFR96
                                    226 	.globl __SFR95
                                    227 	.globl __SFR94
                                    228 	.globl __XPAGE
                                    229 	.globl _MPAGE
                                    230 	.globl _DPS
                                    231 	.globl _RFIM
                                    232 	.globl _P1
                                    233 	.globl _P0INP
                                    234 	.globl __SFR8E
                                    235 	.globl _P1IEN
                                    236 	.globl _PICTL
                                    237 	.globl _P2IFG
                                    238 	.globl _P1IFG
                                    239 	.globl _P0IFG
                                    240 	.globl _TCON
                                    241 	.globl _PCON
                                    242 	.globl _U0CSR
                                    243 	.globl _DPH1
                                    244 	.globl _DPL1
                                    245 	.globl _DPH0
                                    246 	.globl _DPL0
                                    247 	.globl _SP
                                    248 	.globl _P0
                                    249 	.globl _receiveMedtronicMessage_PARM_2
                                    250 	.globl _sendMedtronicMessage_PARM_3
                                    251 	.globl _sendMedtronicMessage_PARM_2
                                    252 	.globl _X_P2DIR
                                    253 	.globl _X_P1DIR
                                    254 	.globl _X_P0DIR
                                    255 	.globl _X_U1GCR
                                    256 	.globl _X_U1UCR
                                    257 	.globl _X_U1BAUD
                                    258 	.globl _X_U1DBUF
                                    259 	.globl _X_U1CSR
                                    260 	.globl _X_P2INP
                                    261 	.globl _X_P1INP
                                    262 	.globl _X_P2SEL
                                    263 	.globl _X_P1SEL
                                    264 	.globl _X_P0SEL
                                    265 	.globl _X_ADCCFG
                                    266 	.globl _X_PERCFG
                                    267 	.globl __NA_B
                                    268 	.globl _X_T4CC1
                                    269 	.globl _X_T4CCTL1
                                    270 	.globl _X_T4CC0
                                    271 	.globl _X_T4CCTL0
                                    272 	.globl _X_T4CTL
                                    273 	.globl _X_T4CNT
                                    274 	.globl _X_RFIF
                                    275 	.globl __NA_IRCON2
                                    276 	.globl _X_T1CCTL2
                                    277 	.globl _X_T1CCTL1
                                    278 	.globl _X_T1CCTL0
                                    279 	.globl _X_T1CTL
                                    280 	.globl _X_T1CNTH
                                    281 	.globl _X_T1CNTL
                                    282 	.globl _X_RFST
                                    283 	.globl __NA_ACC
                                    284 	.globl _X_T1CC2H
                                    285 	.globl _X_T1CC2L
                                    286 	.globl _X_T1CC1H
                                    287 	.globl _X_T1CC1L
                                    288 	.globl _X_T1CC0H
                                    289 	.globl _X_T1CC0L
                                    290 	.globl _X_RFD
                                    291 	.globl _X_TIMIF
                                    292 	.globl _X_DMAREQ
                                    293 	.globl _X_DMAARM
                                    294 	.globl _X_DMA0CFGH
                                    295 	.globl _X_DMA0CFGL
                                    296 	.globl _X_DMA1CFGH
                                    297 	.globl _X_DMA1CFGL
                                    298 	.globl _X_DMAIRQ
                                    299 	.globl __NA_PSW
                                    300 	.globl _X_T3CC1
                                    301 	.globl _X_T3CCTL1
                                    302 	.globl _X_T3CC0
                                    303 	.globl _X_T3CCTL0
                                    304 	.globl _X_T3CTL
                                    305 	.globl _X_T3CNT
                                    306 	.globl _X_WDCTL
                                    307 	.globl __X_SFRC8
                                    308 	.globl _X_MEMCTR
                                    309 	.globl _X_CLKCON
                                    310 	.globl _X_U0GCR
                                    311 	.globl _X_U0UCR
                                    312 	.globl __X_SFRC3
                                    313 	.globl _X_U0BAUD
                                    314 	.globl _X_U0DBUF
                                    315 	.globl __NA_IRCON
                                    316 	.globl __X_SFRBF
                                    317 	.globl _X_SLEEP
                                    318 	.globl _X_RNDH
                                    319 	.globl _X_RNDL
                                    320 	.globl _X_ADCH
                                    321 	.globl _X_ADCL
                                    322 	.globl __NA_IP1
                                    323 	.globl __NA_IEN1
                                    324 	.globl __X_SFRB7
                                    325 	.globl _X_ADCCON3
                                    326 	.globl _X_ADCCON2
                                    327 	.globl _X_ADCCON1
                                    328 	.globl _X_ENCCS
                                    329 	.globl _X_ENCDO
                                    330 	.globl _X_ENCDI
                                    331 	.globl __X_SFRB0
                                    332 	.globl _X_FWDATA
                                    333 	.globl _X_FCTL
                                    334 	.globl _X_FADDRH
                                    335 	.globl _X_FADDRL
                                    336 	.globl _X_FWT
                                    337 	.globl __X_SFRAA
                                    338 	.globl __NA_IP0
                                    339 	.globl __NA_IEN0
                                    340 	.globl __X_SFRA7
                                    341 	.globl _X_WORTIME1
                                    342 	.globl _X_WORTIME0
                                    343 	.globl _X_WOREVT1
                                    344 	.globl _X_WOREVT0
                                    345 	.globl _X_WORCTRL
                                    346 	.globl _X_WORIRQ
                                    347 	.globl __NA_P2
                                    348 	.globl __X_SFR9F
                                    349 	.globl _X_T2CTL
                                    350 	.globl _X_T2PR
                                    351 	.globl _X_T2CT
                                    352 	.globl __NA_S1CON
                                    353 	.globl __NA_IEN2
                                    354 	.globl __X_SFR99
                                    355 	.globl __NA_S0CON
                                    356 	.globl __X_SFR97
                                    357 	.globl __X_SFR96
                                    358 	.globl __X_SFR95
                                    359 	.globl __X_SFR94
                                    360 	.globl _X_MPAGE
                                    361 	.globl __NA_DPS
                                    362 	.globl _X_RFIM
                                    363 	.globl __NA_P1
                                    364 	.globl _X_P0INP
                                    365 	.globl __X_SFR8E
                                    366 	.globl _X_P1IEN
                                    367 	.globl _X_PICTL
                                    368 	.globl _X_P2IFG
                                    369 	.globl _X_P1IFG
                                    370 	.globl _X_P0IFG
                                    371 	.globl __NA_TCON
                                    372 	.globl __NA_PCON
                                    373 	.globl _X_U0CSR
                                    374 	.globl __NA_DPH1
                                    375 	.globl __NA_DPL1
                                    376 	.globl __NA_DPH0
                                    377 	.globl __NA_DPL0
                                    378 	.globl __NA_SP
                                    379 	.globl __NA_P0
                                    380 	.globl _I2SCLKF2
                                    381 	.globl _I2SCLKF1
                                    382 	.globl _I2SCLKF0
                                    383 	.globl _I2SSTAT
                                    384 	.globl _I2SWCNT
                                    385 	.globl _I2SDATH
                                    386 	.globl _I2SDATL
                                    387 	.globl _I2SCFG1
                                    388 	.globl _I2SCFG0
                                    389 	.globl _VCO_VC_DAC
                                    390 	.globl _PKTSTATUS
                                    391 	.globl _MARCSTATE
                                    392 	.globl _RSSI
                                    393 	.globl _LQI
                                    394 	.globl _FREQEST
                                    395 	.globl _VERSION
                                    396 	.globl _PARTNUM
                                    397 	.globl __XREGDF35
                                    398 	.globl __XREGDF34
                                    399 	.globl __XREGDF33
                                    400 	.globl __XREGDF32
                                    401 	.globl _IOCFG0
                                    402 	.globl _IOCFG1
                                    403 	.globl _IOCFG2
                                    404 	.globl _PA_TABLE0
                                    405 	.globl _PA_TABLE1
                                    406 	.globl _PA_TABLE2
                                    407 	.globl _PA_TABLE3
                                    408 	.globl _PA_TABLE4
                                    409 	.globl _PA_TABLE5
                                    410 	.globl _PA_TABLE6
                                    411 	.globl _PA_TABLE7
                                    412 	.globl __XREGDF26
                                    413 	.globl _TEST0
                                    414 	.globl _TEST1
                                    415 	.globl _TEST2
                                    416 	.globl __XREGDF22
                                    417 	.globl __XREGDF21
                                    418 	.globl __XREGDF20
                                    419 	.globl _FSCAL0
                                    420 	.globl _FSCAL1
                                    421 	.globl _FSCAL2
                                    422 	.globl _FSCAL3
                                    423 	.globl _FREND0
                                    424 	.globl _FREND1
                                    425 	.globl _AGCCTRL0
                                    426 	.globl _AGCCTRL1
                                    427 	.globl _AGCCTRL2
                                    428 	.globl _BSCFG
                                    429 	.globl _FOCCFG
                                    430 	.globl _MCSM0
                                    431 	.globl _MCSM1
                                    432 	.globl _MCSM2
                                    433 	.globl _DEVIATN
                                    434 	.globl _MDMCFG0
                                    435 	.globl _MDMCFG1
                                    436 	.globl _MDMCFG2
                                    437 	.globl _MDMCFG3
                                    438 	.globl _MDMCFG4
                                    439 	.globl _FREQ0
                                    440 	.globl _FREQ1
                                    441 	.globl _FREQ2
                                    442 	.globl _FSCTRL0
                                    443 	.globl _FSCTRL1
                                    444 	.globl _CHANNR
                                    445 	.globl _ADDR
                                    446 	.globl _PKTCTRL0
                                    447 	.globl _PKTCTRL1
                                    448 	.globl _PKTLEN
                                    449 	.globl _SYNC0
                                    450 	.globl _SYNC1
                                    451 	.globl _MDMCTRL0H
                                    452 	.globl _sendMedtronicMessage
                                    453 	.globl _receiveMedtronicMessage
                                    454 	.globl _usbReceiveData
                                    455 ;--------------------------------------------------------
                                    456 ; special function registers
                                    457 ;--------------------------------------------------------
                                    458 	.area RSEG    (ABS,DATA)
      000000                        459 	.org 0x0000
                           000080   460 G$P0$0$0 == 0x0080
                           000080   461 _P0	=	0x0080
                           000081   462 G$SP$0$0 == 0x0081
                           000081   463 _SP	=	0x0081
                           000082   464 G$DPL0$0$0 == 0x0082
                           000082   465 _DPL0	=	0x0082
                           000083   466 G$DPH0$0$0 == 0x0083
                           000083   467 _DPH0	=	0x0083
                           000084   468 G$DPL1$0$0 == 0x0084
                           000084   469 _DPL1	=	0x0084
                           000085   470 G$DPH1$0$0 == 0x0085
                           000085   471 _DPH1	=	0x0085
                           000086   472 G$U0CSR$0$0 == 0x0086
                           000086   473 _U0CSR	=	0x0086
                           000087   474 G$PCON$0$0 == 0x0087
                           000087   475 _PCON	=	0x0087
                           000088   476 G$TCON$0$0 == 0x0088
                           000088   477 _TCON	=	0x0088
                           000089   478 G$P0IFG$0$0 == 0x0089
                           000089   479 _P0IFG	=	0x0089
                           00008A   480 G$P1IFG$0$0 == 0x008a
                           00008A   481 _P1IFG	=	0x008a
                           00008B   482 G$P2IFG$0$0 == 0x008b
                           00008B   483 _P2IFG	=	0x008b
                           00008C   484 G$PICTL$0$0 == 0x008c
                           00008C   485 _PICTL	=	0x008c
                           00008D   486 G$P1IEN$0$0 == 0x008d
                           00008D   487 _P1IEN	=	0x008d
                           00008E   488 G$_SFR8E$0$0 == 0x008e
                           00008E   489 __SFR8E	=	0x008e
                           00008F   490 G$P0INP$0$0 == 0x008f
                           00008F   491 _P0INP	=	0x008f
                           000090   492 G$P1$0$0 == 0x0090
                           000090   493 _P1	=	0x0090
                           000091   494 G$RFIM$0$0 == 0x0091
                           000091   495 _RFIM	=	0x0091
                           000092   496 G$DPS$0$0 == 0x0092
                           000092   497 _DPS	=	0x0092
                           000093   498 G$MPAGE$0$0 == 0x0093
                           000093   499 _MPAGE	=	0x0093
                           000093   500 G$_XPAGE$0$0 == 0x0093
                           000093   501 __XPAGE	=	0x0093
                           000094   502 G$_SFR94$0$0 == 0x0094
                           000094   503 __SFR94	=	0x0094
                           000095   504 G$_SFR95$0$0 == 0x0095
                           000095   505 __SFR95	=	0x0095
                           000096   506 G$_SFR96$0$0 == 0x0096
                           000096   507 __SFR96	=	0x0096
                           000097   508 G$_SFR97$0$0 == 0x0097
                           000097   509 __SFR97	=	0x0097
                           000098   510 G$S0CON$0$0 == 0x0098
                           000098   511 _S0CON	=	0x0098
                           000099   512 G$_SFR99$0$0 == 0x0099
                           000099   513 __SFR99	=	0x0099
                           00009A   514 G$IEN2$0$0 == 0x009a
                           00009A   515 _IEN2	=	0x009a
                           00009B   516 G$S1CON$0$0 == 0x009b
                           00009B   517 _S1CON	=	0x009b
                           00009C   518 G$T2CT$0$0 == 0x009c
                           00009C   519 _T2CT	=	0x009c
                           00009D   520 G$T2PR$0$0 == 0x009d
                           00009D   521 _T2PR	=	0x009d
                           00009E   522 G$T2CTL$0$0 == 0x009e
                           00009E   523 _T2CTL	=	0x009e
                           00009F   524 G$_SFR9F$0$0 == 0x009f
                           00009F   525 __SFR9F	=	0x009f
                           0000A0   526 G$P2$0$0 == 0x00a0
                           0000A0   527 _P2	=	0x00a0
                           0000A1   528 G$WORIRQ$0$0 == 0x00a1
                           0000A1   529 _WORIRQ	=	0x00a1
                           0000A2   530 G$WORCTRL$0$0 == 0x00a2
                           0000A2   531 _WORCTRL	=	0x00a2
                           0000A3   532 G$WOREVT0$0$0 == 0x00a3
                           0000A3   533 _WOREVT0	=	0x00a3
                           0000A4   534 G$WOREVT1$0$0 == 0x00a4
                           0000A4   535 _WOREVT1	=	0x00a4
                           0000A5   536 G$WORTIME0$0$0 == 0x00a5
                           0000A5   537 _WORTIME0	=	0x00a5
                           0000A6   538 G$WORTIME1$0$0 == 0x00a6
                           0000A6   539 _WORTIME1	=	0x00a6
                           0000A7   540 G$_SFRA7$0$0 == 0x00a7
                           0000A7   541 __SFRA7	=	0x00a7
                           0000A8   542 G$IEN0$0$0 == 0x00a8
                           0000A8   543 _IEN0	=	0x00a8
                           0000A9   544 G$IP0$0$0 == 0x00a9
                           0000A9   545 _IP0	=	0x00a9
                           0000AA   546 G$_SFRAA$0$0 == 0x00aa
                           0000AA   547 __SFRAA	=	0x00aa
                           0000AB   548 G$FWT$0$0 == 0x00ab
                           0000AB   549 _FWT	=	0x00ab
                           0000AC   550 G$FADDRL$0$0 == 0x00ac
                           0000AC   551 _FADDRL	=	0x00ac
                           0000AD   552 G$FADDRH$0$0 == 0x00ad
                           0000AD   553 _FADDRH	=	0x00ad
                           0000AE   554 G$FCTL$0$0 == 0x00ae
                           0000AE   555 _FCTL	=	0x00ae
                           0000AF   556 G$FWDATA$0$0 == 0x00af
                           0000AF   557 _FWDATA	=	0x00af
                           0000B0   558 G$_SFRB0$0$0 == 0x00b0
                           0000B0   559 __SFRB0	=	0x00b0
                           0000B1   560 G$ENCDI$0$0 == 0x00b1
                           0000B1   561 _ENCDI	=	0x00b1
                           0000B2   562 G$ENCDO$0$0 == 0x00b2
                           0000B2   563 _ENCDO	=	0x00b2
                           0000B3   564 G$ENCCS$0$0 == 0x00b3
                           0000B3   565 _ENCCS	=	0x00b3
                           0000B4   566 G$ADCCON1$0$0 == 0x00b4
                           0000B4   567 _ADCCON1	=	0x00b4
                           0000B5   568 G$ADCCON2$0$0 == 0x00b5
                           0000B5   569 _ADCCON2	=	0x00b5
                           0000B6   570 G$ADCCON3$0$0 == 0x00b6
                           0000B6   571 _ADCCON3	=	0x00b6
                           0000B7   572 G$_SFRB7$0$0 == 0x00b7
                           0000B7   573 __SFRB7	=	0x00b7
                           0000B8   574 G$IEN1$0$0 == 0x00b8
                           0000B8   575 _IEN1	=	0x00b8
                           0000B9   576 G$IP1$0$0 == 0x00b9
                           0000B9   577 _IP1	=	0x00b9
                           0000BA   578 G$ADCL$0$0 == 0x00ba
                           0000BA   579 _ADCL	=	0x00ba
                           0000BB   580 G$ADCH$0$0 == 0x00bb
                           0000BB   581 _ADCH	=	0x00bb
                           0000BC   582 G$RNDL$0$0 == 0x00bc
                           0000BC   583 _RNDL	=	0x00bc
                           0000BD   584 G$RNDH$0$0 == 0x00bd
                           0000BD   585 _RNDH	=	0x00bd
                           0000BE   586 G$SLEEP$0$0 == 0x00be
                           0000BE   587 _SLEEP	=	0x00be
                           0000BF   588 G$_SFRBF$0$0 == 0x00bf
                           0000BF   589 __SFRBF	=	0x00bf
                           0000C0   590 G$IRCON$0$0 == 0x00c0
                           0000C0   591 _IRCON	=	0x00c0
                           0000C1   592 G$U0DBUF$0$0 == 0x00c1
                           0000C1   593 _U0DBUF	=	0x00c1
                           0000C2   594 G$U0BAUD$0$0 == 0x00c2
                           0000C2   595 _U0BAUD	=	0x00c2
                           0000C3   596 G$_SFRC3$0$0 == 0x00c3
                           0000C3   597 __SFRC3	=	0x00c3
                           0000C4   598 G$U0UCR$0$0 == 0x00c4
                           0000C4   599 _U0UCR	=	0x00c4
                           0000C5   600 G$U0GCR$0$0 == 0x00c5
                           0000C5   601 _U0GCR	=	0x00c5
                           0000C6   602 G$CLKCON$0$0 == 0x00c6
                           0000C6   603 _CLKCON	=	0x00c6
                           0000C7   604 G$MEMCTR$0$0 == 0x00c7
                           0000C7   605 _MEMCTR	=	0x00c7
                           0000C8   606 G$_SFRC8$0$0 == 0x00c8
                           0000C8   607 __SFRC8	=	0x00c8
                           0000C9   608 G$WDCTL$0$0 == 0x00c9
                           0000C9   609 _WDCTL	=	0x00c9
                           0000CA   610 G$T3CNT$0$0 == 0x00ca
                           0000CA   611 _T3CNT	=	0x00ca
                           0000CB   612 G$T3CTL$0$0 == 0x00cb
                           0000CB   613 _T3CTL	=	0x00cb
                           0000CC   614 G$T3CCTL0$0$0 == 0x00cc
                           0000CC   615 _T3CCTL0	=	0x00cc
                           0000CD   616 G$T3CC0$0$0 == 0x00cd
                           0000CD   617 _T3CC0	=	0x00cd
                           0000CE   618 G$T3CCTL1$0$0 == 0x00ce
                           0000CE   619 _T3CCTL1	=	0x00ce
                           0000CF   620 G$T3CC1$0$0 == 0x00cf
                           0000CF   621 _T3CC1	=	0x00cf
                           0000D0   622 G$PSW$0$0 == 0x00d0
                           0000D0   623 _PSW	=	0x00d0
                           0000D1   624 G$DMAIRQ$0$0 == 0x00d1
                           0000D1   625 _DMAIRQ	=	0x00d1
                           0000D2   626 G$DMA1CFGL$0$0 == 0x00d2
                           0000D2   627 _DMA1CFGL	=	0x00d2
                           0000D3   628 G$DMA1CFGH$0$0 == 0x00d3
                           0000D3   629 _DMA1CFGH	=	0x00d3
                           0000D4   630 G$DMA0CFGL$0$0 == 0x00d4
                           0000D4   631 _DMA0CFGL	=	0x00d4
                           0000D5   632 G$DMA0CFGH$0$0 == 0x00d5
                           0000D5   633 _DMA0CFGH	=	0x00d5
                           0000D6   634 G$DMAARM$0$0 == 0x00d6
                           0000D6   635 _DMAARM	=	0x00d6
                           0000D7   636 G$DMAREQ$0$0 == 0x00d7
                           0000D7   637 _DMAREQ	=	0x00d7
                           0000D8   638 G$TIMIF$0$0 == 0x00d8
                           0000D8   639 _TIMIF	=	0x00d8
                           0000D9   640 G$RFD$0$0 == 0x00d9
                           0000D9   641 _RFD	=	0x00d9
                           0000DA   642 G$T1CC0L$0$0 == 0x00da
                           0000DA   643 _T1CC0L	=	0x00da
                           0000DB   644 G$T1CC0H$0$0 == 0x00db
                           0000DB   645 _T1CC0H	=	0x00db
                           0000DC   646 G$T1CC1L$0$0 == 0x00dc
                           0000DC   647 _T1CC1L	=	0x00dc
                           0000DD   648 G$T1CC1H$0$0 == 0x00dd
                           0000DD   649 _T1CC1H	=	0x00dd
                           0000DE   650 G$T1CC2L$0$0 == 0x00de
                           0000DE   651 _T1CC2L	=	0x00de
                           0000DF   652 G$T1CC2H$0$0 == 0x00df
                           0000DF   653 _T1CC2H	=	0x00df
                           0000E0   654 G$ACC$0$0 == 0x00e0
                           0000E0   655 _ACC	=	0x00e0
                           0000E1   656 G$RFST$0$0 == 0x00e1
                           0000E1   657 _RFST	=	0x00e1
                           0000E2   658 G$T1CNTL$0$0 == 0x00e2
                           0000E2   659 _T1CNTL	=	0x00e2
                           0000E3   660 G$T1CNTH$0$0 == 0x00e3
                           0000E3   661 _T1CNTH	=	0x00e3
                           0000E4   662 G$T1CTL$0$0 == 0x00e4
                           0000E4   663 _T1CTL	=	0x00e4
                           0000E5   664 G$T1CCTL0$0$0 == 0x00e5
                           0000E5   665 _T1CCTL0	=	0x00e5
                           0000E6   666 G$T1CCTL1$0$0 == 0x00e6
                           0000E6   667 _T1CCTL1	=	0x00e6
                           0000E7   668 G$T1CCTL2$0$0 == 0x00e7
                           0000E7   669 _T1CCTL2	=	0x00e7
                           0000E8   670 G$IRCON2$0$0 == 0x00e8
                           0000E8   671 _IRCON2	=	0x00e8
                           0000E9   672 G$RFIF$0$0 == 0x00e9
                           0000E9   673 _RFIF	=	0x00e9
                           0000EA   674 G$T4CNT$0$0 == 0x00ea
                           0000EA   675 _T4CNT	=	0x00ea
                           0000EB   676 G$T4CTL$0$0 == 0x00eb
                           0000EB   677 _T4CTL	=	0x00eb
                           0000EC   678 G$T4CCTL0$0$0 == 0x00ec
                           0000EC   679 _T4CCTL0	=	0x00ec
                           0000ED   680 G$T4CC0$0$0 == 0x00ed
                           0000ED   681 _T4CC0	=	0x00ed
                           0000EE   682 G$T4CCTL1$0$0 == 0x00ee
                           0000EE   683 _T4CCTL1	=	0x00ee
                           0000EF   684 G$T4CC1$0$0 == 0x00ef
                           0000EF   685 _T4CC1	=	0x00ef
                           0000F0   686 G$B$0$0 == 0x00f0
                           0000F0   687 _B	=	0x00f0
                           0000F1   688 G$PERCFG$0$0 == 0x00f1
                           0000F1   689 _PERCFG	=	0x00f1
                           0000F2   690 G$ADCCFG$0$0 == 0x00f2
                           0000F2   691 _ADCCFG	=	0x00f2
                           0000F3   692 G$P0SEL$0$0 == 0x00f3
                           0000F3   693 _P0SEL	=	0x00f3
                           0000F4   694 G$P1SEL$0$0 == 0x00f4
                           0000F4   695 _P1SEL	=	0x00f4
                           0000F5   696 G$P2SEL$0$0 == 0x00f5
                           0000F5   697 _P2SEL	=	0x00f5
                           0000F6   698 G$P1INP$0$0 == 0x00f6
                           0000F6   699 _P1INP	=	0x00f6
                           0000F7   700 G$P2INP$0$0 == 0x00f7
                           0000F7   701 _P2INP	=	0x00f7
                           0000F8   702 G$U1CSR$0$0 == 0x00f8
                           0000F8   703 _U1CSR	=	0x00f8
                           0000F9   704 G$U1DBUF$0$0 == 0x00f9
                           0000F9   705 _U1DBUF	=	0x00f9
                           0000FA   706 G$U1BAUD$0$0 == 0x00fa
                           0000FA   707 _U1BAUD	=	0x00fa
                           0000FB   708 G$U1UCR$0$0 == 0x00fb
                           0000FB   709 _U1UCR	=	0x00fb
                           0000FC   710 G$U1GCR$0$0 == 0x00fc
                           0000FC   711 _U1GCR	=	0x00fc
                           0000FD   712 G$P0DIR$0$0 == 0x00fd
                           0000FD   713 _P0DIR	=	0x00fd
                           0000FE   714 G$P1DIR$0$0 == 0x00fe
                           0000FE   715 _P1DIR	=	0x00fe
                           0000FF   716 G$P2DIR$0$0 == 0x00ff
                           0000FF   717 _P2DIR	=	0x00ff
                                    718 ;--------------------------------------------------------
                                    719 ; special function bits
                                    720 ;--------------------------------------------------------
                                    721 	.area RSEG    (ABS,DATA)
      000000                        722 	.org 0x0000
                           000080   723 G$P0_0$0$0 == 0x0080
                           000080   724 _P0_0	=	0x0080
                           000081   725 G$P0_1$0$0 == 0x0081
                           000081   726 _P0_1	=	0x0081
                           000082   727 G$P0_2$0$0 == 0x0082
                           000082   728 _P0_2	=	0x0082
                           000083   729 G$P0_3$0$0 == 0x0083
                           000083   730 _P0_3	=	0x0083
                           000084   731 G$P0_4$0$0 == 0x0084
                           000084   732 _P0_4	=	0x0084
                           000085   733 G$P0_5$0$0 == 0x0085
                           000085   734 _P0_5	=	0x0085
                           000086   735 G$P0_6$0$0 == 0x0086
                           000086   736 _P0_6	=	0x0086
                           000087   737 G$P0_7$0$0 == 0x0087
                           000087   738 _P0_7	=	0x0087
                           000088   739 G$IT0$0$0 == 0x0088
                           000088   740 _IT0	=	0x0088
                           000089   741 G$RFTXRXIF$0$0 == 0x0089
                           000089   742 _RFTXRXIF	=	0x0089
                           00008A   743 G$IT1$0$0 == 0x008a
                           00008A   744 _IT1	=	0x008a
                           00008B   745 G$URX0IF$0$0 == 0x008b
                           00008B   746 _URX0IF	=	0x008b
                           00008D   747 G$ADCIF$0$0 == 0x008d
                           00008D   748 _ADCIF	=	0x008d
                           00008F   749 G$URX1IF$0$0 == 0x008f
                           00008F   750 _URX1IF	=	0x008f
                           000090   751 G$P1_0$0$0 == 0x0090
                           000090   752 _P1_0	=	0x0090
                           000091   753 G$P1_1$0$0 == 0x0091
                           000091   754 _P1_1	=	0x0091
                           000092   755 G$P1_2$0$0 == 0x0092
                           000092   756 _P1_2	=	0x0092
                           000093   757 G$P1_3$0$0 == 0x0093
                           000093   758 _P1_3	=	0x0093
                           000094   759 G$P1_4$0$0 == 0x0094
                           000094   760 _P1_4	=	0x0094
                           000095   761 G$P1_5$0$0 == 0x0095
                           000095   762 _P1_5	=	0x0095
                           000096   763 G$P1_6$0$0 == 0x0096
                           000096   764 _P1_6	=	0x0096
                           000097   765 G$P1_7$0$0 == 0x0097
                           000097   766 _P1_7	=	0x0097
                           000098   767 G$ENCIF_0$0$0 == 0x0098
                           000098   768 _ENCIF_0	=	0x0098
                           000099   769 G$ENCIF_1$0$0 == 0x0099
                           000099   770 _ENCIF_1	=	0x0099
                           0000A0   771 G$P2_0$0$0 == 0x00a0
                           0000A0   772 _P2_0	=	0x00a0
                           0000A1   773 G$P2_1$0$0 == 0x00a1
                           0000A1   774 _P2_1	=	0x00a1
                           0000A2   775 G$P2_2$0$0 == 0x00a2
                           0000A2   776 _P2_2	=	0x00a2
                           0000A3   777 G$P2_3$0$0 == 0x00a3
                           0000A3   778 _P2_3	=	0x00a3
                           0000A4   779 G$P2_4$0$0 == 0x00a4
                           0000A4   780 _P2_4	=	0x00a4
                           0000A5   781 G$P2_5$0$0 == 0x00a5
                           0000A5   782 _P2_5	=	0x00a5
                           0000A6   783 G$P2_6$0$0 == 0x00a6
                           0000A6   784 _P2_6	=	0x00a6
                           0000A7   785 G$P2_7$0$0 == 0x00a7
                           0000A7   786 _P2_7	=	0x00a7
                           0000A8   787 G$RFTXRXIE$0$0 == 0x00a8
                           0000A8   788 _RFTXRXIE	=	0x00a8
                           0000A9   789 G$ADCIE$0$0 == 0x00a9
                           0000A9   790 _ADCIE	=	0x00a9
                           0000AA   791 G$URX0IE$0$0 == 0x00aa
                           0000AA   792 _URX0IE	=	0x00aa
                           0000AB   793 G$URX1IE$0$0 == 0x00ab
                           0000AB   794 _URX1IE	=	0x00ab
                           0000AC   795 G$ENCIE$0$0 == 0x00ac
                           0000AC   796 _ENCIE	=	0x00ac
                           0000AD   797 G$STIE$0$0 == 0x00ad
                           0000AD   798 _STIE	=	0x00ad
                           0000AF   799 G$EA$0$0 == 0x00af
                           0000AF   800 _EA	=	0x00af
                           0000B8   801 G$DMAIE$0$0 == 0x00b8
                           0000B8   802 _DMAIE	=	0x00b8
                           0000B9   803 G$T1IE$0$0 == 0x00b9
                           0000B9   804 _T1IE	=	0x00b9
                           0000BA   805 G$T2IE$0$0 == 0x00ba
                           0000BA   806 _T2IE	=	0x00ba
                           0000BB   807 G$T3IE$0$0 == 0x00bb
                           0000BB   808 _T3IE	=	0x00bb
                           0000BC   809 G$T4IE$0$0 == 0x00bc
                           0000BC   810 _T4IE	=	0x00bc
                           0000BD   811 G$P0IE$0$0 == 0x00bd
                           0000BD   812 _P0IE	=	0x00bd
                           0000C0   813 G$DMAIF$0$0 == 0x00c0
                           0000C0   814 _DMAIF	=	0x00c0
                           0000C1   815 G$T1IF$0$0 == 0x00c1
                           0000C1   816 _T1IF	=	0x00c1
                           0000C2   817 G$T2IF$0$0 == 0x00c2
                           0000C2   818 _T2IF	=	0x00c2
                           0000C3   819 G$T3IF$0$0 == 0x00c3
                           0000C3   820 _T3IF	=	0x00c3
                           0000C4   821 G$T4IF$0$0 == 0x00c4
                           0000C4   822 _T4IF	=	0x00c4
                           0000C5   823 G$P0IF$0$0 == 0x00c5
                           0000C5   824 _P0IF	=	0x00c5
                           0000C7   825 G$STIF$0$0 == 0x00c7
                           0000C7   826 _STIF	=	0x00c7
                           0000D0   827 G$P$0$0 == 0x00d0
                           0000D0   828 _P	=	0x00d0
                           0000D1   829 G$F1$0$0 == 0x00d1
                           0000D1   830 _F1	=	0x00d1
                           0000D2   831 G$OV$0$0 == 0x00d2
                           0000D2   832 _OV	=	0x00d2
                           0000D3   833 G$RS0$0$0 == 0x00d3
                           0000D3   834 _RS0	=	0x00d3
                           0000D4   835 G$RS1$0$0 == 0x00d4
                           0000D4   836 _RS1	=	0x00d4
                           0000D5   837 G$F0$0$0 == 0x00d5
                           0000D5   838 _F0	=	0x00d5
                           0000D6   839 G$AC$0$0 == 0x00d6
                           0000D6   840 _AC	=	0x00d6
                           0000D7   841 G$CY$0$0 == 0x00d7
                           0000D7   842 _CY	=	0x00d7
                           0000D8   843 G$T3OVFIF$0$0 == 0x00d8
                           0000D8   844 _T3OVFIF	=	0x00d8
                           0000D9   845 G$T3CH0IF$0$0 == 0x00d9
                           0000D9   846 _T3CH0IF	=	0x00d9
                           0000DA   847 G$T3CH1IF$0$0 == 0x00da
                           0000DA   848 _T3CH1IF	=	0x00da
                           0000DB   849 G$T4OVFIF$0$0 == 0x00db
                           0000DB   850 _T4OVFIF	=	0x00db
                           0000DC   851 G$T4CH0IF$0$0 == 0x00dc
                           0000DC   852 _T4CH0IF	=	0x00dc
                           0000DD   853 G$T4CH1IF$0$0 == 0x00dd
                           0000DD   854 _T4CH1IF	=	0x00dd
                           0000DE   855 G$OVFIM$0$0 == 0x00de
                           0000DE   856 _OVFIM	=	0x00de
                           0000E0   857 G$ACC_0$0$0 == 0x00e0
                           0000E0   858 _ACC_0	=	0x00e0
                           0000E1   859 G$ACC_1$0$0 == 0x00e1
                           0000E1   860 _ACC_1	=	0x00e1
                           0000E2   861 G$ACC_2$0$0 == 0x00e2
                           0000E2   862 _ACC_2	=	0x00e2
                           0000E3   863 G$ACC_3$0$0 == 0x00e3
                           0000E3   864 _ACC_3	=	0x00e3
                           0000E4   865 G$ACC_4$0$0 == 0x00e4
                           0000E4   866 _ACC_4	=	0x00e4
                           0000E5   867 G$ACC_5$0$0 == 0x00e5
                           0000E5   868 _ACC_5	=	0x00e5
                           0000E6   869 G$ACC_6$0$0 == 0x00e6
                           0000E6   870 _ACC_6	=	0x00e6
                           0000E7   871 G$ACC_7$0$0 == 0x00e7
                           0000E7   872 _ACC_7	=	0x00e7
                           0000E8   873 G$P2IF$0$0 == 0x00e8
                           0000E8   874 _P2IF	=	0x00e8
                           0000E9   875 G$UTX0IF$0$0 == 0x00e9
                           0000E9   876 _UTX0IF	=	0x00e9
                           0000EA   877 G$UTX1IF$0$0 == 0x00ea
                           0000EA   878 _UTX1IF	=	0x00ea
                           0000EB   879 G$P1IF$0$0 == 0x00eb
                           0000EB   880 _P1IF	=	0x00eb
                           0000EC   881 G$WDTIF$0$0 == 0x00ec
                           0000EC   882 _WDTIF	=	0x00ec
                           0000F0   883 G$B_0$0$0 == 0x00f0
                           0000F0   884 _B_0	=	0x00f0
                           0000F1   885 G$B_1$0$0 == 0x00f1
                           0000F1   886 _B_1	=	0x00f1
                           0000F2   887 G$B_2$0$0 == 0x00f2
                           0000F2   888 _B_2	=	0x00f2
                           0000F3   889 G$B_3$0$0 == 0x00f3
                           0000F3   890 _B_3	=	0x00f3
                           0000F4   891 G$B_4$0$0 == 0x00f4
                           0000F4   892 _B_4	=	0x00f4
                           0000F5   893 G$B_5$0$0 == 0x00f5
                           0000F5   894 _B_5	=	0x00f5
                           0000F6   895 G$B_6$0$0 == 0x00f6
                           0000F6   896 _B_6	=	0x00f6
                           0000F7   897 G$B_7$0$0 == 0x00f7
                           0000F7   898 _B_7	=	0x00f7
                           0000F8   899 G$ACTIVE$0$0 == 0x00f8
                           0000F8   900 _ACTIVE	=	0x00f8
                           0000F9   901 G$TX_BYTE$0$0 == 0x00f9
                           0000F9   902 _TX_BYTE	=	0x00f9
                           0000FA   903 G$RX_BYTE$0$0 == 0x00fa
                           0000FA   904 _RX_BYTE	=	0x00fa
                           0000FB   905 G$ERR$0$0 == 0x00fb
                           0000FB   906 _ERR	=	0x00fb
                           0000FC   907 G$FE$0$0 == 0x00fc
                           0000FC   908 _FE	=	0x00fc
                           0000FD   909 G$SLAVE$0$0 == 0x00fd
                           0000FD   910 _SLAVE	=	0x00fd
                           0000FE   911 G$RE$0$0 == 0x00fe
                           0000FE   912 _RE	=	0x00fe
                           0000FF   913 G$MODE$0$0 == 0x00ff
                           0000FF   914 _MODE	=	0x00ff
                                    915 ;--------------------------------------------------------
                                    916 ; overlayable register banks
                                    917 ;--------------------------------------------------------
                                    918 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        919 	.ds 8
                                    920 ;--------------------------------------------------------
                                    921 ; internal ram data
                                    922 ;--------------------------------------------------------
                                    923 	.area DSEG    (DATA)
                           000000   924 LmedtronicRF.receiveMedtronicMessage$sloc0$1$0==.
      000008                        925 _receiveMedtronicMessage_sloc0_1_0:
      000008                        926 	.ds 3
                           000003   927 LmedtronicRF.receiveMedtronicMessage$sloc1$1$0==.
      00000B                        928 _receiveMedtronicMessage_sloc1_1_0:
      00000B                        929 	.ds 1
                           000004   930 LmedtronicRF.receiveMedtronicMessage$sloc2$1$0==.
      00000C                        931 _receiveMedtronicMessage_sloc2_1_0:
      00000C                        932 	.ds 3
                                    933 ;--------------------------------------------------------
                                    934 ; overlayable items in internal ram 
                                    935 ;--------------------------------------------------------
                                    936 ;--------------------------------------------------------
                                    937 ; indirectly addressable internal ram data
                                    938 ;--------------------------------------------------------
                                    939 	.area ISEG    (DATA)
                                    940 ;--------------------------------------------------------
                                    941 ; absolute internal ram data
                                    942 ;--------------------------------------------------------
                                    943 	.area IABS    (ABS,DATA)
                                    944 	.area IABS    (ABS,DATA)
                                    945 ;--------------------------------------------------------
                                    946 ; bit data
                                    947 ;--------------------------------------------------------
                                    948 	.area BSEG    (BIT)
                                    949 ;--------------------------------------------------------
                                    950 ; paged external ram data
                                    951 ;--------------------------------------------------------
                                    952 	.area PSEG    (PAG,XDATA)
                                    953 ;--------------------------------------------------------
                                    954 ; external ram data
                                    955 ;--------------------------------------------------------
                                    956 	.area XSEG    (XDATA)
                           00DF02   957 G$MDMCTRL0H$0$0 == 0xdf02
                           00DF02   958 _MDMCTRL0H	=	0xdf02
                           00DF00   959 G$SYNC1$0$0 == 0xdf00
                           00DF00   960 _SYNC1	=	0xdf00
                           00DF01   961 G$SYNC0$0$0 == 0xdf01
                           00DF01   962 _SYNC0	=	0xdf01
                           00DF02   963 G$PKTLEN$0$0 == 0xdf02
                           00DF02   964 _PKTLEN	=	0xdf02
                           00DF03   965 G$PKTCTRL1$0$0 == 0xdf03
                           00DF03   966 _PKTCTRL1	=	0xdf03
                           00DF04   967 G$PKTCTRL0$0$0 == 0xdf04
                           00DF04   968 _PKTCTRL0	=	0xdf04
                           00DF05   969 G$ADDR$0$0 == 0xdf05
                           00DF05   970 _ADDR	=	0xdf05
                           00DF06   971 G$CHANNR$0$0 == 0xdf06
                           00DF06   972 _CHANNR	=	0xdf06
                           00DF07   973 G$FSCTRL1$0$0 == 0xdf07
                           00DF07   974 _FSCTRL1	=	0xdf07
                           00DF08   975 G$FSCTRL0$0$0 == 0xdf08
                           00DF08   976 _FSCTRL0	=	0xdf08
                           00DF09   977 G$FREQ2$0$0 == 0xdf09
                           00DF09   978 _FREQ2	=	0xdf09
                           00DF0A   979 G$FREQ1$0$0 == 0xdf0a
                           00DF0A   980 _FREQ1	=	0xdf0a
                           00DF0B   981 G$FREQ0$0$0 == 0xdf0b
                           00DF0B   982 _FREQ0	=	0xdf0b
                           00DF0C   983 G$MDMCFG4$0$0 == 0xdf0c
                           00DF0C   984 _MDMCFG4	=	0xdf0c
                           00DF0D   985 G$MDMCFG3$0$0 == 0xdf0d
                           00DF0D   986 _MDMCFG3	=	0xdf0d
                           00DF0E   987 G$MDMCFG2$0$0 == 0xdf0e
                           00DF0E   988 _MDMCFG2	=	0xdf0e
                           00DF0F   989 G$MDMCFG1$0$0 == 0xdf0f
                           00DF0F   990 _MDMCFG1	=	0xdf0f
                           00DF10   991 G$MDMCFG0$0$0 == 0xdf10
                           00DF10   992 _MDMCFG0	=	0xdf10
                           00DF11   993 G$DEVIATN$0$0 == 0xdf11
                           00DF11   994 _DEVIATN	=	0xdf11
                           00DF12   995 G$MCSM2$0$0 == 0xdf12
                           00DF12   996 _MCSM2	=	0xdf12
                           00DF13   997 G$MCSM1$0$0 == 0xdf13
                           00DF13   998 _MCSM1	=	0xdf13
                           00DF14   999 G$MCSM0$0$0 == 0xdf14
                           00DF14  1000 _MCSM0	=	0xdf14
                           00DF15  1001 G$FOCCFG$0$0 == 0xdf15
                           00DF15  1002 _FOCCFG	=	0xdf15
                           00DF16  1003 G$BSCFG$0$0 == 0xdf16
                           00DF16  1004 _BSCFG	=	0xdf16
                           00DF17  1005 G$AGCCTRL2$0$0 == 0xdf17
                           00DF17  1006 _AGCCTRL2	=	0xdf17
                           00DF18  1007 G$AGCCTRL1$0$0 == 0xdf18
                           00DF18  1008 _AGCCTRL1	=	0xdf18
                           00DF19  1009 G$AGCCTRL0$0$0 == 0xdf19
                           00DF19  1010 _AGCCTRL0	=	0xdf19
                           00DF1A  1011 G$FREND1$0$0 == 0xdf1a
                           00DF1A  1012 _FREND1	=	0xdf1a
                           00DF1B  1013 G$FREND0$0$0 == 0xdf1b
                           00DF1B  1014 _FREND0	=	0xdf1b
                           00DF1C  1015 G$FSCAL3$0$0 == 0xdf1c
                           00DF1C  1016 _FSCAL3	=	0xdf1c
                           00DF1D  1017 G$FSCAL2$0$0 == 0xdf1d
                           00DF1D  1018 _FSCAL2	=	0xdf1d
                           00DF1E  1019 G$FSCAL1$0$0 == 0xdf1e
                           00DF1E  1020 _FSCAL1	=	0xdf1e
                           00DF1F  1021 G$FSCAL0$0$0 == 0xdf1f
                           00DF1F  1022 _FSCAL0	=	0xdf1f
                           00DF20  1023 G$_XREGDF20$0$0 == 0xdf20
                           00DF20  1024 __XREGDF20	=	0xdf20
                           00DF21  1025 G$_XREGDF21$0$0 == 0xdf21
                           00DF21  1026 __XREGDF21	=	0xdf21
                           00DF22  1027 G$_XREGDF22$0$0 == 0xdf22
                           00DF22  1028 __XREGDF22	=	0xdf22
                           00DF23  1029 G$TEST2$0$0 == 0xdf23
                           00DF23  1030 _TEST2	=	0xdf23
                           00DF24  1031 G$TEST1$0$0 == 0xdf24
                           00DF24  1032 _TEST1	=	0xdf24
                           00DF25  1033 G$TEST0$0$0 == 0xdf25
                           00DF25  1034 _TEST0	=	0xdf25
                           00DF26  1035 G$_XREGDF26$0$0 == 0xdf26
                           00DF26  1036 __XREGDF26	=	0xdf26
                           00DF27  1037 G$PA_TABLE7$0$0 == 0xdf27
                           00DF27  1038 _PA_TABLE7	=	0xdf27
                           00DF28  1039 G$PA_TABLE6$0$0 == 0xdf28
                           00DF28  1040 _PA_TABLE6	=	0xdf28
                           00DF29  1041 G$PA_TABLE5$0$0 == 0xdf29
                           00DF29  1042 _PA_TABLE5	=	0xdf29
                           00DF2A  1043 G$PA_TABLE4$0$0 == 0xdf2a
                           00DF2A  1044 _PA_TABLE4	=	0xdf2a
                           00DF2B  1045 G$PA_TABLE3$0$0 == 0xdf2b
                           00DF2B  1046 _PA_TABLE3	=	0xdf2b
                           00DF2C  1047 G$PA_TABLE2$0$0 == 0xdf2c
                           00DF2C  1048 _PA_TABLE2	=	0xdf2c
                           00DF2D  1049 G$PA_TABLE1$0$0 == 0xdf2d
                           00DF2D  1050 _PA_TABLE1	=	0xdf2d
                           00DF2E  1051 G$PA_TABLE0$0$0 == 0xdf2e
                           00DF2E  1052 _PA_TABLE0	=	0xdf2e
                           00DF2F  1053 G$IOCFG2$0$0 == 0xdf2f
                           00DF2F  1054 _IOCFG2	=	0xdf2f
                           00DF30  1055 G$IOCFG1$0$0 == 0xdf30
                           00DF30  1056 _IOCFG1	=	0xdf30
                           00DF31  1057 G$IOCFG0$0$0 == 0xdf31
                           00DF31  1058 _IOCFG0	=	0xdf31
                           00DF32  1059 G$_XREGDF32$0$0 == 0xdf32
                           00DF32  1060 __XREGDF32	=	0xdf32
                           00DF33  1061 G$_XREGDF33$0$0 == 0xdf33
                           00DF33  1062 __XREGDF33	=	0xdf33
                           00DF34  1063 G$_XREGDF34$0$0 == 0xdf34
                           00DF34  1064 __XREGDF34	=	0xdf34
                           00DF35  1065 G$_XREGDF35$0$0 == 0xdf35
                           00DF35  1066 __XREGDF35	=	0xdf35
                           00DF36  1067 G$PARTNUM$0$0 == 0xdf36
                           00DF36  1068 _PARTNUM	=	0xdf36
                           00DF37  1069 G$VERSION$0$0 == 0xdf37
                           00DF37  1070 _VERSION	=	0xdf37
                           00DF38  1071 G$FREQEST$0$0 == 0xdf38
                           00DF38  1072 _FREQEST	=	0xdf38
                           00DF39  1073 G$LQI$0$0 == 0xdf39
                           00DF39  1074 _LQI	=	0xdf39
                           00DF3A  1075 G$RSSI$0$0 == 0xdf3a
                           00DF3A  1076 _RSSI	=	0xdf3a
                           00DF3B  1077 G$MARCSTATE$0$0 == 0xdf3b
                           00DF3B  1078 _MARCSTATE	=	0xdf3b
                           00DF3C  1079 G$PKTSTATUS$0$0 == 0xdf3c
                           00DF3C  1080 _PKTSTATUS	=	0xdf3c
                           00DF3D  1081 G$VCO_VC_DAC$0$0 == 0xdf3d
                           00DF3D  1082 _VCO_VC_DAC	=	0xdf3d
                           00DF40  1083 G$I2SCFG0$0$0 == 0xdf40
                           00DF40  1084 _I2SCFG0	=	0xdf40
                           00DF41  1085 G$I2SCFG1$0$0 == 0xdf41
                           00DF41  1086 _I2SCFG1	=	0xdf41
                           00DF42  1087 G$I2SDATL$0$0 == 0xdf42
                           00DF42  1088 _I2SDATL	=	0xdf42
                           00DF43  1089 G$I2SDATH$0$0 == 0xdf43
                           00DF43  1090 _I2SDATH	=	0xdf43
                           00DF44  1091 G$I2SWCNT$0$0 == 0xdf44
                           00DF44  1092 _I2SWCNT	=	0xdf44
                           00DF45  1093 G$I2SSTAT$0$0 == 0xdf45
                           00DF45  1094 _I2SSTAT	=	0xdf45
                           00DF46  1095 G$I2SCLKF0$0$0 == 0xdf46
                           00DF46  1096 _I2SCLKF0	=	0xdf46
                           00DF47  1097 G$I2SCLKF1$0$0 == 0xdf47
                           00DF47  1098 _I2SCLKF1	=	0xdf47
                           00DF48  1099 G$I2SCLKF2$0$0 == 0xdf48
                           00DF48  1100 _I2SCLKF2	=	0xdf48
                           00DF80  1101 G$_NA_P0$0$0 == 0xdf80
                           00DF80  1102 __NA_P0	=	0xdf80
                           00DF81  1103 G$_NA_SP$0$0 == 0xdf81
                           00DF81  1104 __NA_SP	=	0xdf81
                           00DF82  1105 G$_NA_DPL0$0$0 == 0xdf82
                           00DF82  1106 __NA_DPL0	=	0xdf82
                           00DF83  1107 G$_NA_DPH0$0$0 == 0xdf83
                           00DF83  1108 __NA_DPH0	=	0xdf83
                           00DF84  1109 G$_NA_DPL1$0$0 == 0xdf84
                           00DF84  1110 __NA_DPL1	=	0xdf84
                           00DF85  1111 G$_NA_DPH1$0$0 == 0xdf85
                           00DF85  1112 __NA_DPH1	=	0xdf85
                           00DF86  1113 G$X_U0CSR$0$0 == 0xdf86
                           00DF86  1114 _X_U0CSR	=	0xdf86
                           00DF87  1115 G$_NA_PCON$0$0 == 0xdf87
                           00DF87  1116 __NA_PCON	=	0xdf87
                           00DF88  1117 G$_NA_TCON$0$0 == 0xdf88
                           00DF88  1118 __NA_TCON	=	0xdf88
                           00DF89  1119 G$X_P0IFG$0$0 == 0xdf89
                           00DF89  1120 _X_P0IFG	=	0xdf89
                           00DF8A  1121 G$X_P1IFG$0$0 == 0xdf8a
                           00DF8A  1122 _X_P1IFG	=	0xdf8a
                           00DF8B  1123 G$X_P2IFG$0$0 == 0xdf8b
                           00DF8B  1124 _X_P2IFG	=	0xdf8b
                           00DF8C  1125 G$X_PICTL$0$0 == 0xdf8c
                           00DF8C  1126 _X_PICTL	=	0xdf8c
                           00DF8D  1127 G$X_P1IEN$0$0 == 0xdf8d
                           00DF8D  1128 _X_P1IEN	=	0xdf8d
                           00DF8E  1129 G$_X_SFR8E$0$0 == 0xdf8e
                           00DF8E  1130 __X_SFR8E	=	0xdf8e
                           00DF8F  1131 G$X_P0INP$0$0 == 0xdf8f
                           00DF8F  1132 _X_P0INP	=	0xdf8f
                           00DF90  1133 G$_NA_P1$0$0 == 0xdf90
                           00DF90  1134 __NA_P1	=	0xdf90
                           00DF91  1135 G$X_RFIM$0$0 == 0xdf91
                           00DF91  1136 _X_RFIM	=	0xdf91
                           00DF92  1137 G$_NA_DPS$0$0 == 0xdf92
                           00DF92  1138 __NA_DPS	=	0xdf92
                           00DF93  1139 G$X_MPAGE$0$0 == 0xdf93
                           00DF93  1140 _X_MPAGE	=	0xdf93
                           00DF94  1141 G$_X_SFR94$0$0 == 0xdf94
                           00DF94  1142 __X_SFR94	=	0xdf94
                           00DF95  1143 G$_X_SFR95$0$0 == 0xdf95
                           00DF95  1144 __X_SFR95	=	0xdf95
                           00DF96  1145 G$_X_SFR96$0$0 == 0xdf96
                           00DF96  1146 __X_SFR96	=	0xdf96
                           00DF97  1147 G$_X_SFR97$0$0 == 0xdf97
                           00DF97  1148 __X_SFR97	=	0xdf97
                           00DF98  1149 G$_NA_S0CON$0$0 == 0xdf98
                           00DF98  1150 __NA_S0CON	=	0xdf98
                           00DF99  1151 G$_X_SFR99$0$0 == 0xdf99
                           00DF99  1152 __X_SFR99	=	0xdf99
                           00DF9A  1153 G$_NA_IEN2$0$0 == 0xdf9a
                           00DF9A  1154 __NA_IEN2	=	0xdf9a
                           00DF9B  1155 G$_NA_S1CON$0$0 == 0xdf9b
                           00DF9B  1156 __NA_S1CON	=	0xdf9b
                           00DF9C  1157 G$X_T2CT$0$0 == 0xdf9c
                           00DF9C  1158 _X_T2CT	=	0xdf9c
                           00DF9D  1159 G$X_T2PR$0$0 == 0xdf9d
                           00DF9D  1160 _X_T2PR	=	0xdf9d
                           00DF9E  1161 G$X_T2CTL$0$0 == 0xdf9e
                           00DF9E  1162 _X_T2CTL	=	0xdf9e
                           00DF9F  1163 G$_X_SFR9F$0$0 == 0xdf9f
                           00DF9F  1164 __X_SFR9F	=	0xdf9f
                           00DFA0  1165 G$_NA_P2$0$0 == 0xdfa0
                           00DFA0  1166 __NA_P2	=	0xdfa0
                           00DFA1  1167 G$X_WORIRQ$0$0 == 0xdfa1
                           00DFA1  1168 _X_WORIRQ	=	0xdfa1
                           00DFA2  1169 G$X_WORCTRL$0$0 == 0xdfa2
                           00DFA2  1170 _X_WORCTRL	=	0xdfa2
                           00DFA3  1171 G$X_WOREVT0$0$0 == 0xdfa3
                           00DFA3  1172 _X_WOREVT0	=	0xdfa3
                           00DFA4  1173 G$X_WOREVT1$0$0 == 0xdfa4
                           00DFA4  1174 _X_WOREVT1	=	0xdfa4
                           00DFA5  1175 G$X_WORTIME0$0$0 == 0xdfa5
                           00DFA5  1176 _X_WORTIME0	=	0xdfa5
                           00DFA6  1177 G$X_WORTIME1$0$0 == 0xdfa6
                           00DFA6  1178 _X_WORTIME1	=	0xdfa6
                           00DFA7  1179 G$_X_SFRA7$0$0 == 0xdfa7
                           00DFA7  1180 __X_SFRA7	=	0xdfa7
                           00DFA8  1181 G$_NA_IEN0$0$0 == 0xdfa8
                           00DFA8  1182 __NA_IEN0	=	0xdfa8
                           00DFA9  1183 G$_NA_IP0$0$0 == 0xdfa9
                           00DFA9  1184 __NA_IP0	=	0xdfa9
                           00DFAA  1185 G$_X_SFRAA$0$0 == 0xdfaa
                           00DFAA  1186 __X_SFRAA	=	0xdfaa
                           00DFAB  1187 G$X_FWT$0$0 == 0xdfab
                           00DFAB  1188 _X_FWT	=	0xdfab
                           00DFAC  1189 G$X_FADDRL$0$0 == 0xdfac
                           00DFAC  1190 _X_FADDRL	=	0xdfac
                           00DFAD  1191 G$X_FADDRH$0$0 == 0xdfad
                           00DFAD  1192 _X_FADDRH	=	0xdfad
                           00DFAE  1193 G$X_FCTL$0$0 == 0xdfae
                           00DFAE  1194 _X_FCTL	=	0xdfae
                           00DFAF  1195 G$X_FWDATA$0$0 == 0xdfaf
                           00DFAF  1196 _X_FWDATA	=	0xdfaf
                           00DFB0  1197 G$_X_SFRB0$0$0 == 0xdfb0
                           00DFB0  1198 __X_SFRB0	=	0xdfb0
                           00DFB1  1199 G$X_ENCDI$0$0 == 0xdfb1
                           00DFB1  1200 _X_ENCDI	=	0xdfb1
                           00DFB2  1201 G$X_ENCDO$0$0 == 0xdfb2
                           00DFB2  1202 _X_ENCDO	=	0xdfb2
                           00DFB3  1203 G$X_ENCCS$0$0 == 0xdfb3
                           00DFB3  1204 _X_ENCCS	=	0xdfb3
                           00DFB4  1205 G$X_ADCCON1$0$0 == 0xdfb4
                           00DFB4  1206 _X_ADCCON1	=	0xdfb4
                           00DFB5  1207 G$X_ADCCON2$0$0 == 0xdfb5
                           00DFB5  1208 _X_ADCCON2	=	0xdfb5
                           00DFB6  1209 G$X_ADCCON3$0$0 == 0xdfb6
                           00DFB6  1210 _X_ADCCON3	=	0xdfb6
                           00DFB7  1211 G$_X_SFRB7$0$0 == 0xdfb7
                           00DFB7  1212 __X_SFRB7	=	0xdfb7
                           00DFB8  1213 G$_NA_IEN1$0$0 == 0xdfb8
                           00DFB8  1214 __NA_IEN1	=	0xdfb8
                           00DFB9  1215 G$_NA_IP1$0$0 == 0xdfb9
                           00DFB9  1216 __NA_IP1	=	0xdfb9
                           00DFBA  1217 G$X_ADCL$0$0 == 0xdfba
                           00DFBA  1218 _X_ADCL	=	0xdfba
                           00DFBB  1219 G$X_ADCH$0$0 == 0xdfbb
                           00DFBB  1220 _X_ADCH	=	0xdfbb
                           00DFBC  1221 G$X_RNDL$0$0 == 0xdfbc
                           00DFBC  1222 _X_RNDL	=	0xdfbc
                           00DFBD  1223 G$X_RNDH$0$0 == 0xdfbd
                           00DFBD  1224 _X_RNDH	=	0xdfbd
                           00DFBE  1225 G$X_SLEEP$0$0 == 0xdfbe
                           00DFBE  1226 _X_SLEEP	=	0xdfbe
                           00DFBF  1227 G$_X_SFRBF$0$0 == 0xdfbf
                           00DFBF  1228 __X_SFRBF	=	0xdfbf
                           00DFC0  1229 G$_NA_IRCON$0$0 == 0xdfc0
                           00DFC0  1230 __NA_IRCON	=	0xdfc0
                           00DFC1  1231 G$X_U0DBUF$0$0 == 0xdfc1
                           00DFC1  1232 _X_U0DBUF	=	0xdfc1
                           00DFC2  1233 G$X_U0BAUD$0$0 == 0xdfc2
                           00DFC2  1234 _X_U0BAUD	=	0xdfc2
                           00DFC3  1235 G$_X_SFRC3$0$0 == 0xdfc3
                           00DFC3  1236 __X_SFRC3	=	0xdfc3
                           00DFC4  1237 G$X_U0UCR$0$0 == 0xdfc4
                           00DFC4  1238 _X_U0UCR	=	0xdfc4
                           00DFC5  1239 G$X_U0GCR$0$0 == 0xdfc5
                           00DFC5  1240 _X_U0GCR	=	0xdfc5
                           00DFC6  1241 G$X_CLKCON$0$0 == 0xdfc6
                           00DFC6  1242 _X_CLKCON	=	0xdfc6
                           00DFC7  1243 G$X_MEMCTR$0$0 == 0xdfc7
                           00DFC7  1244 _X_MEMCTR	=	0xdfc7
                           00DFC8  1245 G$_X_SFRC8$0$0 == 0xdfc8
                           00DFC8  1246 __X_SFRC8	=	0xdfc8
                           00DFC9  1247 G$X_WDCTL$0$0 == 0xdfc9
                           00DFC9  1248 _X_WDCTL	=	0xdfc9
                           00DFCA  1249 G$X_T3CNT$0$0 == 0xdfca
                           00DFCA  1250 _X_T3CNT	=	0xdfca
                           00DFCB  1251 G$X_T3CTL$0$0 == 0xdfcb
                           00DFCB  1252 _X_T3CTL	=	0xdfcb
                           00DFCC  1253 G$X_T3CCTL0$0$0 == 0xdfcc
                           00DFCC  1254 _X_T3CCTL0	=	0xdfcc
                           00DFCD  1255 G$X_T3CC0$0$0 == 0xdfcd
                           00DFCD  1256 _X_T3CC0	=	0xdfcd
                           00DFCE  1257 G$X_T3CCTL1$0$0 == 0xdfce
                           00DFCE  1258 _X_T3CCTL1	=	0xdfce
                           00DFCF  1259 G$X_T3CC1$0$0 == 0xdfcf
                           00DFCF  1260 _X_T3CC1	=	0xdfcf
                           00DFD0  1261 G$_NA_PSW$0$0 == 0xdfd0
                           00DFD0  1262 __NA_PSW	=	0xdfd0
                           00DFD1  1263 G$X_DMAIRQ$0$0 == 0xdfd1
                           00DFD1  1264 _X_DMAIRQ	=	0xdfd1
                           00DFD2  1265 G$X_DMA1CFGL$0$0 == 0xdfd2
                           00DFD2  1266 _X_DMA1CFGL	=	0xdfd2
                           00DFD3  1267 G$X_DMA1CFGH$0$0 == 0xdfd3
                           00DFD3  1268 _X_DMA1CFGH	=	0xdfd3
                           00DFD4  1269 G$X_DMA0CFGL$0$0 == 0xdfd4
                           00DFD4  1270 _X_DMA0CFGL	=	0xdfd4
                           00DFD5  1271 G$X_DMA0CFGH$0$0 == 0xdfd5
                           00DFD5  1272 _X_DMA0CFGH	=	0xdfd5
                           00DFD6  1273 G$X_DMAARM$0$0 == 0xdfd6
                           00DFD6  1274 _X_DMAARM	=	0xdfd6
                           00DFD7  1275 G$X_DMAREQ$0$0 == 0xdfd7
                           00DFD7  1276 _X_DMAREQ	=	0xdfd7
                           00DFD8  1277 G$X_TIMIF$0$0 == 0xdfd8
                           00DFD8  1278 _X_TIMIF	=	0xdfd8
                           00DFD9  1279 G$X_RFD$0$0 == 0xdfd9
                           00DFD9  1280 _X_RFD	=	0xdfd9
                           00DFDA  1281 G$X_T1CC0L$0$0 == 0xdfda
                           00DFDA  1282 _X_T1CC0L	=	0xdfda
                           00DFDB  1283 G$X_T1CC0H$0$0 == 0xdfdb
                           00DFDB  1284 _X_T1CC0H	=	0xdfdb
                           00DFDC  1285 G$X_T1CC1L$0$0 == 0xdfdc
                           00DFDC  1286 _X_T1CC1L	=	0xdfdc
                           00DFDD  1287 G$X_T1CC1H$0$0 == 0xdfdd
                           00DFDD  1288 _X_T1CC1H	=	0xdfdd
                           00DFDE  1289 G$X_T1CC2L$0$0 == 0xdfde
                           00DFDE  1290 _X_T1CC2L	=	0xdfde
                           00DFDF  1291 G$X_T1CC2H$0$0 == 0xdfdf
                           00DFDF  1292 _X_T1CC2H	=	0xdfdf
                           00DFE0  1293 G$_NA_ACC$0$0 == 0xdfe0
                           00DFE0  1294 __NA_ACC	=	0xdfe0
                           00DFE1  1295 G$X_RFST$0$0 == 0xdfe1
                           00DFE1  1296 _X_RFST	=	0xdfe1
                           00DFE2  1297 G$X_T1CNTL$0$0 == 0xdfe2
                           00DFE2  1298 _X_T1CNTL	=	0xdfe2
                           00DFE3  1299 G$X_T1CNTH$0$0 == 0xdfe3
                           00DFE3  1300 _X_T1CNTH	=	0xdfe3
                           00DFE4  1301 G$X_T1CTL$0$0 == 0xdfe4
                           00DFE4  1302 _X_T1CTL	=	0xdfe4
                           00DFE5  1303 G$X_T1CCTL0$0$0 == 0xdfe5
                           00DFE5  1304 _X_T1CCTL0	=	0xdfe5
                           00DFE6  1305 G$X_T1CCTL1$0$0 == 0xdfe6
                           00DFE6  1306 _X_T1CCTL1	=	0xdfe6
                           00DFE7  1307 G$X_T1CCTL2$0$0 == 0xdfe7
                           00DFE7  1308 _X_T1CCTL2	=	0xdfe7
                           00DFE8  1309 G$_NA_IRCON2$0$0 == 0xdfe8
                           00DFE8  1310 __NA_IRCON2	=	0xdfe8
                           00DFE9  1311 G$X_RFIF$0$0 == 0xdfe9
                           00DFE9  1312 _X_RFIF	=	0xdfe9
                           00DFEA  1313 G$X_T4CNT$0$0 == 0xdfea
                           00DFEA  1314 _X_T4CNT	=	0xdfea
                           00DFEB  1315 G$X_T4CTL$0$0 == 0xdfeb
                           00DFEB  1316 _X_T4CTL	=	0xdfeb
                           00DFEC  1317 G$X_T4CCTL0$0$0 == 0xdfec
                           00DFEC  1318 _X_T4CCTL0	=	0xdfec
                           00DFED  1319 G$X_T4CC0$0$0 == 0xdfed
                           00DFED  1320 _X_T4CC0	=	0xdfed
                           00DFEE  1321 G$X_T4CCTL1$0$0 == 0xdfee
                           00DFEE  1322 _X_T4CCTL1	=	0xdfee
                           00DFEF  1323 G$X_T4CC1$0$0 == 0xdfef
                           00DFEF  1324 _X_T4CC1	=	0xdfef
                           00DFF0  1325 G$_NA_B$0$0 == 0xdff0
                           00DFF0  1326 __NA_B	=	0xdff0
                           00DFF1  1327 G$X_PERCFG$0$0 == 0xdff1
                           00DFF1  1328 _X_PERCFG	=	0xdff1
                           00DFF2  1329 G$X_ADCCFG$0$0 == 0xdff2
                           00DFF2  1330 _X_ADCCFG	=	0xdff2
                           00DFF3  1331 G$X_P0SEL$0$0 == 0xdff3
                           00DFF3  1332 _X_P0SEL	=	0xdff3
                           00DFF4  1333 G$X_P1SEL$0$0 == 0xdff4
                           00DFF4  1334 _X_P1SEL	=	0xdff4
                           00DFF5  1335 G$X_P2SEL$0$0 == 0xdff5
                           00DFF5  1336 _X_P2SEL	=	0xdff5
                           00DFF6  1337 G$X_P1INP$0$0 == 0xdff6
                           00DFF6  1338 _X_P1INP	=	0xdff6
                           00DFF7  1339 G$X_P2INP$0$0 == 0xdff7
                           00DFF7  1340 _X_P2INP	=	0xdff7
                           00DFF8  1341 G$X_U1CSR$0$0 == 0xdff8
                           00DFF8  1342 _X_U1CSR	=	0xdff8
                           00DFF9  1343 G$X_U1DBUF$0$0 == 0xdff9
                           00DFF9  1344 _X_U1DBUF	=	0xdff9
                           00DFFA  1345 G$X_U1BAUD$0$0 == 0xdffa
                           00DFFA  1346 _X_U1BAUD	=	0xdffa
                           00DFFB  1347 G$X_U1UCR$0$0 == 0xdffb
                           00DFFB  1348 _X_U1UCR	=	0xdffb
                           00DFFC  1349 G$X_U1GCR$0$0 == 0xdffc
                           00DFFC  1350 _X_U1GCR	=	0xdffc
                           00DFFD  1351 G$X_P0DIR$0$0 == 0xdffd
                           00DFFD  1352 _X_P0DIR	=	0xdffd
                           00DFFE  1353 G$X_P1DIR$0$0 == 0xdffe
                           00DFFE  1354 _X_P1DIR	=	0xdffe
                           00DFFF  1355 G$X_P2DIR$0$0 == 0xdfff
                           00DFFF  1356 _X_P2DIR	=	0xdfff
                           000000  1357 FmedtronicRF$rfMessage$0$0==.
      00024E                       1358 _rfMessage:
      00024E                       1359 	.ds 512
                           000200  1360 FmedtronicRF$rfLength$0$0==.
      00044E                       1361 _rfLength:
      00044E                       1362 	.ds 2
                           000202  1363 FmedtronicRF$txCalcCRC$0$0==.
      000450                       1364 _txCalcCRC:
      000450                       1365 	.ds 2
                           000204  1366 FmedtronicRF$txCalcCRC16$0$0==.
      000452                       1367 _txCalcCRC16:
      000452                       1368 	.ds 2
                           000206  1369 FmedtronicRF$txLength$0$0==.
      000454                       1370 _txLength:
      000454                       1371 	.ds 1
                           000207  1372 FmedtronicRF$txTimes$0$0==.
      000455                       1373 _txTimes:
      000455                       1374 	.ds 2
                           000209  1375 FmedtronicRF$lastData$0$0==.
      000457                       1376 _lastData:
      000457                       1377 	.ds 1
                           00020A  1378 LmedtronicRF.sendMedtronicMessage$length$1$24==.
      000458                       1379 _sendMedtronicMessage_PARM_2:
      000458                       1380 	.ds 2
                           00020C  1381 LmedtronicRF.sendMedtronicMessage$times$1$24==.
      00045A                       1382 _sendMedtronicMessage_PARM_3:
      00045A                       1383 	.ds 2
                           00020E  1384 LmedtronicRF.sendMedtronicMessage$message$1$24==.
      00045C                       1385 _sendMedtronicMessage_message_1_24:
      00045C                       1386 	.ds 3
                           000211  1387 LmedtronicRF.receiveMedtronicMessage$length$1$28==.
      00045F                       1388 _receiveMedtronicMessage_PARM_2:
      00045F                       1389 	.ds 3
                           000214  1390 LmedtronicRF.receiveMedtronicMessage$message$1$28==.
      000462                       1391 _receiveMedtronicMessage_message_1_28:
      000462                       1392 	.ds 3
                           000217  1393 LmedtronicRF.usbReceiveData$tempData$1$37==.
      000465                       1394 _usbReceiveData_tempData_1_37:
      000465                       1395 	.ds 128
                           000297  1396 LmedtronicRF.usbReceiveData$readBytes$1$37==.
      0004E5                       1397 _usbReceiveData_readBytes_1_37:
      0004E5                       1398 	.ds 2
                                   1399 ;--------------------------------------------------------
                                   1400 ; absolute external ram data
                                   1401 ;--------------------------------------------------------
                                   1402 	.area XABS    (ABS,XDATA)
                                   1403 ;--------------------------------------------------------
                                   1404 ; external initialized ram data
                                   1405 ;--------------------------------------------------------
                                   1406 	.area XISEG   (XDATA)
                                   1407 	.area HOME    (CODE)
                                   1408 	.area GSINIT0 (CODE)
                                   1409 	.area GSINIT1 (CODE)
                                   1410 	.area GSINIT2 (CODE)
                                   1411 	.area GSINIT3 (CODE)
                                   1412 	.area GSINIT4 (CODE)
                                   1413 	.area GSINIT5 (CODE)
                                   1414 	.area GSINIT  (CODE)
                                   1415 	.area GSFINAL (CODE)
                                   1416 	.area CSEG    (CODE)
                                   1417 ;--------------------------------------------------------
                                   1418 ; global & static initialisations
                                   1419 ;--------------------------------------------------------
                                   1420 	.area HOME    (CODE)
                                   1421 	.area GSINIT  (CODE)
                                   1422 	.area GSFINAL (CODE)
                                   1423 	.area GSINIT  (CODE)
                                   1424 ;--------------------------------------------------------
                                   1425 ; Home
                                   1426 ;--------------------------------------------------------
                                   1427 	.area HOME    (CODE)
                                   1428 	.area HOME    (CODE)
                                   1429 ;--------------------------------------------------------
                                   1430 ; code
                                   1431 ;--------------------------------------------------------
                                   1432 	.area CSEG    (CODE)
                                   1433 ;------------------------------------------------------------
                                   1434 ;Allocation info for local variables in function 'sendMedtronicMessage'
                                   1435 ;------------------------------------------------------------
                                   1436 ;length                    Allocated with name '_sendMedtronicMessage_PARM_2'
                                   1437 ;times                     Allocated with name '_sendMedtronicMessage_PARM_3'
                                   1438 ;message                   Allocated with name '_sendMedtronicMessage_message_1_24'
                                   1439 ;i                         Allocated with name '_sendMedtronicMessage_i_1_25'
                                   1440 ;j                         Allocated with name '_sendMedtronicMessage_j_1_25'
                                   1441 ;------------------------------------------------------------
                           000000  1442 	G$sendMedtronicMessage$0$0 ==.
                           000000  1443 	C$medtronicRF.c$23$0$0 ==.
                                   1444 ;	medtronicRF.c:23: void sendMedtronicMessage( char *message, unsigned int length, int times ) {
                                   1445 ;	-----------------------------------------
                                   1446 ;	 function sendMedtronicMessage
                                   1447 ;	-----------------------------------------
      000DEA                       1448 _sendMedtronicMessage:
                           000007  1449 	ar7 = 0x07
                           000006  1450 	ar6 = 0x06
                           000005  1451 	ar5 = 0x05
                           000004  1452 	ar4 = 0x04
                           000003  1453 	ar3 = 0x03
                           000002  1454 	ar2 = 0x02
                           000001  1455 	ar1 = 0x01
                           000000  1456 	ar0 = 0x00
      000DEA AF F0            [24] 1457 	mov	r7,b
      000DEC AE 83            [24] 1458 	mov	r6,dph
      000DEE E5 82            [12] 1459 	mov	a,dpl
      000DF0 90 04 5C         [24] 1460 	mov	dptr,#_sendMedtronicMessage_message_1_24
      000DF3 F0               [24] 1461 	movx	@dptr,a
      000DF4 EE               [12] 1462 	mov	a,r6
      000DF5 A3               [24] 1463 	inc	dptr
      000DF6 F0               [24] 1464 	movx	@dptr,a
      000DF7 EF               [12] 1465 	mov	a,r7
      000DF8 A3               [24] 1466 	inc	dptr
      000DF9 F0               [24] 1467 	movx	@dptr,a
                           000010  1468 	C$medtronicRF.c$27$1$25 ==.
                                   1469 ;	medtronicRF.c:27: encode4b6b( message, length, rfMessage, &rfLength );
      000DFA 90 04 5C         [24] 1470 	mov	dptr,#_sendMedtronicMessage_message_1_24
      000DFD E0               [24] 1471 	movx	a,@dptr
      000DFE FD               [12] 1472 	mov	r5,a
      000DFF A3               [24] 1473 	inc	dptr
      000E00 E0               [24] 1474 	movx	a,@dptr
      000E01 FE               [12] 1475 	mov	r6,a
      000E02 A3               [24] 1476 	inc	dptr
      000E03 E0               [24] 1477 	movx	a,@dptr
      000E04 FF               [12] 1478 	mov	r7,a
      000E05 90 04 58         [24] 1479 	mov	dptr,#_sendMedtronicMessage_PARM_2
      000E08 E0               [24] 1480 	movx	a,@dptr
      000E09 FB               [12] 1481 	mov	r3,a
      000E0A A3               [24] 1482 	inc	dptr
      000E0B E0               [24] 1483 	movx	a,@dptr
      000E0C FC               [12] 1484 	mov	r4,a
      000E0D 90 02 18         [24] 1485 	mov	dptr,#_encode4b6b_PARM_2
      000E10 EB               [12] 1486 	mov	a,r3
      000E11 F0               [24] 1487 	movx	@dptr,a
      000E12 EC               [12] 1488 	mov	a,r4
      000E13 A3               [24] 1489 	inc	dptr
      000E14 F0               [24] 1490 	movx	@dptr,a
      000E15 90 02 1A         [24] 1491 	mov	dptr,#_encode4b6b_PARM_3
      000E18 74 4E            [12] 1492 	mov	a,#_rfMessage
      000E1A F0               [24] 1493 	movx	@dptr,a
      000E1B 74 02            [12] 1494 	mov	a,#(_rfMessage >> 8)
      000E1D A3               [24] 1495 	inc	dptr
      000E1E F0               [24] 1496 	movx	@dptr,a
      000E1F E4               [12] 1497 	clr	a
      000E20 A3               [24] 1498 	inc	dptr
      000E21 F0               [24] 1499 	movx	@dptr,a
      000E22 90 02 1D         [24] 1500 	mov	dptr,#_encode4b6b_PARM_4
      000E25 74 4E            [12] 1501 	mov	a,#_rfLength
      000E27 F0               [24] 1502 	movx	@dptr,a
      000E28 74 04            [12] 1503 	mov	a,#(_rfLength >> 8)
      000E2A A3               [24] 1504 	inc	dptr
      000E2B F0               [24] 1505 	movx	@dptr,a
      000E2C E4               [12] 1506 	clr	a
      000E2D A3               [24] 1507 	inc	dptr
      000E2E F0               [24] 1508 	movx	@dptr,a
      000E2F 8D 82            [24] 1509 	mov	dpl,r5
      000E31 8E 83            [24] 1510 	mov	dph,r6
      000E33 8F F0            [24] 1511 	mov	b,r7
      000E35 12 05 85         [24] 1512 	lcall	_encode4b6b
                           00004E  1513 	C$medtronicRF.c$28$1$25 ==.
                                   1514 ;	medtronicRF.c:28: PKTLEN = rfLength;
      000E38 90 04 4E         [24] 1515 	mov	dptr,#_rfLength
      000E3B E0               [24] 1516 	movx	a,@dptr
      000E3C FE               [12] 1517 	mov	r6,a
      000E3D A3               [24] 1518 	inc	dptr
      000E3E E0               [24] 1519 	movx	a,@dptr
      000E3F FF               [12] 1520 	mov	r7,a
      000E40 90 DF 02         [24] 1521 	mov	dptr,#_PKTLEN
      000E43 EE               [12] 1522 	mov	a,r6
      000E44 F0               [24] 1523 	movx	@dptr,a
                           00005B  1524 	C$medtronicRF.c$30$1$25 ==.
                                   1525 ;	medtronicRF.c:30: RFST = RFST_SIDLE;
      000E45 75 E1 04         [24] 1526 	mov	_RFST,#0x04
                           00005E  1527 	C$medtronicRF.c$32$1$25 ==.
                                   1528 ;	medtronicRF.c:32: for( j = 0; j < times; j++ ) {
      000E48 90 04 5A         [24] 1529 	mov	dptr,#_sendMedtronicMessage_PARM_3
      000E4B E0               [24] 1530 	movx	a,@dptr
      000E4C FC               [12] 1531 	mov	r4,a
      000E4D A3               [24] 1532 	inc	dptr
      000E4E E0               [24] 1533 	movx	a,@dptr
      000E4F FD               [12] 1534 	mov	r5,a
      000E50 7A 00            [12] 1535 	mov	r2,#0x00
      000E52 7B 00            [12] 1536 	mov	r3,#0x00
      000E54                       1537 00113$:
      000E54 C3               [12] 1538 	clr	c
      000E55 EA               [12] 1539 	mov	a,r2
      000E56 9C               [12] 1540 	subb	a,r4
      000E57 EB               [12] 1541 	mov	a,r3
      000E58 64 80            [12] 1542 	xrl	a,#0x80
      000E5A 8D F0            [24] 1543 	mov	b,r5
      000E5C 63 F0 80         [24] 1544 	xrl	b,#0x80
      000E5F 95 F0            [12] 1545 	subb	a,b
      000E61 50 4B            [24] 1546 	jnc	00108$
                           000079  1547 	C$medtronicRF.c$33$2$26 ==.
                                   1548 ;	medtronicRF.c:33: RFST = RFST_STX;
      000E63 75 E1 03         [24] 1549 	mov	_RFST,#0x03
                           00007C  1550 	C$medtronicRF.c$34$1$25 ==.
                                   1551 ;	medtronicRF.c:34: for( i = 0; i < rfLength; i++ ) {
      000E66 78 00            [12] 1552 	mov	r0,#0x00
      000E68 79 00            [12] 1553 	mov	r1,#0x00
      000E6A                       1554 00110$:
      000E6A C0 04            [24] 1555 	push	ar4
      000E6C C0 05            [24] 1556 	push	ar5
      000E6E 88 04            [24] 1557 	mov	ar4,r0
      000E70 89 05            [24] 1558 	mov	ar5,r1
      000E72 C3               [12] 1559 	clr	c
      000E73 EC               [12] 1560 	mov	a,r4
      000E74 9E               [12] 1561 	subb	a,r6
      000E75 ED               [12] 1562 	mov	a,r5
      000E76 9F               [12] 1563 	subb	a,r7
      000E77 D0 05            [24] 1564 	pop	ar5
      000E79 D0 04            [24] 1565 	pop	ar4
      000E7B 50 1A            [24] 1566 	jnc	00104$
                           000093  1567 	C$medtronicRF.c$35$3$27 ==.
                                   1568 ;	medtronicRF.c:35: while( !RFTXRXIF );
      000E7D                       1569 00101$:
      000E7D 30 89 FD         [24] 1570 	jnb	_RFTXRXIF,00101$
                           000096  1571 	C$medtronicRF.c$36$3$27 ==.
                                   1572 ;	medtronicRF.c:36: TCON &= 0xFD;
      000E80 53 88 FD         [24] 1573 	anl	_TCON,#0xFD
                           000099  1574 	C$medtronicRF.c$37$3$27 ==.
                                   1575 ;	medtronicRF.c:37: RFD = rfMessage[i];
      000E83 E8               [12] 1576 	mov	a,r0
      000E84 24 4E            [12] 1577 	add	a,#_rfMessage
      000E86 F5 82            [12] 1578 	mov	dpl,a
      000E88 E9               [12] 1579 	mov	a,r1
      000E89 34 02            [12] 1580 	addc	a,#(_rfMessage >> 8)
      000E8B F5 83            [12] 1581 	mov	dph,a
      000E8D E0               [24] 1582 	movx	a,@dptr
      000E8E F5 D9            [12] 1583 	mov	_RFD,a
                           0000A6  1584 	C$medtronicRF.c$34$2$26 ==.
                                   1585 ;	medtronicRF.c:34: for( i = 0; i < rfLength; i++ ) {
      000E90 08               [12] 1586 	inc	r0
      000E91 B8 00 D6         [24] 1587 	cjne	r0,#0x00,00110$
      000E94 09               [12] 1588 	inc	r1
      000E95 80 D3            [24] 1589 	sjmp	00110$
      000E97                       1590 00104$:
                           0000AD  1591 	C$medtronicRF.c$42$1$25 ==.
                                   1592 ;	medtronicRF.c:42: while( --i ) Nop( );
      000E97 78 00            [12] 1593 	mov	r0,#0x00
      000E99 79 10            [12] 1594 	mov	r1,#0x10
      000E9B                       1595 00105$:
      000E9B 18               [12] 1596 	dec	r0
      000E9C B8 FF 01         [24] 1597 	cjne	r0,#0xFF,00145$
      000E9F 19               [12] 1598 	dec	r1
      000EA0                       1599 00145$:
      000EA0 E8               [12] 1600 	mov	a,r0
      000EA1 49               [12] 1601 	orl	a,r1
      000EA2 60 03            [24] 1602 	jz	00114$
      000EA4 00               [12] 1603 	nop 
      000EA5 80 F4            [24] 1604 	sjmp	00105$
      000EA7                       1605 00114$:
                           0000BD  1606 	C$medtronicRF.c$32$1$25 ==.
                                   1607 ;	medtronicRF.c:32: for( j = 0; j < times; j++ ) {
      000EA7 0A               [12] 1608 	inc	r2
      000EA8 BA 00 A9         [24] 1609 	cjne	r2,#0x00,00113$
      000EAB 0B               [12] 1610 	inc	r3
      000EAC 80 A6            [24] 1611 	sjmp	00113$
      000EAE                       1612 00108$:
                           0000C4  1613 	C$medtronicRF.c$45$1$25 ==.
                                   1614 ;	medtronicRF.c:45: PKTLEN = 0xFF;
      000EAE 90 DF 02         [24] 1615 	mov	dptr,#_PKTLEN
      000EB1 74 FF            [12] 1616 	mov	a,#0xFF
      000EB3 F0               [24] 1617 	movx	@dptr,a
                           0000CA  1618 	C$medtronicRF.c$46$1$25 ==.
                                   1619 ;	medtronicRF.c:46: RFST = RFST_SIDLE;
      000EB4 75 E1 04         [24] 1620 	mov	_RFST,#0x04
                           0000CD  1621 	C$medtronicRF.c$47$1$25 ==.
                                   1622 ;	medtronicRF.c:47: RFST = RFST_SRX;
      000EB7 75 E1 02         [24] 1623 	mov	_RFST,#0x02
                           0000D0  1624 	C$medtronicRF.c$48$1$25 ==.
                           0000D0  1625 	XG$sendMedtronicMessage$0$0 ==.
      000EBA 22               [24] 1626 	ret
                                   1627 ;------------------------------------------------------------
                                   1628 ;Allocation info for local variables in function 'receiveMedtronicMessage'
                                   1629 ;------------------------------------------------------------
                                   1630 ;sloc0                     Allocated with name '_receiveMedtronicMessage_sloc0_1_0'
                                   1631 ;sloc1                     Allocated with name '_receiveMedtronicMessage_sloc1_1_0'
                                   1632 ;sloc2                     Allocated with name '_receiveMedtronicMessage_sloc2_1_0'
                                   1633 ;length                    Allocated with name '_receiveMedtronicMessage_PARM_2'
                                   1634 ;message                   Allocated with name '_receiveMedtronicMessage_message_1_28'
                                   1635 ;i                         Allocated with name '_receiveMedtronicMessage_i_1_29'
                                   1636 ;calcCRC                   Allocated with name '_receiveMedtronicMessage_calcCRC_1_29'
                                   1637 ;calcCRC16                 Allocated with name '_receiveMedtronicMessage_calcCRC16_1_29'
                                   1638 ;------------------------------------------------------------
                           0000D1  1639 	G$receiveMedtronicMessage$0$0 ==.
                           0000D1  1640 	C$medtronicRF.c$50$1$25 ==.
                                   1641 ;	medtronicRF.c:50: char receiveMedtronicMessage( char *message, unsigned int *length ) {
                                   1642 ;	-----------------------------------------
                                   1643 ;	 function receiveMedtronicMessage
                                   1644 ;	-----------------------------------------
      000EBB                       1645 _receiveMedtronicMessage:
      000EBB AF F0            [24] 1646 	mov	r7,b
      000EBD AE 83            [24] 1647 	mov	r6,dph
      000EBF E5 82            [12] 1648 	mov	a,dpl
      000EC1 90 04 62         [24] 1649 	mov	dptr,#_receiveMedtronicMessage_message_1_28
      000EC4 F0               [24] 1650 	movx	@dptr,a
      000EC5 EE               [12] 1651 	mov	a,r6
      000EC6 A3               [24] 1652 	inc	dptr
      000EC7 F0               [24] 1653 	movx	@dptr,a
      000EC8 EF               [12] 1654 	mov	a,r7
      000EC9 A3               [24] 1655 	inc	dptr
      000ECA F0               [24] 1656 	movx	@dptr,a
                           0000E1  1657 	C$medtronicRF.c$55$1$29 ==.
                                   1658 ;	medtronicRF.c:55: RFST = RFST_SIDLE;
      000ECB 75 E1 04         [24] 1659 	mov	_RFST,#0x04
                           0000E4  1660 	C$medtronicRF.c$56$1$29 ==.
                                   1661 ;	medtronicRF.c:56: RFST = RFST_SRX;
      000ECE 75 E1 02         [24] 1662 	mov	_RFST,#0x02
                           0000E7  1663 	C$medtronicRF.c$58$1$29 ==.
                                   1664 ;	medtronicRF.c:58: PKTLEN = 0xFF;
      000ED1 90 DF 02         [24] 1665 	mov	dptr,#_PKTLEN
      000ED4 74 FF            [12] 1666 	mov	a,#0xFF
      000ED6 F0               [24] 1667 	movx	@dptr,a
                           0000ED  1668 	C$medtronicRF.c$59$1$29 ==.
                                   1669 ;	medtronicRF.c:59: lastData = 0xFF;
      000ED7 90 04 57         [24] 1670 	mov	dptr,#_lastData
      000EDA F0               [24] 1671 	movx	@dptr,a
                           0000F1  1672 	C$medtronicRF.c$60$2$30 ==.
                                   1673 ;	medtronicRF.c:60: for( i = 0; i < 500 && lastData != 0x00; i++ ) {
      000EDB 7E 00            [12] 1674 	mov	r6,#0x00
      000EDD 7F 00            [12] 1675 	mov	r7,#0x00
      000EDF                       1676 00117$:
      000EDF C3               [12] 1677 	clr	c
      000EE0 EE               [12] 1678 	mov	a,r6
      000EE1 94 F4            [12] 1679 	subb	a,#0xF4
      000EE3 EF               [12] 1680 	mov	a,r7
      000EE4 94 01            [12] 1681 	subb	a,#0x01
      000EE6 50 31            [24] 1682 	jnc	00104$
      000EE8 90 04 57         [24] 1683 	mov	dptr,#_lastData
      000EEB E0               [24] 1684 	movx	a,@dptr
      000EEC FD               [12] 1685 	mov	r5,a
      000EED 60 2A            [24] 1686 	jz	00104$
                           000105  1687 	C$medtronicRF.c$61$2$30 ==.
                                   1688 ;	medtronicRF.c:61: while( !RFTXRXIF ) {
      000EEF                       1689 00101$:
      000EEF 30 89 FD         [24] 1690 	jnb	_RFTXRXIF,00101$
                           000108  1691 	C$medtronicRF.c$66$2$30 ==.
                                   1692 ;	medtronicRF.c:66: rfMessage[i] = RFD;
      000EF2 EE               [12] 1693 	mov	a,r6
      000EF3 24 4E            [12] 1694 	add	a,#_rfMessage
      000EF5 FC               [12] 1695 	mov	r4,a
      000EF6 EF               [12] 1696 	mov	a,r7
      000EF7 34 02            [12] 1697 	addc	a,#(_rfMessage >> 8)
      000EF9 FD               [12] 1698 	mov	r5,a
      000EFA 8C 82            [24] 1699 	mov	dpl,r4
      000EFC 8D 83            [24] 1700 	mov	dph,r5
      000EFE E5 D9            [12] 1701 	mov	a,_RFD
      000F00 F0               [24] 1702 	movx	@dptr,a
                           000117  1703 	C$medtronicRF.c$67$2$30 ==.
                                   1704 ;	medtronicRF.c:67: lastData = rfMessage[i];
      000F01 8C 82            [24] 1705 	mov	dpl,r4
      000F03 8D 83            [24] 1706 	mov	dph,r5
      000F05 E0               [24] 1707 	movx	a,@dptr
      000F06 FC               [12] 1708 	mov	r4,a
      000F07 90 04 57         [24] 1709 	mov	dptr,#_lastData
      000F0A F0               [24] 1710 	movx	@dptr,a
                           000121  1711 	C$medtronicRF.c$68$2$30 ==.
                                   1712 ;	medtronicRF.c:68: TCON &= ~0x02;
      000F0B AD 88            [24] 1713 	mov	r5,_TCON
      000F0D 74 FD            [12] 1714 	mov	a,#0xFD
      000F0F 5D               [12] 1715 	anl	a,r5
      000F10 F5 88            [12] 1716 	mov	_TCON,a
                           000128  1717 	C$medtronicRF.c$60$1$29 ==.
                                   1718 ;	medtronicRF.c:60: for( i = 0; i < 500 && lastData != 0x00; i++ ) {
      000F12 0E               [12] 1719 	inc	r6
      000F13 BE 00 C9         [24] 1720 	cjne	r6,#0x00,00117$
      000F16 0F               [12] 1721 	inc	r7
      000F17 80 C6            [24] 1722 	sjmp	00117$
      000F19                       1723 00104$:
                           00012F  1724 	C$medtronicRF.c$70$1$29 ==.
                                   1725 ;	medtronicRF.c:70: rfLength = i - 1;
      000F19 1E               [12] 1726 	dec	r6
      000F1A BE FF 01         [24] 1727 	cjne	r6,#0xFF,00156$
      000F1D 1F               [12] 1728 	dec	r7
      000F1E                       1729 00156$:
      000F1E 90 04 4E         [24] 1730 	mov	dptr,#_rfLength
      000F21 EE               [12] 1731 	mov	a,r6
      000F22 F0               [24] 1732 	movx	@dptr,a
      000F23 EF               [12] 1733 	mov	a,r7
      000F24 A3               [24] 1734 	inc	dptr
      000F25 F0               [24] 1735 	movx	@dptr,a
                           00013C  1736 	C$medtronicRF.c$71$1$29 ==.
                                   1737 ;	medtronicRF.c:71: RFST = RFST_SIDLE;
      000F26 75 E1 04         [24] 1738 	mov	_RFST,#0x04
                           00013F  1739 	C$medtronicRF.c$73$1$29 ==.
                                   1740 ;	medtronicRF.c:73: decode4b6b( rfMessage, rfLength, message, length );
      000F29 90 04 62         [24] 1741 	mov	dptr,#_receiveMedtronicMessage_message_1_28
      000F2C E0               [24] 1742 	movx	a,@dptr
      000F2D FB               [12] 1743 	mov	r3,a
      000F2E A3               [24] 1744 	inc	dptr
      000F2F E0               [24] 1745 	movx	a,@dptr
      000F30 FC               [12] 1746 	mov	r4,a
      000F31 A3               [24] 1747 	inc	dptr
      000F32 E0               [24] 1748 	movx	a,@dptr
      000F33 FD               [12] 1749 	mov	r5,a
      000F34 90 04 5F         [24] 1750 	mov	dptr,#_receiveMedtronicMessage_PARM_2
      000F37 E0               [24] 1751 	movx	a,@dptr
      000F38 F8               [12] 1752 	mov	r0,a
      000F39 A3               [24] 1753 	inc	dptr
      000F3A E0               [24] 1754 	movx	a,@dptr
      000F3B F9               [12] 1755 	mov	r1,a
      000F3C A3               [24] 1756 	inc	dptr
      000F3D E0               [24] 1757 	movx	a,@dptr
      000F3E FA               [12] 1758 	mov	r2,a
      000F3F 90 02 28         [24] 1759 	mov	dptr,#_decode4b6b_PARM_2
      000F42 EE               [12] 1760 	mov	a,r6
      000F43 F0               [24] 1761 	movx	@dptr,a
      000F44 EF               [12] 1762 	mov	a,r7
      000F45 A3               [24] 1763 	inc	dptr
      000F46 F0               [24] 1764 	movx	@dptr,a
      000F47 90 02 2A         [24] 1765 	mov	dptr,#_decode4b6b_PARM_3
      000F4A EB               [12] 1766 	mov	a,r3
      000F4B F0               [24] 1767 	movx	@dptr,a
      000F4C EC               [12] 1768 	mov	a,r4
      000F4D A3               [24] 1769 	inc	dptr
      000F4E F0               [24] 1770 	movx	@dptr,a
      000F4F ED               [12] 1771 	mov	a,r5
      000F50 A3               [24] 1772 	inc	dptr
      000F51 F0               [24] 1773 	movx	@dptr,a
      000F52 90 02 2D         [24] 1774 	mov	dptr,#_decode4b6b_PARM_4
      000F55 E8               [12] 1775 	mov	a,r0
      000F56 F0               [24] 1776 	movx	@dptr,a
      000F57 E9               [12] 1777 	mov	a,r1
      000F58 A3               [24] 1778 	inc	dptr
      000F59 F0               [24] 1779 	movx	@dptr,a
      000F5A EA               [12] 1780 	mov	a,r2
      000F5B A3               [24] 1781 	inc	dptr
      000F5C F0               [24] 1782 	movx	@dptr,a
      000F5D 90 02 4E         [24] 1783 	mov	dptr,#_rfMessage
      000F60 75 F0 00         [24] 1784 	mov	b,#0x00
      000F63 12 08 50         [24] 1785 	lcall	_decode4b6b
                           00017C  1786 	C$medtronicRF.c$74$1$29 ==.
                                   1787 ;	medtronicRF.c:74: calcCRC = crc8( message, (*length) - 1 );
      000F66 90 04 62         [24] 1788 	mov	dptr,#_receiveMedtronicMessage_message_1_28
      000F69 E0               [24] 1789 	movx	a,@dptr
      000F6A FD               [12] 1790 	mov	r5,a
      000F6B A3               [24] 1791 	inc	dptr
      000F6C E0               [24] 1792 	movx	a,@dptr
      000F6D FE               [12] 1793 	mov	r6,a
      000F6E A3               [24] 1794 	inc	dptr
      000F6F E0               [24] 1795 	movx	a,@dptr
      000F70 FF               [12] 1796 	mov	r7,a
      000F71 90 04 5F         [24] 1797 	mov	dptr,#_receiveMedtronicMessage_PARM_2
      000F74 E0               [24] 1798 	movx	a,@dptr
      000F75 FA               [12] 1799 	mov	r2,a
      000F76 A3               [24] 1800 	inc	dptr
      000F77 E0               [24] 1801 	movx	a,@dptr
      000F78 FB               [12] 1802 	mov	r3,a
      000F79 A3               [24] 1803 	inc	dptr
      000F7A E0               [24] 1804 	movx	a,@dptr
      000F7B FC               [12] 1805 	mov	r4,a
      000F7C 8A 82            [24] 1806 	mov	dpl,r2
      000F7E 8B 83            [24] 1807 	mov	dph,r3
      000F80 8C F0            [24] 1808 	mov	b,r4
      000F82 12 1C 03         [24] 1809 	lcall	__gptrget
      000F85 F8               [12] 1810 	mov	r0,a
      000F86 A3               [24] 1811 	inc	dptr
      000F87 12 1C 03         [24] 1812 	lcall	__gptrget
      000F8A F9               [12] 1813 	mov	r1,a
      000F8B 18               [12] 1814 	dec	r0
      000F8C B8 FF 01         [24] 1815 	cjne	r0,#0xFF,00157$
      000F8F 19               [12] 1816 	dec	r1
      000F90                       1817 00157$:
      000F90 90 02 02         [24] 1818 	mov	dptr,#_crc8_PARM_2
      000F93 E8               [12] 1819 	mov	a,r0
      000F94 F0               [24] 1820 	movx	@dptr,a
      000F95 E9               [12] 1821 	mov	a,r1
      000F96 A3               [24] 1822 	inc	dptr
      000F97 F0               [24] 1823 	movx	@dptr,a
      000F98 8D 82            [24] 1824 	mov	dpl,r5
      000F9A 8E 83            [24] 1825 	mov	dph,r6
      000F9C 8F F0            [24] 1826 	mov	b,r7
      000F9E C0 04            [24] 1827 	push	ar4
      000FA0 C0 03            [24] 1828 	push	ar3
      000FA2 C0 02            [24] 1829 	push	ar2
      000FA4 12 00 BF         [24] 1830 	lcall	_crc8
      000FA7 85 82 0B         [24] 1831 	mov	_receiveMedtronicMessage_sloc1_1_0,dpl
      000FAA D0 02            [24] 1832 	pop	ar2
      000FAC D0 03            [24] 1833 	pop	ar3
      000FAE D0 04            [24] 1834 	pop	ar4
                           0001C6  1835 	C$medtronicRF.c$76$1$29 ==.
                                   1836 ;	medtronicRF.c:76: if( calcCRC == message[(*length) - 1] ) {
      000FB0 8A 82            [24] 1837 	mov	dpl,r2
      000FB2 8B 83            [24] 1838 	mov	dph,r3
      000FB4 8C F0            [24] 1839 	mov	b,r4
      000FB6 12 1C 03         [24] 1840 	lcall	__gptrget
      000FB9 FD               [12] 1841 	mov	r5,a
      000FBA A3               [24] 1842 	inc	dptr
      000FBB 12 1C 03         [24] 1843 	lcall	__gptrget
      000FBE FE               [12] 1844 	mov	r6,a
      000FBF ED               [12] 1845 	mov	a,r5
      000FC0 24 FF            [12] 1846 	add	a,#0xFF
      000FC2 F8               [12] 1847 	mov	r0,a
      000FC3 EE               [12] 1848 	mov	a,r6
      000FC4 34 FF            [12] 1849 	addc	a,#0xFF
      000FC6 F9               [12] 1850 	mov	r1,a
      000FC7 90 04 62         [24] 1851 	mov	dptr,#_receiveMedtronicMessage_message_1_28
      000FCA E0               [24] 1852 	movx	a,@dptr
      000FCB F5 08            [12] 1853 	mov	_receiveMedtronicMessage_sloc0_1_0,a
      000FCD A3               [24] 1854 	inc	dptr
      000FCE E0               [24] 1855 	movx	a,@dptr
      000FCF F5 09            [12] 1856 	mov	(_receiveMedtronicMessage_sloc0_1_0 + 1),a
      000FD1 A3               [24] 1857 	inc	dptr
      000FD2 E0               [24] 1858 	movx	a,@dptr
      000FD3 F5 0A            [12] 1859 	mov	(_receiveMedtronicMessage_sloc0_1_0 + 2),a
      000FD5 E8               [12] 1860 	mov	a,r0
      000FD6 25 08            [12] 1861 	add	a,_receiveMedtronicMessage_sloc0_1_0
      000FD8 F8               [12] 1862 	mov	r0,a
      000FD9 E9               [12] 1863 	mov	a,r1
      000FDA 35 09            [12] 1864 	addc	a,(_receiveMedtronicMessage_sloc0_1_0 + 1)
      000FDC F9               [12] 1865 	mov	r1,a
      000FDD AF 0A            [24] 1866 	mov	r7,(_receiveMedtronicMessage_sloc0_1_0 + 2)
      000FDF 88 82            [24] 1867 	mov	dpl,r0
      000FE1 89 83            [24] 1868 	mov	dph,r1
      000FE3 8F F0            [24] 1869 	mov	b,r7
      000FE5 12 1C 03         [24] 1870 	lcall	__gptrget
      000FE8 F8               [12] 1871 	mov	r0,a
      000FE9 B5 0B 06         [24] 1872 	cjne	a,_receiveMedtronicMessage_sloc1_1_0,00106$
                           000202  1873 	C$medtronicRF.c$77$2$32 ==.
                                   1874 ;	medtronicRF.c:77: return (0);
      000FEC 75 82 00         [24] 1875 	mov	dpl,#0x00
      000FEF 02 12 07         [24] 1876 	ljmp	00119$
      000FF2                       1877 00106$:
                           000208  1878 	C$medtronicRF.c$80$1$29 ==.
                                   1879 ;	medtronicRF.c:80: calcCRC16 = crc16( message, (*length) - 2 );
      000FF2 ED               [12] 1880 	mov	a,r5
      000FF3 24 FE            [12] 1881 	add	a,#0xFE
      000FF5 FD               [12] 1882 	mov	r5,a
      000FF6 EE               [12] 1883 	mov	a,r6
      000FF7 34 FF            [12] 1884 	addc	a,#0xFF
      000FF9 FE               [12] 1885 	mov	r6,a
      000FFA 90 02 0C         [24] 1886 	mov	dptr,#_crc16_PARM_2
      000FFD ED               [12] 1887 	mov	a,r5
      000FFE F0               [24] 1888 	movx	@dptr,a
      000FFF EE               [12] 1889 	mov	a,r6
      001000 A3               [24] 1890 	inc	dptr
      001001 F0               [24] 1891 	movx	@dptr,a
      001002 85 08 82         [24] 1892 	mov	dpl,_receiveMedtronicMessage_sloc0_1_0
      001005 85 09 83         [24] 1893 	mov	dph,(_receiveMedtronicMessage_sloc0_1_0 + 1)
      001008 85 0A F0         [24] 1894 	mov	b,(_receiveMedtronicMessage_sloc0_1_0 + 2)
      00100B C0 04            [24] 1895 	push	ar4
      00100D C0 03            [24] 1896 	push	ar3
      00100F C0 02            [24] 1897 	push	ar2
      001011 12 02 05         [24] 1898 	lcall	_crc16
      001014 AE 82            [24] 1899 	mov	r6,dpl
      001016 AF 83            [24] 1900 	mov	r7,dph
      001018 D0 02            [24] 1901 	pop	ar2
      00101A D0 03            [24] 1902 	pop	ar3
      00101C D0 04            [24] 1903 	pop	ar4
                           000234  1904 	C$medtronicRF.c$81$1$29 ==.
                                   1905 ;	medtronicRF.c:81: if( ((char)(calcCRC16 & 0x00FF) == message[(*length) - 1]) &&
      00101E 8E 01            [24] 1906 	mov	ar1,r6
      001020 8A 82            [24] 1907 	mov	dpl,r2
      001022 8B 83            [24] 1908 	mov	dph,r3
      001024 8C F0            [24] 1909 	mov	b,r4
      001026 12 1C 03         [24] 1910 	lcall	__gptrget
      001029 F8               [12] 1911 	mov	r0,a
      00102A A3               [24] 1912 	inc	dptr
      00102B 12 1C 03         [24] 1913 	lcall	__gptrget
      00102E FD               [12] 1914 	mov	r5,a
      00102F C0 02            [24] 1915 	push	ar2
      001031 C0 03            [24] 1916 	push	ar3
      001033 C0 04            [24] 1917 	push	ar4
      001035 E8               [12] 1918 	mov	a,r0
      001036 24 FF            [12] 1919 	add	a,#0xFF
      001038 FB               [12] 1920 	mov	r3,a
      001039 ED               [12] 1921 	mov	a,r5
      00103A 34 FF            [12] 1922 	addc	a,#0xFF
      00103C FC               [12] 1923 	mov	r4,a
      00103D 90 04 62         [24] 1924 	mov	dptr,#_receiveMedtronicMessage_message_1_28
      001040 E0               [24] 1925 	movx	a,@dptr
      001041 F5 0C            [12] 1926 	mov	_receiveMedtronicMessage_sloc2_1_0,a
      001043 A3               [24] 1927 	inc	dptr
      001044 E0               [24] 1928 	movx	a,@dptr
      001045 F5 0D            [12] 1929 	mov	(_receiveMedtronicMessage_sloc2_1_0 + 1),a
      001047 A3               [24] 1930 	inc	dptr
      001048 E0               [24] 1931 	movx	a,@dptr
      001049 F5 0E            [12] 1932 	mov	(_receiveMedtronicMessage_sloc2_1_0 + 2),a
      00104B EB               [12] 1933 	mov	a,r3
      00104C 25 0C            [12] 1934 	add	a,_receiveMedtronicMessage_sloc2_1_0
      00104E FB               [12] 1935 	mov	r3,a
      00104F EC               [12] 1936 	mov	a,r4
      001050 35 0D            [12] 1937 	addc	a,(_receiveMedtronicMessage_sloc2_1_0 + 1)
      001052 FC               [12] 1938 	mov	r4,a
      001053 AA 0E            [24] 1939 	mov	r2,(_receiveMedtronicMessage_sloc2_1_0 + 2)
      001055 8B 82            [24] 1940 	mov	dpl,r3
      001057 8C 83            [24] 1941 	mov	dph,r4
      001059 8A F0            [24] 1942 	mov	b,r2
      00105B 12 1C 03         [24] 1943 	lcall	__gptrget
      00105E FB               [12] 1944 	mov	r3,a
      00105F E9               [12] 1945 	mov	a,r1
      001060 B5 03 02         [24] 1946 	cjne	a,ar3,00160$
      001063 80 08            [24] 1947 	sjmp	00161$
      001065                       1948 00160$:
      001065 D0 04            [24] 1949 	pop	ar4
      001067 D0 03            [24] 1950 	pop	ar3
      001069 D0 02            [24] 1951 	pop	ar2
      00106B 80 44            [24] 1952 	sjmp	00108$
      00106D                       1953 00161$:
      00106D D0 04            [24] 1954 	pop	ar4
      00106F D0 03            [24] 1955 	pop	ar3
      001071 D0 02            [24] 1956 	pop	ar2
                           000289  1957 	C$medtronicRF.c$82$1$29 ==.
                                   1958 ;	medtronicRF.c:82: ((char)((calcCRC16 >> 8) & 0x00FF) == message[(*length) - 2]) ) {
      001073 C0 02            [24] 1959 	push	ar2
      001075 C0 03            [24] 1960 	push	ar3
      001077 C0 04            [24] 1961 	push	ar4
      001079 8F 06            [24] 1962 	mov	ar6,r7
      00107B E8               [12] 1963 	mov	a,r0
      00107C 24 FE            [12] 1964 	add	a,#0xFE
      00107E F9               [12] 1965 	mov	r1,a
      00107F ED               [12] 1966 	mov	a,r5
      001080 34 FF            [12] 1967 	addc	a,#0xFF
      001082 FF               [12] 1968 	mov	r7,a
      001083 E9               [12] 1969 	mov	a,r1
      001084 25 0C            [12] 1970 	add	a,_receiveMedtronicMessage_sloc2_1_0
      001086 F9               [12] 1971 	mov	r1,a
      001087 EF               [12] 1972 	mov	a,r7
      001088 35 0D            [12] 1973 	addc	a,(_receiveMedtronicMessage_sloc2_1_0 + 1)
      00108A FC               [12] 1974 	mov	r4,a
      00108B AF 0E            [24] 1975 	mov	r7,(_receiveMedtronicMessage_sloc2_1_0 + 2)
      00108D 89 82            [24] 1976 	mov	dpl,r1
      00108F 8C 83            [24] 1977 	mov	dph,r4
      001091 8F F0            [24] 1978 	mov	b,r7
      001093 12 1C 03         [24] 1979 	lcall	__gptrget
      001096 F9               [12] 1980 	mov	r1,a
      001097 EE               [12] 1981 	mov	a,r6
      001098 B5 01 02         [24] 1982 	cjne	a,ar1,00162$
      00109B 80 08            [24] 1983 	sjmp	00163$
      00109D                       1984 00162$:
      00109D D0 04            [24] 1985 	pop	ar4
      00109F D0 03            [24] 1986 	pop	ar3
      0010A1 D0 02            [24] 1987 	pop	ar2
      0010A3 80 0C            [24] 1988 	sjmp	00108$
      0010A5                       1989 00163$:
      0010A5 D0 04            [24] 1990 	pop	ar4
      0010A7 D0 03            [24] 1991 	pop	ar3
      0010A9 D0 02            [24] 1992 	pop	ar2
                           0002C1  1993 	C$medtronicRF.c$83$2$33 ==.
                                   1994 ;	medtronicRF.c:83: return (0);
      0010AB 75 82 00         [24] 1995 	mov	dpl,#0x00
      0010AE 02 12 07         [24] 1996 	ljmp	00119$
      0010B1                       1997 00108$:
                           0002C7  1998 	C$medtronicRF.c$86$1$29 ==.
                                   1999 ;	medtronicRF.c:86: calcCRC = crc8( message, (*length) - 2 );
      0010B1 E8               [12] 2000 	mov	a,r0
      0010B2 24 FE            [12] 2001 	add	a,#0xFE
      0010B4 F8               [12] 2002 	mov	r0,a
      0010B5 ED               [12] 2003 	mov	a,r5
      0010B6 34 FF            [12] 2004 	addc	a,#0xFF
      0010B8 FD               [12] 2005 	mov	r5,a
      0010B9 90 02 02         [24] 2006 	mov	dptr,#_crc8_PARM_2
      0010BC E8               [12] 2007 	mov	a,r0
      0010BD F0               [24] 2008 	movx	@dptr,a
      0010BE ED               [12] 2009 	mov	a,r5
      0010BF A3               [24] 2010 	inc	dptr
      0010C0 F0               [24] 2011 	movx	@dptr,a
      0010C1 85 0C 82         [24] 2012 	mov	dpl,_receiveMedtronicMessage_sloc2_1_0
      0010C4 85 0D 83         [24] 2013 	mov	dph,(_receiveMedtronicMessage_sloc2_1_0 + 1)
      0010C7 85 0E F0         [24] 2014 	mov	b,(_receiveMedtronicMessage_sloc2_1_0 + 2)
      0010CA C0 04            [24] 2015 	push	ar4
      0010CC C0 03            [24] 2016 	push	ar3
      0010CE C0 02            [24] 2017 	push	ar2
      0010D0 12 00 BF         [24] 2018 	lcall	_crc8
      0010D3 AF 82            [24] 2019 	mov	r7,dpl
      0010D5 D0 02            [24] 2020 	pop	ar2
      0010D7 D0 03            [24] 2021 	pop	ar3
      0010D9 D0 04            [24] 2022 	pop	ar4
                           0002F1  2023 	C$medtronicRF.c$88$1$29 ==.
                                   2024 ;	medtronicRF.c:88: if( calcCRC == message[(*length) - 2] ) {
      0010DB 8A 82            [24] 2025 	mov	dpl,r2
      0010DD 8B 83            [24] 2026 	mov	dph,r3
      0010DF 8C F0            [24] 2027 	mov	b,r4
      0010E1 12 1C 03         [24] 2028 	lcall	__gptrget
      0010E4 FD               [12] 2029 	mov	r5,a
      0010E5 A3               [24] 2030 	inc	dptr
      0010E6 12 1C 03         [24] 2031 	lcall	__gptrget
      0010E9 FE               [12] 2032 	mov	r6,a
      0010EA ED               [12] 2033 	mov	a,r5
      0010EB 24 FE            [12] 2034 	add	a,#0xFE
      0010ED F8               [12] 2035 	mov	r0,a
      0010EE EE               [12] 2036 	mov	a,r6
      0010EF 34 FF            [12] 2037 	addc	a,#0xFF
      0010F1 F9               [12] 2038 	mov	r1,a
      0010F2 C0 02            [24] 2039 	push	ar2
      0010F4 C0 03            [24] 2040 	push	ar3
      0010F6 C0 04            [24] 2041 	push	ar4
      0010F8 E8               [12] 2042 	mov	a,r0
      0010F9 25 08            [12] 2043 	add	a,_receiveMedtronicMessage_sloc0_1_0
      0010FB F8               [12] 2044 	mov	r0,a
      0010FC E9               [12] 2045 	mov	a,r1
      0010FD 35 09            [12] 2046 	addc	a,(_receiveMedtronicMessage_sloc0_1_0 + 1)
      0010FF F9               [12] 2047 	mov	r1,a
      001100 AC 0A            [24] 2048 	mov	r4,(_receiveMedtronicMessage_sloc0_1_0 + 2)
      001102 88 82            [24] 2049 	mov	dpl,r0
      001104 89 83            [24] 2050 	mov	dph,r1
      001106 8C F0            [24] 2051 	mov	b,r4
      001108 12 1C 03         [24] 2052 	lcall	__gptrget
      00110B F8               [12] 2053 	mov	r0,a
      00110C EF               [12] 2054 	mov	a,r7
      00110D B5 00 02         [24] 2055 	cjne	a,ar0,00164$
      001110 80 08            [24] 2056 	sjmp	00165$
      001112                       2057 00164$:
      001112 D0 04            [24] 2058 	pop	ar4
      001114 D0 03            [24] 2059 	pop	ar3
      001116 D0 02            [24] 2060 	pop	ar2
      001118 80 23            [24] 2061 	sjmp	00111$
      00111A                       2062 00165$:
      00111A D0 04            [24] 2063 	pop	ar4
      00111C D0 03            [24] 2064 	pop	ar3
      00111E D0 02            [24] 2065 	pop	ar2
                           000336  2066 	C$medtronicRF.c$89$2$34 ==.
                                   2067 ;	medtronicRF.c:89: (*length) = (*length) - 1;
      001120 ED               [12] 2068 	mov	a,r5
      001121 24 FF            [12] 2069 	add	a,#0xFF
      001123 F9               [12] 2070 	mov	r1,a
      001124 EE               [12] 2071 	mov	a,r6
      001125 34 FF            [12] 2072 	addc	a,#0xFF
      001127 FF               [12] 2073 	mov	r7,a
      001128 8A 82            [24] 2074 	mov	dpl,r2
      00112A 8B 83            [24] 2075 	mov	dph,r3
      00112C 8C F0            [24] 2076 	mov	b,r4
      00112E E9               [12] 2077 	mov	a,r1
      00112F 12 1B E8         [24] 2078 	lcall	__gptrput
      001132 A3               [24] 2079 	inc	dptr
      001133 EF               [12] 2080 	mov	a,r7
      001134 12 1B E8         [24] 2081 	lcall	__gptrput
                           00034D  2082 	C$medtronicRF.c$90$2$34 ==.
                                   2083 ;	medtronicRF.c:90: return (0);
      001137 75 82 00         [24] 2084 	mov	dpl,#0x00
      00113A 02 12 07         [24] 2085 	ljmp	00119$
      00113D                       2086 00111$:
                           000353  2087 	C$medtronicRF.c$93$1$29 ==.
                                   2088 ;	medtronicRF.c:93: calcCRC16 = crc16( message, (*length) - 3 );
      00113D ED               [12] 2089 	mov	a,r5
      00113E 24 FD            [12] 2090 	add	a,#0xFD
      001140 FD               [12] 2091 	mov	r5,a
      001141 EE               [12] 2092 	mov	a,r6
      001142 34 FF            [12] 2093 	addc	a,#0xFF
      001144 FE               [12] 2094 	mov	r6,a
      001145 90 02 0C         [24] 2095 	mov	dptr,#_crc16_PARM_2
      001148 ED               [12] 2096 	mov	a,r5
      001149 F0               [24] 2097 	movx	@dptr,a
      00114A EE               [12] 2098 	mov	a,r6
      00114B A3               [24] 2099 	inc	dptr
      00114C F0               [24] 2100 	movx	@dptr,a
      00114D 85 0C 82         [24] 2101 	mov	dpl,_receiveMedtronicMessage_sloc2_1_0
      001150 85 0D 83         [24] 2102 	mov	dph,(_receiveMedtronicMessage_sloc2_1_0 + 1)
      001153 85 0E F0         [24] 2103 	mov	b,(_receiveMedtronicMessage_sloc2_1_0 + 2)
      001156 C0 04            [24] 2104 	push	ar4
      001158 C0 03            [24] 2105 	push	ar3
      00115A C0 02            [24] 2106 	push	ar2
      00115C 12 02 05         [24] 2107 	lcall	_crc16
      00115F AE 82            [24] 2108 	mov	r6,dpl
      001161 AF 83            [24] 2109 	mov	r7,dph
      001163 D0 02            [24] 2110 	pop	ar2
      001165 D0 03            [24] 2111 	pop	ar3
      001167 D0 04            [24] 2112 	pop	ar4
                           00037F  2113 	C$medtronicRF.c$94$1$29 ==.
                                   2114 ;	medtronicRF.c:94: if( ((char)(calcCRC16 & 0x00FF) == message[(*length) - 2]) &&
      001169 8E 01            [24] 2115 	mov	ar1,r6
      00116B 8A 82            [24] 2116 	mov	dpl,r2
      00116D 8B 83            [24] 2117 	mov	dph,r3
      00116F 8C F0            [24] 2118 	mov	b,r4
      001171 12 1C 03         [24] 2119 	lcall	__gptrget
      001174 F8               [12] 2120 	mov	r0,a
      001175 A3               [24] 2121 	inc	dptr
      001176 12 1C 03         [24] 2122 	lcall	__gptrget
      001179 FD               [12] 2123 	mov	r5,a
      00117A C0 02            [24] 2124 	push	ar2
      00117C C0 03            [24] 2125 	push	ar3
      00117E C0 04            [24] 2126 	push	ar4
      001180 E8               [12] 2127 	mov	a,r0
      001181 24 FE            [12] 2128 	add	a,#0xFE
      001183 FB               [12] 2129 	mov	r3,a
      001184 ED               [12] 2130 	mov	a,r5
      001185 34 FF            [12] 2131 	addc	a,#0xFF
      001187 FC               [12] 2132 	mov	r4,a
      001188 EB               [12] 2133 	mov	a,r3
      001189 25 08            [12] 2134 	add	a,_receiveMedtronicMessage_sloc0_1_0
      00118B FB               [12] 2135 	mov	r3,a
      00118C EC               [12] 2136 	mov	a,r4
      00118D 35 09            [12] 2137 	addc	a,(_receiveMedtronicMessage_sloc0_1_0 + 1)
      00118F FC               [12] 2138 	mov	r4,a
      001190 AA 0A            [24] 2139 	mov	r2,(_receiveMedtronicMessage_sloc0_1_0 + 2)
      001192 8B 82            [24] 2140 	mov	dpl,r3
      001194 8C 83            [24] 2141 	mov	dph,r4
      001196 8A F0            [24] 2142 	mov	b,r2
      001198 12 1C 03         [24] 2143 	lcall	__gptrget
      00119B FB               [12] 2144 	mov	r3,a
      00119C E9               [12] 2145 	mov	a,r1
      00119D B5 03 02         [24] 2146 	cjne	a,ar3,00166$
      0011A0 80 08            [24] 2147 	sjmp	00167$
      0011A2                       2148 00166$:
      0011A2 D0 04            [24] 2149 	pop	ar4
      0011A4 D0 03            [24] 2150 	pop	ar3
      0011A6 D0 02            [24] 2151 	pop	ar2
      0011A8 80 57            [24] 2152 	sjmp	00113$
      0011AA                       2153 00167$:
      0011AA D0 04            [24] 2154 	pop	ar4
      0011AC D0 03            [24] 2155 	pop	ar3
      0011AE D0 02            [24] 2156 	pop	ar2
                           0003C6  2157 	C$medtronicRF.c$95$1$29 ==.
                                   2158 ;	medtronicRF.c:95: ((char)((calcCRC16 >> 8) & 0x00FF) == message[(*length) - 3]) ) {
      0011B0 C0 02            [24] 2159 	push	ar2
      0011B2 C0 03            [24] 2160 	push	ar3
      0011B4 C0 04            [24] 2161 	push	ar4
      0011B6 8F 06            [24] 2162 	mov	ar6,r7
      0011B8 E8               [12] 2163 	mov	a,r0
      0011B9 24 FD            [12] 2164 	add	a,#0xFD
      0011BB F9               [12] 2165 	mov	r1,a
      0011BC ED               [12] 2166 	mov	a,r5
      0011BD 34 FF            [12] 2167 	addc	a,#0xFF
      0011BF FF               [12] 2168 	mov	r7,a
      0011C0 E9               [12] 2169 	mov	a,r1
      0011C1 25 0C            [12] 2170 	add	a,_receiveMedtronicMessage_sloc2_1_0
      0011C3 F9               [12] 2171 	mov	r1,a
      0011C4 EF               [12] 2172 	mov	a,r7
      0011C5 35 0D            [12] 2173 	addc	a,(_receiveMedtronicMessage_sloc2_1_0 + 1)
      0011C7 FC               [12] 2174 	mov	r4,a
      0011C8 AF 0E            [24] 2175 	mov	r7,(_receiveMedtronicMessage_sloc2_1_0 + 2)
      0011CA 89 82            [24] 2176 	mov	dpl,r1
      0011CC 8C 83            [24] 2177 	mov	dph,r4
      0011CE 8F F0            [24] 2178 	mov	b,r7
      0011D0 12 1C 03         [24] 2179 	lcall	__gptrget
      0011D3 F9               [12] 2180 	mov	r1,a
      0011D4 EE               [12] 2181 	mov	a,r6
      0011D5 B5 01 02         [24] 2182 	cjne	a,ar1,00168$
      0011D8 80 08            [24] 2183 	sjmp	00169$
      0011DA                       2184 00168$:
      0011DA D0 04            [24] 2185 	pop	ar4
      0011DC D0 03            [24] 2186 	pop	ar3
      0011DE D0 02            [24] 2187 	pop	ar2
      0011E0 80 1F            [24] 2188 	sjmp	00113$
      0011E2                       2189 00169$:
      0011E2 D0 04            [24] 2190 	pop	ar4
      0011E4 D0 03            [24] 2191 	pop	ar3
      0011E6 D0 02            [24] 2192 	pop	ar2
                           0003FE  2193 	C$medtronicRF.c$96$2$35 ==.
                                   2194 ;	medtronicRF.c:96: (*length) = (*length) - 1;
      0011E8 18               [12] 2195 	dec	r0
      0011E9 B8 FF 01         [24] 2196 	cjne	r0,#0xFF,00170$
      0011EC 1D               [12] 2197 	dec	r5
      0011ED                       2198 00170$:
      0011ED 8A 82            [24] 2199 	mov	dpl,r2
      0011EF 8B 83            [24] 2200 	mov	dph,r3
      0011F1 8C F0            [24] 2201 	mov	b,r4
      0011F3 E8               [12] 2202 	mov	a,r0
      0011F4 12 1B E8         [24] 2203 	lcall	__gptrput
      0011F7 A3               [24] 2204 	inc	dptr
      0011F8 ED               [12] 2205 	mov	a,r5
      0011F9 12 1B E8         [24] 2206 	lcall	__gptrput
                           000412  2207 	C$medtronicRF.c$97$2$35 ==.
                                   2208 ;	medtronicRF.c:97: return (0);
      0011FC 75 82 00         [24] 2209 	mov	dpl,#0x00
      0011FF 80 06            [24] 2210 	sjmp	00119$
      001201                       2211 00113$:
                           000417  2212 	C$medtronicRF.c$100$1$29 ==.
                                   2213 ;	medtronicRF.c:100: crc16Init( );
      001201 12 01 57         [24] 2214 	lcall	_crc16Init
                           00041A  2215 	C$medtronicRF.c$101$1$29 ==.
                                   2216 ;	medtronicRF.c:101: return(1);
      001204 75 82 01         [24] 2217 	mov	dpl,#0x01
      001207                       2218 00119$:
                           00041D  2219 	C$medtronicRF.c$102$1$29 ==.
                           00041D  2220 	XG$receiveMedtronicMessage$0$0 ==.
      001207 22               [24] 2221 	ret
                                   2222 ;------------------------------------------------------------
                                   2223 ;Allocation info for local variables in function 'usbReceiveData'
                                   2224 ;------------------------------------------------------------
                                   2225 ;tempData                  Allocated with name '_usbReceiveData_tempData_1_37'
                                   2226 ;tmpCRC16                  Allocated with name '_usbReceiveData_tmpCRC16_1_37'
                                   2227 ;nBytes                    Allocated with name '_usbReceiveData_nBytes_1_37'
                                   2228 ;readBytes                 Allocated with name '_usbReceiveData_readBytes_1_37'
                                   2229 ;i                         Allocated with name '_usbReceiveData_i_1_37'
                                   2230 ;------------------------------------------------------------
                           00041E  2231 	G$usbReceiveData$0$0 ==.
                           00041E  2232 	C$medtronicRF.c$104$1$29 ==.
                                   2233 ;	medtronicRF.c:104: void usbReceiveData( void ) {
                                   2234 ;	-----------------------------------------
                                   2235 ;	 function usbReceiveData
                                   2236 ;	-----------------------------------------
      001208                       2237 _usbReceiveData:
                           00041E  2238 	C$medtronicRF.c$111$1$37 ==.
                                   2239 ;	medtronicRF.c:111: nBytes = halUartGetNumRxBytes( );
      001208 12 0B 3B         [24] 2240 	lcall	_halUartGetNumRxBytes
      00120B AE 82            [24] 2241 	mov	r6,dpl
      00120D AF 83            [24] 2242 	mov	r7,dph
                           000425  2243 	C$medtronicRF.c$112$2$38 ==.
                                   2244 ;	medtronicRF.c:112: for( i = 0; i < nBytes; i = i + 48 ) {
      00120F 7C 00            [12] 2245 	mov	r4,#0x00
      001211 7D 00            [12] 2246 	mov	r5,#0x00
      001213                       2247 00143$:
      001213 C3               [12] 2248 	clr	c
      001214 EC               [12] 2249 	mov	a,r4
      001215 9E               [12] 2250 	subb	a,r6
      001216 ED               [12] 2251 	mov	a,r5
      001217 9F               [12] 2252 	subb	a,r7
      001218 50 69            [24] 2253 	jnc	00104$
                           000430  2254 	C$medtronicRF.c$113$2$38 ==.
                                   2255 ;	medtronicRF.c:113: if( nBytes - i > 48 ) readBytes = 48;
      00121A EE               [12] 2256 	mov	a,r6
      00121B C3               [12] 2257 	clr	c
      00121C 9C               [12] 2258 	subb	a,r4
      00121D FA               [12] 2259 	mov	r2,a
      00121E EF               [12] 2260 	mov	a,r7
      00121F 9D               [12] 2261 	subb	a,r5
      001220 FB               [12] 2262 	mov	r3,a
      001221 C3               [12] 2263 	clr	c
      001222 74 30            [12] 2264 	mov	a,#0x30
      001224 9A               [12] 2265 	subb	a,r2
      001225 E4               [12] 2266 	clr	a
      001226 9B               [12] 2267 	subb	a,r3
      001227 50 0B            [24] 2268 	jnc	00102$
      001229 90 04 E5         [24] 2269 	mov	dptr,#_usbReceiveData_readBytes_1_37
      00122C 74 30            [12] 2270 	mov	a,#0x30
      00122E F0               [24] 2271 	movx	@dptr,a
      00122F E4               [12] 2272 	clr	a
      001230 A3               [24] 2273 	inc	dptr
      001231 F0               [24] 2274 	movx	@dptr,a
      001232 80 0B            [24] 2275 	sjmp	00103$
      001234                       2276 00102$:
                           00044A  2277 	C$medtronicRF.c$114$2$38 ==.
                                   2278 ;	medtronicRF.c:114: else readBytes = nBytes - i;
      001234 90 04 E5         [24] 2279 	mov	dptr,#_usbReceiveData_readBytes_1_37
      001237 EE               [12] 2280 	mov	a,r6
      001238 C3               [12] 2281 	clr	c
      001239 9C               [12] 2282 	subb	a,r4
      00123A F0               [24] 2283 	movx	@dptr,a
      00123B EF               [12] 2284 	mov	a,r7
      00123C 9D               [12] 2285 	subb	a,r5
      00123D A3               [24] 2286 	inc	dptr
      00123E F0               [24] 2287 	movx	@dptr,a
      00123F                       2288 00103$:
                           000455  2289 	C$medtronicRF.c$115$1$37 ==.
                                   2290 ;	medtronicRF.c:115: halUartRead( (uint8_t *)&tempData[i], readBytes );
      00123F C0 06            [24] 2291 	push	ar6
      001241 C0 07            [24] 2292 	push	ar7
      001243 EC               [12] 2293 	mov	a,r4
      001244 24 65            [12] 2294 	add	a,#_usbReceiveData_tempData_1_37
      001246 FA               [12] 2295 	mov	r2,a
      001247 ED               [12] 2296 	mov	a,r5
      001248 34 04            [12] 2297 	addc	a,#(_usbReceiveData_tempData_1_37 >> 8)
      00124A F9               [12] 2298 	mov	r1,a
      00124B 7B 00            [12] 2299 	mov	r3,#0x00
      00124D 90 04 E5         [24] 2300 	mov	dptr,#_usbReceiveData_readBytes_1_37
      001250 E0               [24] 2301 	movx	a,@dptr
      001251 F8               [12] 2302 	mov	r0,a
      001252 A3               [24] 2303 	inc	dptr
      001253 E0               [24] 2304 	movx	a,@dptr
      001254 FF               [12] 2305 	mov	r7,a
      001255 90 02 46         [24] 2306 	mov	dptr,#_halUartRead_PARM_2
      001258 E8               [12] 2307 	mov	a,r0
      001259 F0               [24] 2308 	movx	@dptr,a
      00125A EF               [12] 2309 	mov	a,r7
      00125B A3               [24] 2310 	inc	dptr
      00125C F0               [24] 2311 	movx	@dptr,a
      00125D 8A 82            [24] 2312 	mov	dpl,r2
      00125F 89 83            [24] 2313 	mov	dph,r1
      001261 8B F0            [24] 2314 	mov	b,r3
      001263 C0 07            [24] 2315 	push	ar7
      001265 C0 06            [24] 2316 	push	ar6
      001267 C0 05            [24] 2317 	push	ar5
      001269 C0 04            [24] 2318 	push	ar4
      00126B 12 0B 37         [24] 2319 	lcall	_halUartRead
      00126E D0 04            [24] 2320 	pop	ar4
      001270 D0 05            [24] 2321 	pop	ar5
      001272 D0 06            [24] 2322 	pop	ar6
      001274 D0 07            [24] 2323 	pop	ar7
                           00048C  2324 	C$medtronicRF.c$112$1$37 ==.
                                   2325 ;	medtronicRF.c:112: for( i = 0; i < nBytes; i = i + 48 ) {
      001276 74 30            [12] 2326 	mov	a,#0x30
      001278 2C               [12] 2327 	add	a,r4
      001279 FC               [12] 2328 	mov	r4,a
      00127A E4               [12] 2329 	clr	a
      00127B 3D               [12] 2330 	addc	a,r5
      00127C FD               [12] 2331 	mov	r5,a
      00127D D0 07            [24] 2332 	pop	ar7
      00127F D0 06            [24] 2333 	pop	ar6
      001281 80 90            [24] 2334 	sjmp	00143$
      001283                       2335 00104$:
                           000499  2336 	C$medtronicRF.c$120$1$37 ==.
                                   2337 ;	medtronicRF.c:120: for( i = 0; i < nBytes; i++ ) {
      001283 7C 00            [12] 2338 	mov	r4,#0x00
      001285 7D 00            [12] 2339 	mov	r5,#0x00
      001287                       2340 00146$:
      001287 C3               [12] 2341 	clr	c
      001288 EC               [12] 2342 	mov	a,r4
      001289 9E               [12] 2343 	subb	a,r6
      00128A ED               [12] 2344 	mov	a,r5
      00128B 9F               [12] 2345 	subb	a,r7
      00128C 40 03            [24] 2346 	jc	00208$
      00128E 02 16 5C         [24] 2347 	ljmp	00148$
      001291                       2348 00208$:
                           0004A7  2349 	C$medtronicRF.c$122$2$39 ==.
                                   2350 ;	medtronicRF.c:122: uartRxBuffer[uartRxIndex] = tempData[i];
      001291 90 05 EB         [24] 2351 	mov	dptr,#_uartRxIndex
      001294 E0               [24] 2352 	movx	a,@dptr
      001295 FA               [12] 2353 	mov	r2,a
      001296 A3               [24] 2354 	inc	dptr
      001297 E0               [24] 2355 	movx	a,@dptr
      001298 FB               [12] 2356 	mov	r3,a
      001299 EA               [12] 2357 	mov	a,r2
      00129A 24 E7            [12] 2358 	add	a,#_uartRxBuffer
      00129C FA               [12] 2359 	mov	r2,a
      00129D EB               [12] 2360 	mov	a,r3
      00129E 34 04            [12] 2361 	addc	a,#(_uartRxBuffer >> 8)
      0012A0 FB               [12] 2362 	mov	r3,a
      0012A1 EC               [12] 2363 	mov	a,r4
      0012A2 24 65            [12] 2364 	add	a,#_usbReceiveData_tempData_1_37
      0012A4 F5 82            [12] 2365 	mov	dpl,a
      0012A6 ED               [12] 2366 	mov	a,r5
      0012A7 34 04            [12] 2367 	addc	a,#(_usbReceiveData_tempData_1_37 >> 8)
      0012A9 F5 83            [12] 2368 	mov	dph,a
      0012AB E0               [24] 2369 	movx	a,@dptr
      0012AC F9               [12] 2370 	mov	r1,a
      0012AD 8A 82            [24] 2371 	mov	dpl,r2
      0012AF 8B 83            [24] 2372 	mov	dph,r3
      0012B1 F0               [24] 2373 	movx	@dptr,a
                           0004C8  2374 	C$medtronicRF.c$124$2$39 ==.
                                   2375 ;	medtronicRF.c:124: if( uartRxIndex == 0 ) {
      0012B2 90 05 EB         [24] 2376 	mov	dptr,#_uartRxIndex
      0012B5 E0               [24] 2377 	movx	a,@dptr
      0012B6 FA               [12] 2378 	mov	r2,a
      0012B7 A3               [24] 2379 	inc	dptr
      0012B8 E0               [24] 2380 	movx	a,@dptr
      0012B9 FB               [12] 2381 	mov	r3,a
      0012BA 4A               [12] 2382 	orl	a,r2
      0012BB 60 03            [24] 2383 	jz	00209$
      0012BD 02 13 C8         [24] 2384 	ljmp	00139$
      0012C0                       2385 00209$:
                           0004D6  2386 	C$medtronicRF.c$125$3$40 ==.
                                   2387 ;	medtronicRF.c:125: if( uartRxBuffer[0] == (char)0x01 ) {
      0012C0 90 04 E7         [24] 2388 	mov	dptr,#_uartRxBuffer
      0012C3 E0               [24] 2389 	movx	a,@dptr
      0012C4 F9               [12] 2390 	mov	r1,a
      0012C5 B9 01 2E         [24] 2391 	cjne	r1,#0x01,00118$
                           0004DE  2392 	C$medtronicRF.c$126$4$41 ==.
                                   2393 ;	medtronicRF.c:126: uartRxIndex++;
      0012C8 90 05 EB         [24] 2394 	mov	dptr,#_uartRxIndex
      0012CB 74 01            [12] 2395 	mov	a,#0x01
      0012CD 2A               [12] 2396 	add	a,r2
      0012CE F0               [24] 2397 	movx	@dptr,a
      0012CF E4               [12] 2398 	clr	a
      0012D0 3B               [12] 2399 	addc	a,r3
      0012D1 A3               [24] 2400 	inc	dptr
      0012D2 F0               [24] 2401 	movx	@dptr,a
                           0004E9  2402 	C$medtronicRF.c$127$4$41 ==.
                                   2403 ;	medtronicRF.c:127: txCalcCRC = 0;
      0012D3 90 04 50         [24] 2404 	mov	dptr,#_txCalcCRC
      0012D6 E4               [12] 2405 	clr	a
      0012D7 F0               [24] 2406 	movx	@dptr,a
      0012D8 A3               [24] 2407 	inc	dptr
      0012D9 F0               [24] 2408 	movx	@dptr,a
                           0004F0  2409 	C$medtronicRF.c$128$4$41 ==.
                                   2410 ;	medtronicRF.c:128: txCalcCRC16 = 0;
      0012DA 90 04 52         [24] 2411 	mov	dptr,#_txCalcCRC16
      0012DD F0               [24] 2412 	movx	@dptr,a
      0012DE A3               [24] 2413 	inc	dptr
      0012DF F0               [24] 2414 	movx	@dptr,a
                           0004F6  2415 	C$medtronicRF.c$129$4$41 ==.
                                   2416 ;	medtronicRF.c:129: enableTimerInt( );
      0012E0 C0 07            [24] 2417 	push	ar7
      0012E2 C0 06            [24] 2418 	push	ar6
      0012E4 C0 05            [24] 2419 	push	ar5
      0012E6 C0 04            [24] 2420 	push	ar4
      0012E8 12 0D CE         [24] 2421 	lcall	_enableTimerInt
      0012EB D0 04            [24] 2422 	pop	ar4
      0012ED D0 05            [24] 2423 	pop	ar5
      0012EF D0 06            [24] 2424 	pop	ar6
      0012F1 D0 07            [24] 2425 	pop	ar7
      0012F3 02 16 54         [24] 2426 	ljmp	00147$
      0012F6                       2427 00118$:
                           00050C  2428 	C$medtronicRF.c$130$3$40 ==.
                                   2429 ;	medtronicRF.c:130: } else if( uartRxBuffer[0] == (char)0x81 ) {
      0012F6 B9 81 30         [24] 2430 	cjne	r1,#0x81,00115$
                           00050F  2431 	C$medtronicRF.c$131$4$42 ==.
                                   2432 ;	medtronicRF.c:131: uartRxIndex++;
      0012F9 90 05 EB         [24] 2433 	mov	dptr,#_uartRxIndex
      0012FC 74 01            [12] 2434 	mov	a,#0x01
      0012FE 2A               [12] 2435 	add	a,r2
      0012FF F0               [24] 2436 	movx	@dptr,a
      001300 E4               [12] 2437 	clr	a
      001301 3B               [12] 2438 	addc	a,r3
      001302 A3               [24] 2439 	inc	dptr
      001303 F0               [24] 2440 	movx	@dptr,a
                           00051A  2441 	C$medtronicRF.c$132$4$42 ==.
                                   2442 ;	medtronicRF.c:132: txCalcCRC = 1;
      001304 90 04 50         [24] 2443 	mov	dptr,#_txCalcCRC
      001307 74 01            [12] 2444 	mov	a,#0x01
      001309 F0               [24] 2445 	movx	@dptr,a
      00130A E4               [12] 2446 	clr	a
      00130B A3               [24] 2447 	inc	dptr
      00130C F0               [24] 2448 	movx	@dptr,a
                           000523  2449 	C$medtronicRF.c$133$4$42 ==.
                                   2450 ;	medtronicRF.c:133: txCalcCRC16 = 0;
      00130D 90 04 52         [24] 2451 	mov	dptr,#_txCalcCRC16
      001310 F0               [24] 2452 	movx	@dptr,a
      001311 A3               [24] 2453 	inc	dptr
      001312 F0               [24] 2454 	movx	@dptr,a
                           000529  2455 	C$medtronicRF.c$134$4$42 ==.
                                   2456 ;	medtronicRF.c:134: enableTimerInt( );
      001313 C0 07            [24] 2457 	push	ar7
      001315 C0 06            [24] 2458 	push	ar6
      001317 C0 05            [24] 2459 	push	ar5
      001319 C0 04            [24] 2460 	push	ar4
      00131B 12 0D CE         [24] 2461 	lcall	_enableTimerInt
      00131E D0 04            [24] 2462 	pop	ar4
      001320 D0 05            [24] 2463 	pop	ar5
      001322 D0 06            [24] 2464 	pop	ar6
      001324 D0 07            [24] 2465 	pop	ar7
      001326 02 16 54         [24] 2466 	ljmp	00147$
      001329                       2467 00115$:
                           00053F  2468 	C$medtronicRF.c$135$3$40 ==.
                                   2469 ;	medtronicRF.c:135: } else if( uartRxBuffer[0] == (char)0xC1 ) {
      001329 B9 C1 30         [24] 2470 	cjne	r1,#0xC1,00112$
                           000542  2471 	C$medtronicRF.c$136$4$43 ==.
                                   2472 ;	medtronicRF.c:136: uartRxIndex++;
      00132C 90 05 EB         [24] 2473 	mov	dptr,#_uartRxIndex
      00132F 74 01            [12] 2474 	mov	a,#0x01
      001331 2A               [12] 2475 	add	a,r2
      001332 F0               [24] 2476 	movx	@dptr,a
      001333 E4               [12] 2477 	clr	a
      001334 3B               [12] 2478 	addc	a,r3
      001335 A3               [24] 2479 	inc	dptr
      001336 F0               [24] 2480 	movx	@dptr,a
                           00054D  2481 	C$medtronicRF.c$137$4$43 ==.
                                   2482 ;	medtronicRF.c:137: txCalcCRC = 0;
      001337 90 04 50         [24] 2483 	mov	dptr,#_txCalcCRC
      00133A E4               [12] 2484 	clr	a
      00133B F0               [24] 2485 	movx	@dptr,a
      00133C A3               [24] 2486 	inc	dptr
      00133D F0               [24] 2487 	movx	@dptr,a
                           000554  2488 	C$medtronicRF.c$138$4$43 ==.
                                   2489 ;	medtronicRF.c:138: txCalcCRC16 = 1;
      00133E 90 04 52         [24] 2490 	mov	dptr,#_txCalcCRC16
      001341 04               [12] 2491 	inc	a
      001342 F0               [24] 2492 	movx	@dptr,a
      001343 E4               [12] 2493 	clr	a
      001344 A3               [24] 2494 	inc	dptr
      001345 F0               [24] 2495 	movx	@dptr,a
                           00055C  2496 	C$medtronicRF.c$139$4$43 ==.
                                   2497 ;	medtronicRF.c:139: enableTimerInt( );
      001346 C0 07            [24] 2498 	push	ar7
      001348 C0 06            [24] 2499 	push	ar6
      00134A C0 05            [24] 2500 	push	ar5
      00134C C0 04            [24] 2501 	push	ar4
      00134E 12 0D CE         [24] 2502 	lcall	_enableTimerInt
      001351 D0 04            [24] 2503 	pop	ar4
      001353 D0 05            [24] 2504 	pop	ar5
      001355 D0 06            [24] 2505 	pop	ar6
      001357 D0 07            [24] 2506 	pop	ar7
      001359 02 16 54         [24] 2507 	ljmp	00147$
      00135C                       2508 00112$:
                           000572  2509 	C$medtronicRF.c$140$3$40 ==.
                                   2510 ;	medtronicRF.c:140: } else if( (uartRxBuffer[0] == (char)0x03) ||
      00135C B9 03 02         [24] 2511 	cjne	r1,#0x03,00216$
      00135F 80 03            [24] 2512 	sjmp	00107$
      001361                       2513 00216$:
                           000577  2514 	C$medtronicRF.c$141$3$40 ==.
                                   2515 ;	medtronicRF.c:141: (uartRxBuffer[0] == (char)0x13) ) {
      001361 B9 13 33         [24] 2516 	cjne	r1,#0x13,00108$
      001364                       2517 00107$:
                           00057A  2518 	C$medtronicRF.c$142$4$44 ==.
                                   2519 ;	medtronicRF.c:142: txFilterEnabled = 1;
      001364 90 06 F3         [24] 2520 	mov	dptr,#_txFilterEnabled
      001367 74 01            [12] 2521 	mov	a,#0x01
      001369 F0               [24] 2522 	movx	@dptr,a
                           000580  2523 	C$medtronicRF.c$143$4$44 ==.
                                   2524 ;	medtronicRF.c:143: P1_1 = 0;
      00136A C2 91            [12] 2525 	clr	_P1_1
                           000582  2526 	C$medtronicRF.c$144$4$44 ==.
                                   2527 ;	medtronicRF.c:144: uartRxBuffer[0] = (char)0x03;
      00136C 90 04 E7         [24] 2528 	mov	dptr,#_uartRxBuffer
      00136F 74 03            [12] 2529 	mov	a,#0x03
      001371 F0               [24] 2530 	movx	@dptr,a
                           000588  2531 	C$medtronicRF.c$145$4$44 ==.
                                   2532 ;	medtronicRF.c:145: halUartWrite( (uint8_t const *)uartRxBuffer, 1 );
      001372 90 02 44         [24] 2533 	mov	dptr,#_halUartWrite_PARM_2
      001375 74 01            [12] 2534 	mov	a,#0x01
      001377 F0               [24] 2535 	movx	@dptr,a
      001378 E4               [12] 2536 	clr	a
      001379 A3               [24] 2537 	inc	dptr
      00137A F0               [24] 2538 	movx	@dptr,a
      00137B 90 04 E7         [24] 2539 	mov	dptr,#_uartRxBuffer
      00137E 75 F0 00         [24] 2540 	mov	b,#0x00
      001381 C0 07            [24] 2541 	push	ar7
      001383 C0 06            [24] 2542 	push	ar6
      001385 C0 05            [24] 2543 	push	ar5
      001387 C0 04            [24] 2544 	push	ar4
      001389 12 0B 33         [24] 2545 	lcall	_halUartWrite
      00138C D0 04            [24] 2546 	pop	ar4
      00138E D0 05            [24] 2547 	pop	ar5
      001390 D0 06            [24] 2548 	pop	ar6
      001392 D0 07            [24] 2549 	pop	ar7
      001394 02 16 54         [24] 2550 	ljmp	00147$
      001397                       2551 00108$:
                           0005AD  2552 	C$medtronicRF.c$146$3$40 ==.
                                   2553 ;	medtronicRF.c:146: } else if( uartRxBuffer[0] == (char)0x00 ) {
      001397 E9               [12] 2554 	mov	a,r1
      001398 60 03            [24] 2555 	jz	00219$
      00139A 02 16 54         [24] 2556 	ljmp	00147$
      00139D                       2557 00219$:
                           0005B3  2558 	C$medtronicRF.c$147$4$45 ==.
                                   2559 ;	medtronicRF.c:147: uartRxBuffer[0] = _MMCOMMANDER_VERSION_;
      00139D 90 04 E7         [24] 2560 	mov	dptr,#_uartRxBuffer
      0013A0 74 57            [12] 2561 	mov	a,#0x57
      0013A2 F0               [24] 2562 	movx	@dptr,a
                           0005B9  2563 	C$medtronicRF.c$148$4$45 ==.
                                   2564 ;	medtronicRF.c:148: halUartWrite( (uint8_t const *)uartRxBuffer, 1 );
      0013A3 90 02 44         [24] 2565 	mov	dptr,#_halUartWrite_PARM_2
      0013A6 74 01            [12] 2566 	mov	a,#0x01
      0013A8 F0               [24] 2567 	movx	@dptr,a
      0013A9 E4               [12] 2568 	clr	a
      0013AA A3               [24] 2569 	inc	dptr
      0013AB F0               [24] 2570 	movx	@dptr,a
      0013AC 90 04 E7         [24] 2571 	mov	dptr,#_uartRxBuffer
      0013AF 75 F0 00         [24] 2572 	mov	b,#0x00
      0013B2 C0 07            [24] 2573 	push	ar7
      0013B4 C0 06            [24] 2574 	push	ar6
      0013B6 C0 05            [24] 2575 	push	ar5
      0013B8 C0 04            [24] 2576 	push	ar4
      0013BA 12 0B 33         [24] 2577 	lcall	_halUartWrite
      0013BD D0 04            [24] 2578 	pop	ar4
      0013BF D0 05            [24] 2579 	pop	ar5
      0013C1 D0 06            [24] 2580 	pop	ar6
      0013C3 D0 07            [24] 2581 	pop	ar7
      0013C5 02 16 54         [24] 2582 	ljmp	00147$
      0013C8                       2583 00139$:
                           0005DE  2584 	C$medtronicRF.c$150$2$39 ==.
                                   2585 ;	medtronicRF.c:150: } else if( uartRxIndex == 1 ) {
      0013C8 BA 01 2C         [24] 2586 	cjne	r2,#0x01,00136$
      0013CB BB 00 29         [24] 2587 	cjne	r3,#0x00,00136$
                           0005E4  2588 	C$medtronicRF.c$151$3$46 ==.
                                   2589 ;	medtronicRF.c:151: txLength = uartRxBuffer[1];
      0013CE 90 04 E8         [24] 2590 	mov	dptr,#(_uartRxBuffer + 0x0001)
      0013D1 E0               [24] 2591 	movx	a,@dptr
      0013D2 90 04 54         [24] 2592 	mov	dptr,#_txLength
      0013D5 F0               [24] 2593 	movx	@dptr,a
                           0005EC  2594 	C$medtronicRF.c$152$3$46 ==.
                                   2595 ;	medtronicRF.c:152: uartRxIndex++;
      0013D6 90 05 EB         [24] 2596 	mov	dptr,#_uartRxIndex
      0013D9 74 01            [12] 2597 	mov	a,#0x01
      0013DB 2A               [12] 2598 	add	a,r2
      0013DC F0               [24] 2599 	movx	@dptr,a
      0013DD E4               [12] 2600 	clr	a
      0013DE 3B               [12] 2601 	addc	a,r3
      0013DF A3               [24] 2602 	inc	dptr
      0013E0 F0               [24] 2603 	movx	@dptr,a
                           0005F7  2604 	C$medtronicRF.c$153$3$46 ==.
                                   2605 ;	medtronicRF.c:153: resetTimerCounter( );
      0013E1 C0 07            [24] 2606 	push	ar7
      0013E3 C0 06            [24] 2607 	push	ar6
      0013E5 C0 05            [24] 2608 	push	ar5
      0013E7 C0 04            [24] 2609 	push	ar4
      0013E9 12 0D CA         [24] 2610 	lcall	_resetTimerCounter
      0013EC D0 04            [24] 2611 	pop	ar4
      0013EE D0 05            [24] 2612 	pop	ar5
      0013F0 D0 06            [24] 2613 	pop	ar6
      0013F2 D0 07            [24] 2614 	pop	ar7
      0013F4 02 16 54         [24] 2615 	ljmp	00147$
      0013F7                       2616 00136$:
                           00060D  2617 	C$medtronicRF.c$154$2$39 ==.
                                   2618 ;	medtronicRF.c:154: } else if( uartRxIndex == 2 ) {
      0013F7 BA 02 33         [24] 2619 	cjne	r2,#0x02,00133$
      0013FA BB 00 30         [24] 2620 	cjne	r3,#0x00,00133$
                           000613  2621 	C$medtronicRF.c$155$3$47 ==.
                                   2622 ;	medtronicRF.c:155: txTimes = uartRxBuffer[2];
      0013FD 90 04 E9         [24] 2623 	mov	dptr,#(_uartRxBuffer + 0x0002)
      001400 E0               [24] 2624 	movx	a,@dptr
      001401 F9               [12] 2625 	mov	r1,a
      001402 90 04 55         [24] 2626 	mov	dptr,#_txTimes
      001405 F0               [24] 2627 	movx	@dptr,a
      001406 E9               [12] 2628 	mov	a,r1
      001407 33               [12] 2629 	rlc	a
      001408 95 E0            [12] 2630 	subb	a,acc
      00140A A3               [24] 2631 	inc	dptr
      00140B F0               [24] 2632 	movx	@dptr,a
                           000622  2633 	C$medtronicRF.c$156$3$47 ==.
                                   2634 ;	medtronicRF.c:156: uartRxIndex++;
      00140C 90 05 EB         [24] 2635 	mov	dptr,#_uartRxIndex
      00140F 74 01            [12] 2636 	mov	a,#0x01
      001411 2A               [12] 2637 	add	a,r2
      001412 F0               [24] 2638 	movx	@dptr,a
      001413 E4               [12] 2639 	clr	a
      001414 3B               [12] 2640 	addc	a,r3
      001415 A3               [24] 2641 	inc	dptr
      001416 F0               [24] 2642 	movx	@dptr,a
                           00062D  2643 	C$medtronicRF.c$157$3$47 ==.
                                   2644 ;	medtronicRF.c:157: resetTimerCounter( );
      001417 C0 07            [24] 2645 	push	ar7
      001419 C0 06            [24] 2646 	push	ar6
      00141B C0 05            [24] 2647 	push	ar5
      00141D C0 04            [24] 2648 	push	ar4
      00141F 12 0D CA         [24] 2649 	lcall	_resetTimerCounter
      001422 D0 04            [24] 2650 	pop	ar4
      001424 D0 05            [24] 2651 	pop	ar5
      001426 D0 06            [24] 2652 	pop	ar6
      001428 D0 07            [24] 2653 	pop	ar7
      00142A 02 16 54         [24] 2654 	ljmp	00147$
      00142D                       2655 00133$:
                           000643  2656 	C$medtronicRF.c$158$2$39 ==.
                                   2657 ;	medtronicRF.c:158: } else if( uartRxIndex > 2 ) {
      00142D C3               [12] 2658 	clr	c
      00142E 74 02            [12] 2659 	mov	a,#0x02
      001430 9A               [12] 2660 	subb	a,r2
      001431 74 80            [12] 2661 	mov	a,#(0x00 ^ 0x80)
      001433 8B F0            [24] 2662 	mov	b,r3
      001435 63 F0 80         [24] 2663 	xrl	b,#0x80
      001438 95 F0            [12] 2664 	subb	a,b
      00143A 40 03            [24] 2665 	jc	00224$
      00143C 02 16 54         [24] 2666 	ljmp	00147$
      00143F                       2667 00224$:
                           000655  2668 	C$medtronicRF.c$159$3$48 ==.
                                   2669 ;	medtronicRF.c:159: resetTimerCounter( );
      00143F C0 07            [24] 2670 	push	ar7
      001441 C0 06            [24] 2671 	push	ar6
      001443 C0 05            [24] 2672 	push	ar5
      001445 C0 04            [24] 2673 	push	ar4
      001447 12 0D CA         [24] 2674 	lcall	_resetTimerCounter
      00144A D0 04            [24] 2675 	pop	ar4
      00144C D0 05            [24] 2676 	pop	ar5
      00144E D0 06            [24] 2677 	pop	ar6
      001450 D0 07            [24] 2678 	pop	ar7
                           000668  2679 	C$medtronicRF.c$160$3$48 ==.
                                   2680 ;	medtronicRF.c:160: if( uartRxIndex == (txLength + 2) ) {
      001452 90 04 54         [24] 2681 	mov	dptr,#_txLength
      001455 E0               [24] 2682 	movx	a,@dptr
      001456 FB               [12] 2683 	mov	r3,a
      001457 33               [12] 2684 	rlc	a
      001458 95 E0            [12] 2685 	subb	a,acc
      00145A FA               [12] 2686 	mov	r2,a
      00145B 74 02            [12] 2687 	mov	a,#0x02
      00145D 2B               [12] 2688 	add	a,r3
      00145E FB               [12] 2689 	mov	r3,a
      00145F E4               [12] 2690 	clr	a
      001460 3A               [12] 2691 	addc	a,r2
      001461 FA               [12] 2692 	mov	r2,a
      001462 90 05 EB         [24] 2693 	mov	dptr,#_uartRxIndex
      001465 E0               [24] 2694 	movx	a,@dptr
      001466 F8               [12] 2695 	mov	r0,a
      001467 A3               [24] 2696 	inc	dptr
      001468 E0               [24] 2697 	movx	a,@dptr
      001469 F9               [12] 2698 	mov	r1,a
      00146A E8               [12] 2699 	mov	a,r0
      00146B B5 03 06         [24] 2700 	cjne	a,ar3,00225$
      00146E E9               [12] 2701 	mov	a,r1
      00146F B5 02 02         [24] 2702 	cjne	a,ar2,00225$
      001472 80 03            [24] 2703 	sjmp	00226$
      001474                       2704 00225$:
      001474 02 16 49         [24] 2705 	ljmp	00128$
      001477                       2706 00226$:
                           00068D  2707 	C$medtronicRF.c$161$4$49 ==.
                                   2708 ;	medtronicRF.c:161: stopTimerInt( );
      001477 C0 07            [24] 2709 	push	ar7
      001479 C0 06            [24] 2710 	push	ar6
      00147B C0 05            [24] 2711 	push	ar5
      00147D C0 04            [24] 2712 	push	ar4
      00147F 12 0D BC         [24] 2713 	lcall	_stopTimerInt
      001482 D0 04            [24] 2714 	pop	ar4
      001484 D0 05            [24] 2715 	pop	ar5
      001486 D0 06            [24] 2716 	pop	ar6
      001488 D0 07            [24] 2717 	pop	ar7
                           0006A0  2718 	C$medtronicRF.c$162$4$49 ==.
                                   2719 ;	medtronicRF.c:162: if( txCalcCRC == 1 ) {
      00148A 90 04 50         [24] 2720 	mov	dptr,#_txCalcCRC
      00148D E0               [24] 2721 	movx	a,@dptr
      00148E FA               [12] 2722 	mov	r2,a
      00148F A3               [24] 2723 	inc	dptr
      001490 E0               [24] 2724 	movx	a,@dptr
      001491 FB               [12] 2725 	mov	r3,a
      001492 BA 01 62         [24] 2726 	cjne	r2,#0x01,00121$
      001495 BB 00 5F         [24] 2727 	cjne	r3,#0x00,00121$
                           0006AE  2728 	C$medtronicRF.c$163$1$37 ==.
                                   2729 ;	medtronicRF.c:163: uartRxBuffer[++uartRxIndex] = crc8( &uartRxBuffer[3], (int)txLength );
      001498 C0 04            [24] 2730 	push	ar4
      00149A C0 05            [24] 2731 	push	ar5
      00149C 90 05 EB         [24] 2732 	mov	dptr,#_uartRxIndex
      00149F E0               [24] 2733 	movx	a,@dptr
      0014A0 24 01            [12] 2734 	add	a,#0x01
      0014A2 F0               [24] 2735 	movx	@dptr,a
      0014A3 A3               [24] 2736 	inc	dptr
      0014A4 E0               [24] 2737 	movx	a,@dptr
      0014A5 34 00            [12] 2738 	addc	a,#0x00
      0014A7 F0               [24] 2739 	movx	@dptr,a
      0014A8 90 05 EB         [24] 2740 	mov	dptr,#_uartRxIndex
      0014AB E0               [24] 2741 	movx	a,@dptr
      0014AC FA               [12] 2742 	mov	r2,a
      0014AD A3               [24] 2743 	inc	dptr
      0014AE E0               [24] 2744 	movx	a,@dptr
      0014AF FB               [12] 2745 	mov	r3,a
      0014B0 EA               [12] 2746 	mov	a,r2
      0014B1 24 E7            [12] 2747 	add	a,#_uartRxBuffer
      0014B3 FA               [12] 2748 	mov	r2,a
      0014B4 EB               [12] 2749 	mov	a,r3
      0014B5 34 04            [12] 2750 	addc	a,#(_uartRxBuffer >> 8)
      0014B7 FB               [12] 2751 	mov	r3,a
      0014B8 90 04 54         [24] 2752 	mov	dptr,#_txLength
      0014BB E0               [24] 2753 	movx	a,@dptr
      0014BC FD               [12] 2754 	mov	r5,a
      0014BD 90 02 02         [24] 2755 	mov	dptr,#_crc8_PARM_2
      0014C0 F0               [24] 2756 	movx	@dptr,a
      0014C1 ED               [12] 2757 	mov	a,r5
      0014C2 33               [12] 2758 	rlc	a
      0014C3 95 E0            [12] 2759 	subb	a,acc
      0014C5 A3               [24] 2760 	inc	dptr
      0014C6 F0               [24] 2761 	movx	@dptr,a
      0014C7 90 04 EA         [24] 2762 	mov	dptr,#(_uartRxBuffer + 0x0003)
      0014CA 75 F0 00         [24] 2763 	mov	b,#0x00
      0014CD C0 07            [24] 2764 	push	ar7
      0014CF C0 06            [24] 2765 	push	ar6
      0014D1 C0 04            [24] 2766 	push	ar4
      0014D3 C0 03            [24] 2767 	push	ar3
      0014D5 C0 02            [24] 2768 	push	ar2
      0014D7 12 00 BF         [24] 2769 	lcall	_crc8
      0014DA AD 82            [24] 2770 	mov	r5,dpl
      0014DC D0 02            [24] 2771 	pop	ar2
      0014DE D0 03            [24] 2772 	pop	ar3
      0014E0 D0 04            [24] 2773 	pop	ar4
      0014E2 D0 06            [24] 2774 	pop	ar6
      0014E4 D0 07            [24] 2775 	pop	ar7
      0014E6 8A 82            [24] 2776 	mov	dpl,r2
      0014E8 8B 83            [24] 2777 	mov	dph,r3
      0014EA ED               [12] 2778 	mov	a,r5
      0014EB F0               [24] 2779 	movx	@dptr,a
                           000702  2780 	C$medtronicRF.c$164$5$50 ==.
                                   2781 ;	medtronicRF.c:164: txLength++;
      0014EC 90 04 54         [24] 2782 	mov	dptr,#_txLength
      0014EF E0               [24] 2783 	movx	a,@dptr
      0014F0 24 01            [12] 2784 	add	a,#0x01
      0014F2 F0               [24] 2785 	movx	@dptr,a
                           000709  2786 	C$medtronicRF.c$120$1$37 ==.
                                   2787 ;	medtronicRF.c:120: for( i = 0; i < nBytes; i++ ) {
      0014F3 D0 05            [24] 2788 	pop	ar5
      0014F5 D0 04            [24] 2789 	pop	ar4
                           00070D  2790 	C$medtronicRF.c$164$4$49 ==.
                                   2791 ;	medtronicRF.c:164: txLength++;
      0014F7                       2792 00121$:
                           00070D  2793 	C$medtronicRF.c$166$4$49 ==.
                                   2794 ;	medtronicRF.c:166: if( txCalcCRC16 == 1 ) {
      0014F7 90 04 52         [24] 2795 	mov	dptr,#_txCalcCRC16
      0014FA E0               [24] 2796 	movx	a,@dptr
      0014FB FA               [12] 2797 	mov	r2,a
      0014FC A3               [24] 2798 	inc	dptr
      0014FD E0               [24] 2799 	movx	a,@dptr
      0014FE FB               [12] 2800 	mov	r3,a
      0014FF BA 01 05         [24] 2801 	cjne	r2,#0x01,00229$
      001502 BB 00 02         [24] 2802 	cjne	r3,#0x00,00229$
      001505 80 03            [24] 2803 	sjmp	00230$
      001507                       2804 00229$:
      001507 02 15 89         [24] 2805 	ljmp	00123$
      00150A                       2806 00230$:
                           000720  2807 	C$medtronicRF.c$167$1$37 ==.
                                   2808 ;	medtronicRF.c:167: tmpCRC16 = crc16( &uartRxBuffer[3], (int)txLength );
      00150A C0 04            [24] 2809 	push	ar4
      00150C C0 05            [24] 2810 	push	ar5
      00150E 90 04 54         [24] 2811 	mov	dptr,#_txLength
      001511 E0               [24] 2812 	movx	a,@dptr
      001512 FB               [12] 2813 	mov	r3,a
      001513 90 02 0C         [24] 2814 	mov	dptr,#_crc16_PARM_2
      001516 F0               [24] 2815 	movx	@dptr,a
      001517 EB               [12] 2816 	mov	a,r3
      001518 33               [12] 2817 	rlc	a
      001519 95 E0            [12] 2818 	subb	a,acc
      00151B A3               [24] 2819 	inc	dptr
      00151C F0               [24] 2820 	movx	@dptr,a
      00151D 90 04 EA         [24] 2821 	mov	dptr,#(_uartRxBuffer + 0x0003)
      001520 75 F0 00         [24] 2822 	mov	b,#0x00
      001523 C0 07            [24] 2823 	push	ar7
      001525 C0 06            [24] 2824 	push	ar6
      001527 C0 05            [24] 2825 	push	ar5
      001529 C0 04            [24] 2826 	push	ar4
      00152B 12 02 05         [24] 2827 	lcall	_crc16
      00152E AA 82            [24] 2828 	mov	r2,dpl
      001530 AB 83            [24] 2829 	mov	r3,dph
      001532 D0 04            [24] 2830 	pop	ar4
      001534 D0 05            [24] 2831 	pop	ar5
      001536 D0 06            [24] 2832 	pop	ar6
      001538 D0 07            [24] 2833 	pop	ar7
                           000750  2834 	C$medtronicRF.c$168$5$51 ==.
                                   2835 ;	medtronicRF.c:168: uartRxBuffer[++uartRxIndex] = (char)((tmpCRC16 >> 8) & 0x00FF);
      00153A 90 05 EB         [24] 2836 	mov	dptr,#_uartRxIndex
      00153D E0               [24] 2837 	movx	a,@dptr
      00153E 24 01            [12] 2838 	add	a,#0x01
      001540 F0               [24] 2839 	movx	@dptr,a
      001541 A3               [24] 2840 	inc	dptr
      001542 E0               [24] 2841 	movx	a,@dptr
      001543 34 00            [12] 2842 	addc	a,#0x00
      001545 F0               [24] 2843 	movx	@dptr,a
      001546 90 05 EB         [24] 2844 	mov	dptr,#_uartRxIndex
      001549 E0               [24] 2845 	movx	a,@dptr
      00154A FC               [12] 2846 	mov	r4,a
      00154B A3               [24] 2847 	inc	dptr
      00154C E0               [24] 2848 	movx	a,@dptr
      00154D FD               [12] 2849 	mov	r5,a
      00154E EC               [12] 2850 	mov	a,r4
      00154F 24 E7            [12] 2851 	add	a,#_uartRxBuffer
      001551 F5 82            [12] 2852 	mov	dpl,a
      001553 ED               [12] 2853 	mov	a,r5
      001554 34 04            [12] 2854 	addc	a,#(_uartRxBuffer >> 8)
      001556 F5 83            [12] 2855 	mov	dph,a
      001558 8B 05            [24] 2856 	mov	ar5,r3
      00155A ED               [12] 2857 	mov	a,r5
      00155B F0               [24] 2858 	movx	@dptr,a
                           000772  2859 	C$medtronicRF.c$169$5$51 ==.
                                   2860 ;	medtronicRF.c:169: uartRxBuffer[++uartRxIndex] = (char)(tmpCRC16 & 0x00FF);
      00155C 90 05 EB         [24] 2861 	mov	dptr,#_uartRxIndex
      00155F E0               [24] 2862 	movx	a,@dptr
      001560 24 01            [12] 2863 	add	a,#0x01
      001562 F0               [24] 2864 	movx	@dptr,a
      001563 A3               [24] 2865 	inc	dptr
      001564 E0               [24] 2866 	movx	a,@dptr
      001565 34 00            [12] 2867 	addc	a,#0x00
      001567 F0               [24] 2868 	movx	@dptr,a
      001568 90 05 EB         [24] 2869 	mov	dptr,#_uartRxIndex
      00156B E0               [24] 2870 	movx	a,@dptr
      00156C FC               [12] 2871 	mov	r4,a
      00156D A3               [24] 2872 	inc	dptr
      00156E E0               [24] 2873 	movx	a,@dptr
      00156F FD               [12] 2874 	mov	r5,a
      001570 EC               [12] 2875 	mov	a,r4
      001571 24 E7            [12] 2876 	add	a,#_uartRxBuffer
      001573 F5 82            [12] 2877 	mov	dpl,a
      001575 ED               [12] 2878 	mov	a,r5
      001576 34 04            [12] 2879 	addc	a,#(_uartRxBuffer >> 8)
      001578 F5 83            [12] 2880 	mov	dph,a
      00157A 7B 00            [12] 2881 	mov	r3,#0x00
      00157C EA               [12] 2882 	mov	a,r2
      00157D F0               [24] 2883 	movx	@dptr,a
                           000794  2884 	C$medtronicRF.c$170$5$51 ==.
                                   2885 ;	medtronicRF.c:170: txLength += 2;
      00157E 90 04 54         [24] 2886 	mov	dptr,#_txLength
      001581 E0               [24] 2887 	movx	a,@dptr
      001582 24 02            [12] 2888 	add	a,#0x02
      001584 F0               [24] 2889 	movx	@dptr,a
                           00079B  2890 	C$medtronicRF.c$120$1$37 ==.
                                   2891 ;	medtronicRF.c:120: for( i = 0; i < nBytes; i++ ) {
      001585 D0 05            [24] 2892 	pop	ar5
      001587 D0 04            [24] 2893 	pop	ar4
                           00079F  2894 	C$medtronicRF.c$170$4$49 ==.
                                   2895 ;	medtronicRF.c:170: txLength += 2;
      001589                       2896 00123$:
                           00079F  2897 	C$medtronicRF.c$173$4$49 ==.
                                   2898 ;	medtronicRF.c:173: if( txFilter( &uartRxBuffer[3], txLength ) == 0 ) {
      001589 90 04 54         [24] 2899 	mov	dptr,#_txLength
      00158C E0               [24] 2900 	movx	a,@dptr
      00158D FB               [12] 2901 	mov	r3,a
      00158E 90 06 F4         [24] 2902 	mov	dptr,#_txFilter_PARM_2
      001591 F0               [24] 2903 	movx	@dptr,a
      001592 EB               [12] 2904 	mov	a,r3
      001593 33               [12] 2905 	rlc	a
      001594 95 E0            [12] 2906 	subb	a,acc
      001596 A3               [24] 2907 	inc	dptr
      001597 F0               [24] 2908 	movx	@dptr,a
      001598 90 04 EA         [24] 2909 	mov	dptr,#(_uartRxBuffer + 0x0003)
      00159B 75 F0 00         [24] 2910 	mov	b,#0x00
      00159E C0 07            [24] 2911 	push	ar7
      0015A0 C0 06            [24] 2912 	push	ar6
      0015A2 C0 05            [24] 2913 	push	ar5
      0015A4 C0 04            [24] 2914 	push	ar4
      0015A6 12 18 18         [24] 2915 	lcall	_txFilter
      0015A9 E5 82            [12] 2916 	mov	a,dpl
      0015AB D0 04            [24] 2917 	pop	ar4
      0015AD D0 05            [24] 2918 	pop	ar5
      0015AF D0 06            [24] 2919 	pop	ar6
      0015B1 D0 07            [24] 2920 	pop	ar7
      0015B3 70 60            [24] 2921 	jnz	00125$
                           0007CB  2922 	C$medtronicRF.c$174$1$37 ==.
                                   2923 ;	medtronicRF.c:174: sendMedtronicMessage( &uartRxBuffer[3], txLength, txTimes );
      0015B5 C0 04            [24] 2924 	push	ar4
      0015B7 C0 05            [24] 2925 	push	ar5
      0015B9 90 04 54         [24] 2926 	mov	dptr,#_txLength
      0015BC E0               [24] 2927 	movx	a,@dptr
      0015BD FB               [12] 2928 	mov	r3,a
      0015BE 33               [12] 2929 	rlc	a
      0015BF 95 E0            [12] 2930 	subb	a,acc
      0015C1 FA               [12] 2931 	mov	r2,a
      0015C2 90 04 55         [24] 2932 	mov	dptr,#_txTimes
      0015C5 E0               [24] 2933 	movx	a,@dptr
      0015C6 FC               [12] 2934 	mov	r4,a
      0015C7 A3               [24] 2935 	inc	dptr
      0015C8 E0               [24] 2936 	movx	a,@dptr
      0015C9 FD               [12] 2937 	mov	r5,a
      0015CA 90 04 58         [24] 2938 	mov	dptr,#_sendMedtronicMessage_PARM_2
      0015CD EB               [12] 2939 	mov	a,r3
      0015CE F0               [24] 2940 	movx	@dptr,a
      0015CF EA               [12] 2941 	mov	a,r2
      0015D0 A3               [24] 2942 	inc	dptr
      0015D1 F0               [24] 2943 	movx	@dptr,a
      0015D2 90 04 5A         [24] 2944 	mov	dptr,#_sendMedtronicMessage_PARM_3
      0015D5 EC               [12] 2945 	mov	a,r4
      0015D6 F0               [24] 2946 	movx	@dptr,a
      0015D7 ED               [12] 2947 	mov	a,r5
      0015D8 A3               [24] 2948 	inc	dptr
      0015D9 F0               [24] 2949 	movx	@dptr,a
      0015DA 90 04 EA         [24] 2950 	mov	dptr,#(_uartRxBuffer + 0x0003)
      0015DD 75 F0 00         [24] 2951 	mov	b,#0x00
      0015E0 C0 07            [24] 2952 	push	ar7
      0015E2 C0 06            [24] 2953 	push	ar6
      0015E4 C0 05            [24] 2954 	push	ar5
      0015E6 C0 04            [24] 2955 	push	ar4
      0015E8 12 0D EA         [24] 2956 	lcall	_sendMedtronicMessage
                           000801  2957 	C$medtronicRF.c$175$5$52 ==.
                                   2958 ;	medtronicRF.c:175: crc16Init( );
      0015EB 12 01 57         [24] 2959 	lcall	_crc16Init
                           000804  2960 	C$medtronicRF.c$176$5$52 ==.
                                   2961 ;	medtronicRF.c:176: halUartWrite( (uint8_t const *)uartRxBuffer, 3 );
      0015EE 90 02 44         [24] 2962 	mov	dptr,#_halUartWrite_PARM_2
      0015F1 74 03            [12] 2963 	mov	a,#0x03
      0015F3 F0               [24] 2964 	movx	@dptr,a
      0015F4 E4               [12] 2965 	clr	a
      0015F5 A3               [24] 2966 	inc	dptr
      0015F6 F0               [24] 2967 	movx	@dptr,a
      0015F7 90 04 E7         [24] 2968 	mov	dptr,#_uartRxBuffer
      0015FA 75 F0 00         [24] 2969 	mov	b,#0x00
      0015FD 12 0B 33         [24] 2970 	lcall	_halUartWrite
      001600 D0 04            [24] 2971 	pop	ar4
      001602 D0 05            [24] 2972 	pop	ar5
      001604 D0 06            [24] 2973 	pop	ar6
      001606 D0 07            [24] 2974 	pop	ar7
                           00081E  2975 	C$medtronicRF.c$177$5$52 ==.
                                   2976 ;	medtronicRF.c:177: uartRxIndex = 0;
      001608 90 05 EB         [24] 2977 	mov	dptr,#_uartRxIndex
      00160B E4               [12] 2978 	clr	a
      00160C F0               [24] 2979 	movx	@dptr,a
      00160D A3               [24] 2980 	inc	dptr
      00160E F0               [24] 2981 	movx	@dptr,a
      00160F D0 05            [24] 2982 	pop	ar5
      001611 D0 04            [24] 2983 	pop	ar4
      001613 80 3F            [24] 2984 	sjmp	00147$
      001615                       2985 00125$:
                           00082B  2986 	C$medtronicRF.c$179$5$53 ==.
                                   2987 ;	medtronicRF.c:179: uartRxBuffer[1] = 0x00;
      001615 90 04 E8         [24] 2988 	mov	dptr,#(_uartRxBuffer + 0x0001)
      001618 E4               [12] 2989 	clr	a
      001619 F0               [24] 2990 	movx	@dptr,a
                           000830  2991 	C$medtronicRF.c$180$5$53 ==.
                                   2992 ;	medtronicRF.c:180: uartRxBuffer[2] = 0x00;
      00161A 90 04 E9         [24] 2993 	mov	dptr,#(_uartRxBuffer + 0x0002)
      00161D F0               [24] 2994 	movx	@dptr,a
                           000834  2995 	C$medtronicRF.c$181$5$53 ==.
                                   2996 ;	medtronicRF.c:181: halUartWrite( (uint8_t const *)uartRxBuffer, 3 );
      00161E 90 02 44         [24] 2997 	mov	dptr,#_halUartWrite_PARM_2
      001621 74 03            [12] 2998 	mov	a,#0x03
      001623 F0               [24] 2999 	movx	@dptr,a
      001624 E4               [12] 3000 	clr	a
      001625 A3               [24] 3001 	inc	dptr
      001626 F0               [24] 3002 	movx	@dptr,a
      001627 90 04 E7         [24] 3003 	mov	dptr,#_uartRxBuffer
      00162A 75 F0 00         [24] 3004 	mov	b,#0x00
      00162D C0 07            [24] 3005 	push	ar7
      00162F C0 06            [24] 3006 	push	ar6
      001631 C0 05            [24] 3007 	push	ar5
      001633 C0 04            [24] 3008 	push	ar4
      001635 12 0B 33         [24] 3009 	lcall	_halUartWrite
      001638 D0 04            [24] 3010 	pop	ar4
      00163A D0 05            [24] 3011 	pop	ar5
      00163C D0 06            [24] 3012 	pop	ar6
      00163E D0 07            [24] 3013 	pop	ar7
                           000856  3014 	C$medtronicRF.c$182$5$53 ==.
                                   3015 ;	medtronicRF.c:182: uartRxIndex = 0;
      001640 90 05 EB         [24] 3016 	mov	dptr,#_uartRxIndex
      001643 E4               [12] 3017 	clr	a
      001644 F0               [24] 3018 	movx	@dptr,a
      001645 A3               [24] 3019 	inc	dptr
      001646 F0               [24] 3020 	movx	@dptr,a
      001647 80 0B            [24] 3021 	sjmp	00147$
      001649                       3022 00128$:
                           00085F  3023 	C$medtronicRF.c$185$4$54 ==.
                                   3024 ;	medtronicRF.c:185: uartRxIndex++;
      001649 90 05 EB         [24] 3025 	mov	dptr,#_uartRxIndex
      00164C 74 01            [12] 3026 	mov	a,#0x01
      00164E 28               [12] 3027 	add	a,r0
      00164F F0               [24] 3028 	movx	@dptr,a
      001650 E4               [12] 3029 	clr	a
      001651 39               [12] 3030 	addc	a,r1
      001652 A3               [24] 3031 	inc	dptr
      001653 F0               [24] 3032 	movx	@dptr,a
      001654                       3033 00147$:
                           00086A  3034 	C$medtronicRF.c$120$1$37 ==.
                                   3035 ;	medtronicRF.c:120: for( i = 0; i < nBytes; i++ ) {
      001654 0C               [12] 3036 	inc	r4
      001655 BC 00 01         [24] 3037 	cjne	r4,#0x00,00232$
      001658 0D               [12] 3038 	inc	r5
      001659                       3039 00232$:
      001659 02 12 87         [24] 3040 	ljmp	00146$
      00165C                       3041 00148$:
                           000872  3042 	C$medtronicRF.c$189$1$37 ==.
                           000872  3043 	XG$usbReceiveData$0$0 ==.
      00165C 22               [24] 3044 	ret
                                   3045 	.area CSEG    (CODE)
                                   3046 	.area CONST   (CODE)
                                   3047 	.area XINIT   (CODE)
                                   3048 	.area CABS    (ABS,CODE)
