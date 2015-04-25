;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
; This file was generated Fri Apr 24 23:28:03 2015
;--------------------------------------------------------
	.module util_buffer
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _halIntUnlock
	.globl _halIntLock
	.globl _MODE
	.globl _RE
	.globl _SLAVE
	.globl _FE
	.globl _ERR
	.globl _RX_BYTE
	.globl _TX_BYTE
	.globl _ACTIVE
	.globl _B_7
	.globl _B_6
	.globl _B_5
	.globl _B_4
	.globl _B_3
	.globl _B_2
	.globl _B_1
	.globl _B_0
	.globl _WDTIF
	.globl _P1IF
	.globl _UTX1IF
	.globl _UTX0IF
	.globl _P2IF
	.globl _ACC_7
	.globl _ACC_6
	.globl _ACC_5
	.globl _ACC_4
	.globl _ACC_3
	.globl _ACC_2
	.globl _ACC_1
	.globl _ACC_0
	.globl _OVFIM
	.globl _T4CH1IF
	.globl _T4CH0IF
	.globl _T4OVFIF
	.globl _T3CH1IF
	.globl _T3CH0IF
	.globl _T3OVFIF
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _STIF
	.globl _P0IF
	.globl _T4IF
	.globl _T3IF
	.globl _T2IF
	.globl _T1IF
	.globl _DMAIF
	.globl _P0IE
	.globl _T4IE
	.globl _T3IE
	.globl _T2IE
	.globl _T1IE
	.globl _DMAIE
	.globl _EA
	.globl _STIE
	.globl _ENCIE
	.globl _URX1IE
	.globl _URX0IE
	.globl _ADCIE
	.globl _RFTXRXIE
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _ENCIF_1
	.globl _ENCIF_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _URX1IF
	.globl _ADCIF
	.globl _URX0IF
	.globl _IT1
	.globl _RFTXRXIF
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _U1GCR
	.globl _U1UCR
	.globl _U1BAUD
	.globl _U1DBUF
	.globl _U1CSR
	.globl _P2INP
	.globl _P1INP
	.globl _P2SEL
	.globl _P1SEL
	.globl _P0SEL
	.globl _ADCCFG
	.globl _PERCFG
	.globl _B
	.globl _T4CC1
	.globl _T4CCTL1
	.globl _T4CC0
	.globl _T4CCTL0
	.globl _T4CTL
	.globl _T4CNT
	.globl _RFIF
	.globl _IRCON2
	.globl _T1CCTL2
	.globl _T1CCTL1
	.globl _T1CCTL0
	.globl _T1CTL
	.globl _T1CNTH
	.globl _T1CNTL
	.globl _RFST
	.globl _ACC
	.globl _T1CC2H
	.globl _T1CC2L
	.globl _T1CC1H
	.globl _T1CC1L
	.globl _T1CC0H
	.globl _T1CC0L
	.globl _RFD
	.globl _TIMIF
	.globl _DMAREQ
	.globl _DMAARM
	.globl _DMA0CFGH
	.globl _DMA0CFGL
	.globl _DMA1CFGH
	.globl _DMA1CFGL
	.globl _DMAIRQ
	.globl _PSW
	.globl _T3CC1
	.globl _T3CCTL1
	.globl _T3CC0
	.globl _T3CCTL0
	.globl _T3CTL
	.globl _T3CNT
	.globl _WDCTL
	.globl __SFRC8
	.globl _MEMCTR
	.globl _CLKCON
	.globl _U0GCR
	.globl _U0UCR
	.globl __SFRC3
	.globl _U0BAUD
	.globl _U0DBUF
	.globl _IRCON
	.globl __SFRBF
	.globl _SLEEP
	.globl _RNDH
	.globl _RNDL
	.globl _ADCH
	.globl _ADCL
	.globl _IP1
	.globl _IEN1
	.globl __SFRB7
	.globl _ADCCON3
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ENCCS
	.globl _ENCDO
	.globl _ENCDI
	.globl __SFRB0
	.globl _FWDATA
	.globl _FCTL
	.globl _FADDRH
	.globl _FADDRL
	.globl _FWT
	.globl __SFRAA
	.globl _IP0
	.globl _IEN0
	.globl __SFRA7
	.globl _WORTIME1
	.globl _WORTIME0
	.globl _WOREVT1
	.globl _WOREVT0
	.globl _WORCTRL
	.globl _WORIRQ
	.globl _P2
	.globl __SFR9F
	.globl _T2CTL
	.globl _T2PR
	.globl _T2CT
	.globl _S1CON
	.globl _IEN2
	.globl __SFR99
	.globl _S0CON
	.globl __SFR97
	.globl __SFR96
	.globl __SFR95
	.globl __SFR94
	.globl __XPAGE
	.globl _MPAGE
	.globl _DPS
	.globl _RFIM
	.globl _P1
	.globl _P0INP
	.globl __SFR8E
	.globl _P1IEN
	.globl _PICTL
	.globl _P2IFG
	.globl _P1IFG
	.globl _P0IFG
	.globl _TCON
	.globl _PCON
	.globl _U0CSR
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _SP
	.globl _P0
	.globl _X_P2DIR
	.globl _X_P1DIR
	.globl _X_P0DIR
	.globl _X_U1GCR
	.globl _X_U1UCR
	.globl _X_U1BAUD
	.globl _X_U1DBUF
	.globl _X_U1CSR
	.globl _X_P2INP
	.globl _X_P1INP
	.globl _X_P2SEL
	.globl _X_P1SEL
	.globl _X_P0SEL
	.globl _X_ADCCFG
	.globl _X_PERCFG
	.globl __NA_B
	.globl _X_T4CC1
	.globl _X_T4CCTL1
	.globl _X_T4CC0
	.globl _X_T4CCTL0
	.globl _X_T4CTL
	.globl _X_T4CNT
	.globl _X_RFIF
	.globl __NA_IRCON2
	.globl _X_T1CCTL2
	.globl _X_T1CCTL1
	.globl _X_T1CCTL0
	.globl _X_T1CTL
	.globl _X_T1CNTH
	.globl _X_T1CNTL
	.globl _X_RFST
	.globl __NA_ACC
	.globl _X_T1CC2H
	.globl _X_T1CC2L
	.globl _X_T1CC1H
	.globl _X_T1CC1L
	.globl _X_T1CC0H
	.globl _X_T1CC0L
	.globl _X_RFD
	.globl _X_TIMIF
	.globl _X_DMAREQ
	.globl _X_DMAARM
	.globl _X_DMA0CFGH
	.globl _X_DMA0CFGL
	.globl _X_DMA1CFGH
	.globl _X_DMA1CFGL
	.globl _X_DMAIRQ
	.globl __NA_PSW
	.globl _X_T3CC1
	.globl _X_T3CCTL1
	.globl _X_T3CC0
	.globl _X_T3CCTL0
	.globl _X_T3CTL
	.globl _X_T3CNT
	.globl _X_WDCTL
	.globl __X_SFRC8
	.globl _X_MEMCTR
	.globl _X_CLKCON
	.globl _X_U0GCR
	.globl _X_U0UCR
	.globl __X_SFRC3
	.globl _X_U0BAUD
	.globl _X_U0DBUF
	.globl __NA_IRCON
	.globl __X_SFRBF
	.globl _X_SLEEP
	.globl _X_RNDH
	.globl _X_RNDL
	.globl _X_ADCH
	.globl _X_ADCL
	.globl __NA_IP1
	.globl __NA_IEN1
	.globl __X_SFRB7
	.globl _X_ADCCON3
	.globl _X_ADCCON2
	.globl _X_ADCCON1
	.globl _X_ENCCS
	.globl _X_ENCDO
	.globl _X_ENCDI
	.globl __X_SFRB0
	.globl _X_FWDATA
	.globl _X_FCTL
	.globl _X_FADDRH
	.globl _X_FADDRL
	.globl _X_FWT
	.globl __X_SFRAA
	.globl __NA_IP0
	.globl __NA_IEN0
	.globl __X_SFRA7
	.globl _X_WORTIME1
	.globl _X_WORTIME0
	.globl _X_WOREVT1
	.globl _X_WOREVT0
	.globl _X_WORCTRL
	.globl _X_WORIRQ
	.globl __NA_P2
	.globl __X_SFR9F
	.globl _X_T2CTL
	.globl _X_T2PR
	.globl _X_T2CT
	.globl __NA_S1CON
	.globl __NA_IEN2
	.globl __X_SFR99
	.globl __NA_S0CON
	.globl __X_SFR97
	.globl __X_SFR96
	.globl __X_SFR95
	.globl __X_SFR94
	.globl _X_MPAGE
	.globl __NA_DPS
	.globl _X_RFIM
	.globl __NA_P1
	.globl _X_P0INP
	.globl __X_SFR8E
	.globl _X_P1IEN
	.globl _X_PICTL
	.globl _X_P2IFG
	.globl _X_P1IFG
	.globl _X_P0IFG
	.globl __NA_TCON
	.globl __NA_PCON
	.globl _X_U0CSR
	.globl __NA_DPH1
	.globl __NA_DPL1
	.globl __NA_DPH0
	.globl __NA_DPL0
	.globl __NA_SP
	.globl __NA_P0
	.globl _I2SCLKF2
	.globl _I2SCLKF1
	.globl _I2SCLKF0
	.globl _I2SSTAT
	.globl _I2SWCNT
	.globl _I2SDATH
	.globl _I2SDATL
	.globl _I2SCFG1
	.globl _I2SCFG0
	.globl _VCO_VC_DAC
	.globl _PKTSTATUS
	.globl _MARCSTATE
	.globl _RSSI
	.globl _LQI
	.globl _FREQEST
	.globl _VERSION
	.globl _PARTNUM
	.globl __XREGDF35
	.globl __XREGDF34
	.globl __XREGDF33
	.globl __XREGDF32
	.globl _IOCFG0
	.globl _IOCFG1
	.globl _IOCFG2
	.globl _PA_TABLE0
	.globl _PA_TABLE1
	.globl _PA_TABLE2
	.globl _PA_TABLE3
	.globl _PA_TABLE4
	.globl _PA_TABLE5
	.globl _PA_TABLE6
	.globl _PA_TABLE7
	.globl __XREGDF26
	.globl _TEST0
	.globl _TEST1
	.globl _TEST2
	.globl __XREGDF22
	.globl __XREGDF21
	.globl __XREGDF20
	.globl _FSCAL0
	.globl _FSCAL1
	.globl _FSCAL2
	.globl _FSCAL3
	.globl _FREND0
	.globl _FREND1
	.globl _AGCCTRL0
	.globl _AGCCTRL1
	.globl _AGCCTRL2
	.globl _BSCFG
	.globl _FOCCFG
	.globl _MCSM0
	.globl _MCSM1
	.globl _MCSM2
	.globl _DEVIATN
	.globl _MDMCFG0
	.globl _MDMCFG1
	.globl _MDMCFG2
	.globl _MDMCFG3
	.globl _MDMCFG4
	.globl _FREQ0
	.globl _FREQ1
	.globl _FREQ2
	.globl _FSCTRL0
	.globl _FSCTRL1
	.globl _CHANNR
	.globl _ADDR
	.globl _PKTCTRL0
	.globl _PKTCTRL1
	.globl _PKTLEN
	.globl _SYNC0
	.globl _SYNC1
	.globl _MDMCTRL0H
	.globl _bufPeek_PARM_3
	.globl _bufPeek_PARM_2
	.globl _bufGet_PARM_3
	.globl _bufGet_PARM_2
	.globl _bufPut_PARM_3
	.globl _bufPut_PARM_2
	.globl _bufInit
	.globl _bufPut
	.globl _bufGet
	.globl _bufPeek
	.globl _bufNumBytes
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
G$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
G$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
G$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
G$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
G$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
G$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
G$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
G$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
G$_SFR8E$0$0 == 0x008e
__SFR8E	=	0x008e
G$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
G$DPS$0$0 == 0x0092
_DPS	=	0x0092
G$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
G$_XPAGE$0$0 == 0x0093
__XPAGE	=	0x0093
G$_SFR94$0$0 == 0x0094
__SFR94	=	0x0094
G$_SFR95$0$0 == 0x0095
__SFR95	=	0x0095
G$_SFR96$0$0 == 0x0096
__SFR96	=	0x0096
G$_SFR97$0$0 == 0x0097
__SFR97	=	0x0097
G$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
G$_SFR99$0$0 == 0x0099
__SFR99	=	0x0099
G$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
G$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
G$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
G$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
G$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
G$_SFR9F$0$0 == 0x009f
__SFR9F	=	0x009f
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
G$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
G$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
G$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
G$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
G$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
G$_SFRA7$0$0 == 0x00a7
__SFRA7	=	0x00a7
G$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
G$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
G$_SFRAA$0$0 == 0x00aa
__SFRAA	=	0x00aa
G$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
G$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
G$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
G$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
G$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
G$_SFRB0$0$0 == 0x00b0
__SFRB0	=	0x00b0
G$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
G$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
G$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
G$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
G$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
G$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
G$_SFRB7$0$0 == 0x00b7
__SFRB7	=	0x00b7
G$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
G$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
G$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
G$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
G$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
G$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
G$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
G$_SFRBF$0$0 == 0x00bf
__SFRBF	=	0x00bf
G$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
G$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
G$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
G$_SFRC3$0$0 == 0x00c3
__SFRC3	=	0x00c3
G$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
G$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
G$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
G$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
G$_SFRC8$0$0 == 0x00c8
__SFRC8	=	0x00c8
G$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
G$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
G$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
G$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
G$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
G$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
G$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
G$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
G$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
G$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
G$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
G$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
G$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
G$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
G$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
G$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
G$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
G$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
G$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
G$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
G$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
G$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
G$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
G$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
G$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
G$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
G$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
G$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
G$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
G$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
G$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
G$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
G$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
G$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
G$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
G$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
G$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
G$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
G$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
G$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
G$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
G$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
G$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
G$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
G$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
G$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
G$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
G$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
G$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
G$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
G$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
G$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
G$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
G$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
G$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
G$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
G$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
G$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
G$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
G$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
G$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
G$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
G$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
G$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
G$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
G$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
G$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
G$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
G$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
G$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
G$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
G$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
G$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
G$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
G$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
G$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
G$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
G$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
G$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
G$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
G$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
G$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
G$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
G$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
G$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
G$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
G$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
G$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
G$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
G$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
G$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
G$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
G$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
G$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
G$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
G$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
G$ACTIVE$0$0 == 0x00f8
_ACTIVE	=	0x00f8
G$TX_BYTE$0$0 == 0x00f9
_TX_BYTE	=	0x00f9
G$RX_BYTE$0$0 == 0x00fa
_RX_BYTE	=	0x00fa
G$ERR$0$0 == 0x00fb
_ERR	=	0x00fb
G$FE$0$0 == 0x00fc
_FE	=	0x00fc
G$SLAVE$0$0 == 0x00fd
_SLAVE	=	0x00fd
G$RE$0$0 == 0x00fe
_RE	=	0x00fe
G$MODE$0$0 == 0x00ff
_MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
Lutil_buffer.bufPut$pData$1$17==.
_bufPut_PARM_2:
	.ds 3
Lutil_buffer.bufPut$nBytes$1$17==.
_bufPut_PARM_3:
	.ds 1
Lutil_buffer.bufPut$pBuf$1$17==.
_bufPut_pBuf_1_17:
	.ds 3
Lutil_buffer.bufPut$i$1$18==.
_bufPut_i_1_18:
	.ds 1
Lutil_buffer.bufPut$s$1$18==.
_bufPut_s_1_18:
	.ds 2
Lutil_buffer.bufPut$sloc0$1$0==.
_bufPut_sloc0_1_0:
	.ds 3
Lutil_buffer.bufGet$pData$1$22==.
_bufGet_PARM_2:
	.ds 3
Lutil_buffer.bufGet$nBytes$1$22==.
_bufGet_PARM_3:
	.ds 1
Lutil_buffer.bufGet$pBuf$1$22==.
_bufGet_pBuf_1_22:
	.ds 3
Lutil_buffer.bufGet$i$1$23==.
_bufGet_i_1_23:
	.ds 1
Lutil_buffer.bufGet$s$1$23==.
_bufGet_s_1_23:
	.ds 2
Lutil_buffer.bufGet$sloc0$1$0==.
_bufGet_sloc0_1_0:
	.ds 3
Lutil_buffer.bufPeek$pData$1$25==.
_bufPeek_PARM_2:
	.ds 3
Lutil_buffer.bufPeek$nBytes$1$25==.
_bufPeek_PARM_3:
	.ds 1
Lutil_buffer.bufPeek$pBuf$1$25==.
_bufPeek_pBuf_1_25:
	.ds 3
Lutil_buffer.bufPeek$i$1$26==.
_bufPeek_i_1_26:
	.ds 1
Lutil_buffer.bufPeek$j$1$26==.
_bufPeek_j_1_26:
	.ds 1
Lutil_buffer.bufPeek$s$1$26==.
_bufPeek_s_1_26:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
G$MDMCTRL0H$0$0 == 0xdf02
_MDMCTRL0H	=	0xdf02
G$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
G$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
G$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
G$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
G$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
G$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
G$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
G$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
G$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
G$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
G$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
G$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
G$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
G$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
G$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
G$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
G$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
G$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
G$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
G$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
G$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
G$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
G$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
G$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
G$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
G$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
G$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
G$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
G$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
G$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
G$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
G$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
G$_XREGDF20$0$0 == 0xdf20
__XREGDF20	=	0xdf20
G$_XREGDF21$0$0 == 0xdf21
__XREGDF21	=	0xdf21
G$_XREGDF22$0$0 == 0xdf22
__XREGDF22	=	0xdf22
G$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
G$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
G$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
G$_XREGDF26$0$0 == 0xdf26
__XREGDF26	=	0xdf26
G$PA_TABLE7$0$0 == 0xdf27
_PA_TABLE7	=	0xdf27
G$PA_TABLE6$0$0 == 0xdf28
_PA_TABLE6	=	0xdf28
G$PA_TABLE5$0$0 == 0xdf29
_PA_TABLE5	=	0xdf29
G$PA_TABLE4$0$0 == 0xdf2a
_PA_TABLE4	=	0xdf2a
G$PA_TABLE3$0$0 == 0xdf2b
_PA_TABLE3	=	0xdf2b
G$PA_TABLE2$0$0 == 0xdf2c
_PA_TABLE2	=	0xdf2c
G$PA_TABLE1$0$0 == 0xdf2d
_PA_TABLE1	=	0xdf2d
G$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
G$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
G$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
G$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
G$_XREGDF32$0$0 == 0xdf32
__XREGDF32	=	0xdf32
G$_XREGDF33$0$0 == 0xdf33
__XREGDF33	=	0xdf33
G$_XREGDF34$0$0 == 0xdf34
__XREGDF34	=	0xdf34
G$_XREGDF35$0$0 == 0xdf35
__XREGDF35	=	0xdf35
G$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
G$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
G$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
G$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
G$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
G$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
G$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
G$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
G$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
G$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
G$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
G$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
G$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
G$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
G$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
G$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
G$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
G$_NA_P0$0$0 == 0xdf80
__NA_P0	=	0xdf80
G$_NA_SP$0$0 == 0xdf81
__NA_SP	=	0xdf81
G$_NA_DPL0$0$0 == 0xdf82
__NA_DPL0	=	0xdf82
G$_NA_DPH0$0$0 == 0xdf83
__NA_DPH0	=	0xdf83
G$_NA_DPL1$0$0 == 0xdf84
__NA_DPL1	=	0xdf84
G$_NA_DPH1$0$0 == 0xdf85
__NA_DPH1	=	0xdf85
G$X_U0CSR$0$0 == 0xdf86
_X_U0CSR	=	0xdf86
G$_NA_PCON$0$0 == 0xdf87
__NA_PCON	=	0xdf87
G$_NA_TCON$0$0 == 0xdf88
__NA_TCON	=	0xdf88
G$X_P0IFG$0$0 == 0xdf89
_X_P0IFG	=	0xdf89
G$X_P1IFG$0$0 == 0xdf8a
_X_P1IFG	=	0xdf8a
G$X_P2IFG$0$0 == 0xdf8b
_X_P2IFG	=	0xdf8b
G$X_PICTL$0$0 == 0xdf8c
_X_PICTL	=	0xdf8c
G$X_P1IEN$0$0 == 0xdf8d
_X_P1IEN	=	0xdf8d
G$_X_SFR8E$0$0 == 0xdf8e
__X_SFR8E	=	0xdf8e
G$X_P0INP$0$0 == 0xdf8f
_X_P0INP	=	0xdf8f
G$_NA_P1$0$0 == 0xdf90
__NA_P1	=	0xdf90
G$X_RFIM$0$0 == 0xdf91
_X_RFIM	=	0xdf91
G$_NA_DPS$0$0 == 0xdf92
__NA_DPS	=	0xdf92
G$X_MPAGE$0$0 == 0xdf93
_X_MPAGE	=	0xdf93
G$_X_SFR94$0$0 == 0xdf94
__X_SFR94	=	0xdf94
G$_X_SFR95$0$0 == 0xdf95
__X_SFR95	=	0xdf95
G$_X_SFR96$0$0 == 0xdf96
__X_SFR96	=	0xdf96
G$_X_SFR97$0$0 == 0xdf97
__X_SFR97	=	0xdf97
G$_NA_S0CON$0$0 == 0xdf98
__NA_S0CON	=	0xdf98
G$_X_SFR99$0$0 == 0xdf99
__X_SFR99	=	0xdf99
G$_NA_IEN2$0$0 == 0xdf9a
__NA_IEN2	=	0xdf9a
G$_NA_S1CON$0$0 == 0xdf9b
__NA_S1CON	=	0xdf9b
G$X_T2CT$0$0 == 0xdf9c
_X_T2CT	=	0xdf9c
G$X_T2PR$0$0 == 0xdf9d
_X_T2PR	=	0xdf9d
G$X_T2CTL$0$0 == 0xdf9e
_X_T2CTL	=	0xdf9e
G$_X_SFR9F$0$0 == 0xdf9f
__X_SFR9F	=	0xdf9f
G$_NA_P2$0$0 == 0xdfa0
__NA_P2	=	0xdfa0
G$X_WORIRQ$0$0 == 0xdfa1
_X_WORIRQ	=	0xdfa1
G$X_WORCTRL$0$0 == 0xdfa2
_X_WORCTRL	=	0xdfa2
G$X_WOREVT0$0$0 == 0xdfa3
_X_WOREVT0	=	0xdfa3
G$X_WOREVT1$0$0 == 0xdfa4
_X_WOREVT1	=	0xdfa4
G$X_WORTIME0$0$0 == 0xdfa5
_X_WORTIME0	=	0xdfa5
G$X_WORTIME1$0$0 == 0xdfa6
_X_WORTIME1	=	0xdfa6
G$_X_SFRA7$0$0 == 0xdfa7
__X_SFRA7	=	0xdfa7
G$_NA_IEN0$0$0 == 0xdfa8
__NA_IEN0	=	0xdfa8
G$_NA_IP0$0$0 == 0xdfa9
__NA_IP0	=	0xdfa9
G$_X_SFRAA$0$0 == 0xdfaa
__X_SFRAA	=	0xdfaa
G$X_FWT$0$0 == 0xdfab
_X_FWT	=	0xdfab
G$X_FADDRL$0$0 == 0xdfac
_X_FADDRL	=	0xdfac
G$X_FADDRH$0$0 == 0xdfad
_X_FADDRH	=	0xdfad
G$X_FCTL$0$0 == 0xdfae
_X_FCTL	=	0xdfae
G$X_FWDATA$0$0 == 0xdfaf
_X_FWDATA	=	0xdfaf
G$_X_SFRB0$0$0 == 0xdfb0
__X_SFRB0	=	0xdfb0
G$X_ENCDI$0$0 == 0xdfb1
_X_ENCDI	=	0xdfb1
G$X_ENCDO$0$0 == 0xdfb2
_X_ENCDO	=	0xdfb2
G$X_ENCCS$0$0 == 0xdfb3
_X_ENCCS	=	0xdfb3
G$X_ADCCON1$0$0 == 0xdfb4
_X_ADCCON1	=	0xdfb4
G$X_ADCCON2$0$0 == 0xdfb5
_X_ADCCON2	=	0xdfb5
G$X_ADCCON3$0$0 == 0xdfb6
_X_ADCCON3	=	0xdfb6
G$_X_SFRB7$0$0 == 0xdfb7
__X_SFRB7	=	0xdfb7
G$_NA_IEN1$0$0 == 0xdfb8
__NA_IEN1	=	0xdfb8
G$_NA_IP1$0$0 == 0xdfb9
__NA_IP1	=	0xdfb9
G$X_ADCL$0$0 == 0xdfba
_X_ADCL	=	0xdfba
G$X_ADCH$0$0 == 0xdfbb
_X_ADCH	=	0xdfbb
G$X_RNDL$0$0 == 0xdfbc
_X_RNDL	=	0xdfbc
G$X_RNDH$0$0 == 0xdfbd
_X_RNDH	=	0xdfbd
G$X_SLEEP$0$0 == 0xdfbe
_X_SLEEP	=	0xdfbe
G$_X_SFRBF$0$0 == 0xdfbf
__X_SFRBF	=	0xdfbf
G$_NA_IRCON$0$0 == 0xdfc0
__NA_IRCON	=	0xdfc0
G$X_U0DBUF$0$0 == 0xdfc1
_X_U0DBUF	=	0xdfc1
G$X_U0BAUD$0$0 == 0xdfc2
_X_U0BAUD	=	0xdfc2
G$_X_SFRC3$0$0 == 0xdfc3
__X_SFRC3	=	0xdfc3
G$X_U0UCR$0$0 == 0xdfc4
_X_U0UCR	=	0xdfc4
G$X_U0GCR$0$0 == 0xdfc5
_X_U0GCR	=	0xdfc5
G$X_CLKCON$0$0 == 0xdfc6
_X_CLKCON	=	0xdfc6
G$X_MEMCTR$0$0 == 0xdfc7
_X_MEMCTR	=	0xdfc7
G$_X_SFRC8$0$0 == 0xdfc8
__X_SFRC8	=	0xdfc8
G$X_WDCTL$0$0 == 0xdfc9
_X_WDCTL	=	0xdfc9
G$X_T3CNT$0$0 == 0xdfca
_X_T3CNT	=	0xdfca
G$X_T3CTL$0$0 == 0xdfcb
_X_T3CTL	=	0xdfcb
G$X_T3CCTL0$0$0 == 0xdfcc
_X_T3CCTL0	=	0xdfcc
G$X_T3CC0$0$0 == 0xdfcd
_X_T3CC0	=	0xdfcd
G$X_T3CCTL1$0$0 == 0xdfce
_X_T3CCTL1	=	0xdfce
G$X_T3CC1$0$0 == 0xdfcf
_X_T3CC1	=	0xdfcf
G$_NA_PSW$0$0 == 0xdfd0
__NA_PSW	=	0xdfd0
G$X_DMAIRQ$0$0 == 0xdfd1
_X_DMAIRQ	=	0xdfd1
G$X_DMA1CFGL$0$0 == 0xdfd2
_X_DMA1CFGL	=	0xdfd2
G$X_DMA1CFGH$0$0 == 0xdfd3
_X_DMA1CFGH	=	0xdfd3
G$X_DMA0CFGL$0$0 == 0xdfd4
_X_DMA0CFGL	=	0xdfd4
G$X_DMA0CFGH$0$0 == 0xdfd5
_X_DMA0CFGH	=	0xdfd5
G$X_DMAARM$0$0 == 0xdfd6
_X_DMAARM	=	0xdfd6
G$X_DMAREQ$0$0 == 0xdfd7
_X_DMAREQ	=	0xdfd7
G$X_TIMIF$0$0 == 0xdfd8
_X_TIMIF	=	0xdfd8
G$X_RFD$0$0 == 0xdfd9
_X_RFD	=	0xdfd9
G$X_T1CC0L$0$0 == 0xdfda
_X_T1CC0L	=	0xdfda
G$X_T1CC0H$0$0 == 0xdfdb
_X_T1CC0H	=	0xdfdb
G$X_T1CC1L$0$0 == 0xdfdc
_X_T1CC1L	=	0xdfdc
G$X_T1CC1H$0$0 == 0xdfdd
_X_T1CC1H	=	0xdfdd
G$X_T1CC2L$0$0 == 0xdfde
_X_T1CC2L	=	0xdfde
G$X_T1CC2H$0$0 == 0xdfdf
_X_T1CC2H	=	0xdfdf
G$_NA_ACC$0$0 == 0xdfe0
__NA_ACC	=	0xdfe0
G$X_RFST$0$0 == 0xdfe1
_X_RFST	=	0xdfe1
G$X_T1CNTL$0$0 == 0xdfe2
_X_T1CNTL	=	0xdfe2
G$X_T1CNTH$0$0 == 0xdfe3
_X_T1CNTH	=	0xdfe3
G$X_T1CTL$0$0 == 0xdfe4
_X_T1CTL	=	0xdfe4
G$X_T1CCTL0$0$0 == 0xdfe5
_X_T1CCTL0	=	0xdfe5
G$X_T1CCTL1$0$0 == 0xdfe6
_X_T1CCTL1	=	0xdfe6
G$X_T1CCTL2$0$0 == 0xdfe7
_X_T1CCTL2	=	0xdfe7
G$_NA_IRCON2$0$0 == 0xdfe8
__NA_IRCON2	=	0xdfe8
G$X_RFIF$0$0 == 0xdfe9
_X_RFIF	=	0xdfe9
G$X_T4CNT$0$0 == 0xdfea
_X_T4CNT	=	0xdfea
G$X_T4CTL$0$0 == 0xdfeb
_X_T4CTL	=	0xdfeb
G$X_T4CCTL0$0$0 == 0xdfec
_X_T4CCTL0	=	0xdfec
G$X_T4CC0$0$0 == 0xdfed
_X_T4CC0	=	0xdfed
G$X_T4CCTL1$0$0 == 0xdfee
_X_T4CCTL1	=	0xdfee
G$X_T4CC1$0$0 == 0xdfef
_X_T4CC1	=	0xdfef
G$_NA_B$0$0 == 0xdff0
__NA_B	=	0xdff0
G$X_PERCFG$0$0 == 0xdff1
_X_PERCFG	=	0xdff1
G$X_ADCCFG$0$0 == 0xdff2
_X_ADCCFG	=	0xdff2
G$X_P0SEL$0$0 == 0xdff3
_X_P0SEL	=	0xdff3
G$X_P1SEL$0$0 == 0xdff4
_X_P1SEL	=	0xdff4
G$X_P2SEL$0$0 == 0xdff5
_X_P2SEL	=	0xdff5
G$X_P1INP$0$0 == 0xdff6
_X_P1INP	=	0xdff6
G$X_P2INP$0$0 == 0xdff7
_X_P2INP	=	0xdff7
G$X_U1CSR$0$0 == 0xdff8
_X_U1CSR	=	0xdff8
G$X_U1DBUF$0$0 == 0xdff9
_X_U1DBUF	=	0xdff9
G$X_U1BAUD$0$0 == 0xdffa
_X_U1BAUD	=	0xdffa
G$X_U1UCR$0$0 == 0xdffb
_X_U1UCR	=	0xdffb
G$X_U1GCR$0$0 == 0xdffc
_X_U1GCR	=	0xdffc
G$X_P0DIR$0$0 == 0xdffd
_X_P0DIR	=	0xdffd
G$X_P1DIR$0$0 == 0xdffe
_X_P1DIR	=	0xdffe
G$X_P2DIR$0$0 == 0xdfff
_X_P2DIR	=	0xdfff
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'bufInit'
;------------------------------------------------------------
;pBuf                      Allocated to registers r5 r6 r7 
;s                         Allocated to registers r3 r4 
;------------------------------------------------------------
	G$bufInit$0$0 ==.
	C$util_buffer.c$30$0$0 ==.
;	util_buffer.c:30: void bufInit( ringBuf_t *pBuf ) {
;	-----------------------------------------
;	 function bufInit
;	-----------------------------------------
_bufInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$util_buffer.c$34$1$16 ==.
;	util_buffer.c:34: s = halIntLock( );
	push	ar7
	push	ar6
	push	ar5
	lcall	_halIntLock
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	C$util_buffer.c$36$1$16 ==.
;	util_buffer.c:36: pBuf->nBytes = 0;
	mov	a,#0x80
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	clr	a
	lcall	__gptrput
	C$util_buffer.c$37$1$16 ==.
;	util_buffer.c:37: pBuf->iHead = 0;
	mov	a,#0x81
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	clr	a
	lcall	__gptrput
	C$util_buffer.c$38$1$16 ==.
;	util_buffer.c:38: pBuf->iTail = 0;
	mov	a,#0x82
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	C$util_buffer.c$41$1$16 ==.
;	util_buffer.c:41: halIntUnlock( s );
	mov	dpl,r3
	mov	dph,r4
	lcall	_halIntUnlock
	C$util_buffer.c$42$1$16 ==.
	XG$bufInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bufPut'
;------------------------------------------------------------
;pData                     Allocated with name '_bufPut_PARM_2'
;nBytes                    Allocated with name '_bufPut_PARM_3'
;pBuf                      Allocated with name '_bufPut_pBuf_1_17'
;i                         Allocated with name '_bufPut_i_1_18'
;s                         Allocated with name '_bufPut_s_1_18'
;sloc0                     Allocated with name '_bufPut_sloc0_1_0'
;------------------------------------------------------------
	G$bufPut$0$0 ==.
	C$util_buffer.c$56$1$16 ==.
;	util_buffer.c:56: uint8_t bufPut( ringBuf_t *pBuf, const uint8_t *pData, uint8_t nBytes ) {
;	-----------------------------------------
;	 function bufPut
;	-----------------------------------------
_bufPut:
	mov	_bufPut_pBuf_1_17,dpl
	mov	(_bufPut_pBuf_1_17 + 1),dph
	mov	(_bufPut_pBuf_1_17 + 2),b
	C$util_buffer.c$61$1$18 ==.
;	util_buffer.c:61: s = halIntLock( );
	lcall	_halIntLock
	mov	_bufPut_s_1_18,dpl
	mov	(_bufPut_s_1_18 + 1),dph
	C$util_buffer.c$63$1$18 ==.
;	util_buffer.c:63: if( pBuf->nBytes + nBytes < BUF_SIZE ) {
	mov	a,#0x80
	add	a,_bufPut_pBuf_1_17
	mov	r0,a
	clr	a
	addc	a,(_bufPut_pBuf_1_17 + 1)
	mov	r1,a
	mov	r2,(_bufPut_pBuf_1_17 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	r6,_bufPut_PARM_3
	mov	r7,#0x00
	mov	a,r6
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,#0x80
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00124$
	ljmp	00107$
00124$:
	C$util_buffer.c$65$1$18 ==.
;	util_buffer.c:65: while( i < nBytes ) {
	mov	_bufPut_i_1_18,#0x00
00103$:
	clr	c
	mov	a,_bufPut_i_1_18
	subb	a,_bufPut_PARM_3
	jc	00125$
	ljmp	00115$
00125$:
	C$util_buffer.c$66$1$18 ==.
;	util_buffer.c:66: pBuf->pData[pBuf->iTail] = pData[i];
	push	ar0
	push	ar1
	push	ar2
	mov	a,#0x82
	add	a,_bufPut_pBuf_1_17
	mov	r4,a
	clr	a
	addc	a,(_bufPut_pBuf_1_17 + 1)
	mov	r5,a
	mov	r6,(_bufPut_pBuf_1_17 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	add	a,_bufPut_pBuf_1_17
	mov	_bufPut_sloc0_1_0,a
	clr	a
	addc	a,(_bufPut_pBuf_1_17 + 1)
	mov	(_bufPut_sloc0_1_0 + 1),a
	mov	(_bufPut_sloc0_1_0 + 2),(_bufPut_pBuf_1_17 + 2)
	mov	a,_bufPut_i_1_18
	add	a,_bufPut_PARM_2
	mov	r0,a
	clr	a
	addc	a,(_bufPut_PARM_2 + 1)
	mov	r1,a
	mov	r7,(_bufPut_PARM_2 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dpl,_bufPut_sloc0_1_0
	mov	dph,(_bufPut_sloc0_1_0 + 1)
	mov	b,(_bufPut_sloc0_1_0 + 2)
	lcall	__gptrput
	C$util_buffer.c$67$3$20 ==.
;	util_buffer.c:67: pBuf->iTail++;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	inc	r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
	C$util_buffer.c$68$3$20 ==.
;	util_buffer.c:68: if( pBuf->iTail == BUF_SIZE )
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x80,00126$
	sjmp	00127$
00126$:
	pop	ar2
	pop	ar1
	pop	ar0
	sjmp	00102$
00127$:
	pop	ar2
	pop	ar1
	pop	ar0
	C$util_buffer.c$69$3$20 ==.
;	util_buffer.c:69: pBuf->iTail = 0;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
00102$:
	C$util_buffer.c$70$3$20 ==.
;	util_buffer.c:70: i++;
	inc	_bufPut_i_1_18
	ljmp	00103$
00115$:
	mov	r7,_bufPut_i_1_18
	C$util_buffer.c$72$2$19 ==.
;	util_buffer.c:72: pBuf->nBytes += i;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	add	a,_bufPut_i_1_18
	mov	r6,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrput
	sjmp	00108$
00107$:
	C$util_buffer.c$74$2$21 ==.
;	util_buffer.c:74: i = 0;
	mov	r7,#0x00
00108$:
	C$util_buffer.c$78$1$18 ==.
;	util_buffer.c:78: halIntUnlock( s );
	mov	dpl,_bufPut_s_1_18
	mov	dph,(_bufPut_s_1_18 + 1)
	push	ar7
	lcall	_halIntUnlock
	pop	ar7
	C$util_buffer.c$80$1$18 ==.
;	util_buffer.c:80: return i;
	mov	dpl,r7
	C$util_buffer.c$81$1$18 ==.
	XG$bufPut$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bufGet'
;------------------------------------------------------------
;pData                     Allocated with name '_bufGet_PARM_2'
;nBytes                    Allocated with name '_bufGet_PARM_3'
;pBuf                      Allocated with name '_bufGet_pBuf_1_22'
;i                         Allocated with name '_bufGet_i_1_23'
;s                         Allocated with name '_bufGet_s_1_23'
;sloc0                     Allocated with name '_bufGet_sloc0_1_0'
;------------------------------------------------------------
	G$bufGet$0$0 ==.
	C$util_buffer.c$95$1$18 ==.
;	util_buffer.c:95: uint8_t bufGet( ringBuf_t *pBuf, uint8_t *pData, uint8_t nBytes ) {
;	-----------------------------------------
;	 function bufGet
;	-----------------------------------------
_bufGet:
	mov	_bufGet_pBuf_1_22,dpl
	mov	(_bufGet_pBuf_1_22 + 1),dph
	mov	(_bufGet_pBuf_1_22 + 2),b
	C$util_buffer.c$100$1$23 ==.
;	util_buffer.c:100: s = halIntLock( );
	lcall	_halIntLock
	mov	_bufGet_s_1_23,dpl
	mov	(_bufGet_s_1_23 + 1),dph
	C$util_buffer.c$103$1$23 ==.
;	util_buffer.c:103: while( i < nBytes && i < pBuf->nBytes ) {
	mov	a,#0x80
	add	a,_bufGet_pBuf_1_22
	mov	r0,a
	clr	a
	addc	a,(_bufGet_pBuf_1_22 + 1)
	mov	r1,a
	mov	r2,(_bufGet_pBuf_1_22 + 2)
	mov	_bufGet_i_1_23,#0x00
00104$:
	clr	c
	mov	a,_bufGet_i_1_23
	subb	a,_bufGet_PARM_3
	jc	00122$
	ljmp	00106$
00122$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,_bufGet_i_1_23
	subb	a,r3
	jc	00123$
	ljmp	00106$
00123$:
	C$util_buffer.c$104$1$23 ==.
;	util_buffer.c:104: pData[i] = pBuf->pData[pBuf->iHead];
	push	ar0
	push	ar1
	push	ar2
	mov	a,_bufGet_i_1_23
	add	a,_bufGet_PARM_2
	mov	r3,a
	clr	a
	addc	a,(_bufGet_PARM_2 + 1)
	mov	r6,a
	mov	r7,(_bufGet_PARM_2 + 2)
	mov	a,#0x81
	add	a,_bufGet_pBuf_1_22
	mov	_bufGet_sloc0_1_0,a
	clr	a
	addc	a,(_bufGet_pBuf_1_22 + 1)
	mov	(_bufGet_sloc0_1_0 + 1),a
	mov	(_bufGet_sloc0_1_0 + 2),(_bufGet_pBuf_1_22 + 2)
	mov	dpl,_bufGet_sloc0_1_0
	mov	dph,(_bufGet_sloc0_1_0 + 1)
	mov	b,(_bufGet_sloc0_1_0 + 2)
	lcall	__gptrget
	add	a,_bufGet_pBuf_1_22
	mov	r2,a
	clr	a
	addc	a,(_bufGet_pBuf_1_22 + 1)
	mov	r4,a
	mov	r5,(_bufGet_pBuf_1_22 + 2)
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	C$util_buffer.c$105$2$24 ==.
;	util_buffer.c:105: pBuf->iHead++;
	mov	dpl,_bufGet_sloc0_1_0
	mov	dph,(_bufGet_sloc0_1_0 + 1)
	mov	b,(_bufGet_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	inc	r7
	mov	dpl,_bufGet_sloc0_1_0
	mov	dph,(_bufGet_sloc0_1_0 + 1)
	mov	b,(_bufGet_sloc0_1_0 + 2)
	mov	a,r7
	lcall	__gptrput
	C$util_buffer.c$106$2$24 ==.
;	util_buffer.c:106: if( pBuf->iHead == BUF_SIZE )
	mov	dpl,_bufGet_sloc0_1_0
	mov	dph,(_bufGet_sloc0_1_0 + 1)
	mov	b,(_bufGet_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x80,00124$
	sjmp	00125$
00124$:
	pop	ar2
	pop	ar1
	pop	ar0
	sjmp	00102$
00125$:
	pop	ar2
	pop	ar1
	pop	ar0
	C$util_buffer.c$107$2$24 ==.
;	util_buffer.c:107: pBuf->iHead = 0;
	mov	dpl,_bufGet_sloc0_1_0
	mov	dph,(_bufGet_sloc0_1_0 + 1)
	mov	b,(_bufGet_sloc0_1_0 + 2)
	clr	a
	lcall	__gptrput
00102$:
	C$util_buffer.c$108$2$24 ==.
;	util_buffer.c:108: i++;
	inc	_bufGet_i_1_23
	ljmp	00104$
00106$:
	C$util_buffer.c$110$1$23 ==.
;	util_buffer.c:110: pBuf->nBytes -= i;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	clr	c
	subb	a,_bufGet_i_1_23
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrput
	C$util_buffer.c$113$1$23 ==.
;	util_buffer.c:113: halIntUnlock( s );
	mov	dpl,_bufGet_s_1_23
	mov	dph,(_bufGet_s_1_23 + 1)
	lcall	_halIntUnlock
	C$util_buffer.c$114$1$23 ==.
;	util_buffer.c:114: return i;
	mov	dpl,_bufGet_i_1_23
	C$util_buffer.c$115$1$23 ==.
	XG$bufGet$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bufPeek'
;------------------------------------------------------------
;pData                     Allocated with name '_bufPeek_PARM_2'
;nBytes                    Allocated with name '_bufPeek_PARM_3'
;pBuf                      Allocated with name '_bufPeek_pBuf_1_25'
;i                         Allocated with name '_bufPeek_i_1_26'
;j                         Allocated with name '_bufPeek_j_1_26'
;s                         Allocated with name '_bufPeek_s_1_26'
;------------------------------------------------------------
	G$bufPeek$0$0 ==.
	C$util_buffer.c$129$1$23 ==.
;	util_buffer.c:129: uint8_t bufPeek( ringBuf_t *pBuf, uint8_t *pData, uint8_t nBytes ) {
;	-----------------------------------------
;	 function bufPeek
;	-----------------------------------------
_bufPeek:
	mov	_bufPeek_pBuf_1_25,dpl
	mov	(_bufPeek_pBuf_1_25 + 1),dph
	mov	(_bufPeek_pBuf_1_25 + 2),b
	C$util_buffer.c$134$1$26 ==.
;	util_buffer.c:134: s = halIntLock( );
	lcall	_halIntLock
	mov	_bufPeek_s_1_26,dpl
	mov	(_bufPeek_s_1_26 + 1),dph
	C$util_buffer.c$137$1$26 ==.
;	util_buffer.c:137: j = pBuf->iHead;
	mov	a,#0x81
	add	a,_bufPeek_pBuf_1_25
	mov	r0,a
	clr	a
	addc	a,(_bufPeek_pBuf_1_25 + 1)
	mov	r1,a
	mov	r2,(_bufPeek_pBuf_1_25 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_bufPeek_j_1_26,a
	C$util_buffer.c$138$1$26 ==.
;	util_buffer.c:138: while( i < nBytes && i < pBuf->nBytes ) {
	mov	a,#0x80
	add	a,_bufPeek_pBuf_1_25
	mov	r0,a
	clr	a
	addc	a,(_bufPeek_pBuf_1_25 + 1)
	mov	r1,a
	mov	r4,(_bufPeek_pBuf_1_25 + 2)
	mov	_bufPeek_i_1_26,#0x00
00104$:
	clr	c
	mov	a,_bufPeek_i_1_26
	subb	a,_bufPeek_PARM_3
	jnc	00106$
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	clr	c
	mov	a,_bufPeek_i_1_26
	subb	a,r7
	jnc	00106$
	C$util_buffer.c$139$1$26 ==.
;	util_buffer.c:139: pData[i] = pBuf->pData[j];
	push	ar0
	push	ar1
	push	ar4
	mov	a,_bufPeek_i_1_26
	add	a,_bufPeek_PARM_2
	mov	r5,a
	clr	a
	addc	a,(_bufPeek_PARM_2 + 1)
	mov	r6,a
	mov	r7,(_bufPeek_PARM_2 + 2)
	mov	a,_bufPeek_j_1_26
	add	a,_bufPeek_pBuf_1_25
	mov	r2,a
	clr	a
	addc	a,(_bufPeek_pBuf_1_25 + 1)
	mov	r3,a
	mov	r4,(_bufPeek_pBuf_1_25 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	C$util_buffer.c$140$2$27 ==.
;	util_buffer.c:140: j++;
	inc	_bufPeek_j_1_26
	C$util_buffer.c$141$2$27 ==.
;	util_buffer.c:141: if( j == BUF_SIZE )
	mov	a,#0x80
	cjne	a,_bufPeek_j_1_26,00124$
	sjmp	00125$
00124$:
	pop	ar4
	pop	ar1
	pop	ar0
	sjmp	00102$
00125$:
	pop	ar4
	pop	ar1
	pop	ar0
	C$util_buffer.c$142$2$27 ==.
;	util_buffer.c:142: j = 0;
	mov	_bufPeek_j_1_26,#0x00
00102$:
	C$util_buffer.c$143$2$27 ==.
;	util_buffer.c:143: i++;
	inc	_bufPeek_i_1_26
	sjmp	00104$
00106$:
	C$util_buffer.c$147$1$26 ==.
;	util_buffer.c:147: halIntUnlock( s );
	mov	dpl,_bufPeek_s_1_26
	mov	dph,(_bufPeek_s_1_26 + 1)
	lcall	_halIntUnlock
	C$util_buffer.c$148$1$26 ==.
;	util_buffer.c:148: return i;
	mov	dpl,_bufPeek_i_1_26
	C$util_buffer.c$149$1$26 ==.
	XG$bufPeek$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bufNumBytes'
;------------------------------------------------------------
;pBuf                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$bufNumBytes$0$0 ==.
	C$util_buffer.c$161$1$26 ==.
;	util_buffer.c:161: uint8_t bufNumBytes( ringBuf_t *pBuf ) {
;	-----------------------------------------
;	 function bufNumBytes
;	-----------------------------------------
_bufNumBytes:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$util_buffer.c$162$1$29 ==.
;	util_buffer.c:162: return pBuf->nBytes;
	mov	a,#0x80
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	C$util_buffer.c$163$1$29 ==.
	XG$bufNumBytes$0$0 ==.
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
