;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
; This file was generated Sat Apr 25 00:05:13 2015
;--------------------------------------------------------
	.module hal_uart
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _halUartRead_PARM_2
	.globl _halUartWrite_PARM_2
	.globl _halUartInit_PARM_2
	.globl _halUartInit
	.globl _halUartWrite
	.globl _halUartRead
	.globl _halUartGetNumRxBytes
	.globl _halUartEnableRxFlow
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
Lhal_uart.halUartInit$options$1$8==.
_halUartInit_PARM_2:
	.ds 1
Lhal_uart.halUartWrite$length$1$10==.
_halUartWrite_PARM_2:
	.ds 2
Lhal_uart.halUartRead$length$1$12==.
_halUartRead_PARM_2:
	.ds 2
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
;Allocation info for local variables in function 'halUartInit'
;------------------------------------------------------------
;options                   Allocated with name '_halUartInit_PARM_2'
;baudrate                  Allocated with name '_halUartInit_baudrate_1_8'
;------------------------------------------------------------
	G$halUartInit$0$0 ==.
	C$hal_uart.c$3$0$0 ==.
;	hal_uart.c:3: void halUartInit( uint8_t baudrate, uint8_t options ) {
;	-----------------------------------------
;	 function halUartInit
;	-----------------------------------------
_halUartInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$hal_uart.c$5$0$0 ==.
;	hal_uart.c:5: }
	C$hal_uart.c$5$0$0 ==.
	XG$halUartInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'halUartWrite'
;------------------------------------------------------------
;length                    Allocated with name '_halUartWrite_PARM_2'
;buf                       Allocated with name '_halUartWrite_buf_1_10'
;------------------------------------------------------------
	G$halUartWrite$0$0 ==.
	C$hal_uart.c$7$0$0 ==.
;	hal_uart.c:7: uint16_t halUartWrite( const uint8_t* buf, uint16_t length ) {
;	-----------------------------------------
;	 function halUartWrite
;	-----------------------------------------
_halUartWrite:
	C$hal_uart.c$9$1$11 ==.
;	hal_uart.c:9: return 0;
	mov	dptr,#0x0000
	C$hal_uart.c$10$1$11 ==.
	XG$halUartWrite$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'halUartRead'
;------------------------------------------------------------
;length                    Allocated with name '_halUartRead_PARM_2'
;buf                       Allocated with name '_halUartRead_buf_1_12'
;------------------------------------------------------------
	G$halUartRead$0$0 ==.
	C$hal_uart.c$12$1$11 ==.
;	hal_uart.c:12: uint16_t halUartRead( uint8_t* buf, uint16_t length ) {
;	-----------------------------------------
;	 function halUartRead
;	-----------------------------------------
_halUartRead:
	C$hal_uart.c$14$1$13 ==.
;	hal_uart.c:14: return 0;
	mov	dptr,#0x0000
	C$hal_uart.c$15$1$13 ==.
	XG$halUartRead$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'halUartGetNumRxBytes'
;------------------------------------------------------------
	G$halUartGetNumRxBytes$0$0 ==.
	C$hal_uart.c$17$1$13 ==.
;	hal_uart.c:17: uint16_t halUartGetNumRxBytes( void ) {
;	-----------------------------------------
;	 function halUartGetNumRxBytes
;	-----------------------------------------
_halUartGetNumRxBytes:
	C$hal_uart.c$19$1$15 ==.
;	hal_uart.c:19: return 0;
	mov	dptr,#0x0000
	C$hal_uart.c$20$1$15 ==.
	XG$halUartGetNumRxBytes$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'halUartEnableRxFlow'
;------------------------------------------------------------
;enable                    Allocated with name '_halUartEnableRxFlow_enable_1_16'
;------------------------------------------------------------
	G$halUartEnableRxFlow$0$0 ==.
	C$hal_uart.c$22$1$15 ==.
;	hal_uart.c:22: void halUartEnableRxFlow( uint8_t enable ) {
;	-----------------------------------------
;	 function halUartEnableRxFlow
;	-----------------------------------------
_halUartEnableRxFlow:
	C$hal_uart.c$24$1$15 ==.
;	hal_uart.c:24: }
	C$hal_uart.c$24$1$15 ==.
	XG$halUartEnableRxFlow$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
