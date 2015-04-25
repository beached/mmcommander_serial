;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
; This file was generated Sat Apr 25 00:05:12 2015
;--------------------------------------------------------
	.module crc_4b6b
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _decode4b6b_PARM_4
	.globl _decode4b6b_PARM_3
	.globl _decode4b6b_PARM_2
	.globl _encode4b6b_PARM_4
	.globl _encode4b6b_PARM_3
	.globl _encode4b6b_PARM_2
	.globl _decode4b6bsymbol_PARM_2
	.globl _crc16_PARM_2
	.globl _crc8_PARM_2
	.globl _crc8
	.globl _crc16Init
	.globl _crc16
	.globl _get4b6bsymbol
	.globl _decode4b6bsymbol
	.globl _encode4b6b
	.globl _decode4b6b
	.globl _sleep
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
Lcrc_4b6b.encode4b6b$sloc0$1$0==.
_encode4b6b_sloc0_1_0:
	.ds 3
Lcrc_4b6b.encode4b6b$sloc1$1$0==.
_encode4b6b_sloc1_1_0:
	.ds 3
Lcrc_4b6b.encode4b6b$sloc2$1$0==.
_encode4b6b_sloc2_1_0:
	.ds 2
Lcrc_4b6b.encode4b6b$sloc3$1$0==.
_encode4b6b_sloc3_1_0:
	.ds 2
Lcrc_4b6b.encode4b6b$sloc4$1$0==.
_encode4b6b_sloc4_1_0:
	.ds 3
Lcrc_4b6b.encode4b6b$sloc5$1$0==.
_encode4b6b_sloc5_1_0:
	.ds 2
Lcrc_4b6b.encode4b6b$sloc6$1$0==.
_encode4b6b_sloc6_1_0:
	.ds 1
Lcrc_4b6b.decode4b6b$sloc0$1$0==.
_decode4b6b_sloc0_1_0:
	.ds 2
Lcrc_4b6b.decode4b6b$sloc1$1$0==.
_decode4b6b_sloc1_1_0:
	.ds 3
Lcrc_4b6b.decode4b6b$sloc2$1$0==.
_decode4b6b_sloc2_1_0:
	.ds 2
Lcrc_4b6b.decode4b6b$sloc3$1$0==.
_decode4b6b_sloc3_1_0:
	.ds 1
Lcrc_4b6b.decode4b6b$sloc4$1$0==.
_decode4b6b_sloc4_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
Lcrc_4b6b.crc8$sloc0$1$0==.
_crc8_sloc0_1_0:
	.ds 1
	.area	OSEG    (OVR,DATA)
Lcrc_4b6b.crc16$sloc0$1$0==.
_crc16_sloc0_1_0:
	.ds 2
Lcrc_4b6b.crc16$sloc1$1$0==.
_crc16_sloc1_1_0:
	.ds 3
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
Fcrc_4b6b$crc16Tab$0$0==.
_crc16Tab:
	.ds 512
Lcrc_4b6b.crc8$nBytes$1$9==.
_crc8_PARM_2:
	.ds 2
Lcrc_4b6b.crc8$message$1$9==.
_crc8_message_1_9:
	.ds 3
Lcrc_4b6b.crc8$remainder$1$10==.
_crc8_remainder_1_10:
	.ds 1
Lcrc_4b6b.crc16Init$crc$1$14==.
_crc16Init_crc_1_14:
	.ds 2
Lcrc_4b6b.crc16Init$c$1$14==.
_crc16Init_c_1_14:
	.ds 2
Lcrc_4b6b.crc16$nBytes$1$17==.
_crc16_PARM_2:
	.ds 2
Lcrc_4b6b.crc16$message$1$17==.
_crc16_message_1_17:
	.ds 3
Lcrc_4b6b.crc16$crc$1$18==.
_crc16_crc_1_18:
	.ds 2
Lcrc_4b6b.get4b6bsymbol$inSymbol$1$20==.
_get4b6bsymbol_inSymbol_1_20:
	.ds 1
Lcrc_4b6b.decode4b6bsymbol$outSymbol$1$23==.
_decode4b6bsymbol_PARM_2:
	.ds 3
Lcrc_4b6b.decode4b6bsymbol$inSymbol$1$23==.
_decode4b6bsymbol_inSymbol_1_23:
	.ds 1
Lcrc_4b6b.encode4b6b$bytesIn$1$43==.
_encode4b6b_PARM_2:
	.ds 2
Lcrc_4b6b.encode4b6b$messageOut$1$43==.
_encode4b6b_PARM_3:
	.ds 3
Lcrc_4b6b.encode4b6b$bytesOut$1$43==.
_encode4b6b_PARM_4:
	.ds 3
Lcrc_4b6b.encode4b6b$messageIn$1$43==.
_encode4b6b_messageIn_1_43:
	.ds 3
Lcrc_4b6b.encode4b6b$intBuffer$1$44==.
_encode4b6b_intBuffer_1_44:
	.ds 2
Lcrc_4b6b.encode4b6b$intBitsAvailable$1$44==.
_encode4b6b_intBitsAvailable_1_44:
	.ds 2
Lcrc_4b6b.encode4b6b$symbol$1$44==.
_encode4b6b_symbol_1_44:
	.ds 1
Lcrc_4b6b.decode4b6b$bytesIn$1$50==.
_decode4b6b_PARM_2:
	.ds 2
Lcrc_4b6b.decode4b6b$messageOut$1$50==.
_decode4b6b_PARM_3:
	.ds 3
Lcrc_4b6b.decode4b6b$bytesOut$1$50==.
_decode4b6b_PARM_4:
	.ds 3
Lcrc_4b6b.decode4b6b$messageIn$1$50==.
_decode4b6b_messageIn_1_50:
	.ds 3
Lcrc_4b6b.decode4b6b$intBuffer$1$51==.
_decode4b6b_intBuffer_1_51:
	.ds 2
Lcrc_4b6b.decode4b6b$intBitsAvailable$1$51==.
_decode4b6b_intBitsAvailable_1_51:
	.ds 2
Lcrc_4b6b.decode4b6b$symbol$1$51==.
_decode4b6b_symbol_1_51:
	.ds 1
Lcrc_4b6b.decode4b6b$recByte$1$51==.
_decode4b6b_recByte_1_51:
	.ds 1
Lcrc_4b6b.decode4b6b$nibbleFlag$1$51==.
_decode4b6b_nibbleFlag_1_51:
	.ds 1
Lcrc_4b6b.decode4b6b$outBytes$1$51==.
_decode4b6b_outBytes_1_51:
	.ds 1
Lcrc_4b6b.sleep$time$1$55==.
_sleep_time_1_55:
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
;Allocation info for local variables in function 'crc8'
;------------------------------------------------------------
;nBytes                    Allocated with name '_crc8_PARM_2'
;message                   Allocated with name '_crc8_message_1_9'
;remainder                 Allocated with name '_crc8_remainder_1_10'
;byte                      Allocated with name '_crc8_byte_1_10'
;bit                       Allocated with name '_crc8_bit_1_10'
;sloc0                     Allocated with name '_crc8_sloc0_1_0'
;------------------------------------------------------------
	G$crc8$0$0 ==.
	C$crc_4b6b.c$6$0$0 ==.
;	crc_4b6b.c:6: char crc8( char *message, unsigned int nBytes ) {
;	-----------------------------------------
;	 function crc8
;	-----------------------------------------
_crc8:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_crc8_message_1_9
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$7$1$0 ==.
;	crc_4b6b.c:7: char remainder = 0;
	mov	dptr,#_crc8_remainder_1_10
	clr	a
	movx	@dptr,a
	C$crc_4b6b.c$11$2$11 ==.
;	crc_4b6b.c:11: for( byte = 0; byte < nBytes; ++byte ) {
	mov	dptr,#_crc8_message_1_9
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_crc8_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r1,#0x00
	mov	r2,#0x00
00109$:
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	subb	a,r4
	jnc	00105$
	C$crc_4b6b.c$12$1$10 ==.
;	crc_4b6b.c:12: remainder ^= message[byte];
	push	ar3
	push	ar4
	mov	a,r1
	add	a,r5
	mov	r0,a
	mov	a,r2
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_crc8_remainder_1_10
	movx	a,@dptr
	mov	r4,a
	mov	a,r0
	xrl	a,r4
	movx	@dptr,a
	C$crc_4b6b.c$13$1$10 ==.
;	crc_4b6b.c:13: for( bit = 8; bit > 0; --bit ) {
	mov	_crc8_sloc0_1_0,#0x08
	C$crc_4b6b.c$21$1$10 ==.
;	crc_4b6b.c:21: return(remainder);
	pop	ar4
	pop	ar3
	C$crc_4b6b.c$13$2$11 ==.
;	crc_4b6b.c:13: for( bit = 8; bit > 0; --bit ) {
00106$:
	C$crc_4b6b.c$14$3$12 ==.
;	crc_4b6b.c:14: if( remainder & 0x80 )
	mov	dptr,#_crc8_remainder_1_10
	movx	a,@dptr
	mov	r0,a
	jnb	acc.7,00102$
	C$crc_4b6b.c$15$1$10 ==.
;	crc_4b6b.c:15: remainder = (remainder << 1) ^ 0x9B;
	push	ar3
	push	ar4
	mov	a,r0
	add	a,r0
	mov	r4,a
	mov	dptr,#_crc8_remainder_1_10
	mov	a,#0x9B
	xrl	a,r4
	movx	@dptr,a
	pop	ar4
	pop	ar3
	sjmp	00107$
00102$:
	C$crc_4b6b.c$17$3$12 ==.
;	crc_4b6b.c:17: remainder = (remainder << 1);
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	dptr,#_crc8_remainder_1_10
	movx	@dptr,a
00107$:
	C$crc_4b6b.c$13$2$11 ==.
;	crc_4b6b.c:13: for( bit = 8; bit > 0; --bit ) {
	dec	_crc8_sloc0_1_0
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,_crc8_sloc0_1_0
	xrl	b,#0x80
	subb	a,b
	jc	00106$
	C$crc_4b6b.c$11$1$10 ==.
;	crc_4b6b.c:11: for( byte = 0; byte < nBytes; ++byte ) {
	inc	r1
	cjne	r1,#0x00,00109$
	inc	r2
	sjmp	00109$
00105$:
	C$crc_4b6b.c$21$1$10 ==.
;	crc_4b6b.c:21: return(remainder);
	mov	dptr,#_crc8_remainder_1_10
	movx	a,@dptr
	C$crc_4b6b.c$22$1$10 ==.
	XG$crc8$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'crc16Init'
;------------------------------------------------------------
;i                         Allocated with name '_crc16Init_i_1_14'
;j                         Allocated with name '_crc16Init_j_1_14'
;crc                       Allocated with name '_crc16Init_crc_1_14'
;c                         Allocated with name '_crc16Init_c_1_14'
;------------------------------------------------------------
	G$crc16Init$0$0 ==.
	C$crc_4b6b.c$24$1$10 ==.
;	crc_4b6b.c:24: void crc16Init( void ) {
;	-----------------------------------------
;	 function crc16Init
;	-----------------------------------------
_crc16Init:
	C$crc_4b6b.c$30$2$15 ==.
;	crc_4b6b.c:30: for( i = 0; i < 256; i++ ) {
	mov	r6,#0x00
	mov	r7,#0x00
00108$:
	C$crc_4b6b.c$31$2$15 ==.
;	crc_4b6b.c:31: crc = 0;
	mov	dptr,#_crc16Init_crc_1_14
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$32$2$15 ==.
;	crc_4b6b.c:32: c = ((unsigned short)i) << 8;
	mov	ar5,r6
	mov	r4,#0x00
	mov	dptr,#_crc16Init_c_1_14
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$33$1$14 ==.
;	crc_4b6b.c:33: for( j = 0; j < 8; j++ ) {
	mov	r4,#0x00
	mov	r5,#0x00
00106$:
	C$crc_4b6b.c$34$3$16 ==.
;	crc_4b6b.c:34: if( (crc^c) & 0x8000 ) crc = (crc << 1) ^ 0x1021;
	mov	dptr,#_crc16Init_c_1_14
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_crc16Init_crc_1_14
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	xrl	ar2,a
	mov	a,r1
	xrl	ar3,a
	mov	a,r3
	jnb	acc.7,00102$
	mov	ar2,r0
	mov	a,r1
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r3,a
	mov	dptr,#_crc16Init_crc_1_14
	mov	a,#0x21
	xrl	a,r2
	movx	@dptr,a
	mov	a,#0x10
	xrl	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00102$:
	C$crc_4b6b.c$35$3$16 ==.
;	crc_4b6b.c:35: else                    crc = crc << 1;
	mov	a,r1
	xch	a,r0
	add	a,acc
	xch	a,r0
	rlc	a
	mov	r1,a
	mov	dptr,#_crc16Init_crc_1_14
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
00103$:
	C$crc_4b6b.c$36$3$16 ==.
;	crc_4b6b.c:36: c = c << 1;
	mov	dptr,#_crc16Init_c_1_14
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r3,a
	mov	dptr,#_crc16Init_c_1_14
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$33$2$15 ==.
;	crc_4b6b.c:33: for( j = 0; j < 8; j++ ) {
	inc	r4
	cjne	r4,#0x00,00127$
	inc	r5
00127$:
	clr	c
	mov	a,r4
	subb	a,#0x08
	mov	a,r5
	subb	a,#0x00
	jc	00106$
	C$crc_4b6b.c$38$2$15 ==.
;	crc_4b6b.c:38: crc16Tab[i] = crc;
	mov	ar4,r6
	mov	a,r7
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_crc16Tab
	mov	r4,a
	mov	a,r5
	addc	a,#(_crc16Tab >> 8)
	mov	r5,a
	mov	dptr,#_crc16Init_crc_1_14
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$30$1$14 ==.
;	crc_4b6b.c:30: for( i = 0; i < 256; i++ ) {
	inc	r6
	cjne	r6,#0x00,00129$
	inc	r7
00129$:
	mov	a,#0x100 - 0x01
	add	a,r7
	jc	00130$
	ljmp	00108$
00130$:
	C$crc_4b6b.c$40$1$14 ==.
	XG$crc16Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'crc16'
;------------------------------------------------------------
;nBytes                    Allocated with name '_crc16_PARM_2'
;message                   Allocated with name '_crc16_message_1_17'
;i                         Allocated with name '_crc16_i_1_18'
;crc                       Allocated with name '_crc16_crc_1_18'
;short_c                   Allocated with name '_crc16_short_c_1_18'
;tmp                       Allocated with name '_crc16_tmp_1_18'
;sloc0                     Allocated with name '_crc16_sloc0_1_0'
;sloc1                     Allocated with name '_crc16_sloc1_1_0'
;------------------------------------------------------------
	G$crc16$0$0 ==.
	C$crc_4b6b.c$42$1$14 ==.
;	crc_4b6b.c:42: short crc16( char *message, unsigned int nBytes ) {
;	-----------------------------------------
;	 function crc16
;	-----------------------------------------
_crc16:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_crc16_message_1_17
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$48$1$18 ==.
;	crc_4b6b.c:48: crc = 0xffff;
	mov	dptr,#_crc16_crc_1_18
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$49$2$19 ==.
;	crc_4b6b.c:49: for( i = 0; i < nBytes; i++ ) {
	mov	dptr,#_crc16_message_1_17
	movx	a,@dptr
	mov	_crc16_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_crc16_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_crc16_sloc1_1_0 + 2),a
	mov	dptr,#_crc16_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r1,#0x00
	mov	r2,#0x00
00103$:
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	subb	a,r4
	jnc	00101$
	C$crc_4b6b.c$50$1$18 ==.
;	crc_4b6b.c:50: short_c = 0x00ff & (unsigned short)message[i];
	push	ar3
	push	ar4
	mov	a,r1
	add	a,_crc16_sloc1_1_0
	mov	r0,a
	mov	a,r2
	addc	a,(_crc16_sloc1_1_0 + 1)
	mov	r3,a
	mov	r4,(_crc16_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	_crc16_sloc0_1_0,r0
	mov	(_crc16_sloc0_1_0 + 1),#0x00
	C$crc_4b6b.c$51$2$19 ==.
;	crc_4b6b.c:51: tmp = (crc >> 8) ^ short_c;
	mov	dptr,#_crc16_crc_1_18
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	r7,#0x00
	mov	a,_crc16_sloc0_1_0
	xrl	ar0,a
	mov	a,(_crc16_sloc0_1_0 + 1)
	xrl	ar7,a
	C$crc_4b6b.c$52$2$19 ==.
;	crc_4b6b.c:52: crc = (crc << 8) ^ crc16Tab[tmp];
	mov	ar4,r3
	mov	r3,#0x00
	mov	a,r7
	xch	a,r0
	add	a,acc
	xch	a,r0
	rlc	a
	mov	r7,a
	mov	a,r0
	add	a,#_crc16Tab
	mov	dpl,a
	mov	a,r7
	addc	a,#(_crc16Tab >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_crc16_crc_1_18
	mov	a,r6
	xrl	a,r3
	movx	@dptr,a
	mov	a,r7
	xrl	a,r4
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$49$1$18 ==.
;	crc_4b6b.c:49: for( i = 0; i < nBytes; i++ ) {
	inc	r1
	cjne	r1,#0x00,00115$
	inc	r2
00115$:
	pop	ar4
	pop	ar3
	sjmp	00103$
00101$:
	C$crc_4b6b.c$55$1$18 ==.
;	crc_4b6b.c:55: return(crc);
	mov	dptr,#_crc16_crc_1_18
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	C$crc_4b6b.c$56$1$18 ==.
	XG$crc16$0$0 ==.
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get4b6bsymbol'
;------------------------------------------------------------
;inSymbol                  Allocated with name '_get4b6bsymbol_inSymbol_1_20'
;------------------------------------------------------------
	G$get4b6bsymbol$0$0 ==.
	C$crc_4b6b.c$58$1$18 ==.
;	crc_4b6b.c:58: char get4b6bsymbol( char inSymbol ) {
;	-----------------------------------------
;	 function get4b6bsymbol
;	-----------------------------------------
_get4b6bsymbol:
	mov	a,dpl
	mov	dptr,#_get4b6bsymbol_inSymbol_1_20
	movx	@dptr,a
	C$crc_4b6b.c$59$1$21 ==.
;	crc_4b6b.c:59: switch( inSymbol ) {
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00127$
	ljmp	00117$
00127$:
	clr	c
	mov	a,#(0x0F ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00128$
	ljmp	00117$
00128$:
	mov	a,r7
	add	a,#(00129$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00130$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00129$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
00130$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
	C$crc_4b6b.c$60$2$22 ==.
;	crc_4b6b.c:60: case 0x00: return 0x15;
00101$:
	mov	dpl,#0x15
	C$crc_4b6b.c$61$2$22 ==.
;	crc_4b6b.c:61: case 0x01: return 0x31;
	sjmp	00119$
00102$:
	mov	dpl,#0x31
	C$crc_4b6b.c$62$2$22 ==.
;	crc_4b6b.c:62: case 0x02: return 0x32;
	sjmp	00119$
00103$:
	mov	dpl,#0x32
	C$crc_4b6b.c$63$2$22 ==.
;	crc_4b6b.c:63: case 0x03: return 0x23;
	sjmp	00119$
00104$:
	mov	dpl,#0x23
	C$crc_4b6b.c$64$2$22 ==.
;	crc_4b6b.c:64: case 0x04: return 0x34;
	sjmp	00119$
00105$:
	mov	dpl,#0x34
	C$crc_4b6b.c$65$2$22 ==.
;	crc_4b6b.c:65: case 0x05: return 0x25;
	sjmp	00119$
00106$:
	mov	dpl,#0x25
	C$crc_4b6b.c$66$2$22 ==.
;	crc_4b6b.c:66: case 0x06: return 0x26;
	sjmp	00119$
00107$:
	mov	dpl,#0x26
	C$crc_4b6b.c$67$2$22 ==.
;	crc_4b6b.c:67: case 0x07: return 0x16;
	sjmp	00119$
00108$:
	mov	dpl,#0x16
	C$crc_4b6b.c$68$2$22 ==.
;	crc_4b6b.c:68: case 0x08: return 0x1A;
	sjmp	00119$
00109$:
	mov	dpl,#0x1A
	C$crc_4b6b.c$69$2$22 ==.
;	crc_4b6b.c:69: case 0x09: return 0x19;
	sjmp	00119$
00110$:
	mov	dpl,#0x19
	C$crc_4b6b.c$70$2$22 ==.
;	crc_4b6b.c:70: case 0x0A: return 0x2A;
	sjmp	00119$
00111$:
	mov	dpl,#0x2A
	C$crc_4b6b.c$71$2$22 ==.
;	crc_4b6b.c:71: case 0x0B: return 0x0B;
	sjmp	00119$
00112$:
	mov	dpl,#0x0B
	C$crc_4b6b.c$72$2$22 ==.
;	crc_4b6b.c:72: case 0x0C: return 0x2C;
	sjmp	00119$
00113$:
	mov	dpl,#0x2C
	C$crc_4b6b.c$73$2$22 ==.
;	crc_4b6b.c:73: case 0x0D: return 0x0D;
	sjmp	00119$
00114$:
	mov	dpl,#0x0D
	C$crc_4b6b.c$74$2$22 ==.
;	crc_4b6b.c:74: case 0x0E: return 0x0E;
	sjmp	00119$
00115$:
	mov	dpl,#0x0E
	C$crc_4b6b.c$75$2$22 ==.
;	crc_4b6b.c:75: case 0x0F: return 0x1C;
	sjmp	00119$
00116$:
	mov	dpl,#0x1C
	C$crc_4b6b.c$76$2$22 ==.
;	crc_4b6b.c:76: default:   return 0x00;
	sjmp	00119$
00117$:
	mov	dpl,#0x00
	C$crc_4b6b.c$77$1$21 ==.
;	crc_4b6b.c:77: }
00119$:
	C$crc_4b6b.c$78$1$21 ==.
	XG$get4b6bsymbol$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'decode4b6bsymbol'
;------------------------------------------------------------
;outSymbol                 Allocated with name '_decode4b6bsymbol_PARM_2'
;inSymbol                  Allocated with name '_decode4b6bsymbol_inSymbol_1_23'
;------------------------------------------------------------
	G$decode4b6bsymbol$0$0 ==.
	C$crc_4b6b.c$80$1$21 ==.
;	crc_4b6b.c:80: char decode4b6bsymbol( char inSymbol, char *outSymbol ) {
;	-----------------------------------------
;	 function decode4b6bsymbol
;	-----------------------------------------
_decode4b6bsymbol:
	mov	a,dpl
	mov	dptr,#_decode4b6bsymbol_inSymbol_1_23
	movx	@dptr,a
	C$crc_4b6b.c$81$1$24 ==.
;	crc_4b6b.c:81: switch( inSymbol ) {
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0B,00169$
	ljmp	00112$
00169$:
	cjne	r7,#0x0D,00170$
	ljmp	00114$
00170$:
	cjne	r7,#0x0E,00171$
	ljmp	00115$
00171$:
	cjne	r7,#0x15,00172$
	sjmp	00101$
00172$:
	cjne	r7,#0x16,00173$
	ljmp	00108$
00173$:
	cjne	r7,#0x19,00174$
	ljmp	00110$
00174$:
	cjne	r7,#0x1A,00175$
	ljmp	00109$
00175$:
	cjne	r7,#0x1C,00176$
	ljmp	00116$
00176$:
	cjne	r7,#0x23,00177$
	ljmp	00104$
00177$:
	cjne	r7,#0x25,00178$
	ljmp	00106$
00178$:
	cjne	r7,#0x26,00179$
	ljmp	00107$
00179$:
	cjne	r7,#0x2A,00180$
	ljmp	00111$
00180$:
	cjne	r7,#0x2C,00181$
	ljmp	00113$
00181$:
	cjne	r7,#0x31,00182$
	sjmp	00102$
00182$:
	cjne	r7,#0x32,00183$
	sjmp	00103$
00183$:
	cjne	r7,#0x34,00184$
	sjmp	00105$
00184$:
	ljmp	00117$
	C$crc_4b6b.c$82$2$25 ==.
;	crc_4b6b.c:82: case 0x15: {*outSymbol = 0x00; return(0); }
00101$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	mov	dpl,#0x00
	ljmp	00119$
	C$crc_4b6b.c$83$2$25 ==.
;	crc_4b6b.c:83: case 0x31: {*outSymbol = 0x01; return(0); }
00102$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x00
	ljmp	00119$
	C$crc_4b6b.c$84$2$25 ==.
;	crc_4b6b.c:84: case 0x32: {*outSymbol = 0x02; return(0); }
00103$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x00
	ljmp	00119$
	C$crc_4b6b.c$85$2$25 ==.
;	crc_4b6b.c:85: case 0x23: {*outSymbol = 0x03; return(0); }
00104$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
	mov	dpl,#0x00
	ljmp	00119$
	C$crc_4b6b.c$86$2$25 ==.
;	crc_4b6b.c:86: case 0x34: {*outSymbol = 0x04; return(0); }
00105$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x04
	lcall	__gptrput
	mov	dpl,#0x00
	ljmp	00119$
	C$crc_4b6b.c$87$2$25 ==.
;	crc_4b6b.c:87: case 0x25: {*outSymbol = 0x05; return(0); }
00106$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x05
	lcall	__gptrput
	mov	dpl,#0x00
	ljmp	00119$
	C$crc_4b6b.c$88$2$25 ==.
;	crc_4b6b.c:88: case 0x26: {*outSymbol = 0x06; return(0); }
00107$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x06
	lcall	__gptrput
	mov	dpl,#0x00
	ljmp	00119$
	C$crc_4b6b.c$89$2$25 ==.
;	crc_4b6b.c:89: case 0x16: {*outSymbol = 0x07; return(0); }
00108$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x07
	lcall	__gptrput
	mov	dpl,#0x00
	ljmp	00119$
	C$crc_4b6b.c$90$2$25 ==.
;	crc_4b6b.c:90: case 0x1A: {*outSymbol = 0x08; return(0); }
00109$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x08
	lcall	__gptrput
	mov	dpl,#0x00
	ljmp	00119$
	C$crc_4b6b.c$91$2$25 ==.
;	crc_4b6b.c:91: case 0x19: {*outSymbol = 0x09; return(0); }
00110$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x09
	lcall	__gptrput
	mov	dpl,#0x00
	ljmp	00119$
	C$crc_4b6b.c$92$2$25 ==.
;	crc_4b6b.c:92: case 0x2A: {*outSymbol = 0x0A; return(0); }
00111$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0A
	lcall	__gptrput
	mov	dpl,#0x00
	ljmp	00119$
	C$crc_4b6b.c$93$2$25 ==.
;	crc_4b6b.c:93: case 0x0B: {*outSymbol = 0x0B; return(0); }
00112$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0B
	lcall	__gptrput
	mov	dpl,#0x00
	ljmp	00119$
	C$crc_4b6b.c$94$2$25 ==.
;	crc_4b6b.c:94: case 0x2C: {*outSymbol = 0x0C; return(0); }
00113$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0C
	lcall	__gptrput
	mov	dpl,#0x00
	C$crc_4b6b.c$95$2$25 ==.
;	crc_4b6b.c:95: case 0x0D: {*outSymbol = 0x0D; return(0); }
	sjmp	00119$
00114$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0D
	lcall	__gptrput
	mov	dpl,#0x00
	C$crc_4b6b.c$96$2$25 ==.
;	crc_4b6b.c:96: case 0x0E: {*outSymbol = 0x0E; return(0); }
	sjmp	00119$
00115$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0E
	lcall	__gptrput
	mov	dpl,#0x00
	C$crc_4b6b.c$97$2$25 ==.
;	crc_4b6b.c:97: case 0x1C: {*outSymbol = 0x0F; return(0); }
	sjmp	00119$
00116$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0F
	lcall	__gptrput
	mov	dpl,#0x00
	C$crc_4b6b.c$98$2$25 ==.
;	crc_4b6b.c:98: default:   {*outSymbol = 0x00; return(1); }
	sjmp	00119$
00117$:
	mov	dptr,#_decode4b6bsymbol_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	mov	dpl,#0x01
	C$crc_4b6b.c$99$1$24 ==.
;	crc_4b6b.c:99: }
00119$:
	C$crc_4b6b.c$100$1$24 ==.
	XG$decode4b6bsymbol$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'encode4b6b'
;------------------------------------------------------------
;sloc0                     Allocated with name '_encode4b6b_sloc0_1_0'
;sloc1                     Allocated with name '_encode4b6b_sloc1_1_0'
;sloc2                     Allocated with name '_encode4b6b_sloc2_1_0'
;sloc3                     Allocated with name '_encode4b6b_sloc3_1_0'
;sloc4                     Allocated with name '_encode4b6b_sloc4_1_0'
;sloc5                     Allocated with name '_encode4b6b_sloc5_1_0'
;sloc6                     Allocated with name '_encode4b6b_sloc6_1_0'
;bytesIn                   Allocated with name '_encode4b6b_PARM_2'
;messageOut                Allocated with name '_encode4b6b_PARM_3'
;bytesOut                  Allocated with name '_encode4b6b_PARM_4'
;messageIn                 Allocated with name '_encode4b6b_messageIn_1_43'
;i                         Allocated with name '_encode4b6b_i_1_44'
;j                         Allocated with name '_encode4b6b_j_1_44'
;intBuffer                 Allocated with name '_encode4b6b_intBuffer_1_44'
;mask                      Allocated with name '_encode4b6b_mask_1_44'
;intBitsAvailable          Allocated with name '_encode4b6b_intBitsAvailable_1_44'
;symbol                    Allocated with name '_encode4b6b_symbol_1_44'
;------------------------------------------------------------
	G$encode4b6b$0$0 ==.
	C$crc_4b6b.c$102$1$24 ==.
;	crc_4b6b.c:102: void encode4b6b( char *messageIn, unsigned int bytesIn, char *messageOut, unsigned int *bytesOut ) {
;	-----------------------------------------
;	 function encode4b6b
;	-----------------------------------------
_encode4b6b:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_encode4b6b_messageIn_1_43
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$110$1$44 ==.
;	crc_4b6b.c:110: *bytesOut = 0;
	mov	dptr,#_encode4b6b_PARM_4
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	C$crc_4b6b.c$111$1$44 ==.
;	crc_4b6b.c:111: intBitsAvailable = 0;
	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$112$1$44 ==.
;	crc_4b6b.c:112: intBuffer = 0;
	mov	dptr,#_encode4b6b_intBuffer_1_44
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$114$3$47 ==.
;	crc_4b6b.c:114: for( i = 0; i < bytesIn * 2; i++ ) {
	mov	dptr,#_encode4b6b_messageIn_1_43
	movx	a,@dptr
	mov	_encode4b6b_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_encode4b6b_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_encode4b6b_sloc4_1_0 + 2),a
	mov	_encode4b6b_sloc0_1_0,_encode4b6b_sloc4_1_0
	mov	(_encode4b6b_sloc0_1_0 + 1),(_encode4b6b_sloc4_1_0 + 1)
	mov	(_encode4b6b_sloc0_1_0 + 2),(_encode4b6b_sloc4_1_0 + 2)
	mov	dptr,#_encode4b6b_PARM_3
	movx	a,@dptr
	mov	_encode4b6b_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_encode4b6b_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_encode4b6b_sloc1_1_0 + 2),a
	mov	dptr,#_encode4b6b_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	_encode4b6b_sloc5_1_0,r0
	xch	a,_encode4b6b_sloc5_1_0
	add	a,acc
	xch	a,_encode4b6b_sloc5_1_0
	rlc	a
	mov	(_encode4b6b_sloc5_1_0 + 1),a
	clr	a
	mov	_encode4b6b_sloc2_1_0,a
	mov	(_encode4b6b_sloc2_1_0 + 1),a
00110$:
	clr	c
	mov	a,_encode4b6b_sloc2_1_0
	subb	a,_encode4b6b_sloc5_1_0
	mov	a,(_encode4b6b_sloc2_1_0 + 1)
	subb	a,(_encode4b6b_sloc5_1_0 + 1)
	jc	00130$
	ljmp	00106$
00130$:
	C$crc_4b6b.c$115$1$44 ==.
;	crc_4b6b.c:115: j = i >> 1;
	mov	_encode4b6b_sloc3_1_0,_encode4b6b_sloc2_1_0
	mov	a,(_encode4b6b_sloc2_1_0 + 1)
	clr	c
	rrc	a
	xch	a,_encode4b6b_sloc3_1_0
	rrc	a
	xch	a,_encode4b6b_sloc3_1_0
	C$crc_4b6b.c$116$2$45 ==.
;	crc_4b6b.c:116: if( j * 2 == i ) {
	mov	(_encode4b6b_sloc3_1_0 + 1),a
	mov	r0,_encode4b6b_sloc3_1_0
	xch	a,r0
	add	a,acc
	xch	a,r0
	rlc	a
	mov	r1,a
	mov	a,r0
	cjne	a,_encode4b6b_sloc2_1_0,00102$
	mov	a,r1
	cjne	a,(_encode4b6b_sloc2_1_0 + 1),00102$
	C$crc_4b6b.c$117$1$44 ==.
;	crc_4b6b.c:117: symbol = (messageIn[j] >> 4) & 0x0F;
	mov	a,_encode4b6b_sloc3_1_0
	add	a,_encode4b6b_sloc0_1_0
	mov	r0,a
	mov	a,(_encode4b6b_sloc3_1_0 + 1)
	addc	a,(_encode4b6b_sloc0_1_0 + 1)
	mov	r1,a
	mov	r4,(_encode4b6b_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	swap	a
	anl	a,#0x0F
	jnb	acc.3,00133$
	orl	a,#0xF0
00133$:
	mov	r0,a
	mov	dptr,#_encode4b6b_symbol_1_44
	mov	a,#0x0F
	anl	a,r0
	movx	@dptr,a
	sjmp	00103$
00102$:
	C$crc_4b6b.c$119$3$47 ==.
;	crc_4b6b.c:119: symbol = messageIn[j] & 0x0F;
	mov	a,_encode4b6b_sloc3_1_0
	add	a,_encode4b6b_sloc4_1_0
	mov	r2,a
	mov	a,(_encode4b6b_sloc3_1_0 + 1)
	addc	a,(_encode4b6b_sloc4_1_0 + 1)
	mov	r3,a
	mov	r4,(_encode4b6b_sloc4_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_encode4b6b_symbol_1_44
	mov	a,#0x0F
	anl	a,r2
	movx	@dptr,a
00103$:
	C$crc_4b6b.c$121$1$44 ==.
;	crc_4b6b.c:121: symbol = get4b6bsymbol( symbol );
	mov	dptr,#_encode4b6b_symbol_1_44
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_get4b6bsymbol
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	C$crc_4b6b.c$122$2$45 ==.
;	crc_4b6b.c:122: intBuffer = (intBuffer << 6) & 0xFFC0;
	mov	dptr,#_encode4b6b_intBuffer_1_44
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	dptr,#_encode4b6b_intBuffer_1_44
	mov	a,#0xC0
	anl	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$123$2$45 ==.
;	crc_4b6b.c:123: intBuffer = intBuffer | symbol;
	mov	dptr,#_encode4b6b_intBuffer_1_44
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	dptr,#_encode4b6b_intBuffer_1_44
	mov	a,r1
	orl	a,r2
	movx	@dptr,a
	mov	a,r4
	orl	a,r3
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$124$2$45 ==.
;	crc_4b6b.c:124: intBitsAvailable += 6;
	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
	mov	a,#0x06
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$125$2$45 ==.
;	crc_4b6b.c:125: if( intBitsAvailable >= 8 ) {
	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
	movx	a,@dptr
	mov	_encode4b6b_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_encode4b6b_sloc3_1_0 + 1),a
	clr	c
	mov	a,_encode4b6b_sloc3_1_0
	subb	a,#0x08
	mov	a,(_encode4b6b_sloc3_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00134$
	ljmp	00111$
00134$:
	C$crc_4b6b.c$126$3$48 ==.
;	crc_4b6b.c:126: symbol = intBuffer >> (intBitsAvailable - 8);
	mov	a,_encode4b6b_sloc3_1_0
	add	a,#0xF8
	mov	r3,a
	mov	a,(_encode4b6b_sloc3_1_0 + 1)
	addc	a,#0xFF
	mov	r4,a
	mov	dptr,#_encode4b6b_intBuffer_1_44
	movx	a,@dptr
	mov	_encode4b6b_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_encode4b6b_sloc3_1_0 + 1),a
	mov	b,r3
	inc	b
	mov	r0,_encode4b6b_sloc3_1_0
	mov	a,(_encode4b6b_sloc3_1_0 + 1)
	mov	r2,a
	rlc	a
	mov	ov,c
	sjmp	00136$
00135$:
	mov	c,ov
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r0
	rrc	a
	mov	r0,a
00136$:
	djnz	b,00135$
	mov	_encode4b6b_sloc6_1_0,r0
	C$crc_4b6b.c$127$3$48 ==.
;	crc_4b6b.c:127: messageOut[*bytesOut] = symbol;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,r1
	add	a,_encode4b6b_sloc1_1_0
	mov	r1,a
	mov	a,r2
	addc	a,(_encode4b6b_sloc1_1_0 + 1)
	mov	r0,a
	mov	r2,(_encode4b6b_sloc1_1_0 + 2)
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
	mov	a,_encode4b6b_sloc6_1_0
	lcall	__gptrput
	C$crc_4b6b.c$128$3$48 ==.
;	crc_4b6b.c:128: (*bytesOut)++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	r1
	cjne	r1,#0x00,00137$
	inc	r2
00137$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	C$crc_4b6b.c$129$3$48 ==.
;	crc_4b6b.c:129: intBitsAvailable -= 8;
	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$130$3$48 ==.
;	crc_4b6b.c:130: mask = (1 << intBitsAvailable) - 1;
	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	b,r3
	inc	b
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00139$
00138$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00139$:
	djnz	b,00138$
	dec	r3
	cjne	r3,#0xFF,00140$
	dec	r4
00140$:
	C$crc_4b6b.c$131$3$48 ==.
;	crc_4b6b.c:131: intBuffer = intBuffer & mask;
	mov	dptr,#_encode4b6b_intBuffer_1_44
	mov	a,r3
	anl	a,_encode4b6b_sloc3_1_0
	movx	@dptr,a
	mov	a,r4
	anl	a,(_encode4b6b_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
00111$:
	C$crc_4b6b.c$114$1$44 ==.
;	crc_4b6b.c:114: for( i = 0; i < bytesIn * 2; i++ ) {
	inc	_encode4b6b_sloc2_1_0
	clr	a
	cjne	a,_encode4b6b_sloc2_1_0,00141$
	inc	(_encode4b6b_sloc2_1_0 + 1)
00141$:
	ljmp	00110$
00106$:
	C$crc_4b6b.c$135$1$44 ==.
;	crc_4b6b.c:135: if( intBitsAvailable != 0 ) {
	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	orl	a,r3
	jnz	00142$
	ljmp	00112$
00142$:
	C$crc_4b6b.c$136$2$49 ==.
;	crc_4b6b.c:136: mask = (1 << intBitsAvailable) - 1;
	mov	b,r3
	inc	b
	mov	r1,#0x01
	mov	r2,#0x00
	sjmp	00144$
00143$:
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
00144$:
	djnz	b,00143$
	mov	a,r1
	add	a,#0xFF
	mov	_encode4b6b_sloc5_1_0,a
	mov	a,r2
	addc	a,#0xFF
	mov	(_encode4b6b_sloc5_1_0 + 1),a
	C$crc_4b6b.c$137$2$49 ==.
;	crc_4b6b.c:137: intBuffer = intBuffer & mask;
	mov	dptr,#_encode4b6b_intBuffer_1_44
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_encode4b6b_intBuffer_1_44
	mov	a,_encode4b6b_sloc5_1_0
	anl	a,r0
	movx	@dptr,a
	mov	a,(_encode4b6b_sloc5_1_0 + 1)
	anl	a,r2
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$138$2$49 ==.
;	crc_4b6b.c:138: intBuffer = intBuffer << (8 - intBitsAvailable);
	mov	a,#0x08
	clr	c
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	dptr,#_encode4b6b_intBuffer_1_44
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	b,r3
	inc	b
	mov	r3,ar1
	mov	r4,ar2
	sjmp	00146$
00145$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00146$:
	djnz	b,00145$
	mov	dptr,#_encode4b6b_intBuffer_1_44
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$139$2$49 ==.
;	crc_4b6b.c:139: symbol = intBuffer & 0x00FF;
	mov	dptr,#_encode4b6b_intBuffer_1_44
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	C$crc_4b6b.c$140$2$49 ==.
;	crc_4b6b.c:140: messageOut[*bytesOut] = symbol;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	add	a,_encode4b6b_sloc1_1_0
	mov	r2,a
	mov	a,r4
	addc	a,(_encode4b6b_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_encode4b6b_sloc1_1_0 + 2)
	mov	dpl,r2
	mov	dph,r1
	mov	b,r4
	mov	a,r3
	lcall	__gptrput
	C$crc_4b6b.c$141$2$49 ==.
;	crc_4b6b.c:141: (*bytesOut)++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00147$
	inc	r4
00147$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00112$:
	C$crc_4b6b.c$143$1$44 ==.
	XG$encode4b6b$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'decode4b6b'
;------------------------------------------------------------
;sloc0                     Allocated with name '_decode4b6b_sloc0_1_0'
;sloc1                     Allocated with name '_decode4b6b_sloc1_1_0'
;sloc2                     Allocated with name '_decode4b6b_sloc2_1_0'
;sloc3                     Allocated with name '_decode4b6b_sloc3_1_0'
;sloc4                     Allocated with name '_decode4b6b_sloc4_1_0'
;bytesIn                   Allocated with name '_decode4b6b_PARM_2'
;messageOut                Allocated with name '_decode4b6b_PARM_3'
;bytesOut                  Allocated with name '_decode4b6b_PARM_4'
;messageIn                 Allocated with name '_decode4b6b_messageIn_1_50'
;i                         Allocated with name '_decode4b6b_i_1_51'
;intBuffer                 Allocated with name '_decode4b6b_intBuffer_1_51'
;intBitsAvailable          Allocated with name '_decode4b6b_intBitsAvailable_1_51'
;symbol                    Allocated with name '_decode4b6b_symbol_1_51'
;recByte                   Allocated with name '_decode4b6b_recByte_1_51'
;nibbleFlag                Allocated with name '_decode4b6b_nibbleFlag_1_51'
;outBytes                  Allocated with name '_decode4b6b_outBytes_1_51'
;------------------------------------------------------------
	G$decode4b6b$0$0 ==.
	C$crc_4b6b.c$145$1$44 ==.
;	crc_4b6b.c:145: void decode4b6b( char *messageIn, unsigned int bytesIn, char *messageOut, unsigned int *bytesOut ) {
;	-----------------------------------------
;	 function decode4b6b
;	-----------------------------------------
_decode4b6b:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_decode4b6b_messageIn_1_50
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$147$1$44 ==.
;	crc_4b6b.c:147: int intBuffer = 0;
	mov	dptr,#_decode4b6b_intBuffer_1_51
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$149$1$44 ==.
;	crc_4b6b.c:149: char symbol = 0;
	mov	dptr,#_decode4b6b_symbol_1_51
	movx	@dptr,a
	C$crc_4b6b.c$150$1$44 ==.
;	crc_4b6b.c:150: char recByte = 0;
	mov	dptr,#_decode4b6b_recByte_1_51
	movx	@dptr,a
	C$crc_4b6b.c$154$1$51 ==.
;	crc_4b6b.c:154: intBitsAvailable = 0;
	mov	dptr,#_decode4b6b_intBitsAvailable_1_51
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$155$1$51 ==.
;	crc_4b6b.c:155: nibbleFlag = 0;
	mov	dptr,#_decode4b6b_nibbleFlag_1_51
	movx	@dptr,a
	C$crc_4b6b.c$156$1$51 ==.
;	crc_4b6b.c:156: outBytes = 0;
	mov	dptr,#_decode4b6b_outBytes_1_51
	movx	@dptr,a
	C$crc_4b6b.c$157$2$52 ==.
;	crc_4b6b.c:157: for( i = 0; i < bytesIn; i++ ) {
	mov	dptr,#_decode4b6b_messageIn_1_50
	movx	a,@dptr
	mov	_decode4b6b_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_decode4b6b_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_decode4b6b_sloc1_1_0 + 2),a
	mov	dptr,#_decode4b6b_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_decode4b6b_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	a
	mov	_decode4b6b_sloc0_1_0,a
	mov	(_decode4b6b_sloc0_1_0 + 1),a
00108$:
	clr	c
	mov	a,_decode4b6b_sloc0_1_0
	subb	a,r0
	mov	a,(_decode4b6b_sloc0_1_0 + 1)
	subb	a,r1
	jc	00129$
	ljmp	00106$
00129$:
	C$crc_4b6b.c$158$1$51 ==.
;	crc_4b6b.c:158: intBuffer = intBuffer << 8;
	push	ar0
	push	ar1
	mov	dptr,#_decode4b6b_intBuffer_1_51
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	ar1,r0
	mov	r0,#0x00
	mov	dptr,#_decode4b6b_intBuffer_1_51
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$159$2$52 ==.
;	crc_4b6b.c:159: intBuffer |= messageIn[i];
	mov	a,_decode4b6b_sloc0_1_0
	add	a,_decode4b6b_sloc1_1_0
	mov	r0,a
	mov	a,(_decode4b6b_sloc0_1_0 + 1)
	addc	a,(_decode4b6b_sloc1_1_0 + 1)
	mov	r1,a
	mov	r7,(_decode4b6b_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_decode4b6b_intBuffer_1_51
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r0
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#_decode4b6b_intBuffer_1_51
	mov	a,r0
	orl	a,r6
	movx	@dptr,a
	mov	a,r5
	orl	a,r7
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$160$2$52 ==.
;	crc_4b6b.c:160: intBitsAvailable += 8;
	mov	dptr,#_decode4b6b_intBitsAvailable_1_51
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_decode4b6b_intBitsAvailable_1_51
	mov	a,#0x08
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$162$3$53 ==.
;	crc_4b6b.c:162: while( intBitsAvailable >= 6 ) {
	mov	dptr,#_decode4b6b_intBuffer_1_51
	movx	a,@dptr
	mov	_decode4b6b_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_decode4b6b_sloc2_1_0 + 1),a
	mov	dptr,#_decode4b6b_outBytes_1_51
	movx	a,@dptr
	mov	_decode4b6b_sloc3_1_0,a
	mov	dptr,#_decode4b6b_intBitsAvailable_1_51
	movx	a,@dptr
	mov	_decode4b6b_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_decode4b6b_sloc4_1_0 + 1),a
	C$crc_4b6b.c$178$1$51 ==.
;	crc_4b6b.c:178: *bytesOut = outBytes;
	pop	ar1
	pop	ar0
	C$crc_4b6b.c$162$2$52 ==.
;	crc_4b6b.c:162: while( intBitsAvailable >= 6 ) {
00103$:
	clr	c
	mov	a,_decode4b6b_sloc4_1_0
	subb	a,#0x06
	mov	a,(_decode4b6b_sloc4_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00130$
	ljmp	00117$
00130$:
	C$crc_4b6b.c$163$3$53 ==.
;	crc_4b6b.c:163: symbol = intBuffer >> (intBitsAvailable - 6);
	mov	a,_decode4b6b_sloc4_1_0
	add	a,#0xFA
	mov	r6,a
	mov	a,(_decode4b6b_sloc4_1_0 + 1)
	addc	a,#0xFF
	mov	b,r6
	inc	b
	mov	r6,_decode4b6b_sloc2_1_0
	mov	a,(_decode4b6b_sloc2_1_0 + 1)
	mov	r7,a
	rlc	a
	mov	ov,c
	sjmp	00132$
00131$:
	mov	c,ov
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
00132$:
	djnz	b,00131$
	mov	dptr,#_decode4b6b_symbol_1_51
	mov	a,r6
	movx	@dptr,a
	C$crc_4b6b.c$164$3$53 ==.
;	crc_4b6b.c:164: symbol &= 0x3F;
	anl	ar6,#0x3F
	mov	dptr,#_decode4b6b_symbol_1_51
	mov	a,r6
	movx	@dptr,a
	C$crc_4b6b.c$165$3$53 ==.
;	crc_4b6b.c:165: decode4b6bsymbol( symbol, &symbol );
	mov	dptr,#_decode4b6bsymbol_PARM_2
	mov	a,#_decode4b6b_symbol_1_51
	movx	@dptr,a
	mov	a,#(_decode4b6b_symbol_1_51 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_decode4b6bsymbol
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	C$crc_4b6b.c$166$3$53 ==.
;	crc_4b6b.c:166: recByte = recByte << 4;
	mov	dptr,#_decode4b6b_recByte_1_51
	movx	a,@dptr
	swap	a
	anl	a,#0xF0
	movx	@dptr,a
	C$crc_4b6b.c$167$3$53 ==.
;	crc_4b6b.c:167: recByte &= 0xF0;
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xF0
	anl	a,r7
	movx	@dptr,a
	C$crc_4b6b.c$168$3$53 ==.
;	crc_4b6b.c:168: recByte |= symbol;
	mov	dptr,#_decode4b6b_symbol_1_51
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_decode4b6b_recByte_1_51
	movx	a,@dptr
	mov	r6,a
	orl	a,r7
	movx	@dptr,a
	C$crc_4b6b.c$169$3$53 ==.
;	crc_4b6b.c:169: nibbleFlag ^= 1;
	mov	dptr,#_decode4b6b_nibbleFlag_1_51
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	xrl	a,r7
	movx	@dptr,a
	C$crc_4b6b.c$170$3$53 ==.
;	crc_4b6b.c:170: if( nibbleFlag == 0 ) {
	movx	a,@dptr
	mov	r7,a
	jnz	00102$
	C$crc_4b6b.c$171$1$51 ==.
;	crc_4b6b.c:171: messageOut[outBytes] = recByte;
	push	ar0
	push	ar1
	mov	a,_decode4b6b_sloc3_1_0
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dptr,#_decode4b6b_recByte_1_51
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	C$crc_4b6b.c$172$4$54 ==.
;	crc_4b6b.c:172: outBytes++;
	inc	_decode4b6b_sloc3_1_0
	C$crc_4b6b.c$178$1$51 ==.
;	crc_4b6b.c:178: *bytesOut = outBytes;
	pop	ar1
	pop	ar0
	C$crc_4b6b.c$172$3$53 ==.
;	crc_4b6b.c:172: outBytes++;
00102$:
	C$crc_4b6b.c$174$3$53 ==.
;	crc_4b6b.c:174: intBitsAvailable -= 6;
	mov	a,_decode4b6b_sloc4_1_0
	add	a,#0xFA
	mov	_decode4b6b_sloc4_1_0,a
	mov	a,(_decode4b6b_sloc4_1_0 + 1)
	addc	a,#0xFF
	mov	(_decode4b6b_sloc4_1_0 + 1),a
	ljmp	00103$
00117$:
	mov	dptr,#_decode4b6b_outBytes_1_51
	mov	a,_decode4b6b_sloc3_1_0
	movx	@dptr,a
	mov	dptr,#_decode4b6b_intBitsAvailable_1_51
	mov	a,_decode4b6b_sloc4_1_0
	movx	@dptr,a
	mov	a,(_decode4b6b_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$157$1$51 ==.
;	crc_4b6b.c:157: for( i = 0; i < bytesIn; i++ ) {
	inc	_decode4b6b_sloc0_1_0
	clr	a
	cjne	a,_decode4b6b_sloc0_1_0,00134$
	inc	(_decode4b6b_sloc0_1_0 + 1)
00134$:
	ljmp	00108$
00106$:
	C$crc_4b6b.c$178$1$51 ==.
;	crc_4b6b.c:178: *bytesOut = outBytes;
	mov	dptr,#_decode4b6b_PARM_4
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_decode4b6b_outBytes_1_51
	movx	a,@dptr
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	C$crc_4b6b.c$179$1$51 ==.
	XG$decode4b6b$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sleep'
;------------------------------------------------------------
;time                      Allocated with name '_sleep_time_1_55'
;i                         Allocated with name '_sleep_i_1_56'
;j                         Allocated with name '_sleep_j_1_56'
;------------------------------------------------------------
	G$sleep$0$0 ==.
	C$crc_4b6b.c$181$1$51 ==.
;	crc_4b6b.c:181: void sleep( int time ) {
;	-----------------------------------------
;	 function sleep
;	-----------------------------------------
_sleep:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_sleep_time_1_55
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$crc_4b6b.c$184$1$56 ==.
;	crc_4b6b.c:184: for( j = 0; j < time * 4; j++ ) for( i = 0; i < 0xFFFF; i++ ) Nop( );
	mov	dptr,#_sleep_time_1_55
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
	mov	r2,#0xFF
	mov	r3,#0xFF
00105$:
	nop 
	dec	r2
	cjne	r2,#0xFF,00126$
	dec	r3
00126$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
	C$crc_4b6b.c$185$1$56 ==.
	XG$sleep$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
