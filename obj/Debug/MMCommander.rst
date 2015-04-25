                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
                                      4 ; This file was generated Sat Apr 25 00:05:13 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module MMCommander
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _halUartWrite
                                     14 	.globl _halUartInit
                                     15 	.globl _receiveMedtronicMessage
                                     16 	.globl _enablePushButtonInt
                                     17 	.globl _initGlobals
                                     18 	.globl _configureMedtronicRFMode
                                     19 	.globl _configureOsc
                                     20 	.globl _configureIO
                                     21 	.globl _crc16Init
                                     22 	.globl _MODE
                                     23 	.globl _RE
                                     24 	.globl _SLAVE
                                     25 	.globl _FE
                                     26 	.globl _ERR
                                     27 	.globl _RX_BYTE
                                     28 	.globl _TX_BYTE
                                     29 	.globl _ACTIVE
                                     30 	.globl _B_7
                                     31 	.globl _B_6
                                     32 	.globl _B_5
                                     33 	.globl _B_4
                                     34 	.globl _B_3
                                     35 	.globl _B_2
                                     36 	.globl _B_1
                                     37 	.globl _B_0
                                     38 	.globl _WDTIF
                                     39 	.globl _P1IF
                                     40 	.globl _UTX1IF
                                     41 	.globl _UTX0IF
                                     42 	.globl _P2IF
                                     43 	.globl _ACC_7
                                     44 	.globl _ACC_6
                                     45 	.globl _ACC_5
                                     46 	.globl _ACC_4
                                     47 	.globl _ACC_3
                                     48 	.globl _ACC_2
                                     49 	.globl _ACC_1
                                     50 	.globl _ACC_0
                                     51 	.globl _OVFIM
                                     52 	.globl _T4CH1IF
                                     53 	.globl _T4CH0IF
                                     54 	.globl _T4OVFIF
                                     55 	.globl _T3CH1IF
                                     56 	.globl _T3CH0IF
                                     57 	.globl _T3OVFIF
                                     58 	.globl _CY
                                     59 	.globl _AC
                                     60 	.globl _F0
                                     61 	.globl _RS1
                                     62 	.globl _RS0
                                     63 	.globl _OV
                                     64 	.globl _F1
                                     65 	.globl _P
                                     66 	.globl _STIF
                                     67 	.globl _P0IF
                                     68 	.globl _T4IF
                                     69 	.globl _T3IF
                                     70 	.globl _T2IF
                                     71 	.globl _T1IF
                                     72 	.globl _DMAIF
                                     73 	.globl _P0IE
                                     74 	.globl _T4IE
                                     75 	.globl _T3IE
                                     76 	.globl _T2IE
                                     77 	.globl _T1IE
                                     78 	.globl _DMAIE
                                     79 	.globl _EA
                                     80 	.globl _STIE
                                     81 	.globl _ENCIE
                                     82 	.globl _URX1IE
                                     83 	.globl _URX0IE
                                     84 	.globl _ADCIE
                                     85 	.globl _RFTXRXIE
                                     86 	.globl _P2_7
                                     87 	.globl _P2_6
                                     88 	.globl _P2_5
                                     89 	.globl _P2_4
                                     90 	.globl _P2_3
                                     91 	.globl _P2_2
                                     92 	.globl _P2_1
                                     93 	.globl _P2_0
                                     94 	.globl _ENCIF_1
                                     95 	.globl _ENCIF_0
                                     96 	.globl _P1_7
                                     97 	.globl _P1_6
                                     98 	.globl _P1_5
                                     99 	.globl _P1_4
                                    100 	.globl _P1_3
                                    101 	.globl _P1_2
                                    102 	.globl _P1_1
                                    103 	.globl _P1_0
                                    104 	.globl _URX1IF
                                    105 	.globl _ADCIF
                                    106 	.globl _URX0IF
                                    107 	.globl _IT1
                                    108 	.globl _RFTXRXIF
                                    109 	.globl _IT0
                                    110 	.globl _P0_7
                                    111 	.globl _P0_6
                                    112 	.globl _P0_5
                                    113 	.globl _P0_4
                                    114 	.globl _P0_3
                                    115 	.globl _P0_2
                                    116 	.globl _P0_1
                                    117 	.globl _P0_0
                                    118 	.globl _P2DIR
                                    119 	.globl _P1DIR
                                    120 	.globl _P0DIR
                                    121 	.globl _U1GCR
                                    122 	.globl _U1UCR
                                    123 	.globl _U1BAUD
                                    124 	.globl _U1DBUF
                                    125 	.globl _U1CSR
                                    126 	.globl _P2INP
                                    127 	.globl _P1INP
                                    128 	.globl _P2SEL
                                    129 	.globl _P1SEL
                                    130 	.globl _P0SEL
                                    131 	.globl _ADCCFG
                                    132 	.globl _PERCFG
                                    133 	.globl _B
                                    134 	.globl _T4CC1
                                    135 	.globl _T4CCTL1
                                    136 	.globl _T4CC0
                                    137 	.globl _T4CCTL0
                                    138 	.globl _T4CTL
                                    139 	.globl _T4CNT
                                    140 	.globl _RFIF
                                    141 	.globl _IRCON2
                                    142 	.globl _T1CCTL2
                                    143 	.globl _T1CCTL1
                                    144 	.globl _T1CCTL0
                                    145 	.globl _T1CTL
                                    146 	.globl _T1CNTH
                                    147 	.globl _T1CNTL
                                    148 	.globl _RFST
                                    149 	.globl _ACC
                                    150 	.globl _T1CC2H
                                    151 	.globl _T1CC2L
                                    152 	.globl _T1CC1H
                                    153 	.globl _T1CC1L
                                    154 	.globl _T1CC0H
                                    155 	.globl _T1CC0L
                                    156 	.globl _RFD
                                    157 	.globl _TIMIF
                                    158 	.globl _DMAREQ
                                    159 	.globl _DMAARM
                                    160 	.globl _DMA0CFGH
                                    161 	.globl _DMA0CFGL
                                    162 	.globl _DMA1CFGH
                                    163 	.globl _DMA1CFGL
                                    164 	.globl _DMAIRQ
                                    165 	.globl _PSW
                                    166 	.globl _T3CC1
                                    167 	.globl _T3CCTL1
                                    168 	.globl _T3CC0
                                    169 	.globl _T3CCTL0
                                    170 	.globl _T3CTL
                                    171 	.globl _T3CNT
                                    172 	.globl _WDCTL
                                    173 	.globl __SFRC8
                                    174 	.globl _MEMCTR
                                    175 	.globl _CLKCON
                                    176 	.globl _U0GCR
                                    177 	.globl _U0UCR
                                    178 	.globl __SFRC3
                                    179 	.globl _U0BAUD
                                    180 	.globl _U0DBUF
                                    181 	.globl _IRCON
                                    182 	.globl __SFRBF
                                    183 	.globl _SLEEP
                                    184 	.globl _RNDH
                                    185 	.globl _RNDL
                                    186 	.globl _ADCH
                                    187 	.globl _ADCL
                                    188 	.globl _IP1
                                    189 	.globl _IEN1
                                    190 	.globl __SFRB7
                                    191 	.globl _ADCCON3
                                    192 	.globl _ADCCON2
                                    193 	.globl _ADCCON1
                                    194 	.globl _ENCCS
                                    195 	.globl _ENCDO
                                    196 	.globl _ENCDI
                                    197 	.globl __SFRB0
                                    198 	.globl _FWDATA
                                    199 	.globl _FCTL
                                    200 	.globl _FADDRH
                                    201 	.globl _FADDRL
                                    202 	.globl _FWT
                                    203 	.globl __SFRAA
                                    204 	.globl _IP0
                                    205 	.globl _IEN0
                                    206 	.globl __SFRA7
                                    207 	.globl _WORTIME1
                                    208 	.globl _WORTIME0
                                    209 	.globl _WOREVT1
                                    210 	.globl _WOREVT0
                                    211 	.globl _WORCTRL
                                    212 	.globl _WORIRQ
                                    213 	.globl _P2
                                    214 	.globl __SFR9F
                                    215 	.globl _T2CTL
                                    216 	.globl _T2PR
                                    217 	.globl _T2CT
                                    218 	.globl _S1CON
                                    219 	.globl _IEN2
                                    220 	.globl __SFR99
                                    221 	.globl _S0CON
                                    222 	.globl __SFR97
                                    223 	.globl __SFR96
                                    224 	.globl __SFR95
                                    225 	.globl __SFR94
                                    226 	.globl __XPAGE
                                    227 	.globl _MPAGE
                                    228 	.globl _DPS
                                    229 	.globl _RFIM
                                    230 	.globl _P1
                                    231 	.globl _P0INP
                                    232 	.globl __SFR8E
                                    233 	.globl _P1IEN
                                    234 	.globl _PICTL
                                    235 	.globl _P2IFG
                                    236 	.globl _P1IFG
                                    237 	.globl _P0IFG
                                    238 	.globl _TCON
                                    239 	.globl _PCON
                                    240 	.globl _U0CSR
                                    241 	.globl _DPH1
                                    242 	.globl _DPL1
                                    243 	.globl _DPH0
                                    244 	.globl _DPL0
                                    245 	.globl _SP
                                    246 	.globl _P0
                                    247 	.globl _uartRxIndex
                                    248 	.globl _uartTxIndex
                                    249 	.globl _uartTxLength
                                    250 	.globl _uartTxBuffer
                                    251 	.globl _uartRxBuffer
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
                                    452 ;--------------------------------------------------------
                                    453 ; special function registers
                                    454 ;--------------------------------------------------------
                                    455 	.area RSEG    (ABS,DATA)
      000000                        456 	.org 0x0000
                           000080   457 G$P0$0$0 == 0x0080
                           000080   458 _P0	=	0x0080
                           000081   459 G$SP$0$0 == 0x0081
                           000081   460 _SP	=	0x0081
                           000082   461 G$DPL0$0$0 == 0x0082
                           000082   462 _DPL0	=	0x0082
                           000083   463 G$DPH0$0$0 == 0x0083
                           000083   464 _DPH0	=	0x0083
                           000084   465 G$DPL1$0$0 == 0x0084
                           000084   466 _DPL1	=	0x0084
                           000085   467 G$DPH1$0$0 == 0x0085
                           000085   468 _DPH1	=	0x0085
                           000086   469 G$U0CSR$0$0 == 0x0086
                           000086   470 _U0CSR	=	0x0086
                           000087   471 G$PCON$0$0 == 0x0087
                           000087   472 _PCON	=	0x0087
                           000088   473 G$TCON$0$0 == 0x0088
                           000088   474 _TCON	=	0x0088
                           000089   475 G$P0IFG$0$0 == 0x0089
                           000089   476 _P0IFG	=	0x0089
                           00008A   477 G$P1IFG$0$0 == 0x008a
                           00008A   478 _P1IFG	=	0x008a
                           00008B   479 G$P2IFG$0$0 == 0x008b
                           00008B   480 _P2IFG	=	0x008b
                           00008C   481 G$PICTL$0$0 == 0x008c
                           00008C   482 _PICTL	=	0x008c
                           00008D   483 G$P1IEN$0$0 == 0x008d
                           00008D   484 _P1IEN	=	0x008d
                           00008E   485 G$_SFR8E$0$0 == 0x008e
                           00008E   486 __SFR8E	=	0x008e
                           00008F   487 G$P0INP$0$0 == 0x008f
                           00008F   488 _P0INP	=	0x008f
                           000090   489 G$P1$0$0 == 0x0090
                           000090   490 _P1	=	0x0090
                           000091   491 G$RFIM$0$0 == 0x0091
                           000091   492 _RFIM	=	0x0091
                           000092   493 G$DPS$0$0 == 0x0092
                           000092   494 _DPS	=	0x0092
                           000093   495 G$MPAGE$0$0 == 0x0093
                           000093   496 _MPAGE	=	0x0093
                           000093   497 G$_XPAGE$0$0 == 0x0093
                           000093   498 __XPAGE	=	0x0093
                           000094   499 G$_SFR94$0$0 == 0x0094
                           000094   500 __SFR94	=	0x0094
                           000095   501 G$_SFR95$0$0 == 0x0095
                           000095   502 __SFR95	=	0x0095
                           000096   503 G$_SFR96$0$0 == 0x0096
                           000096   504 __SFR96	=	0x0096
                           000097   505 G$_SFR97$0$0 == 0x0097
                           000097   506 __SFR97	=	0x0097
                           000098   507 G$S0CON$0$0 == 0x0098
                           000098   508 _S0CON	=	0x0098
                           000099   509 G$_SFR99$0$0 == 0x0099
                           000099   510 __SFR99	=	0x0099
                           00009A   511 G$IEN2$0$0 == 0x009a
                           00009A   512 _IEN2	=	0x009a
                           00009B   513 G$S1CON$0$0 == 0x009b
                           00009B   514 _S1CON	=	0x009b
                           00009C   515 G$T2CT$0$0 == 0x009c
                           00009C   516 _T2CT	=	0x009c
                           00009D   517 G$T2PR$0$0 == 0x009d
                           00009D   518 _T2PR	=	0x009d
                           00009E   519 G$T2CTL$0$0 == 0x009e
                           00009E   520 _T2CTL	=	0x009e
                           00009F   521 G$_SFR9F$0$0 == 0x009f
                           00009F   522 __SFR9F	=	0x009f
                           0000A0   523 G$P2$0$0 == 0x00a0
                           0000A0   524 _P2	=	0x00a0
                           0000A1   525 G$WORIRQ$0$0 == 0x00a1
                           0000A1   526 _WORIRQ	=	0x00a1
                           0000A2   527 G$WORCTRL$0$0 == 0x00a2
                           0000A2   528 _WORCTRL	=	0x00a2
                           0000A3   529 G$WOREVT0$0$0 == 0x00a3
                           0000A3   530 _WOREVT0	=	0x00a3
                           0000A4   531 G$WOREVT1$0$0 == 0x00a4
                           0000A4   532 _WOREVT1	=	0x00a4
                           0000A5   533 G$WORTIME0$0$0 == 0x00a5
                           0000A5   534 _WORTIME0	=	0x00a5
                           0000A6   535 G$WORTIME1$0$0 == 0x00a6
                           0000A6   536 _WORTIME1	=	0x00a6
                           0000A7   537 G$_SFRA7$0$0 == 0x00a7
                           0000A7   538 __SFRA7	=	0x00a7
                           0000A8   539 G$IEN0$0$0 == 0x00a8
                           0000A8   540 _IEN0	=	0x00a8
                           0000A9   541 G$IP0$0$0 == 0x00a9
                           0000A9   542 _IP0	=	0x00a9
                           0000AA   543 G$_SFRAA$0$0 == 0x00aa
                           0000AA   544 __SFRAA	=	0x00aa
                           0000AB   545 G$FWT$0$0 == 0x00ab
                           0000AB   546 _FWT	=	0x00ab
                           0000AC   547 G$FADDRL$0$0 == 0x00ac
                           0000AC   548 _FADDRL	=	0x00ac
                           0000AD   549 G$FADDRH$0$0 == 0x00ad
                           0000AD   550 _FADDRH	=	0x00ad
                           0000AE   551 G$FCTL$0$0 == 0x00ae
                           0000AE   552 _FCTL	=	0x00ae
                           0000AF   553 G$FWDATA$0$0 == 0x00af
                           0000AF   554 _FWDATA	=	0x00af
                           0000B0   555 G$_SFRB0$0$0 == 0x00b0
                           0000B0   556 __SFRB0	=	0x00b0
                           0000B1   557 G$ENCDI$0$0 == 0x00b1
                           0000B1   558 _ENCDI	=	0x00b1
                           0000B2   559 G$ENCDO$0$0 == 0x00b2
                           0000B2   560 _ENCDO	=	0x00b2
                           0000B3   561 G$ENCCS$0$0 == 0x00b3
                           0000B3   562 _ENCCS	=	0x00b3
                           0000B4   563 G$ADCCON1$0$0 == 0x00b4
                           0000B4   564 _ADCCON1	=	0x00b4
                           0000B5   565 G$ADCCON2$0$0 == 0x00b5
                           0000B5   566 _ADCCON2	=	0x00b5
                           0000B6   567 G$ADCCON3$0$0 == 0x00b6
                           0000B6   568 _ADCCON3	=	0x00b6
                           0000B7   569 G$_SFRB7$0$0 == 0x00b7
                           0000B7   570 __SFRB7	=	0x00b7
                           0000B8   571 G$IEN1$0$0 == 0x00b8
                           0000B8   572 _IEN1	=	0x00b8
                           0000B9   573 G$IP1$0$0 == 0x00b9
                           0000B9   574 _IP1	=	0x00b9
                           0000BA   575 G$ADCL$0$0 == 0x00ba
                           0000BA   576 _ADCL	=	0x00ba
                           0000BB   577 G$ADCH$0$0 == 0x00bb
                           0000BB   578 _ADCH	=	0x00bb
                           0000BC   579 G$RNDL$0$0 == 0x00bc
                           0000BC   580 _RNDL	=	0x00bc
                           0000BD   581 G$RNDH$0$0 == 0x00bd
                           0000BD   582 _RNDH	=	0x00bd
                           0000BE   583 G$SLEEP$0$0 == 0x00be
                           0000BE   584 _SLEEP	=	0x00be
                           0000BF   585 G$_SFRBF$0$0 == 0x00bf
                           0000BF   586 __SFRBF	=	0x00bf
                           0000C0   587 G$IRCON$0$0 == 0x00c0
                           0000C0   588 _IRCON	=	0x00c0
                           0000C1   589 G$U0DBUF$0$0 == 0x00c1
                           0000C1   590 _U0DBUF	=	0x00c1
                           0000C2   591 G$U0BAUD$0$0 == 0x00c2
                           0000C2   592 _U0BAUD	=	0x00c2
                           0000C3   593 G$_SFRC3$0$0 == 0x00c3
                           0000C3   594 __SFRC3	=	0x00c3
                           0000C4   595 G$U0UCR$0$0 == 0x00c4
                           0000C4   596 _U0UCR	=	0x00c4
                           0000C5   597 G$U0GCR$0$0 == 0x00c5
                           0000C5   598 _U0GCR	=	0x00c5
                           0000C6   599 G$CLKCON$0$0 == 0x00c6
                           0000C6   600 _CLKCON	=	0x00c6
                           0000C7   601 G$MEMCTR$0$0 == 0x00c7
                           0000C7   602 _MEMCTR	=	0x00c7
                           0000C8   603 G$_SFRC8$0$0 == 0x00c8
                           0000C8   604 __SFRC8	=	0x00c8
                           0000C9   605 G$WDCTL$0$0 == 0x00c9
                           0000C9   606 _WDCTL	=	0x00c9
                           0000CA   607 G$T3CNT$0$0 == 0x00ca
                           0000CA   608 _T3CNT	=	0x00ca
                           0000CB   609 G$T3CTL$0$0 == 0x00cb
                           0000CB   610 _T3CTL	=	0x00cb
                           0000CC   611 G$T3CCTL0$0$0 == 0x00cc
                           0000CC   612 _T3CCTL0	=	0x00cc
                           0000CD   613 G$T3CC0$0$0 == 0x00cd
                           0000CD   614 _T3CC0	=	0x00cd
                           0000CE   615 G$T3CCTL1$0$0 == 0x00ce
                           0000CE   616 _T3CCTL1	=	0x00ce
                           0000CF   617 G$T3CC1$0$0 == 0x00cf
                           0000CF   618 _T3CC1	=	0x00cf
                           0000D0   619 G$PSW$0$0 == 0x00d0
                           0000D0   620 _PSW	=	0x00d0
                           0000D1   621 G$DMAIRQ$0$0 == 0x00d1
                           0000D1   622 _DMAIRQ	=	0x00d1
                           0000D2   623 G$DMA1CFGL$0$0 == 0x00d2
                           0000D2   624 _DMA1CFGL	=	0x00d2
                           0000D3   625 G$DMA1CFGH$0$0 == 0x00d3
                           0000D3   626 _DMA1CFGH	=	0x00d3
                           0000D4   627 G$DMA0CFGL$0$0 == 0x00d4
                           0000D4   628 _DMA0CFGL	=	0x00d4
                           0000D5   629 G$DMA0CFGH$0$0 == 0x00d5
                           0000D5   630 _DMA0CFGH	=	0x00d5
                           0000D6   631 G$DMAARM$0$0 == 0x00d6
                           0000D6   632 _DMAARM	=	0x00d6
                           0000D7   633 G$DMAREQ$0$0 == 0x00d7
                           0000D7   634 _DMAREQ	=	0x00d7
                           0000D8   635 G$TIMIF$0$0 == 0x00d8
                           0000D8   636 _TIMIF	=	0x00d8
                           0000D9   637 G$RFD$0$0 == 0x00d9
                           0000D9   638 _RFD	=	0x00d9
                           0000DA   639 G$T1CC0L$0$0 == 0x00da
                           0000DA   640 _T1CC0L	=	0x00da
                           0000DB   641 G$T1CC0H$0$0 == 0x00db
                           0000DB   642 _T1CC0H	=	0x00db
                           0000DC   643 G$T1CC1L$0$0 == 0x00dc
                           0000DC   644 _T1CC1L	=	0x00dc
                           0000DD   645 G$T1CC1H$0$0 == 0x00dd
                           0000DD   646 _T1CC1H	=	0x00dd
                           0000DE   647 G$T1CC2L$0$0 == 0x00de
                           0000DE   648 _T1CC2L	=	0x00de
                           0000DF   649 G$T1CC2H$0$0 == 0x00df
                           0000DF   650 _T1CC2H	=	0x00df
                           0000E0   651 G$ACC$0$0 == 0x00e0
                           0000E0   652 _ACC	=	0x00e0
                           0000E1   653 G$RFST$0$0 == 0x00e1
                           0000E1   654 _RFST	=	0x00e1
                           0000E2   655 G$T1CNTL$0$0 == 0x00e2
                           0000E2   656 _T1CNTL	=	0x00e2
                           0000E3   657 G$T1CNTH$0$0 == 0x00e3
                           0000E3   658 _T1CNTH	=	0x00e3
                           0000E4   659 G$T1CTL$0$0 == 0x00e4
                           0000E4   660 _T1CTL	=	0x00e4
                           0000E5   661 G$T1CCTL0$0$0 == 0x00e5
                           0000E5   662 _T1CCTL0	=	0x00e5
                           0000E6   663 G$T1CCTL1$0$0 == 0x00e6
                           0000E6   664 _T1CCTL1	=	0x00e6
                           0000E7   665 G$T1CCTL2$0$0 == 0x00e7
                           0000E7   666 _T1CCTL2	=	0x00e7
                           0000E8   667 G$IRCON2$0$0 == 0x00e8
                           0000E8   668 _IRCON2	=	0x00e8
                           0000E9   669 G$RFIF$0$0 == 0x00e9
                           0000E9   670 _RFIF	=	0x00e9
                           0000EA   671 G$T4CNT$0$0 == 0x00ea
                           0000EA   672 _T4CNT	=	0x00ea
                           0000EB   673 G$T4CTL$0$0 == 0x00eb
                           0000EB   674 _T4CTL	=	0x00eb
                           0000EC   675 G$T4CCTL0$0$0 == 0x00ec
                           0000EC   676 _T4CCTL0	=	0x00ec
                           0000ED   677 G$T4CC0$0$0 == 0x00ed
                           0000ED   678 _T4CC0	=	0x00ed
                           0000EE   679 G$T4CCTL1$0$0 == 0x00ee
                           0000EE   680 _T4CCTL1	=	0x00ee
                           0000EF   681 G$T4CC1$0$0 == 0x00ef
                           0000EF   682 _T4CC1	=	0x00ef
                           0000F0   683 G$B$0$0 == 0x00f0
                           0000F0   684 _B	=	0x00f0
                           0000F1   685 G$PERCFG$0$0 == 0x00f1
                           0000F1   686 _PERCFG	=	0x00f1
                           0000F2   687 G$ADCCFG$0$0 == 0x00f2
                           0000F2   688 _ADCCFG	=	0x00f2
                           0000F3   689 G$P0SEL$0$0 == 0x00f3
                           0000F3   690 _P0SEL	=	0x00f3
                           0000F4   691 G$P1SEL$0$0 == 0x00f4
                           0000F4   692 _P1SEL	=	0x00f4
                           0000F5   693 G$P2SEL$0$0 == 0x00f5
                           0000F5   694 _P2SEL	=	0x00f5
                           0000F6   695 G$P1INP$0$0 == 0x00f6
                           0000F6   696 _P1INP	=	0x00f6
                           0000F7   697 G$P2INP$0$0 == 0x00f7
                           0000F7   698 _P2INP	=	0x00f7
                           0000F8   699 G$U1CSR$0$0 == 0x00f8
                           0000F8   700 _U1CSR	=	0x00f8
                           0000F9   701 G$U1DBUF$0$0 == 0x00f9
                           0000F9   702 _U1DBUF	=	0x00f9
                           0000FA   703 G$U1BAUD$0$0 == 0x00fa
                           0000FA   704 _U1BAUD	=	0x00fa
                           0000FB   705 G$U1UCR$0$0 == 0x00fb
                           0000FB   706 _U1UCR	=	0x00fb
                           0000FC   707 G$U1GCR$0$0 == 0x00fc
                           0000FC   708 _U1GCR	=	0x00fc
                           0000FD   709 G$P0DIR$0$0 == 0x00fd
                           0000FD   710 _P0DIR	=	0x00fd
                           0000FE   711 G$P1DIR$0$0 == 0x00fe
                           0000FE   712 _P1DIR	=	0x00fe
                           0000FF   713 G$P2DIR$0$0 == 0x00ff
                           0000FF   714 _P2DIR	=	0x00ff
                                    715 ;--------------------------------------------------------
                                    716 ; special function bits
                                    717 ;--------------------------------------------------------
                                    718 	.area RSEG    (ABS,DATA)
      000000                        719 	.org 0x0000
                           000080   720 G$P0_0$0$0 == 0x0080
                           000080   721 _P0_0	=	0x0080
                           000081   722 G$P0_1$0$0 == 0x0081
                           000081   723 _P0_1	=	0x0081
                           000082   724 G$P0_2$0$0 == 0x0082
                           000082   725 _P0_2	=	0x0082
                           000083   726 G$P0_3$0$0 == 0x0083
                           000083   727 _P0_3	=	0x0083
                           000084   728 G$P0_4$0$0 == 0x0084
                           000084   729 _P0_4	=	0x0084
                           000085   730 G$P0_5$0$0 == 0x0085
                           000085   731 _P0_5	=	0x0085
                           000086   732 G$P0_6$0$0 == 0x0086
                           000086   733 _P0_6	=	0x0086
                           000087   734 G$P0_7$0$0 == 0x0087
                           000087   735 _P0_7	=	0x0087
                           000088   736 G$IT0$0$0 == 0x0088
                           000088   737 _IT0	=	0x0088
                           000089   738 G$RFTXRXIF$0$0 == 0x0089
                           000089   739 _RFTXRXIF	=	0x0089
                           00008A   740 G$IT1$0$0 == 0x008a
                           00008A   741 _IT1	=	0x008a
                           00008B   742 G$URX0IF$0$0 == 0x008b
                           00008B   743 _URX0IF	=	0x008b
                           00008D   744 G$ADCIF$0$0 == 0x008d
                           00008D   745 _ADCIF	=	0x008d
                           00008F   746 G$URX1IF$0$0 == 0x008f
                           00008F   747 _URX1IF	=	0x008f
                           000090   748 G$P1_0$0$0 == 0x0090
                           000090   749 _P1_0	=	0x0090
                           000091   750 G$P1_1$0$0 == 0x0091
                           000091   751 _P1_1	=	0x0091
                           000092   752 G$P1_2$0$0 == 0x0092
                           000092   753 _P1_2	=	0x0092
                           000093   754 G$P1_3$0$0 == 0x0093
                           000093   755 _P1_3	=	0x0093
                           000094   756 G$P1_4$0$0 == 0x0094
                           000094   757 _P1_4	=	0x0094
                           000095   758 G$P1_5$0$0 == 0x0095
                           000095   759 _P1_5	=	0x0095
                           000096   760 G$P1_6$0$0 == 0x0096
                           000096   761 _P1_6	=	0x0096
                           000097   762 G$P1_7$0$0 == 0x0097
                           000097   763 _P1_7	=	0x0097
                           000098   764 G$ENCIF_0$0$0 == 0x0098
                           000098   765 _ENCIF_0	=	0x0098
                           000099   766 G$ENCIF_1$0$0 == 0x0099
                           000099   767 _ENCIF_1	=	0x0099
                           0000A0   768 G$P2_0$0$0 == 0x00a0
                           0000A0   769 _P2_0	=	0x00a0
                           0000A1   770 G$P2_1$0$0 == 0x00a1
                           0000A1   771 _P2_1	=	0x00a1
                           0000A2   772 G$P2_2$0$0 == 0x00a2
                           0000A2   773 _P2_2	=	0x00a2
                           0000A3   774 G$P2_3$0$0 == 0x00a3
                           0000A3   775 _P2_3	=	0x00a3
                           0000A4   776 G$P2_4$0$0 == 0x00a4
                           0000A4   777 _P2_4	=	0x00a4
                           0000A5   778 G$P2_5$0$0 == 0x00a5
                           0000A5   779 _P2_5	=	0x00a5
                           0000A6   780 G$P2_6$0$0 == 0x00a6
                           0000A6   781 _P2_6	=	0x00a6
                           0000A7   782 G$P2_7$0$0 == 0x00a7
                           0000A7   783 _P2_7	=	0x00a7
                           0000A8   784 G$RFTXRXIE$0$0 == 0x00a8
                           0000A8   785 _RFTXRXIE	=	0x00a8
                           0000A9   786 G$ADCIE$0$0 == 0x00a9
                           0000A9   787 _ADCIE	=	0x00a9
                           0000AA   788 G$URX0IE$0$0 == 0x00aa
                           0000AA   789 _URX0IE	=	0x00aa
                           0000AB   790 G$URX1IE$0$0 == 0x00ab
                           0000AB   791 _URX1IE	=	0x00ab
                           0000AC   792 G$ENCIE$0$0 == 0x00ac
                           0000AC   793 _ENCIE	=	0x00ac
                           0000AD   794 G$STIE$0$0 == 0x00ad
                           0000AD   795 _STIE	=	0x00ad
                           0000AF   796 G$EA$0$0 == 0x00af
                           0000AF   797 _EA	=	0x00af
                           0000B8   798 G$DMAIE$0$0 == 0x00b8
                           0000B8   799 _DMAIE	=	0x00b8
                           0000B9   800 G$T1IE$0$0 == 0x00b9
                           0000B9   801 _T1IE	=	0x00b9
                           0000BA   802 G$T2IE$0$0 == 0x00ba
                           0000BA   803 _T2IE	=	0x00ba
                           0000BB   804 G$T3IE$0$0 == 0x00bb
                           0000BB   805 _T3IE	=	0x00bb
                           0000BC   806 G$T4IE$0$0 == 0x00bc
                           0000BC   807 _T4IE	=	0x00bc
                           0000BD   808 G$P0IE$0$0 == 0x00bd
                           0000BD   809 _P0IE	=	0x00bd
                           0000C0   810 G$DMAIF$0$0 == 0x00c0
                           0000C0   811 _DMAIF	=	0x00c0
                           0000C1   812 G$T1IF$0$0 == 0x00c1
                           0000C1   813 _T1IF	=	0x00c1
                           0000C2   814 G$T2IF$0$0 == 0x00c2
                           0000C2   815 _T2IF	=	0x00c2
                           0000C3   816 G$T3IF$0$0 == 0x00c3
                           0000C3   817 _T3IF	=	0x00c3
                           0000C4   818 G$T4IF$0$0 == 0x00c4
                           0000C4   819 _T4IF	=	0x00c4
                           0000C5   820 G$P0IF$0$0 == 0x00c5
                           0000C5   821 _P0IF	=	0x00c5
                           0000C7   822 G$STIF$0$0 == 0x00c7
                           0000C7   823 _STIF	=	0x00c7
                           0000D0   824 G$P$0$0 == 0x00d0
                           0000D0   825 _P	=	0x00d0
                           0000D1   826 G$F1$0$0 == 0x00d1
                           0000D1   827 _F1	=	0x00d1
                           0000D2   828 G$OV$0$0 == 0x00d2
                           0000D2   829 _OV	=	0x00d2
                           0000D3   830 G$RS0$0$0 == 0x00d3
                           0000D3   831 _RS0	=	0x00d3
                           0000D4   832 G$RS1$0$0 == 0x00d4
                           0000D4   833 _RS1	=	0x00d4
                           0000D5   834 G$F0$0$0 == 0x00d5
                           0000D5   835 _F0	=	0x00d5
                           0000D6   836 G$AC$0$0 == 0x00d6
                           0000D6   837 _AC	=	0x00d6
                           0000D7   838 G$CY$0$0 == 0x00d7
                           0000D7   839 _CY	=	0x00d7
                           0000D8   840 G$T3OVFIF$0$0 == 0x00d8
                           0000D8   841 _T3OVFIF	=	0x00d8
                           0000D9   842 G$T3CH0IF$0$0 == 0x00d9
                           0000D9   843 _T3CH0IF	=	0x00d9
                           0000DA   844 G$T3CH1IF$0$0 == 0x00da
                           0000DA   845 _T3CH1IF	=	0x00da
                           0000DB   846 G$T4OVFIF$0$0 == 0x00db
                           0000DB   847 _T4OVFIF	=	0x00db
                           0000DC   848 G$T4CH0IF$0$0 == 0x00dc
                           0000DC   849 _T4CH0IF	=	0x00dc
                           0000DD   850 G$T4CH1IF$0$0 == 0x00dd
                           0000DD   851 _T4CH1IF	=	0x00dd
                           0000DE   852 G$OVFIM$0$0 == 0x00de
                           0000DE   853 _OVFIM	=	0x00de
                           0000E0   854 G$ACC_0$0$0 == 0x00e0
                           0000E0   855 _ACC_0	=	0x00e0
                           0000E1   856 G$ACC_1$0$0 == 0x00e1
                           0000E1   857 _ACC_1	=	0x00e1
                           0000E2   858 G$ACC_2$0$0 == 0x00e2
                           0000E2   859 _ACC_2	=	0x00e2
                           0000E3   860 G$ACC_3$0$0 == 0x00e3
                           0000E3   861 _ACC_3	=	0x00e3
                           0000E4   862 G$ACC_4$0$0 == 0x00e4
                           0000E4   863 _ACC_4	=	0x00e4
                           0000E5   864 G$ACC_5$0$0 == 0x00e5
                           0000E5   865 _ACC_5	=	0x00e5
                           0000E6   866 G$ACC_6$0$0 == 0x00e6
                           0000E6   867 _ACC_6	=	0x00e6
                           0000E7   868 G$ACC_7$0$0 == 0x00e7
                           0000E7   869 _ACC_7	=	0x00e7
                           0000E8   870 G$P2IF$0$0 == 0x00e8
                           0000E8   871 _P2IF	=	0x00e8
                           0000E9   872 G$UTX0IF$0$0 == 0x00e9
                           0000E9   873 _UTX0IF	=	0x00e9
                           0000EA   874 G$UTX1IF$0$0 == 0x00ea
                           0000EA   875 _UTX1IF	=	0x00ea
                           0000EB   876 G$P1IF$0$0 == 0x00eb
                           0000EB   877 _P1IF	=	0x00eb
                           0000EC   878 G$WDTIF$0$0 == 0x00ec
                           0000EC   879 _WDTIF	=	0x00ec
                           0000F0   880 G$B_0$0$0 == 0x00f0
                           0000F0   881 _B_0	=	0x00f0
                           0000F1   882 G$B_1$0$0 == 0x00f1
                           0000F1   883 _B_1	=	0x00f1
                           0000F2   884 G$B_2$0$0 == 0x00f2
                           0000F2   885 _B_2	=	0x00f2
                           0000F3   886 G$B_3$0$0 == 0x00f3
                           0000F3   887 _B_3	=	0x00f3
                           0000F4   888 G$B_4$0$0 == 0x00f4
                           0000F4   889 _B_4	=	0x00f4
                           0000F5   890 G$B_5$0$0 == 0x00f5
                           0000F5   891 _B_5	=	0x00f5
                           0000F6   892 G$B_6$0$0 == 0x00f6
                           0000F6   893 _B_6	=	0x00f6
                           0000F7   894 G$B_7$0$0 == 0x00f7
                           0000F7   895 _B_7	=	0x00f7
                           0000F8   896 G$ACTIVE$0$0 == 0x00f8
                           0000F8   897 _ACTIVE	=	0x00f8
                           0000F9   898 G$TX_BYTE$0$0 == 0x00f9
                           0000F9   899 _TX_BYTE	=	0x00f9
                           0000FA   900 G$RX_BYTE$0$0 == 0x00fa
                           0000FA   901 _RX_BYTE	=	0x00fa
                           0000FB   902 G$ERR$0$0 == 0x00fb
                           0000FB   903 _ERR	=	0x00fb
                           0000FC   904 G$FE$0$0 == 0x00fc
                           0000FC   905 _FE	=	0x00fc
                           0000FD   906 G$SLAVE$0$0 == 0x00fd
                           0000FD   907 _SLAVE	=	0x00fd
                           0000FE   908 G$RE$0$0 == 0x00fe
                           0000FE   909 _RE	=	0x00fe
                           0000FF   910 G$MODE$0$0 == 0x00ff
                           0000FF   911 _MODE	=	0x00ff
                                    912 ;--------------------------------------------------------
                                    913 ; overlayable register banks
                                    914 ;--------------------------------------------------------
                                    915 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        916 	.ds 8
                                    917 ;--------------------------------------------------------
                                    918 ; internal ram data
                                    919 ;--------------------------------------------------------
                                    920 	.area DSEG    (DATA)
                                    921 ;--------------------------------------------------------
                                    922 ; overlayable items in internal ram 
                                    923 ;--------------------------------------------------------
                                    924 ;--------------------------------------------------------
                                    925 ; Stack segment in internal ram 
                                    926 ;--------------------------------------------------------
                                    927 	.area	SSEG
      00005E                        928 __start__stack:
      00005E                        929 	.ds	1
                                    930 
                                    931 ;--------------------------------------------------------
                                    932 ; indirectly addressable internal ram data
                                    933 ;--------------------------------------------------------
                                    934 	.area ISEG    (DATA)
                                    935 ;--------------------------------------------------------
                                    936 ; absolute internal ram data
                                    937 ;--------------------------------------------------------
                                    938 	.area IABS    (ABS,DATA)
                                    939 	.area IABS    (ABS,DATA)
                                    940 ;--------------------------------------------------------
                                    941 ; bit data
                                    942 ;--------------------------------------------------------
                                    943 	.area BSEG    (BIT)
                                    944 ;--------------------------------------------------------
                                    945 ; paged external ram data
                                    946 ;--------------------------------------------------------
                                    947 	.area PSEG    (PAG,XDATA)
                                    948 ;--------------------------------------------------------
                                    949 ; external ram data
                                    950 ;--------------------------------------------------------
                                    951 	.area XSEG    (XDATA)
                           00DF02   952 G$MDMCTRL0H$0$0 == 0xdf02
                           00DF02   953 _MDMCTRL0H	=	0xdf02
                           00DF00   954 G$SYNC1$0$0 == 0xdf00
                           00DF00   955 _SYNC1	=	0xdf00
                           00DF01   956 G$SYNC0$0$0 == 0xdf01
                           00DF01   957 _SYNC0	=	0xdf01
                           00DF02   958 G$PKTLEN$0$0 == 0xdf02
                           00DF02   959 _PKTLEN	=	0xdf02
                           00DF03   960 G$PKTCTRL1$0$0 == 0xdf03
                           00DF03   961 _PKTCTRL1	=	0xdf03
                           00DF04   962 G$PKTCTRL0$0$0 == 0xdf04
                           00DF04   963 _PKTCTRL0	=	0xdf04
                           00DF05   964 G$ADDR$0$0 == 0xdf05
                           00DF05   965 _ADDR	=	0xdf05
                           00DF06   966 G$CHANNR$0$0 == 0xdf06
                           00DF06   967 _CHANNR	=	0xdf06
                           00DF07   968 G$FSCTRL1$0$0 == 0xdf07
                           00DF07   969 _FSCTRL1	=	0xdf07
                           00DF08   970 G$FSCTRL0$0$0 == 0xdf08
                           00DF08   971 _FSCTRL0	=	0xdf08
                           00DF09   972 G$FREQ2$0$0 == 0xdf09
                           00DF09   973 _FREQ2	=	0xdf09
                           00DF0A   974 G$FREQ1$0$0 == 0xdf0a
                           00DF0A   975 _FREQ1	=	0xdf0a
                           00DF0B   976 G$FREQ0$0$0 == 0xdf0b
                           00DF0B   977 _FREQ0	=	0xdf0b
                           00DF0C   978 G$MDMCFG4$0$0 == 0xdf0c
                           00DF0C   979 _MDMCFG4	=	0xdf0c
                           00DF0D   980 G$MDMCFG3$0$0 == 0xdf0d
                           00DF0D   981 _MDMCFG3	=	0xdf0d
                           00DF0E   982 G$MDMCFG2$0$0 == 0xdf0e
                           00DF0E   983 _MDMCFG2	=	0xdf0e
                           00DF0F   984 G$MDMCFG1$0$0 == 0xdf0f
                           00DF0F   985 _MDMCFG1	=	0xdf0f
                           00DF10   986 G$MDMCFG0$0$0 == 0xdf10
                           00DF10   987 _MDMCFG0	=	0xdf10
                           00DF11   988 G$DEVIATN$0$0 == 0xdf11
                           00DF11   989 _DEVIATN	=	0xdf11
                           00DF12   990 G$MCSM2$0$0 == 0xdf12
                           00DF12   991 _MCSM2	=	0xdf12
                           00DF13   992 G$MCSM1$0$0 == 0xdf13
                           00DF13   993 _MCSM1	=	0xdf13
                           00DF14   994 G$MCSM0$0$0 == 0xdf14
                           00DF14   995 _MCSM0	=	0xdf14
                           00DF15   996 G$FOCCFG$0$0 == 0xdf15
                           00DF15   997 _FOCCFG	=	0xdf15
                           00DF16   998 G$BSCFG$0$0 == 0xdf16
                           00DF16   999 _BSCFG	=	0xdf16
                           00DF17  1000 G$AGCCTRL2$0$0 == 0xdf17
                           00DF17  1001 _AGCCTRL2	=	0xdf17
                           00DF18  1002 G$AGCCTRL1$0$0 == 0xdf18
                           00DF18  1003 _AGCCTRL1	=	0xdf18
                           00DF19  1004 G$AGCCTRL0$0$0 == 0xdf19
                           00DF19  1005 _AGCCTRL0	=	0xdf19
                           00DF1A  1006 G$FREND1$0$0 == 0xdf1a
                           00DF1A  1007 _FREND1	=	0xdf1a
                           00DF1B  1008 G$FREND0$0$0 == 0xdf1b
                           00DF1B  1009 _FREND0	=	0xdf1b
                           00DF1C  1010 G$FSCAL3$0$0 == 0xdf1c
                           00DF1C  1011 _FSCAL3	=	0xdf1c
                           00DF1D  1012 G$FSCAL2$0$0 == 0xdf1d
                           00DF1D  1013 _FSCAL2	=	0xdf1d
                           00DF1E  1014 G$FSCAL1$0$0 == 0xdf1e
                           00DF1E  1015 _FSCAL1	=	0xdf1e
                           00DF1F  1016 G$FSCAL0$0$0 == 0xdf1f
                           00DF1F  1017 _FSCAL0	=	0xdf1f
                           00DF20  1018 G$_XREGDF20$0$0 == 0xdf20
                           00DF20  1019 __XREGDF20	=	0xdf20
                           00DF21  1020 G$_XREGDF21$0$0 == 0xdf21
                           00DF21  1021 __XREGDF21	=	0xdf21
                           00DF22  1022 G$_XREGDF22$0$0 == 0xdf22
                           00DF22  1023 __XREGDF22	=	0xdf22
                           00DF23  1024 G$TEST2$0$0 == 0xdf23
                           00DF23  1025 _TEST2	=	0xdf23
                           00DF24  1026 G$TEST1$0$0 == 0xdf24
                           00DF24  1027 _TEST1	=	0xdf24
                           00DF25  1028 G$TEST0$0$0 == 0xdf25
                           00DF25  1029 _TEST0	=	0xdf25
                           00DF26  1030 G$_XREGDF26$0$0 == 0xdf26
                           00DF26  1031 __XREGDF26	=	0xdf26
                           00DF27  1032 G$PA_TABLE7$0$0 == 0xdf27
                           00DF27  1033 _PA_TABLE7	=	0xdf27
                           00DF28  1034 G$PA_TABLE6$0$0 == 0xdf28
                           00DF28  1035 _PA_TABLE6	=	0xdf28
                           00DF29  1036 G$PA_TABLE5$0$0 == 0xdf29
                           00DF29  1037 _PA_TABLE5	=	0xdf29
                           00DF2A  1038 G$PA_TABLE4$0$0 == 0xdf2a
                           00DF2A  1039 _PA_TABLE4	=	0xdf2a
                           00DF2B  1040 G$PA_TABLE3$0$0 == 0xdf2b
                           00DF2B  1041 _PA_TABLE3	=	0xdf2b
                           00DF2C  1042 G$PA_TABLE2$0$0 == 0xdf2c
                           00DF2C  1043 _PA_TABLE2	=	0xdf2c
                           00DF2D  1044 G$PA_TABLE1$0$0 == 0xdf2d
                           00DF2D  1045 _PA_TABLE1	=	0xdf2d
                           00DF2E  1046 G$PA_TABLE0$0$0 == 0xdf2e
                           00DF2E  1047 _PA_TABLE0	=	0xdf2e
                           00DF2F  1048 G$IOCFG2$0$0 == 0xdf2f
                           00DF2F  1049 _IOCFG2	=	0xdf2f
                           00DF30  1050 G$IOCFG1$0$0 == 0xdf30
                           00DF30  1051 _IOCFG1	=	0xdf30
                           00DF31  1052 G$IOCFG0$0$0 == 0xdf31
                           00DF31  1053 _IOCFG0	=	0xdf31
                           00DF32  1054 G$_XREGDF32$0$0 == 0xdf32
                           00DF32  1055 __XREGDF32	=	0xdf32
                           00DF33  1056 G$_XREGDF33$0$0 == 0xdf33
                           00DF33  1057 __XREGDF33	=	0xdf33
                           00DF34  1058 G$_XREGDF34$0$0 == 0xdf34
                           00DF34  1059 __XREGDF34	=	0xdf34
                           00DF35  1060 G$_XREGDF35$0$0 == 0xdf35
                           00DF35  1061 __XREGDF35	=	0xdf35
                           00DF36  1062 G$PARTNUM$0$0 == 0xdf36
                           00DF36  1063 _PARTNUM	=	0xdf36
                           00DF37  1064 G$VERSION$0$0 == 0xdf37
                           00DF37  1065 _VERSION	=	0xdf37
                           00DF38  1066 G$FREQEST$0$0 == 0xdf38
                           00DF38  1067 _FREQEST	=	0xdf38
                           00DF39  1068 G$LQI$0$0 == 0xdf39
                           00DF39  1069 _LQI	=	0xdf39
                           00DF3A  1070 G$RSSI$0$0 == 0xdf3a
                           00DF3A  1071 _RSSI	=	0xdf3a
                           00DF3B  1072 G$MARCSTATE$0$0 == 0xdf3b
                           00DF3B  1073 _MARCSTATE	=	0xdf3b
                           00DF3C  1074 G$PKTSTATUS$0$0 == 0xdf3c
                           00DF3C  1075 _PKTSTATUS	=	0xdf3c
                           00DF3D  1076 G$VCO_VC_DAC$0$0 == 0xdf3d
                           00DF3D  1077 _VCO_VC_DAC	=	0xdf3d
                           00DF40  1078 G$I2SCFG0$0$0 == 0xdf40
                           00DF40  1079 _I2SCFG0	=	0xdf40
                           00DF41  1080 G$I2SCFG1$0$0 == 0xdf41
                           00DF41  1081 _I2SCFG1	=	0xdf41
                           00DF42  1082 G$I2SDATL$0$0 == 0xdf42
                           00DF42  1083 _I2SDATL	=	0xdf42
                           00DF43  1084 G$I2SDATH$0$0 == 0xdf43
                           00DF43  1085 _I2SDATH	=	0xdf43
                           00DF44  1086 G$I2SWCNT$0$0 == 0xdf44
                           00DF44  1087 _I2SWCNT	=	0xdf44
                           00DF45  1088 G$I2SSTAT$0$0 == 0xdf45
                           00DF45  1089 _I2SSTAT	=	0xdf45
                           00DF46  1090 G$I2SCLKF0$0$0 == 0xdf46
                           00DF46  1091 _I2SCLKF0	=	0xdf46
                           00DF47  1092 G$I2SCLKF1$0$0 == 0xdf47
                           00DF47  1093 _I2SCLKF1	=	0xdf47
                           00DF48  1094 G$I2SCLKF2$0$0 == 0xdf48
                           00DF48  1095 _I2SCLKF2	=	0xdf48
                           00DF80  1096 G$_NA_P0$0$0 == 0xdf80
                           00DF80  1097 __NA_P0	=	0xdf80
                           00DF81  1098 G$_NA_SP$0$0 == 0xdf81
                           00DF81  1099 __NA_SP	=	0xdf81
                           00DF82  1100 G$_NA_DPL0$0$0 == 0xdf82
                           00DF82  1101 __NA_DPL0	=	0xdf82
                           00DF83  1102 G$_NA_DPH0$0$0 == 0xdf83
                           00DF83  1103 __NA_DPH0	=	0xdf83
                           00DF84  1104 G$_NA_DPL1$0$0 == 0xdf84
                           00DF84  1105 __NA_DPL1	=	0xdf84
                           00DF85  1106 G$_NA_DPH1$0$0 == 0xdf85
                           00DF85  1107 __NA_DPH1	=	0xdf85
                           00DF86  1108 G$X_U0CSR$0$0 == 0xdf86
                           00DF86  1109 _X_U0CSR	=	0xdf86
                           00DF87  1110 G$_NA_PCON$0$0 == 0xdf87
                           00DF87  1111 __NA_PCON	=	0xdf87
                           00DF88  1112 G$_NA_TCON$0$0 == 0xdf88
                           00DF88  1113 __NA_TCON	=	0xdf88
                           00DF89  1114 G$X_P0IFG$0$0 == 0xdf89
                           00DF89  1115 _X_P0IFG	=	0xdf89
                           00DF8A  1116 G$X_P1IFG$0$0 == 0xdf8a
                           00DF8A  1117 _X_P1IFG	=	0xdf8a
                           00DF8B  1118 G$X_P2IFG$0$0 == 0xdf8b
                           00DF8B  1119 _X_P2IFG	=	0xdf8b
                           00DF8C  1120 G$X_PICTL$0$0 == 0xdf8c
                           00DF8C  1121 _X_PICTL	=	0xdf8c
                           00DF8D  1122 G$X_P1IEN$0$0 == 0xdf8d
                           00DF8D  1123 _X_P1IEN	=	0xdf8d
                           00DF8E  1124 G$_X_SFR8E$0$0 == 0xdf8e
                           00DF8E  1125 __X_SFR8E	=	0xdf8e
                           00DF8F  1126 G$X_P0INP$0$0 == 0xdf8f
                           00DF8F  1127 _X_P0INP	=	0xdf8f
                           00DF90  1128 G$_NA_P1$0$0 == 0xdf90
                           00DF90  1129 __NA_P1	=	0xdf90
                           00DF91  1130 G$X_RFIM$0$0 == 0xdf91
                           00DF91  1131 _X_RFIM	=	0xdf91
                           00DF92  1132 G$_NA_DPS$0$0 == 0xdf92
                           00DF92  1133 __NA_DPS	=	0xdf92
                           00DF93  1134 G$X_MPAGE$0$0 == 0xdf93
                           00DF93  1135 _X_MPAGE	=	0xdf93
                           00DF94  1136 G$_X_SFR94$0$0 == 0xdf94
                           00DF94  1137 __X_SFR94	=	0xdf94
                           00DF95  1138 G$_X_SFR95$0$0 == 0xdf95
                           00DF95  1139 __X_SFR95	=	0xdf95
                           00DF96  1140 G$_X_SFR96$0$0 == 0xdf96
                           00DF96  1141 __X_SFR96	=	0xdf96
                           00DF97  1142 G$_X_SFR97$0$0 == 0xdf97
                           00DF97  1143 __X_SFR97	=	0xdf97
                           00DF98  1144 G$_NA_S0CON$0$0 == 0xdf98
                           00DF98  1145 __NA_S0CON	=	0xdf98
                           00DF99  1146 G$_X_SFR99$0$0 == 0xdf99
                           00DF99  1147 __X_SFR99	=	0xdf99
                           00DF9A  1148 G$_NA_IEN2$0$0 == 0xdf9a
                           00DF9A  1149 __NA_IEN2	=	0xdf9a
                           00DF9B  1150 G$_NA_S1CON$0$0 == 0xdf9b
                           00DF9B  1151 __NA_S1CON	=	0xdf9b
                           00DF9C  1152 G$X_T2CT$0$0 == 0xdf9c
                           00DF9C  1153 _X_T2CT	=	0xdf9c
                           00DF9D  1154 G$X_T2PR$0$0 == 0xdf9d
                           00DF9D  1155 _X_T2PR	=	0xdf9d
                           00DF9E  1156 G$X_T2CTL$0$0 == 0xdf9e
                           00DF9E  1157 _X_T2CTL	=	0xdf9e
                           00DF9F  1158 G$_X_SFR9F$0$0 == 0xdf9f
                           00DF9F  1159 __X_SFR9F	=	0xdf9f
                           00DFA0  1160 G$_NA_P2$0$0 == 0xdfa0
                           00DFA0  1161 __NA_P2	=	0xdfa0
                           00DFA1  1162 G$X_WORIRQ$0$0 == 0xdfa1
                           00DFA1  1163 _X_WORIRQ	=	0xdfa1
                           00DFA2  1164 G$X_WORCTRL$0$0 == 0xdfa2
                           00DFA2  1165 _X_WORCTRL	=	0xdfa2
                           00DFA3  1166 G$X_WOREVT0$0$0 == 0xdfa3
                           00DFA3  1167 _X_WOREVT0	=	0xdfa3
                           00DFA4  1168 G$X_WOREVT1$0$0 == 0xdfa4
                           00DFA4  1169 _X_WOREVT1	=	0xdfa4
                           00DFA5  1170 G$X_WORTIME0$0$0 == 0xdfa5
                           00DFA5  1171 _X_WORTIME0	=	0xdfa5
                           00DFA6  1172 G$X_WORTIME1$0$0 == 0xdfa6
                           00DFA6  1173 _X_WORTIME1	=	0xdfa6
                           00DFA7  1174 G$_X_SFRA7$0$0 == 0xdfa7
                           00DFA7  1175 __X_SFRA7	=	0xdfa7
                           00DFA8  1176 G$_NA_IEN0$0$0 == 0xdfa8
                           00DFA8  1177 __NA_IEN0	=	0xdfa8
                           00DFA9  1178 G$_NA_IP0$0$0 == 0xdfa9
                           00DFA9  1179 __NA_IP0	=	0xdfa9
                           00DFAA  1180 G$_X_SFRAA$0$0 == 0xdfaa
                           00DFAA  1181 __X_SFRAA	=	0xdfaa
                           00DFAB  1182 G$X_FWT$0$0 == 0xdfab
                           00DFAB  1183 _X_FWT	=	0xdfab
                           00DFAC  1184 G$X_FADDRL$0$0 == 0xdfac
                           00DFAC  1185 _X_FADDRL	=	0xdfac
                           00DFAD  1186 G$X_FADDRH$0$0 == 0xdfad
                           00DFAD  1187 _X_FADDRH	=	0xdfad
                           00DFAE  1188 G$X_FCTL$0$0 == 0xdfae
                           00DFAE  1189 _X_FCTL	=	0xdfae
                           00DFAF  1190 G$X_FWDATA$0$0 == 0xdfaf
                           00DFAF  1191 _X_FWDATA	=	0xdfaf
                           00DFB0  1192 G$_X_SFRB0$0$0 == 0xdfb0
                           00DFB0  1193 __X_SFRB0	=	0xdfb0
                           00DFB1  1194 G$X_ENCDI$0$0 == 0xdfb1
                           00DFB1  1195 _X_ENCDI	=	0xdfb1
                           00DFB2  1196 G$X_ENCDO$0$0 == 0xdfb2
                           00DFB2  1197 _X_ENCDO	=	0xdfb2
                           00DFB3  1198 G$X_ENCCS$0$0 == 0xdfb3
                           00DFB3  1199 _X_ENCCS	=	0xdfb3
                           00DFB4  1200 G$X_ADCCON1$0$0 == 0xdfb4
                           00DFB4  1201 _X_ADCCON1	=	0xdfb4
                           00DFB5  1202 G$X_ADCCON2$0$0 == 0xdfb5
                           00DFB5  1203 _X_ADCCON2	=	0xdfb5
                           00DFB6  1204 G$X_ADCCON3$0$0 == 0xdfb6
                           00DFB6  1205 _X_ADCCON3	=	0xdfb6
                           00DFB7  1206 G$_X_SFRB7$0$0 == 0xdfb7
                           00DFB7  1207 __X_SFRB7	=	0xdfb7
                           00DFB8  1208 G$_NA_IEN1$0$0 == 0xdfb8
                           00DFB8  1209 __NA_IEN1	=	0xdfb8
                           00DFB9  1210 G$_NA_IP1$0$0 == 0xdfb9
                           00DFB9  1211 __NA_IP1	=	0xdfb9
                           00DFBA  1212 G$X_ADCL$0$0 == 0xdfba
                           00DFBA  1213 _X_ADCL	=	0xdfba
                           00DFBB  1214 G$X_ADCH$0$0 == 0xdfbb
                           00DFBB  1215 _X_ADCH	=	0xdfbb
                           00DFBC  1216 G$X_RNDL$0$0 == 0xdfbc
                           00DFBC  1217 _X_RNDL	=	0xdfbc
                           00DFBD  1218 G$X_RNDH$0$0 == 0xdfbd
                           00DFBD  1219 _X_RNDH	=	0xdfbd
                           00DFBE  1220 G$X_SLEEP$0$0 == 0xdfbe
                           00DFBE  1221 _X_SLEEP	=	0xdfbe
                           00DFBF  1222 G$_X_SFRBF$0$0 == 0xdfbf
                           00DFBF  1223 __X_SFRBF	=	0xdfbf
                           00DFC0  1224 G$_NA_IRCON$0$0 == 0xdfc0
                           00DFC0  1225 __NA_IRCON	=	0xdfc0
                           00DFC1  1226 G$X_U0DBUF$0$0 == 0xdfc1
                           00DFC1  1227 _X_U0DBUF	=	0xdfc1
                           00DFC2  1228 G$X_U0BAUD$0$0 == 0xdfc2
                           00DFC2  1229 _X_U0BAUD	=	0xdfc2
                           00DFC3  1230 G$_X_SFRC3$0$0 == 0xdfc3
                           00DFC3  1231 __X_SFRC3	=	0xdfc3
                           00DFC4  1232 G$X_U0UCR$0$0 == 0xdfc4
                           00DFC4  1233 _X_U0UCR	=	0xdfc4
                           00DFC5  1234 G$X_U0GCR$0$0 == 0xdfc5
                           00DFC5  1235 _X_U0GCR	=	0xdfc5
                           00DFC6  1236 G$X_CLKCON$0$0 == 0xdfc6
                           00DFC6  1237 _X_CLKCON	=	0xdfc6
                           00DFC7  1238 G$X_MEMCTR$0$0 == 0xdfc7
                           00DFC7  1239 _X_MEMCTR	=	0xdfc7
                           00DFC8  1240 G$_X_SFRC8$0$0 == 0xdfc8
                           00DFC8  1241 __X_SFRC8	=	0xdfc8
                           00DFC9  1242 G$X_WDCTL$0$0 == 0xdfc9
                           00DFC9  1243 _X_WDCTL	=	0xdfc9
                           00DFCA  1244 G$X_T3CNT$0$0 == 0xdfca
                           00DFCA  1245 _X_T3CNT	=	0xdfca
                           00DFCB  1246 G$X_T3CTL$0$0 == 0xdfcb
                           00DFCB  1247 _X_T3CTL	=	0xdfcb
                           00DFCC  1248 G$X_T3CCTL0$0$0 == 0xdfcc
                           00DFCC  1249 _X_T3CCTL0	=	0xdfcc
                           00DFCD  1250 G$X_T3CC0$0$0 == 0xdfcd
                           00DFCD  1251 _X_T3CC0	=	0xdfcd
                           00DFCE  1252 G$X_T3CCTL1$0$0 == 0xdfce
                           00DFCE  1253 _X_T3CCTL1	=	0xdfce
                           00DFCF  1254 G$X_T3CC1$0$0 == 0xdfcf
                           00DFCF  1255 _X_T3CC1	=	0xdfcf
                           00DFD0  1256 G$_NA_PSW$0$0 == 0xdfd0
                           00DFD0  1257 __NA_PSW	=	0xdfd0
                           00DFD1  1258 G$X_DMAIRQ$0$0 == 0xdfd1
                           00DFD1  1259 _X_DMAIRQ	=	0xdfd1
                           00DFD2  1260 G$X_DMA1CFGL$0$0 == 0xdfd2
                           00DFD2  1261 _X_DMA1CFGL	=	0xdfd2
                           00DFD3  1262 G$X_DMA1CFGH$0$0 == 0xdfd3
                           00DFD3  1263 _X_DMA1CFGH	=	0xdfd3
                           00DFD4  1264 G$X_DMA0CFGL$0$0 == 0xdfd4
                           00DFD4  1265 _X_DMA0CFGL	=	0xdfd4
                           00DFD5  1266 G$X_DMA0CFGH$0$0 == 0xdfd5
                           00DFD5  1267 _X_DMA0CFGH	=	0xdfd5
                           00DFD6  1268 G$X_DMAARM$0$0 == 0xdfd6
                           00DFD6  1269 _X_DMAARM	=	0xdfd6
                           00DFD7  1270 G$X_DMAREQ$0$0 == 0xdfd7
                           00DFD7  1271 _X_DMAREQ	=	0xdfd7
                           00DFD8  1272 G$X_TIMIF$0$0 == 0xdfd8
                           00DFD8  1273 _X_TIMIF	=	0xdfd8
                           00DFD9  1274 G$X_RFD$0$0 == 0xdfd9
                           00DFD9  1275 _X_RFD	=	0xdfd9
                           00DFDA  1276 G$X_T1CC0L$0$0 == 0xdfda
                           00DFDA  1277 _X_T1CC0L	=	0xdfda
                           00DFDB  1278 G$X_T1CC0H$0$0 == 0xdfdb
                           00DFDB  1279 _X_T1CC0H	=	0xdfdb
                           00DFDC  1280 G$X_T1CC1L$0$0 == 0xdfdc
                           00DFDC  1281 _X_T1CC1L	=	0xdfdc
                           00DFDD  1282 G$X_T1CC1H$0$0 == 0xdfdd
                           00DFDD  1283 _X_T1CC1H	=	0xdfdd
                           00DFDE  1284 G$X_T1CC2L$0$0 == 0xdfde
                           00DFDE  1285 _X_T1CC2L	=	0xdfde
                           00DFDF  1286 G$X_T1CC2H$0$0 == 0xdfdf
                           00DFDF  1287 _X_T1CC2H	=	0xdfdf
                           00DFE0  1288 G$_NA_ACC$0$0 == 0xdfe0
                           00DFE0  1289 __NA_ACC	=	0xdfe0
                           00DFE1  1290 G$X_RFST$0$0 == 0xdfe1
                           00DFE1  1291 _X_RFST	=	0xdfe1
                           00DFE2  1292 G$X_T1CNTL$0$0 == 0xdfe2
                           00DFE2  1293 _X_T1CNTL	=	0xdfe2
                           00DFE3  1294 G$X_T1CNTH$0$0 == 0xdfe3
                           00DFE3  1295 _X_T1CNTH	=	0xdfe3
                           00DFE4  1296 G$X_T1CTL$0$0 == 0xdfe4
                           00DFE4  1297 _X_T1CTL	=	0xdfe4
                           00DFE5  1298 G$X_T1CCTL0$0$0 == 0xdfe5
                           00DFE5  1299 _X_T1CCTL0	=	0xdfe5
                           00DFE6  1300 G$X_T1CCTL1$0$0 == 0xdfe6
                           00DFE6  1301 _X_T1CCTL1	=	0xdfe6
                           00DFE7  1302 G$X_T1CCTL2$0$0 == 0xdfe7
                           00DFE7  1303 _X_T1CCTL2	=	0xdfe7
                           00DFE8  1304 G$_NA_IRCON2$0$0 == 0xdfe8
                           00DFE8  1305 __NA_IRCON2	=	0xdfe8
                           00DFE9  1306 G$X_RFIF$0$0 == 0xdfe9
                           00DFE9  1307 _X_RFIF	=	0xdfe9
                           00DFEA  1308 G$X_T4CNT$0$0 == 0xdfea
                           00DFEA  1309 _X_T4CNT	=	0xdfea
                           00DFEB  1310 G$X_T4CTL$0$0 == 0xdfeb
                           00DFEB  1311 _X_T4CTL	=	0xdfeb
                           00DFEC  1312 G$X_T4CCTL0$0$0 == 0xdfec
                           00DFEC  1313 _X_T4CCTL0	=	0xdfec
                           00DFED  1314 G$X_T4CC0$0$0 == 0xdfed
                           00DFED  1315 _X_T4CC0	=	0xdfed
                           00DFEE  1316 G$X_T4CCTL1$0$0 == 0xdfee
                           00DFEE  1317 _X_T4CCTL1	=	0xdfee
                           00DFEF  1318 G$X_T4CC1$0$0 == 0xdfef
                           00DFEF  1319 _X_T4CC1	=	0xdfef
                           00DFF0  1320 G$_NA_B$0$0 == 0xdff0
                           00DFF0  1321 __NA_B	=	0xdff0
                           00DFF1  1322 G$X_PERCFG$0$0 == 0xdff1
                           00DFF1  1323 _X_PERCFG	=	0xdff1
                           00DFF2  1324 G$X_ADCCFG$0$0 == 0xdff2
                           00DFF2  1325 _X_ADCCFG	=	0xdff2
                           00DFF3  1326 G$X_P0SEL$0$0 == 0xdff3
                           00DFF3  1327 _X_P0SEL	=	0xdff3
                           00DFF4  1328 G$X_P1SEL$0$0 == 0xdff4
                           00DFF4  1329 _X_P1SEL	=	0xdff4
                           00DFF5  1330 G$X_P2SEL$0$0 == 0xdff5
                           00DFF5  1331 _X_P2SEL	=	0xdff5
                           00DFF6  1332 G$X_P1INP$0$0 == 0xdff6
                           00DFF6  1333 _X_P1INP	=	0xdff6
                           00DFF7  1334 G$X_P2INP$0$0 == 0xdff7
                           00DFF7  1335 _X_P2INP	=	0xdff7
                           00DFF8  1336 G$X_U1CSR$0$0 == 0xdff8
                           00DFF8  1337 _X_U1CSR	=	0xdff8
                           00DFF9  1338 G$X_U1DBUF$0$0 == 0xdff9
                           00DFF9  1339 _X_U1DBUF	=	0xdff9
                           00DFFA  1340 G$X_U1BAUD$0$0 == 0xdffa
                           00DFFA  1341 _X_U1BAUD	=	0xdffa
                           00DFFB  1342 G$X_U1UCR$0$0 == 0xdffb
                           00DFFB  1343 _X_U1UCR	=	0xdffb
                           00DFFC  1344 G$X_U1GCR$0$0 == 0xdffc
                           00DFFC  1345 _X_U1GCR	=	0xdffc
                           00DFFD  1346 G$X_P0DIR$0$0 == 0xdffd
                           00DFFD  1347 _X_P0DIR	=	0xdffd
                           00DFFE  1348 G$X_P1DIR$0$0 == 0xdffe
                           00DFFE  1349 _X_P1DIR	=	0xdffe
                           00DFFF  1350 G$X_P2DIR$0$0 == 0xdfff
                           00DFFF  1351 _X_P2DIR	=	0xdfff
                           000000  1352 G$uartRxBuffer$0$0==.
      0004E7                       1353 _uartRxBuffer::
      0004E7                       1354 	.ds 128
                           000080  1355 G$uartTxBuffer$0$0==.
      000567                       1356 _uartTxBuffer::
      000567                       1357 	.ds 128
                           000100  1358 G$uartTxLength$0$0==.
      0005E7                       1359 _uartTxLength::
      0005E7                       1360 	.ds 2
                           000102  1361 G$uartTxIndex$0$0==.
      0005E9                       1362 _uartTxIndex::
      0005E9                       1363 	.ds 2
                           000104  1364 G$uartRxIndex$0$0==.
      0005EB                       1365 _uartRxIndex::
      0005EB                       1366 	.ds 2
                           000106  1367 LMMCommander.main$dataPacket$1$32==.
      0005ED                       1368 _main_dataPacket_1_32:
      0005ED                       1369 	.ds 256
                           000206  1370 LMMCommander.main$repPacket$1$32==.
      0006ED                       1371 _main_repPacket_1_32:
      0006ED                       1372 	.ds 3
                           000209  1373 LMMCommander.main$dataLength$1$32==.
      0006F0                       1374 _main_dataLength_1_32:
      0006F0                       1375 	.ds 2
                           00020B  1376 LMMCommander.main$repeatedMessage$1$32==.
      0006F2                       1377 _main_repeatedMessage_1_32:
      0006F2                       1378 	.ds 1
                                   1379 ;--------------------------------------------------------
                                   1380 ; absolute external ram data
                                   1381 ;--------------------------------------------------------
                                   1382 	.area XABS    (ABS,XDATA)
                                   1383 ;--------------------------------------------------------
                                   1384 ; external initialized ram data
                                   1385 ;--------------------------------------------------------
                                   1386 	.area XISEG   (XDATA)
                                   1387 	.area HOME    (CODE)
                                   1388 	.area GSINIT0 (CODE)
                                   1389 	.area GSINIT1 (CODE)
                                   1390 	.area GSINIT2 (CODE)
                                   1391 	.area GSINIT3 (CODE)
                                   1392 	.area GSINIT4 (CODE)
                                   1393 	.area GSINIT5 (CODE)
                                   1394 	.area GSINIT  (CODE)
                                   1395 	.area GSFINAL (CODE)
                                   1396 	.area CSEG    (CODE)
                                   1397 ;--------------------------------------------------------
                                   1398 ; interrupt vector 
                                   1399 ;--------------------------------------------------------
                                   1400 	.area HOME    (CODE)
      000000                       1401 __interrupt_vect:
      000000 02 00 06         [24] 1402 	ljmp	__sdcc_gsinit_startup
                                   1403 ;--------------------------------------------------------
                                   1404 ; global & static initialisations
                                   1405 ;--------------------------------------------------------
                                   1406 	.area HOME    (CODE)
                                   1407 	.area GSINIT  (CODE)
                                   1408 	.area GSFINAL (CODE)
                                   1409 	.area GSINIT  (CODE)
                                   1410 	.globl __sdcc_gsinit_startup
                                   1411 	.globl __sdcc_program_startup
                                   1412 	.globl __start__stack
                                   1413 	.globl __mcs51_genXINIT
                                   1414 	.globl __mcs51_genXRAMCLEAR
                                   1415 	.globl __mcs51_genRAMCLEAR
                                   1416 	.area GSFINAL (CODE)
      00005F 02 00 03         [24] 1417 	ljmp	__sdcc_program_startup
                                   1418 ;--------------------------------------------------------
                                   1419 ; Home
                                   1420 ;--------------------------------------------------------
                                   1421 	.area HOME    (CODE)
                                   1422 	.area HOME    (CODE)
      000003                       1423 __sdcc_program_startup:
      000003 02 16 5D         [24] 1424 	ljmp	_main
                                   1425 ;	return from main will return to caller
                                   1426 ;--------------------------------------------------------
                                   1427 ; code
                                   1428 ;--------------------------------------------------------
                                   1429 	.area CSEG    (CODE)
                                   1430 ;------------------------------------------------------------
                                   1431 ;Allocation info for local variables in function 'main'
                                   1432 ;------------------------------------------------------------
                                   1433 ;dataPacket                Allocated with name '_main_dataPacket_1_32'
                                   1434 ;repPacket                 Allocated with name '_main_repPacket_1_32'
                                   1435 ;dataErr                   Allocated with name '_main_dataErr_1_32'
                                   1436 ;dataLength                Allocated with name '_main_dataLength_1_32'
                                   1437 ;i                         Allocated with name '_main_i_1_32'
                                   1438 ;repeatedMessage           Allocated with name '_main_repeatedMessage_1_32'
                                   1439 ;------------------------------------------------------------
                           000000  1440 	G$main$0$0 ==.
                           000000  1441 	C$MMCommander.c$38$0$0 ==.
                                   1442 ;	MMCommander.c:38: int main( void ) {
                                   1443 ;	-----------------------------------------
                                   1444 ;	 function main
                                   1445 ;	-----------------------------------------
      00165D                       1446 _main:
                           000007  1447 	ar7 = 0x07
                           000006  1448 	ar6 = 0x06
                           000005  1449 	ar5 = 0x05
                           000004  1450 	ar4 = 0x04
                           000003  1451 	ar3 = 0x03
                           000002  1452 	ar2 = 0x02
                           000001  1453 	ar1 = 0x01
                           000000  1454 	ar0 = 0x00
                           000000  1455 	C$MMCommander.c$42$1$0 ==.
                                   1456 ;	MMCommander.c:42: unsigned int dataLength = 0;
      00165D 90 06 F0         [24] 1457 	mov	dptr,#_main_dataLength_1_32
      001660 E4               [12] 1458 	clr	a
      001661 F0               [24] 1459 	movx	@dptr,a
      001662 A3               [24] 1460 	inc	dptr
      001663 F0               [24] 1461 	movx	@dptr,a
                           000007  1462 	C$MMCommander.c$47$1$32 ==.
                                   1463 ;	MMCommander.c:47: initGlobals( );
      001664 12 0C 56         [24] 1464 	lcall	_initGlobals
                           00000A  1465 	C$MMCommander.c$48$1$32 ==.
                                   1466 ;	MMCommander.c:48: configureIO( );
      001667 12 0B 40         [24] 1467 	lcall	_configureIO
                           00000D  1468 	C$MMCommander.c$49$1$32 ==.
                                   1469 ;	MMCommander.c:49: configureOsc( );
      00166A 12 0B 51         [24] 1470 	lcall	_configureOsc
                           000010  1471 	C$MMCommander.c$50$1$32 ==.
                                   1472 ;	MMCommander.c:50: crc16Init( );
      00166D 12 01 57         [24] 1473 	lcall	_crc16Init
                           000013  1474 	C$MMCommander.c$51$1$32 ==.
                                   1475 ;	MMCommander.c:51: configureMedtronicRFMode( );
      001670 12 0B 6C         [24] 1476 	lcall	_configureMedtronicRFMode
                           000016  1477 	C$MMCommander.c$52$1$32 ==.
                                   1478 ;	MMCommander.c:52: enablePushButtonInt( );
      001673 12 0D 76         [24] 1479 	lcall	_enablePushButtonInt
                           000019  1480 	C$MMCommander.c$53$1$32 ==.
                                   1481 ;	MMCommander.c:53: halUartInit( HAL_UART_BAUDRATE_57600, 0 );
      001676 90 02 43         [24] 1482 	mov	dptr,#_halUartInit_PARM_2
      001679 E4               [12] 1483 	clr	a
      00167A F0               [24] 1484 	movx	@dptr,a
      00167B 75 82 05         [24] 1485 	mov	dpl,#0x05
      00167E 12 0B 32         [24] 1486 	lcall	_halUartInit
                           000024  1487 	C$MMCommander.c$56$1$32 ==.
                                   1488 ;	MMCommander.c:56: while( 1 ) {
      001681                       1489 00122$:
                           000024  1490 	C$MMCommander.c$57$2$33 ==.
                                   1491 ;	MMCommander.c:57: dataErr = receiveMedtronicMessage( dataPacket, &dataLength );
      001681 90 04 5F         [24] 1492 	mov	dptr,#_receiveMedtronicMessage_PARM_2
      001684 74 F0            [12] 1493 	mov	a,#_main_dataLength_1_32
      001686 F0               [24] 1494 	movx	@dptr,a
      001687 74 06            [12] 1495 	mov	a,#(_main_dataLength_1_32 >> 8)
      001689 A3               [24] 1496 	inc	dptr
      00168A F0               [24] 1497 	movx	@dptr,a
      00168B E4               [12] 1498 	clr	a
      00168C A3               [24] 1499 	inc	dptr
      00168D F0               [24] 1500 	movx	@dptr,a
      00168E 90 05 ED         [24] 1501 	mov	dptr,#_main_dataPacket_1_32
      001691 75 F0 00         [24] 1502 	mov	b,#0x00
      001694 12 0E BB         [24] 1503 	lcall	_receiveMedtronicMessage
      001697 AF 82            [24] 1504 	mov	r7,dpl
                           00003C  1505 	C$MMCommander.c$58$2$33 ==.
                                   1506 ;	MMCommander.c:58: if( dataLength > 0 ) {
      001699 90 06 F0         [24] 1507 	mov	dptr,#_main_dataLength_1_32
      00169C E0               [24] 1508 	movx	a,@dptr
      00169D FD               [12] 1509 	mov	r5,a
      00169E A3               [24] 1510 	inc	dptr
      00169F E0               [24] 1511 	movx	a,@dptr
      0016A0 FE               [12] 1512 	mov	r6,a
      0016A1 4D               [12] 1513 	orl	a,r5
      0016A2 60 DD            [24] 1514 	jz	00122$
                           000047  1515 	C$MMCommander.c$59$3$34 ==.
                                   1516 ;	MMCommander.c:59: repeatedMessage = 0;
      0016A4 90 06 F2         [24] 1517 	mov	dptr,#_main_repeatedMessage_1_32
      0016A7 E4               [12] 1518 	clr	a
      0016A8 F0               [24] 1519 	movx	@dptr,a
                           00004C  1520 	C$MMCommander.c$61$3$34 ==.
                                   1521 ;	MMCommander.c:61: (dataErr == ((uartTxBuffer[0] >> 7) & 0x01)) &&
      0016A9 90 05 67         [24] 1522 	mov	dptr,#_uartTxBuffer
      0016AC E0               [24] 1523 	movx	a,@dptr
      0016AD 23               [12] 1524 	rl	a
      0016AE 54 01            [12] 1525 	anl	a,#0x01
      0016B0 FC               [12] 1526 	mov	r4,a
      0016B1 EF               [12] 1527 	mov	a,r7
      0016B2 B5 04 5F         [24] 1528 	cjne	a,ar4,00105$
                           000058  1529 	C$MMCommander.c$62$3$34 ==.
                                   1530 ;	MMCommander.c:62: (dataLength == (uartTxLength - 2))
      0016B5 90 05 E7         [24] 1531 	mov	dptr,#_uartTxLength
      0016B8 E0               [24] 1532 	movx	a,@dptr
      0016B9 FB               [12] 1533 	mov	r3,a
      0016BA A3               [24] 1534 	inc	dptr
      0016BB E0               [24] 1535 	movx	a,@dptr
      0016BC FC               [12] 1536 	mov	r4,a
      0016BD EB               [12] 1537 	mov	a,r3
      0016BE 24 FE            [12] 1538 	add	a,#0xFE
      0016C0 FB               [12] 1539 	mov	r3,a
      0016C1 EC               [12] 1540 	mov	a,r4
      0016C2 34 FF            [12] 1541 	addc	a,#0xFF
      0016C4 FC               [12] 1542 	mov	r4,a
      0016C5 ED               [12] 1543 	mov	a,r5
      0016C6 B5 03 4B         [24] 1544 	cjne	a,ar3,00105$
      0016C9 EE               [12] 1545 	mov	a,r6
      0016CA B5 04 47         [24] 1546 	cjne	a,ar4,00105$
                           000070  1547 	C$MMCommander.c$64$4$35 ==.
                                   1548 ;	MMCommander.c:64: repeatedMessage = 1;
      0016CD 90 06 F2         [24] 1549 	mov	dptr,#_main_repeatedMessage_1_32
      0016D0 74 01            [12] 1550 	mov	a,#0x01
      0016D2 F0               [24] 1551 	movx	@dptr,a
                           000076  1552 	C$MMCommander.c$65$1$32 ==.
                                   1553 ;	MMCommander.c:65: for( i = 0; i < dataLength; i++ ) {
      0016D3 7E 00            [12] 1554 	mov	r6,#0x00
      0016D5                       1555 00125$:
      0016D5 90 06 F0         [24] 1556 	mov	dptr,#_main_dataLength_1_32
      0016D8 E0               [24] 1557 	movx	a,@dptr
      0016D9 FC               [12] 1558 	mov	r4,a
      0016DA A3               [24] 1559 	inc	dptr
      0016DB E0               [24] 1560 	movx	a,@dptr
      0016DC FD               [12] 1561 	mov	r5,a
      0016DD EE               [12] 1562 	mov	a,r6
      0016DE FA               [12] 1563 	mov	r2,a
      0016DF 33               [12] 1564 	rlc	a
      0016E0 95 E0            [12] 1565 	subb	a,acc
      0016E2 FB               [12] 1566 	mov	r3,a
      0016E3 C3               [12] 1567 	clr	c
      0016E4 EA               [12] 1568 	mov	a,r2
      0016E5 9C               [12] 1569 	subb	a,r4
      0016E6 EB               [12] 1570 	mov	a,r3
      0016E7 9D               [12] 1571 	subb	a,r5
      0016E8 50 2A            [24] 1572 	jnc	00105$
                           00008D  1573 	C$MMCommander.c$66$5$36 ==.
                                   1574 ;	MMCommander.c:66: if( dataPacket[i] != uartTxBuffer[i + 2] ) {
      0016EA EE               [12] 1575 	mov	a,r6
      0016EB 24 ED            [12] 1576 	add	a,#_main_dataPacket_1_32
      0016ED F5 82            [12] 1577 	mov	dpl,a
      0016EF E4               [12] 1578 	clr	a
      0016F0 34 05            [12] 1579 	addc	a,#(_main_dataPacket_1_32 >> 8)
      0016F2 F5 83            [12] 1580 	mov	dph,a
      0016F4 E0               [24] 1581 	movx	a,@dptr
      0016F5 FD               [12] 1582 	mov	r5,a
      0016F6 74 02            [12] 1583 	mov	a,#0x02
      0016F8 2E               [12] 1584 	add	a,r6
      0016F9 24 67            [12] 1585 	add	a,#_uartTxBuffer
      0016FB F5 82            [12] 1586 	mov	dpl,a
      0016FD E4               [12] 1587 	clr	a
      0016FE 34 05            [12] 1588 	addc	a,#(_uartTxBuffer >> 8)
      001700 F5 83            [12] 1589 	mov	dph,a
      001702 E0               [24] 1590 	movx	a,@dptr
      001703 FC               [12] 1591 	mov	r4,a
      001704 ED               [12] 1592 	mov	a,r5
      001705 B5 04 02         [24] 1593 	cjne	a,ar4,00184$
      001708 80 07            [24] 1594 	sjmp	00126$
      00170A                       1595 00184$:
                           0000AD  1596 	C$MMCommander.c$67$6$37 ==.
                                   1597 ;	MMCommander.c:67: repeatedMessage = 0;
      00170A 90 06 F2         [24] 1598 	mov	dptr,#_main_repeatedMessage_1_32
      00170D E4               [12] 1599 	clr	a
      00170E F0               [24] 1600 	movx	@dptr,a
                           0000B2  1601 	C$MMCommander.c$68$6$37 ==.
                                   1602 ;	MMCommander.c:68: break;
      00170F 80 03            [24] 1603 	sjmp	00105$
      001711                       1604 00126$:
                           0000B4  1605 	C$MMCommander.c$65$4$35 ==.
                                   1606 ;	MMCommander.c:65: for( i = 0; i < dataLength; i++ ) {
      001711 0E               [12] 1607 	inc	r6
      001712 80 C1            [24] 1608 	sjmp	00125$
      001714                       1609 00105$:
                           0000B7  1610 	C$MMCommander.c$73$3$34 ==.
                                   1611 ;	MMCommander.c:73: if( repeatedMessage == 1 ) {
      001714 90 06 F2         [24] 1612 	mov	dptr,#_main_repeatedMessage_1_32
      001717 E0               [24] 1613 	movx	a,@dptr
      001718 FE               [12] 1614 	mov	r6,a
      001719 BE 01 1B         [24] 1615 	cjne	r6,#0x01,00117$
                           0000BF  1616 	C$MMCommander.c$74$4$38 ==.
                                   1617 ;	MMCommander.c:74: repPacket[0] = 0x04;
      00171C 90 06 ED         [24] 1618 	mov	dptr,#_main_repPacket_1_32
      00171F 74 04            [12] 1619 	mov	a,#0x04
      001721 F0               [24] 1620 	movx	@dptr,a
                           0000C5  1621 	C$MMCommander.c$75$4$38 ==.
                                   1622 ;	MMCommander.c:75: halUartWrite( (uint8_t const *)repPacket, 1 );
      001722 90 02 44         [24] 1623 	mov	dptr,#_halUartWrite_PARM_2
      001725 74 01            [12] 1624 	mov	a,#0x01
      001727 F0               [24] 1625 	movx	@dptr,a
      001728 E4               [12] 1626 	clr	a
      001729 A3               [24] 1627 	inc	dptr
      00172A F0               [24] 1628 	movx	@dptr,a
      00172B 90 06 ED         [24] 1629 	mov	dptr,#_main_repPacket_1_32
      00172E 75 F0 00         [24] 1630 	mov	b,#0x00
      001731 12 0B 33         [24] 1631 	lcall	_halUartWrite
      001734 02 16 81         [24] 1632 	ljmp	00122$
      001737                       1633 00117$:
                           0000DA  1634 	C$MMCommander.c$80$4$39 ==.
                                   1635 ;	MMCommander.c:80: if( dataErr == 0 ) {
      001737 EF               [12] 1636 	mov	a,r7
      001738 70 08            [24] 1637 	jnz	00109$
                           0000DD  1638 	C$MMCommander.c$81$5$40 ==.
                                   1639 ;	MMCommander.c:81: uartTxBuffer[0] = 0x02;
      00173A 90 05 67         [24] 1640 	mov	dptr,#_uartTxBuffer
      00173D 74 02            [12] 1641 	mov	a,#0x02
      00173F F0               [24] 1642 	movx	@dptr,a
      001740 80 06            [24] 1643 	sjmp	00110$
      001742                       1644 00109$:
                           0000E5  1645 	C$MMCommander.c$83$5$41 ==.
                                   1646 ;	MMCommander.c:83: uartTxBuffer[0] = 0x82;
      001742 90 05 67         [24] 1647 	mov	dptr,#_uartTxBuffer
      001745 74 82            [12] 1648 	mov	a,#0x82
      001747 F0               [24] 1649 	movx	@dptr,a
      001748                       1650 00110$:
                           0000EB  1651 	C$MMCommander.c$85$4$39 ==.
                                   1652 ;	MMCommander.c:85: uartTxBuffer[1] = dataLength;
      001748 90 06 F0         [24] 1653 	mov	dptr,#_main_dataLength_1_32
      00174B E0               [24] 1654 	movx	a,@dptr
      00174C FE               [12] 1655 	mov	r6,a
      00174D A3               [24] 1656 	inc	dptr
      00174E E0               [24] 1657 	movx	a,@dptr
      00174F 90 05 68         [24] 1658 	mov	dptr,#(_uartTxBuffer + 0x0001)
      001752 EE               [12] 1659 	mov	a,r6
      001753 F0               [24] 1660 	movx	@dptr,a
                           0000F7  1661 	C$MMCommander.c$86$1$32 ==.
                                   1662 ;	MMCommander.c:86: for( i = 0; i < dataLength; i++ ) uartTxBuffer[i + 2] = dataPacket[i];
      001754 7F 00            [12] 1663 	mov	r7,#0x00
      001756                       1664 00128$:
      001756 90 06 F0         [24] 1665 	mov	dptr,#_main_dataLength_1_32
      001759 E0               [24] 1666 	movx	a,@dptr
      00175A FD               [12] 1667 	mov	r5,a
      00175B A3               [24] 1668 	inc	dptr
      00175C E0               [24] 1669 	movx	a,@dptr
      00175D FE               [12] 1670 	mov	r6,a
      00175E EF               [12] 1671 	mov	a,r7
      00175F FB               [12] 1672 	mov	r3,a
      001760 33               [12] 1673 	rlc	a
      001761 95 E0            [12] 1674 	subb	a,acc
      001763 FC               [12] 1675 	mov	r4,a
      001764 C3               [12] 1676 	clr	c
      001765 EB               [12] 1677 	mov	a,r3
      001766 9D               [12] 1678 	subb	a,r5
      001767 EC               [12] 1679 	mov	a,r4
      001768 9E               [12] 1680 	subb	a,r6
      001769 50 1E            [24] 1681 	jnc	00111$
      00176B 74 02            [12] 1682 	mov	a,#0x02
      00176D 2F               [12] 1683 	add	a,r7
      00176E 24 67            [12] 1684 	add	a,#_uartTxBuffer
      001770 FB               [12] 1685 	mov	r3,a
      001771 E4               [12] 1686 	clr	a
      001772 34 05            [12] 1687 	addc	a,#(_uartTxBuffer >> 8)
      001774 FC               [12] 1688 	mov	r4,a
      001775 EF               [12] 1689 	mov	a,r7
      001776 24 ED            [12] 1690 	add	a,#_main_dataPacket_1_32
      001778 F5 82            [12] 1691 	mov	dpl,a
      00177A E4               [12] 1692 	clr	a
      00177B 34 05            [12] 1693 	addc	a,#(_main_dataPacket_1_32 >> 8)
      00177D F5 83            [12] 1694 	mov	dph,a
      00177F E0               [24] 1695 	movx	a,@dptr
      001780 FA               [12] 1696 	mov	r2,a
      001781 8B 82            [24] 1697 	mov	dpl,r3
      001783 8C 83            [24] 1698 	mov	dph,r4
      001785 F0               [24] 1699 	movx	@dptr,a
      001786 0F               [12] 1700 	inc	r7
      001787 80 CD            [24] 1701 	sjmp	00128$
      001789                       1702 00111$:
                           00012C  1703 	C$MMCommander.c$87$4$39 ==.
                                   1704 ;	MMCommander.c:87: uartTxLength = dataLength + 2;
      001789 90 05 E7         [24] 1705 	mov	dptr,#_uartTxLength
      00178C 74 02            [12] 1706 	mov	a,#0x02
      00178E 2D               [12] 1707 	add	a,r5
      00178F F0               [24] 1708 	movx	@dptr,a
      001790 E4               [12] 1709 	clr	a
      001791 3E               [12] 1710 	addc	a,r6
      001792 A3               [24] 1711 	inc	dptr
      001793 F0               [24] 1712 	movx	@dptr,a
                           000137  1713 	C$MMCommander.c$88$1$32 ==.
                                   1714 ;	MMCommander.c:88: for( i = 0; i < uartTxLength; i = i + 48 ) {
      001794 7F 00            [12] 1715 	mov	r7,#0x00
      001796                       1716 00131$:
      001796 90 05 E7         [24] 1717 	mov	dptr,#_uartTxLength
      001799 E0               [24] 1718 	movx	a,@dptr
      00179A FD               [12] 1719 	mov	r5,a
      00179B A3               [24] 1720 	inc	dptr
      00179C E0               [24] 1721 	movx	a,@dptr
      00179D FE               [12] 1722 	mov	r6,a
      00179E EF               [12] 1723 	mov	a,r7
      00179F FB               [12] 1724 	mov	r3,a
      0017A0 33               [12] 1725 	rlc	a
      0017A1 95 E0            [12] 1726 	subb	a,acc
      0017A3 FC               [12] 1727 	mov	r4,a
      0017A4 C3               [12] 1728 	clr	c
      0017A5 EB               [12] 1729 	mov	a,r3
      0017A6 9D               [12] 1730 	subb	a,r5
      0017A7 EC               [12] 1731 	mov	a,r4
      0017A8 64 80            [12] 1732 	xrl	a,#0x80
      0017AA 8E F0            [24] 1733 	mov	b,r6
      0017AC 63 F0 80         [24] 1734 	xrl	b,#0x80
      0017AF 95 F0            [12] 1735 	subb	a,b
      0017B1 40 03            [24] 1736 	jc	00189$
      0017B3 02 16 81         [24] 1737 	ljmp	00122$
      0017B6                       1738 00189$:
                           000159  1739 	C$MMCommander.c$89$5$42 ==.
                                   1740 ;	MMCommander.c:89: if( uartTxLength - i > 48 ) {
      0017B6 ED               [12] 1741 	mov	a,r5
      0017B7 C3               [12] 1742 	clr	c
      0017B8 9B               [12] 1743 	subb	a,r3
      0017B9 F9               [12] 1744 	mov	r1,a
      0017BA EE               [12] 1745 	mov	a,r6
      0017BB 9C               [12] 1746 	subb	a,r4
      0017BC FA               [12] 1747 	mov	r2,a
      0017BD C3               [12] 1748 	clr	c
      0017BE 74 30            [12] 1749 	mov	a,#0x30
      0017C0 99               [12] 1750 	subb	a,r1
      0017C1 74 80            [12] 1751 	mov	a,#(0x00 ^ 0x80)
      0017C3 8A F0            [24] 1752 	mov	b,r2
      0017C5 63 F0 80         [24] 1753 	xrl	b,#0x80
      0017C8 95 F0            [12] 1754 	subb	a,b
      0017CA 50 22            [24] 1755 	jnc	00113$
                           00016F  1756 	C$MMCommander.c$90$6$43 ==.
                                   1757 ;	MMCommander.c:90: halUartWrite( (uint8_t const *)&uartTxBuffer[i], 48 );
      0017CC EF               [12] 1758 	mov	a,r7
      0017CD 24 67            [12] 1759 	add	a,#_uartTxBuffer
      0017CF F9               [12] 1760 	mov	r1,a
      0017D0 E4               [12] 1761 	clr	a
      0017D1 34 05            [12] 1762 	addc	a,#(_uartTxBuffer >> 8)
      0017D3 F8               [12] 1763 	mov	r0,a
      0017D4 7A 00            [12] 1764 	mov	r2,#0x00
      0017D6 90 02 44         [24] 1765 	mov	dptr,#_halUartWrite_PARM_2
      0017D9 74 30            [12] 1766 	mov	a,#0x30
      0017DB F0               [24] 1767 	movx	@dptr,a
      0017DC E4               [12] 1768 	clr	a
      0017DD A3               [24] 1769 	inc	dptr
      0017DE F0               [24] 1770 	movx	@dptr,a
      0017DF 89 82            [24] 1771 	mov	dpl,r1
      0017E1 88 83            [24] 1772 	mov	dph,r0
      0017E3 8A F0            [24] 1773 	mov	b,r2
      0017E5 C0 07            [24] 1774 	push	ar7
      0017E7 12 0B 33         [24] 1775 	lcall	_halUartWrite
      0017EA D0 07            [24] 1776 	pop	ar7
      0017EC 80 22            [24] 1777 	sjmp	00132$
      0017EE                       1778 00113$:
                           000191  1779 	C$MMCommander.c$95$6$44 ==.
                                   1780 ;	MMCommander.c:95: halUartWrite( (uint8_t const *)&uartTxBuffer[i], uartTxLength - i );
      0017EE EF               [12] 1781 	mov	a,r7
      0017EF 24 67            [12] 1782 	add	a,#_uartTxBuffer
      0017F1 F9               [12] 1783 	mov	r1,a
      0017F2 E4               [12] 1784 	clr	a
      0017F3 34 05            [12] 1785 	addc	a,#(_uartTxBuffer >> 8)
      0017F5 F8               [12] 1786 	mov	r0,a
      0017F6 7A 00            [12] 1787 	mov	r2,#0x00
      0017F8 90 02 44         [24] 1788 	mov	dptr,#_halUartWrite_PARM_2
      0017FB ED               [12] 1789 	mov	a,r5
      0017FC C3               [12] 1790 	clr	c
      0017FD 9B               [12] 1791 	subb	a,r3
      0017FE F0               [24] 1792 	movx	@dptr,a
      0017FF EE               [12] 1793 	mov	a,r6
      001800 9C               [12] 1794 	subb	a,r4
      001801 A3               [24] 1795 	inc	dptr
      001802 F0               [24] 1796 	movx	@dptr,a
      001803 89 82            [24] 1797 	mov	dpl,r1
      001805 88 83            [24] 1798 	mov	dph,r0
      001807 8A F0            [24] 1799 	mov	b,r2
      001809 C0 07            [24] 1800 	push	ar7
      00180B 12 0B 33         [24] 1801 	lcall	_halUartWrite
      00180E D0 07            [24] 1802 	pop	ar7
      001810                       1803 00132$:
                           0001B3  1804 	C$MMCommander.c$88$4$39 ==.
                                   1805 ;	MMCommander.c:88: for( i = 0; i < uartTxLength; i = i + 48 ) {
      001810 74 30            [12] 1806 	mov	a,#0x30
      001812 2F               [12] 1807 	add	a,r7
      001813 FF               [12] 1808 	mov	r7,a
      001814 02 17 96         [24] 1809 	ljmp	00131$
                           0001BA  1810 	C$MMCommander.c$101$1$32 ==.
                           0001BA  1811 	XG$main$0$0 ==.
      001817 22               [24] 1812 	ret
                                   1813 	.area CSEG    (CODE)
                                   1814 	.area CONST   (CODE)
                                   1815 	.area XINIT   (CODE)
                                   1816 	.area CABS    (ABS,CODE)
