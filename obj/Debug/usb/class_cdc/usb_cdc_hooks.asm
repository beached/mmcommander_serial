;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
; This file was generated Fri Apr 24 20:34:20 2015
;--------------------------------------------------------
	.module usb_cdc_hooks
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _usbsrHookProcessEvent_PARM_2
	.globl _usbsrHookModifyGetStatus_PARM_3
	.globl _usbsrHookModifyGetStatus_PARM_2
	.globl _usbcrHookProcessOut
	.globl _usbcrHookProcessIn
	.globl _usbvrHookProcessOut
	.globl _usbvrHookProcessIn
	.globl _usbsrHookSetDescriptor
	.globl _usbsrHookSynchFrame
	.globl _usbsrHookClearFeature
	.globl _usbsrHookSetFeature
	.globl _usbsrHookModifyGetStatus
	.globl _usbsrHookProcessEvent
	.globl _usbirqHookProcessEvents
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
	.area	OSEG    (OVR,DATA)
Lusb_cdc_hooks.usbsrHookModifyGetStatus$index$1$69==.
_usbsrHookModifyGetStatus_PARM_2:
	.ds 1
Lusb_cdc_hooks.usbsrHookModifyGetStatus$pStatus$1$69==.
_usbsrHookModifyGetStatus_PARM_3:
	.ds 2
	.area	OSEG    (OVR,DATA)
Lusb_cdc_hooks.usbsrHookProcessEvent$index$1$71==.
_usbsrHookProcessEvent_PARM_2:
	.ds 1
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
;Allocation info for local variables in function 'usbcrHookProcessOut'
;------------------------------------------------------------
	G$usbcrHookProcessOut$0$0 ==.
	C$usb_cdc_hooks.c$32$0$0 ==.
;	usb\class_cdc\usb_cdc_hooks.c:32: void usbcrHookProcessOut( void ) {
;	-----------------------------------------
;	 function usbcrHookProcessOut
;	-----------------------------------------
_usbcrHookProcessOut:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$usb_cdc_hooks.c$34$1$44 ==.
;	usb\class_cdc\usb_cdc_hooks.c:34: if( usbSetupHeader.request == CDC_SET_CONTROL_LINE_STATE ) {
	mov	dptr,#(_usbSetupHeader + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x22,00110$
	C$usb_cdc_hooks.c$36$2$45 ==.
;	usb\class_cdc\usb_cdc_hooks.c:36: if( usbfwData.ep0Status == EP_IDLE ) {
	mov	dptr,#(_usbfwData + 0x0007)
	movx	a,@dptr
	jnz	00112$
	C$usb_cdc_hooks.c$37$3$46 ==.
;	usb\class_cdc\usb_cdc_hooks.c:37: cdcRTS = usbSetupHeader.value;
	mov	dptr,#(_usbSetupHeader + 0x0002)
	movx	a,@dptr
	mov	_cdcRTS,a
	inc	dptr
	movx	a,@dptr
	mov	(_cdcRTS + 1),a
	C$usb_cdc_hooks.c$43$3$46 ==.
;	usb\class_cdc\usb_cdc_hooks.c:43: usbfwData.ep0Status = EP_RX;
	mov	dptr,#(_usbfwData + 0x0007)
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00112$
00110$:
	C$usb_cdc_hooks.c$45$1$44 ==.
;	usb\class_cdc\usb_cdc_hooks.c:45: } else if( usbSetupHeader.request == CDC_SET_LINE_CODING ) {
	cjne	r7,#0x20,00107$
	C$usb_cdc_hooks.c$46$2$47 ==.
;	usb\class_cdc\usb_cdc_hooks.c:46: if( usbfwData.ep0Status == EP_IDLE ) {
	mov	dptr,#(_usbfwData + 0x0007)
	movx	a,@dptr
	jnz	00112$
	C$usb_cdc_hooks.c$47$3$48 ==.
;	usb\class_cdc\usb_cdc_hooks.c:47: usbSetupData.pBuffer = (uint8_t __xdata *) &currentLineCoding;
	mov	dptr,#_usbSetupData
	mov	a,#_currentLineCoding
	movx	@dptr,a
	mov	a,#(_currentLineCoding >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$usb_cdc_hooks.c$48$3$48 ==.
;	usb\class_cdc\usb_cdc_hooks.c:48: usbfwData.ep0Status = EP_RX;
	mov	dptr,#(_usbfwData + 0x0007)
	mov	a,#0x02
	movx	@dptr,a
	C$usb_cdc_hooks.c$49$1$44 ==.
;	usb\class_cdc\usb_cdc_hooks.c:49: } else if( usbfwData.ep0Status == EP_RX ) { }
	sjmp	00112$
00107$:
	C$usb_cdc_hooks.c$53$2$50 ==.
;	usb\class_cdc\usb_cdc_hooks.c:53: usbfwData.ep0Status = EP_STALL;
	mov	dptr,#(_usbfwData + 0x0007)
	mov	a,#0x04
	movx	@dptr,a
00112$:
	C$usb_cdc_hooks.c$55$1$44 ==.
	XG$usbcrHookProcessOut$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbcrHookProcessIn'
;------------------------------------------------------------
	G$usbcrHookProcessIn$0$0 ==.
	C$usb_cdc_hooks.c$58$1$44 ==.
;	usb\class_cdc\usb_cdc_hooks.c:58: void usbcrHookProcessIn( void ) {
;	-----------------------------------------
;	 function usbcrHookProcessIn
;	-----------------------------------------
_usbcrHookProcessIn:
	C$usb_cdc_hooks.c$60$1$52 ==.
;	usb\class_cdc\usb_cdc_hooks.c:60: if( usbSetupHeader.request == CDC_GET_LINE_CODING ) {
	mov	dptr,#(_usbSetupHeader + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x21,00105$
	C$usb_cdc_hooks.c$62$2$53 ==.
;	usb\class_cdc\usb_cdc_hooks.c:62: if( usbfwData.ep0Status == EP_IDLE ) {
	mov	dptr,#(_usbfwData + 0x0007)
	movx	a,@dptr
	jnz	00107$
	C$usb_cdc_hooks.c$63$3$54 ==.
;	usb\class_cdc\usb_cdc_hooks.c:63: usbSetupData.pBuffer = (uint8_t __xdata *) &currentLineCoding;
	mov	dptr,#_usbSetupData
	mov	a,#_currentLineCoding
	movx	@dptr,a
	mov	a,#(_currentLineCoding >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$usb_cdc_hooks.c$64$3$54 ==.
;	usb\class_cdc\usb_cdc_hooks.c:64: usbSetupData.bytesLeft = 7;
	mov	dptr,#(_usbSetupData + 0x0003)
	mov	a,#0x07
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$usb_cdc_hooks.c$65$3$54 ==.
;	usb\class_cdc\usb_cdc_hooks.c:65: usbfwData.ep0Status = EP_TX;
	mov	dptr,#(_usbfwData + 0x0007)
	inc	a
	movx	@dptr,a
	C$usb_cdc_hooks.c$67$1$52 ==.
;	usb\class_cdc\usb_cdc_hooks.c:67: } else if( usbfwData.ep0Status == EP_TX ) {
	sjmp	00107$
00105$:
	C$usb_cdc_hooks.c$71$2$56 ==.
;	usb\class_cdc\usb_cdc_hooks.c:71: usbfwData.ep0Status = EP_STALL;
	mov	dptr,#(_usbfwData + 0x0007)
	mov	a,#0x04
	movx	@dptr,a
00107$:
	C$usb_cdc_hooks.c$73$1$52 ==.
	XG$usbcrHookProcessIn$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbvrHookProcessOut'
;------------------------------------------------------------
	G$usbvrHookProcessOut$0$0 ==.
	C$usb_cdc_hooks.c$76$1$52 ==.
;	usb\class_cdc\usb_cdc_hooks.c:76: void usbvrHookProcessOut( void ) { usbfwData.ep0Status = EP_STALL; }
;	-----------------------------------------
;	 function usbvrHookProcessOut
;	-----------------------------------------
_usbvrHookProcessOut:
	mov	dptr,#(_usbfwData + 0x0007)
	mov	a,#0x04
	movx	@dptr,a
	C$usb_cdc_hooks.c$76$1$58 ==.
	XG$usbvrHookProcessOut$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbvrHookProcessIn'
;------------------------------------------------------------
	G$usbvrHookProcessIn$0$0 ==.
	C$usb_cdc_hooks.c$77$1$58 ==.
;	usb\class_cdc\usb_cdc_hooks.c:77: void usbvrHookProcessIn( void ) { usbfwData.ep0Status = EP_STALL; }
;	-----------------------------------------
;	 function usbvrHookProcessIn
;	-----------------------------------------
_usbvrHookProcessIn:
	mov	dptr,#(_usbfwData + 0x0007)
	mov	a,#0x04
	movx	@dptr,a
	C$usb_cdc_hooks.c$77$1$60 ==.
	XG$usbvrHookProcessIn$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbsrHookSetDescriptor'
;------------------------------------------------------------
	G$usbsrHookSetDescriptor$0$0 ==.
	C$usb_cdc_hooks.c$80$1$60 ==.
;	usb\class_cdc\usb_cdc_hooks.c:80: void usbsrHookSetDescriptor( void ) { usbfwData.ep0Status = EP_STALL; }
;	-----------------------------------------
;	 function usbsrHookSetDescriptor
;	-----------------------------------------
_usbsrHookSetDescriptor:
	mov	dptr,#(_usbfwData + 0x0007)
	mov	a,#0x04
	movx	@dptr,a
	C$usb_cdc_hooks.c$80$1$62 ==.
	XG$usbsrHookSetDescriptor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbsrHookSynchFrame'
;------------------------------------------------------------
	G$usbsrHookSynchFrame$0$0 ==.
	C$usb_cdc_hooks.c$81$1$62 ==.
;	usb\class_cdc\usb_cdc_hooks.c:81: void usbsrHookSynchFrame( void ) { usbfwData.ep0Status = EP_STALL; }
;	-----------------------------------------
;	 function usbsrHookSynchFrame
;	-----------------------------------------
_usbsrHookSynchFrame:
	mov	dptr,#(_usbfwData + 0x0007)
	mov	a,#0x04
	movx	@dptr,a
	C$usb_cdc_hooks.c$81$1$64 ==.
	XG$usbsrHookSynchFrame$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbsrHookClearFeature'
;------------------------------------------------------------
	G$usbsrHookClearFeature$0$0 ==.
	C$usb_cdc_hooks.c$82$1$64 ==.
;	usb\class_cdc\usb_cdc_hooks.c:82: void usbsrHookClearFeature( void ) { usbfwData.ep0Status = EP_STALL; }
;	-----------------------------------------
;	 function usbsrHookClearFeature
;	-----------------------------------------
_usbsrHookClearFeature:
	mov	dptr,#(_usbfwData + 0x0007)
	mov	a,#0x04
	movx	@dptr,a
	C$usb_cdc_hooks.c$82$1$66 ==.
	XG$usbsrHookClearFeature$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbsrHookSetFeature'
;------------------------------------------------------------
	G$usbsrHookSetFeature$0$0 ==.
	C$usb_cdc_hooks.c$83$1$66 ==.
;	usb\class_cdc\usb_cdc_hooks.c:83: void usbsrHookSetFeature( void ) { usbfwData.ep0Status = EP_STALL; }
;	-----------------------------------------
;	 function usbsrHookSetFeature
;	-----------------------------------------
_usbsrHookSetFeature:
	mov	dptr,#(_usbfwData + 0x0007)
	mov	a,#0x04
	movx	@dptr,a
	C$usb_cdc_hooks.c$83$1$68 ==.
	XG$usbsrHookSetFeature$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbsrHookModifyGetStatus'
;------------------------------------------------------------
;index                     Allocated with name '_usbsrHookModifyGetStatus_PARM_2'
;pStatus                   Allocated with name '_usbsrHookModifyGetStatus_PARM_3'
;recipient                 Allocated to registers 
;------------------------------------------------------------
	G$usbsrHookModifyGetStatus$0$0 ==.
	C$usb_cdc_hooks.c$84$1$68 ==.
;	usb\class_cdc\usb_cdc_hooks.c:84: void usbsrHookModifyGetStatus( uint8_t recipient, uint8_t index, uint16_t __xdata *pStatus ) { }
;	-----------------------------------------
;	 function usbsrHookModifyGetStatus
;	-----------------------------------------
_usbsrHookModifyGetStatus:
	C$usb_cdc_hooks.c$84$1$68 ==.
	XG$usbsrHookModifyGetStatus$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbsrHookProcessEvent'
;------------------------------------------------------------
;index                     Allocated with name '_usbsrHookProcessEvent_PARM_2'
;event                     Allocated to registers r7 
;------------------------------------------------------------
	G$usbsrHookProcessEvent$0$0 ==.
	C$usb_cdc_hooks.c$88$1$68 ==.
;	usb\class_cdc\usb_cdc_hooks.c:88: void usbsrHookProcessEvent( uint8_t event, uint8_t index ) {
;	-----------------------------------------
;	 function usbsrHookProcessEvent
;	-----------------------------------------
_usbsrHookProcessEvent:
	C$usb_cdc_hooks.c$90$1$72 ==.
;	usb\class_cdc\usb_cdc_hooks.c:90: switch( event ) {
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x0A
	jnc	00117$
	ljmp	00112$
00117$:
	mov	a,r7
	add	a,#(00118$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00119$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00118$:
	.db	00111$
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
00119$:
	.db	00111$>>8
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
	C$usb_cdc_hooks.c$91$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:91: case USBSR_EVENT_CONFIGURATION_CHANGING: //(the device configuration is about to change)
00101$:
	C$usb_cdc_hooks.c$92$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:92: break;
	C$usb_cdc_hooks.c$93$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:93: case USBSR_EVENT_CONFIGURATION_CHANGED:// (the device configuration has changed)
	sjmp	00112$
00102$:
	C$usb_cdc_hooks.c$94$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:94: break;
	C$usb_cdc_hooks.c$95$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:95: case USBSR_EVENT_INTERFACE_CHANGING://(the alternate setting of the given interface is about to change)
	sjmp	00112$
00103$:
	C$usb_cdc_hooks.c$96$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:96: break;
	C$usb_cdc_hooks.c$97$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:97: case USBSR_EVENT_INTERFACE_CHANGED: //(the alternate setting of the given interface has changed)
	sjmp	00112$
00104$:
	C$usb_cdc_hooks.c$98$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:98: break;
	C$usb_cdc_hooks.c$99$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:99: case USBSR_EVENT_REMOTE_WAKEUP_ENABLED://(remote wakeup has been enabled by the host)
	sjmp	00112$
00105$:
	C$usb_cdc_hooks.c$100$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:100: break;
	C$usb_cdc_hooks.c$101$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:101: case USBSR_EVENT_REMOTE_WAKEUP_DISABLED://(remote wakeup has been disabled by the host)
	sjmp	00112$
00106$:
	C$usb_cdc_hooks.c$102$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:102: break;
	C$usb_cdc_hooks.c$103$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:103: case USBSR_EVENT_EPIN_STALL_CLEARED://(the given IN endpoint's stall condition has been cleared the host)
	sjmp	00112$
00107$:
	C$usb_cdc_hooks.c$104$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:104: break;
	C$usb_cdc_hooks.c$105$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:105: case USBSR_EVENT_EPIN_STALL_SET://(the given IN endpoint has been stalled by the host)
	sjmp	00112$
00108$:
	C$usb_cdc_hooks.c$106$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:106: break;
	C$usb_cdc_hooks.c$107$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:107: case USBSR_EVENT_EPOUT_STALL_CLEARED://(the given OUT endpoint's stall condition has been cleared the host)
	sjmp	00112$
00109$:
	C$usb_cdc_hooks.c$108$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:108: break;
	C$usb_cdc_hooks.c$109$2$73 ==.
;	usb\class_cdc\usb_cdc_hooks.c:109: case USBSR_EVENT_EPOUT_STALL_SET://(the given OUT endpoint has been stalled by the PC)
	sjmp	00112$
00110$:
	C$usb_cdc_hooks.c$111$1$72 ==.
;	usb\class_cdc\usb_cdc_hooks.c:111: }
00111$:
00112$:
	C$usb_cdc_hooks.c$112$1$72 ==.
	XG$usbsrHookProcessEvent$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbirqHookProcessEvents'
;------------------------------------------------------------
	G$usbirqHookProcessEvents$0$0 ==.
	C$usb_cdc_hooks.c$115$1$72 ==.
;	usb\class_cdc\usb_cdc_hooks.c:115: void usbirqHookProcessEvents( void ) {
;	-----------------------------------------
;	 function usbirqHookProcessEvents
;	-----------------------------------------
_usbirqHookProcessEvents:
	C$usb_cdc_hooks.c$117$1$72 ==.
;	usb\class_cdc\usb_cdc_hooks.c:117: }
	C$usb_cdc_hooks.c$117$1$72 ==.
	XG$usbirqHookProcessEvents$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
