                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
                                      4 ; This file was generated Sat Apr 25 00:05:12 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module crc_4b6b
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _decode4b6b_PARM_4
                                     13 	.globl _decode4b6b_PARM_3
                                     14 	.globl _decode4b6b_PARM_2
                                     15 	.globl _encode4b6b_PARM_4
                                     16 	.globl _encode4b6b_PARM_3
                                     17 	.globl _encode4b6b_PARM_2
                                     18 	.globl _decode4b6bsymbol_PARM_2
                                     19 	.globl _crc16_PARM_2
                                     20 	.globl _crc8_PARM_2
                                     21 	.globl _crc8
                                     22 	.globl _crc16Init
                                     23 	.globl _crc16
                                     24 	.globl _get4b6bsymbol
                                     25 	.globl _decode4b6bsymbol
                                     26 	.globl _encode4b6b
                                     27 	.globl _decode4b6b
                                     28 	.globl _sleep
                                     29 ;--------------------------------------------------------
                                     30 ; special function registers
                                     31 ;--------------------------------------------------------
                                     32 	.area RSEG    (ABS,DATA)
      000000                         33 	.org 0x0000
                                     34 ;--------------------------------------------------------
                                     35 ; special function bits
                                     36 ;--------------------------------------------------------
                                     37 	.area RSEG    (ABS,DATA)
      000000                         38 	.org 0x0000
                                     39 ;--------------------------------------------------------
                                     40 ; overlayable register banks
                                     41 ;--------------------------------------------------------
                                     42 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         43 	.ds 8
                                     44 ;--------------------------------------------------------
                                     45 ; internal ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area DSEG    (DATA)
                           000000    48 Lcrc_4b6b.encode4b6b$sloc0$1$0==.
      000021                         49 _encode4b6b_sloc0_1_0:
      000021                         50 	.ds 3
                           000003    51 Lcrc_4b6b.encode4b6b$sloc1$1$0==.
      000024                         52 _encode4b6b_sloc1_1_0:
      000024                         53 	.ds 3
                           000006    54 Lcrc_4b6b.encode4b6b$sloc2$1$0==.
      000027                         55 _encode4b6b_sloc2_1_0:
      000027                         56 	.ds 2
                           000008    57 Lcrc_4b6b.encode4b6b$sloc3$1$0==.
      000029                         58 _encode4b6b_sloc3_1_0:
      000029                         59 	.ds 2
                           00000A    60 Lcrc_4b6b.encode4b6b$sloc4$1$0==.
      00002B                         61 _encode4b6b_sloc4_1_0:
      00002B                         62 	.ds 3
                           00000D    63 Lcrc_4b6b.encode4b6b$sloc5$1$0==.
      00002E                         64 _encode4b6b_sloc5_1_0:
      00002E                         65 	.ds 2
                           00000F    66 Lcrc_4b6b.encode4b6b$sloc6$1$0==.
      000030                         67 _encode4b6b_sloc6_1_0:
      000030                         68 	.ds 1
                           000010    69 Lcrc_4b6b.decode4b6b$sloc0$1$0==.
      000031                         70 _decode4b6b_sloc0_1_0:
      000031                         71 	.ds 2
                           000012    72 Lcrc_4b6b.decode4b6b$sloc1$1$0==.
      000033                         73 _decode4b6b_sloc1_1_0:
      000033                         74 	.ds 3
                           000015    75 Lcrc_4b6b.decode4b6b$sloc2$1$0==.
      000036                         76 _decode4b6b_sloc2_1_0:
      000036                         77 	.ds 2
                           000017    78 Lcrc_4b6b.decode4b6b$sloc3$1$0==.
      000038                         79 _decode4b6b_sloc3_1_0:
      000038                         80 	.ds 1
                           000018    81 Lcrc_4b6b.decode4b6b$sloc4$1$0==.
      000039                         82 _decode4b6b_sloc4_1_0:
      000039                         83 	.ds 2
                                     84 ;--------------------------------------------------------
                                     85 ; overlayable items in internal ram 
                                     86 ;--------------------------------------------------------
                                     87 	.area	OSEG    (OVR,DATA)
                           000000    88 Lcrc_4b6b.crc8$sloc0$1$0==.
      00000F                         89 _crc8_sloc0_1_0:
      00000F                         90 	.ds 1
                                     91 	.area	OSEG    (OVR,DATA)
                           000000    92 Lcrc_4b6b.crc16$sloc0$1$0==.
      00000F                         93 _crc16_sloc0_1_0:
      00000F                         94 	.ds 2
                           000002    95 Lcrc_4b6b.crc16$sloc1$1$0==.
      000011                         96 _crc16_sloc1_1_0:
      000011                         97 	.ds 3
                                     98 ;--------------------------------------------------------
                                     99 ; indirectly addressable internal ram data
                                    100 ;--------------------------------------------------------
                                    101 	.area ISEG    (DATA)
                                    102 ;--------------------------------------------------------
                                    103 ; absolute internal ram data
                                    104 ;--------------------------------------------------------
                                    105 	.area IABS    (ABS,DATA)
                                    106 	.area IABS    (ABS,DATA)
                                    107 ;--------------------------------------------------------
                                    108 ; bit data
                                    109 ;--------------------------------------------------------
                                    110 	.area BSEG    (BIT)
                                    111 ;--------------------------------------------------------
                                    112 ; paged external ram data
                                    113 ;--------------------------------------------------------
                                    114 	.area PSEG    (PAG,XDATA)
                                    115 ;--------------------------------------------------------
                                    116 ; external ram data
                                    117 ;--------------------------------------------------------
                                    118 	.area XSEG    (XDATA)
                           000000   119 Fcrc_4b6b$crc16Tab$0$0==.
      000002                        120 _crc16Tab:
      000002                        121 	.ds 512
                           000200   122 Lcrc_4b6b.crc8$nBytes$1$9==.
      000202                        123 _crc8_PARM_2:
      000202                        124 	.ds 2
                           000202   125 Lcrc_4b6b.crc8$message$1$9==.
      000204                        126 _crc8_message_1_9:
      000204                        127 	.ds 3
                           000205   128 Lcrc_4b6b.crc8$remainder$1$10==.
      000207                        129 _crc8_remainder_1_10:
      000207                        130 	.ds 1
                           000206   131 Lcrc_4b6b.crc16Init$crc$1$14==.
      000208                        132 _crc16Init_crc_1_14:
      000208                        133 	.ds 2
                           000208   134 Lcrc_4b6b.crc16Init$c$1$14==.
      00020A                        135 _crc16Init_c_1_14:
      00020A                        136 	.ds 2
                           00020A   137 Lcrc_4b6b.crc16$nBytes$1$17==.
      00020C                        138 _crc16_PARM_2:
      00020C                        139 	.ds 2
                           00020C   140 Lcrc_4b6b.crc16$message$1$17==.
      00020E                        141 _crc16_message_1_17:
      00020E                        142 	.ds 3
                           00020F   143 Lcrc_4b6b.crc16$crc$1$18==.
      000211                        144 _crc16_crc_1_18:
      000211                        145 	.ds 2
                           000211   146 Lcrc_4b6b.get4b6bsymbol$inSymbol$1$20==.
      000213                        147 _get4b6bsymbol_inSymbol_1_20:
      000213                        148 	.ds 1
                           000212   149 Lcrc_4b6b.decode4b6bsymbol$outSymbol$1$23==.
      000214                        150 _decode4b6bsymbol_PARM_2:
      000214                        151 	.ds 3
                           000215   152 Lcrc_4b6b.decode4b6bsymbol$inSymbol$1$23==.
      000217                        153 _decode4b6bsymbol_inSymbol_1_23:
      000217                        154 	.ds 1
                           000216   155 Lcrc_4b6b.encode4b6b$bytesIn$1$43==.
      000218                        156 _encode4b6b_PARM_2:
      000218                        157 	.ds 2
                           000218   158 Lcrc_4b6b.encode4b6b$messageOut$1$43==.
      00021A                        159 _encode4b6b_PARM_3:
      00021A                        160 	.ds 3
                           00021B   161 Lcrc_4b6b.encode4b6b$bytesOut$1$43==.
      00021D                        162 _encode4b6b_PARM_4:
      00021D                        163 	.ds 3
                           00021E   164 Lcrc_4b6b.encode4b6b$messageIn$1$43==.
      000220                        165 _encode4b6b_messageIn_1_43:
      000220                        166 	.ds 3
                           000221   167 Lcrc_4b6b.encode4b6b$intBuffer$1$44==.
      000223                        168 _encode4b6b_intBuffer_1_44:
      000223                        169 	.ds 2
                           000223   170 Lcrc_4b6b.encode4b6b$intBitsAvailable$1$44==.
      000225                        171 _encode4b6b_intBitsAvailable_1_44:
      000225                        172 	.ds 2
                           000225   173 Lcrc_4b6b.encode4b6b$symbol$1$44==.
      000227                        174 _encode4b6b_symbol_1_44:
      000227                        175 	.ds 1
                           000226   176 Lcrc_4b6b.decode4b6b$bytesIn$1$50==.
      000228                        177 _decode4b6b_PARM_2:
      000228                        178 	.ds 2
                           000228   179 Lcrc_4b6b.decode4b6b$messageOut$1$50==.
      00022A                        180 _decode4b6b_PARM_3:
      00022A                        181 	.ds 3
                           00022B   182 Lcrc_4b6b.decode4b6b$bytesOut$1$50==.
      00022D                        183 _decode4b6b_PARM_4:
      00022D                        184 	.ds 3
                           00022E   185 Lcrc_4b6b.decode4b6b$messageIn$1$50==.
      000230                        186 _decode4b6b_messageIn_1_50:
      000230                        187 	.ds 3
                           000231   188 Lcrc_4b6b.decode4b6b$intBuffer$1$51==.
      000233                        189 _decode4b6b_intBuffer_1_51:
      000233                        190 	.ds 2
                           000233   191 Lcrc_4b6b.decode4b6b$intBitsAvailable$1$51==.
      000235                        192 _decode4b6b_intBitsAvailable_1_51:
      000235                        193 	.ds 2
                           000235   194 Lcrc_4b6b.decode4b6b$symbol$1$51==.
      000237                        195 _decode4b6b_symbol_1_51:
      000237                        196 	.ds 1
                           000236   197 Lcrc_4b6b.decode4b6b$recByte$1$51==.
      000238                        198 _decode4b6b_recByte_1_51:
      000238                        199 	.ds 1
                           000237   200 Lcrc_4b6b.decode4b6b$nibbleFlag$1$51==.
      000239                        201 _decode4b6b_nibbleFlag_1_51:
      000239                        202 	.ds 1
                           000238   203 Lcrc_4b6b.decode4b6b$outBytes$1$51==.
      00023A                        204 _decode4b6b_outBytes_1_51:
      00023A                        205 	.ds 1
                           000239   206 Lcrc_4b6b.sleep$time$1$55==.
      00023B                        207 _sleep_time_1_55:
      00023B                        208 	.ds 2
                                    209 ;--------------------------------------------------------
                                    210 ; absolute external ram data
                                    211 ;--------------------------------------------------------
                                    212 	.area XABS    (ABS,XDATA)
                                    213 ;--------------------------------------------------------
                                    214 ; external initialized ram data
                                    215 ;--------------------------------------------------------
                                    216 	.area XISEG   (XDATA)
                                    217 	.area HOME    (CODE)
                                    218 	.area GSINIT0 (CODE)
                                    219 	.area GSINIT1 (CODE)
                                    220 	.area GSINIT2 (CODE)
                                    221 	.area GSINIT3 (CODE)
                                    222 	.area GSINIT4 (CODE)
                                    223 	.area GSINIT5 (CODE)
                                    224 	.area GSINIT  (CODE)
                                    225 	.area GSFINAL (CODE)
                                    226 	.area CSEG    (CODE)
                                    227 ;--------------------------------------------------------
                                    228 ; global & static initialisations
                                    229 ;--------------------------------------------------------
                                    230 	.area HOME    (CODE)
                                    231 	.area GSINIT  (CODE)
                                    232 	.area GSFINAL (CODE)
                                    233 	.area GSINIT  (CODE)
                                    234 ;--------------------------------------------------------
                                    235 ; Home
                                    236 ;--------------------------------------------------------
                                    237 	.area HOME    (CODE)
                                    238 	.area HOME    (CODE)
                                    239 ;--------------------------------------------------------
                                    240 ; code
                                    241 ;--------------------------------------------------------
                                    242 	.area CSEG    (CODE)
                                    243 ;------------------------------------------------------------
                                    244 ;Allocation info for local variables in function 'crc8'
                                    245 ;------------------------------------------------------------
                                    246 ;nBytes                    Allocated with name '_crc8_PARM_2'
                                    247 ;message                   Allocated with name '_crc8_message_1_9'
                                    248 ;remainder                 Allocated with name '_crc8_remainder_1_10'
                                    249 ;byte                      Allocated with name '_crc8_byte_1_10'
                                    250 ;bit                       Allocated with name '_crc8_bit_1_10'
                                    251 ;sloc0                     Allocated with name '_crc8_sloc0_1_0'
                                    252 ;------------------------------------------------------------
                           000000   253 	G$crc8$0$0 ==.
                           000000   254 	C$crc_4b6b.c$6$0$0 ==.
                                    255 ;	crc_4b6b.c:6: char crc8( char *message, unsigned int nBytes ) {
                                    256 ;	-----------------------------------------
                                    257 ;	 function crc8
                                    258 ;	-----------------------------------------
      0000BF                        259 _crc8:
                           000007   260 	ar7 = 0x07
                           000006   261 	ar6 = 0x06
                           000005   262 	ar5 = 0x05
                           000004   263 	ar4 = 0x04
                           000003   264 	ar3 = 0x03
                           000002   265 	ar2 = 0x02
                           000001   266 	ar1 = 0x01
                           000000   267 	ar0 = 0x00
      0000BF AF F0            [24]  268 	mov	r7,b
      0000C1 AE 83            [24]  269 	mov	r6,dph
      0000C3 E5 82            [12]  270 	mov	a,dpl
      0000C5 90 02 04         [24]  271 	mov	dptr,#_crc8_message_1_9
      0000C8 F0               [24]  272 	movx	@dptr,a
      0000C9 EE               [12]  273 	mov	a,r6
      0000CA A3               [24]  274 	inc	dptr
      0000CB F0               [24]  275 	movx	@dptr,a
      0000CC EF               [12]  276 	mov	a,r7
      0000CD A3               [24]  277 	inc	dptr
      0000CE F0               [24]  278 	movx	@dptr,a
                           000010   279 	C$crc_4b6b.c$7$1$0 ==.
                                    280 ;	crc_4b6b.c:7: char remainder = 0;
      0000CF 90 02 07         [24]  281 	mov	dptr,#_crc8_remainder_1_10
      0000D2 E4               [12]  282 	clr	a
      0000D3 F0               [24]  283 	movx	@dptr,a
                           000015   284 	C$crc_4b6b.c$11$2$11 ==.
                                    285 ;	crc_4b6b.c:11: for( byte = 0; byte < nBytes; ++byte ) {
      0000D4 90 02 04         [24]  286 	mov	dptr,#_crc8_message_1_9
      0000D7 E0               [24]  287 	movx	a,@dptr
      0000D8 FD               [12]  288 	mov	r5,a
      0000D9 A3               [24]  289 	inc	dptr
      0000DA E0               [24]  290 	movx	a,@dptr
      0000DB FE               [12]  291 	mov	r6,a
      0000DC A3               [24]  292 	inc	dptr
      0000DD E0               [24]  293 	movx	a,@dptr
      0000DE FF               [12]  294 	mov	r7,a
      0000DF 90 02 02         [24]  295 	mov	dptr,#_crc8_PARM_2
      0000E2 E0               [24]  296 	movx	a,@dptr
      0000E3 FB               [12]  297 	mov	r3,a
      0000E4 A3               [24]  298 	inc	dptr
      0000E5 E0               [24]  299 	movx	a,@dptr
      0000E6 FC               [12]  300 	mov	r4,a
      0000E7 79 00            [12]  301 	mov	r1,#0x00
      0000E9 7A 00            [12]  302 	mov	r2,#0x00
      0000EB                        303 00109$:
      0000EB C3               [12]  304 	clr	c
      0000EC E9               [12]  305 	mov	a,r1
      0000ED 9B               [12]  306 	subb	a,r3
      0000EE EA               [12]  307 	mov	a,r2
      0000EF 9C               [12]  308 	subb	a,r4
      0000F0 50 5E            [24]  309 	jnc	00105$
                           000033   310 	C$crc_4b6b.c$12$1$10 ==.
                                    311 ;	crc_4b6b.c:12: remainder ^= message[byte];
      0000F2 C0 03            [24]  312 	push	ar3
      0000F4 C0 04            [24]  313 	push	ar4
      0000F6 E9               [12]  314 	mov	a,r1
      0000F7 2D               [12]  315 	add	a,r5
      0000F8 F8               [12]  316 	mov	r0,a
      0000F9 EA               [12]  317 	mov	a,r2
      0000FA 3E               [12]  318 	addc	a,r6
      0000FB FB               [12]  319 	mov	r3,a
      0000FC 8F 04            [24]  320 	mov	ar4,r7
      0000FE 88 82            [24]  321 	mov	dpl,r0
      000100 8B 83            [24]  322 	mov	dph,r3
      000102 8C F0            [24]  323 	mov	b,r4
      000104 12 1C 03         [24]  324 	lcall	__gptrget
      000107 F8               [12]  325 	mov	r0,a
      000108 90 02 07         [24]  326 	mov	dptr,#_crc8_remainder_1_10
      00010B E0               [24]  327 	movx	a,@dptr
      00010C FC               [12]  328 	mov	r4,a
      00010D E8               [12]  329 	mov	a,r0
      00010E 6C               [12]  330 	xrl	a,r4
      00010F F0               [24]  331 	movx	@dptr,a
                           000051   332 	C$crc_4b6b.c$13$1$10 ==.
                                    333 ;	crc_4b6b.c:13: for( bit = 8; bit > 0; --bit ) {
      000110 75 0F 08         [24]  334 	mov	_crc8_sloc0_1_0,#0x08
                           000054   335 	C$crc_4b6b.c$21$1$10 ==.
                                    336 ;	crc_4b6b.c:21: return(remainder);
      000113 D0 04            [24]  337 	pop	ar4
      000115 D0 03            [24]  338 	pop	ar3
                           000058   339 	C$crc_4b6b.c$13$2$11 ==.
                                    340 ;	crc_4b6b.c:13: for( bit = 8; bit > 0; --bit ) {
      000117                        341 00106$:
                           000058   342 	C$crc_4b6b.c$14$3$12 ==.
                                    343 ;	crc_4b6b.c:14: if( remainder & 0x80 )
      000117 90 02 07         [24]  344 	mov	dptr,#_crc8_remainder_1_10
      00011A E0               [24]  345 	movx	a,@dptr
      00011B F8               [12]  346 	mov	r0,a
      00011C 30 E7 14         [24]  347 	jnb	acc.7,00102$
                           000060   348 	C$crc_4b6b.c$15$1$10 ==.
                                    349 ;	crc_4b6b.c:15: remainder = (remainder << 1) ^ 0x9B;
      00011F C0 03            [24]  350 	push	ar3
      000121 C0 04            [24]  351 	push	ar4
      000123 E8               [12]  352 	mov	a,r0
      000124 28               [12]  353 	add	a,r0
      000125 FC               [12]  354 	mov	r4,a
      000126 90 02 07         [24]  355 	mov	dptr,#_crc8_remainder_1_10
      000129 74 9B            [12]  356 	mov	a,#0x9B
      00012B 6C               [12]  357 	xrl	a,r4
      00012C F0               [24]  358 	movx	@dptr,a
      00012D D0 04            [24]  359 	pop	ar4
      00012F D0 03            [24]  360 	pop	ar3
      000131 80 07            [24]  361 	sjmp	00107$
      000133                        362 00102$:
                           000074   363 	C$crc_4b6b.c$17$3$12 ==.
                                    364 ;	crc_4b6b.c:17: remainder = (remainder << 1);
      000133 E8               [12]  365 	mov	a,r0
      000134 28               [12]  366 	add	a,r0
      000135 F8               [12]  367 	mov	r0,a
      000136 90 02 07         [24]  368 	mov	dptr,#_crc8_remainder_1_10
      000139 F0               [24]  369 	movx	@dptr,a
      00013A                        370 00107$:
                           00007B   371 	C$crc_4b6b.c$13$2$11 ==.
                                    372 ;	crc_4b6b.c:13: for( bit = 8; bit > 0; --bit ) {
      00013A 15 0F            [12]  373 	dec	_crc8_sloc0_1_0
      00013C C3               [12]  374 	clr	c
      00013D 74 80            [12]  375 	mov	a,#(0x00 ^ 0x80)
      00013F 85 0F F0         [24]  376 	mov	b,_crc8_sloc0_1_0
      000142 63 F0 80         [24]  377 	xrl	b,#0x80
      000145 95 F0            [12]  378 	subb	a,b
      000147 40 CE            [24]  379 	jc	00106$
                           00008A   380 	C$crc_4b6b.c$11$1$10 ==.
                                    381 ;	crc_4b6b.c:11: for( byte = 0; byte < nBytes; ++byte ) {
      000149 09               [12]  382 	inc	r1
      00014A B9 00 9E         [24]  383 	cjne	r1,#0x00,00109$
      00014D 0A               [12]  384 	inc	r2
      00014E 80 9B            [24]  385 	sjmp	00109$
      000150                        386 00105$:
                           000091   387 	C$crc_4b6b.c$21$1$10 ==.
                                    388 ;	crc_4b6b.c:21: return(remainder);
      000150 90 02 07         [24]  389 	mov	dptr,#_crc8_remainder_1_10
      000153 E0               [24]  390 	movx	a,@dptr
                           000095   391 	C$crc_4b6b.c$22$1$10 ==.
                           000095   392 	XG$crc8$0$0 ==.
      000154 F5 82            [12]  393 	mov	dpl,a
      000156 22               [24]  394 	ret
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'crc16Init'
                                    397 ;------------------------------------------------------------
                                    398 ;i                         Allocated with name '_crc16Init_i_1_14'
                                    399 ;j                         Allocated with name '_crc16Init_j_1_14'
                                    400 ;crc                       Allocated with name '_crc16Init_crc_1_14'
                                    401 ;c                         Allocated with name '_crc16Init_c_1_14'
                                    402 ;------------------------------------------------------------
                           000098   403 	G$crc16Init$0$0 ==.
                           000098   404 	C$crc_4b6b.c$24$1$10 ==.
                                    405 ;	crc_4b6b.c:24: void crc16Init( void ) {
                                    406 ;	-----------------------------------------
                                    407 ;	 function crc16Init
                                    408 ;	-----------------------------------------
      000157                        409 _crc16Init:
                           000098   410 	C$crc_4b6b.c$30$2$15 ==.
                                    411 ;	crc_4b6b.c:30: for( i = 0; i < 256; i++ ) {
      000157 7E 00            [12]  412 	mov	r6,#0x00
      000159 7F 00            [12]  413 	mov	r7,#0x00
      00015B                        414 00108$:
                           00009C   415 	C$crc_4b6b.c$31$2$15 ==.
                                    416 ;	crc_4b6b.c:31: crc = 0;
      00015B 90 02 08         [24]  417 	mov	dptr,#_crc16Init_crc_1_14
      00015E E4               [12]  418 	clr	a
      00015F F0               [24]  419 	movx	@dptr,a
      000160 A3               [24]  420 	inc	dptr
      000161 F0               [24]  421 	movx	@dptr,a
                           0000A3   422 	C$crc_4b6b.c$32$2$15 ==.
                                    423 ;	crc_4b6b.c:32: c = ((unsigned short)i) << 8;
      000162 8E 05            [24]  424 	mov	ar5,r6
      000164 7C 00            [12]  425 	mov	r4,#0x00
      000166 90 02 0A         [24]  426 	mov	dptr,#_crc16Init_c_1_14
      000169 EC               [12]  427 	mov	a,r4
      00016A F0               [24]  428 	movx	@dptr,a
      00016B ED               [12]  429 	mov	a,r5
      00016C A3               [24]  430 	inc	dptr
      00016D F0               [24]  431 	movx	@dptr,a
                           0000AF   432 	C$crc_4b6b.c$33$1$14 ==.
                                    433 ;	crc_4b6b.c:33: for( j = 0; j < 8; j++ ) {
      00016E 7C 00            [12]  434 	mov	r4,#0x00
      000170 7D 00            [12]  435 	mov	r5,#0x00
      000172                        436 00106$:
                           0000B3   437 	C$crc_4b6b.c$34$3$16 ==.
                                    438 ;	crc_4b6b.c:34: if( (crc^c) & 0x8000 ) crc = (crc << 1) ^ 0x1021;
      000172 90 02 0A         [24]  439 	mov	dptr,#_crc16Init_c_1_14
      000175 E0               [24]  440 	movx	a,@dptr
      000176 FA               [12]  441 	mov	r2,a
      000177 A3               [24]  442 	inc	dptr
      000178 E0               [24]  443 	movx	a,@dptr
      000179 FB               [12]  444 	mov	r3,a
      00017A 90 02 08         [24]  445 	mov	dptr,#_crc16Init_crc_1_14
      00017D E0               [24]  446 	movx	a,@dptr
      00017E F8               [12]  447 	mov	r0,a
      00017F A3               [24]  448 	inc	dptr
      000180 E0               [24]  449 	movx	a,@dptr
      000181 F9               [12]  450 	mov	r1,a
      000182 E8               [12]  451 	mov	a,r0
      000183 62 02            [12]  452 	xrl	ar2,a
      000185 E9               [12]  453 	mov	a,r1
      000186 62 03            [12]  454 	xrl	ar3,a
      000188 EB               [12]  455 	mov	a,r3
      000189 30 E7 17         [24]  456 	jnb	acc.7,00102$
      00018C 88 02            [24]  457 	mov	ar2,r0
      00018E E9               [12]  458 	mov	a,r1
      00018F CA               [12]  459 	xch	a,r2
      000190 25 E0            [12]  460 	add	a,acc
      000192 CA               [12]  461 	xch	a,r2
      000193 33               [12]  462 	rlc	a
      000194 FB               [12]  463 	mov	r3,a
      000195 90 02 08         [24]  464 	mov	dptr,#_crc16Init_crc_1_14
      000198 74 21            [12]  465 	mov	a,#0x21
      00019A 6A               [12]  466 	xrl	a,r2
      00019B F0               [24]  467 	movx	@dptr,a
      00019C 74 10            [12]  468 	mov	a,#0x10
      00019E 6B               [12]  469 	xrl	a,r3
      00019F A3               [24]  470 	inc	dptr
      0001A0 F0               [24]  471 	movx	@dptr,a
      0001A1 80 0F            [24]  472 	sjmp	00103$
      0001A3                        473 00102$:
                           0000E4   474 	C$crc_4b6b.c$35$3$16 ==.
                                    475 ;	crc_4b6b.c:35: else                    crc = crc << 1;
      0001A3 E9               [12]  476 	mov	a,r1
      0001A4 C8               [12]  477 	xch	a,r0
      0001A5 25 E0            [12]  478 	add	a,acc
      0001A7 C8               [12]  479 	xch	a,r0
      0001A8 33               [12]  480 	rlc	a
      0001A9 F9               [12]  481 	mov	r1,a
      0001AA 90 02 08         [24]  482 	mov	dptr,#_crc16Init_crc_1_14
      0001AD E8               [12]  483 	mov	a,r0
      0001AE F0               [24]  484 	movx	@dptr,a
      0001AF E9               [12]  485 	mov	a,r1
      0001B0 A3               [24]  486 	inc	dptr
      0001B1 F0               [24]  487 	movx	@dptr,a
      0001B2                        488 00103$:
                           0000F3   489 	C$crc_4b6b.c$36$3$16 ==.
                                    490 ;	crc_4b6b.c:36: c = c << 1;
      0001B2 90 02 0A         [24]  491 	mov	dptr,#_crc16Init_c_1_14
      0001B5 E0               [24]  492 	movx	a,@dptr
      0001B6 FA               [12]  493 	mov	r2,a
      0001B7 A3               [24]  494 	inc	dptr
      0001B8 E0               [24]  495 	movx	a,@dptr
      0001B9 CA               [12]  496 	xch	a,r2
      0001BA 25 E0            [12]  497 	add	a,acc
      0001BC CA               [12]  498 	xch	a,r2
      0001BD 33               [12]  499 	rlc	a
      0001BE FB               [12]  500 	mov	r3,a
      0001BF 90 02 0A         [24]  501 	mov	dptr,#_crc16Init_c_1_14
      0001C2 EA               [12]  502 	mov	a,r2
      0001C3 F0               [24]  503 	movx	@dptr,a
      0001C4 EB               [12]  504 	mov	a,r3
      0001C5 A3               [24]  505 	inc	dptr
      0001C6 F0               [24]  506 	movx	@dptr,a
                           000108   507 	C$crc_4b6b.c$33$2$15 ==.
                                    508 ;	crc_4b6b.c:33: for( j = 0; j < 8; j++ ) {
      0001C7 0C               [12]  509 	inc	r4
      0001C8 BC 00 01         [24]  510 	cjne	r4,#0x00,00127$
      0001CB 0D               [12]  511 	inc	r5
      0001CC                        512 00127$:
      0001CC C3               [12]  513 	clr	c
      0001CD EC               [12]  514 	mov	a,r4
      0001CE 94 08            [12]  515 	subb	a,#0x08
      0001D0 ED               [12]  516 	mov	a,r5
      0001D1 94 00            [12]  517 	subb	a,#0x00
      0001D3 40 9D            [24]  518 	jc	00106$
                           000116   519 	C$crc_4b6b.c$38$2$15 ==.
                                    520 ;	crc_4b6b.c:38: crc16Tab[i] = crc;
      0001D5 8E 04            [24]  521 	mov	ar4,r6
      0001D7 EF               [12]  522 	mov	a,r7
      0001D8 CC               [12]  523 	xch	a,r4
      0001D9 25 E0            [12]  524 	add	a,acc
      0001DB CC               [12]  525 	xch	a,r4
      0001DC 33               [12]  526 	rlc	a
      0001DD FD               [12]  527 	mov	r5,a
      0001DE EC               [12]  528 	mov	a,r4
      0001DF 24 02            [12]  529 	add	a,#_crc16Tab
      0001E1 FC               [12]  530 	mov	r4,a
      0001E2 ED               [12]  531 	mov	a,r5
      0001E3 34 00            [12]  532 	addc	a,#(_crc16Tab >> 8)
      0001E5 FD               [12]  533 	mov	r5,a
      0001E6 90 02 08         [24]  534 	mov	dptr,#_crc16Init_crc_1_14
      0001E9 E0               [24]  535 	movx	a,@dptr
      0001EA FA               [12]  536 	mov	r2,a
      0001EB A3               [24]  537 	inc	dptr
      0001EC E0               [24]  538 	movx	a,@dptr
      0001ED FB               [12]  539 	mov	r3,a
      0001EE 8C 82            [24]  540 	mov	dpl,r4
      0001F0 8D 83            [24]  541 	mov	dph,r5
      0001F2 EA               [12]  542 	mov	a,r2
      0001F3 F0               [24]  543 	movx	@dptr,a
      0001F4 EB               [12]  544 	mov	a,r3
      0001F5 A3               [24]  545 	inc	dptr
      0001F6 F0               [24]  546 	movx	@dptr,a
                           000138   547 	C$crc_4b6b.c$30$1$14 ==.
                                    548 ;	crc_4b6b.c:30: for( i = 0; i < 256; i++ ) {
      0001F7 0E               [12]  549 	inc	r6
      0001F8 BE 00 01         [24]  550 	cjne	r6,#0x00,00129$
      0001FB 0F               [12]  551 	inc	r7
      0001FC                        552 00129$:
      0001FC 74 FF            [12]  553 	mov	a,#0x100 - 0x01
      0001FE 2F               [12]  554 	add	a,r7
      0001FF 40 03            [24]  555 	jc	00130$
      000201 02 01 5B         [24]  556 	ljmp	00108$
      000204                        557 00130$:
                           000145   558 	C$crc_4b6b.c$40$1$14 ==.
                           000145   559 	XG$crc16Init$0$0 ==.
      000204 22               [24]  560 	ret
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'crc16'
                                    563 ;------------------------------------------------------------
                                    564 ;nBytes                    Allocated with name '_crc16_PARM_2'
                                    565 ;message                   Allocated with name '_crc16_message_1_17'
                                    566 ;i                         Allocated with name '_crc16_i_1_18'
                                    567 ;crc                       Allocated with name '_crc16_crc_1_18'
                                    568 ;short_c                   Allocated with name '_crc16_short_c_1_18'
                                    569 ;tmp                       Allocated with name '_crc16_tmp_1_18'
                                    570 ;sloc0                     Allocated with name '_crc16_sloc0_1_0'
                                    571 ;sloc1                     Allocated with name '_crc16_sloc1_1_0'
                                    572 ;------------------------------------------------------------
                           000146   573 	G$crc16$0$0 ==.
                           000146   574 	C$crc_4b6b.c$42$1$14 ==.
                                    575 ;	crc_4b6b.c:42: short crc16( char *message, unsigned int nBytes ) {
                                    576 ;	-----------------------------------------
                                    577 ;	 function crc16
                                    578 ;	-----------------------------------------
      000205                        579 _crc16:
      000205 AF F0            [24]  580 	mov	r7,b
      000207 AE 83            [24]  581 	mov	r6,dph
      000209 E5 82            [12]  582 	mov	a,dpl
      00020B 90 02 0E         [24]  583 	mov	dptr,#_crc16_message_1_17
      00020E F0               [24]  584 	movx	@dptr,a
      00020F EE               [12]  585 	mov	a,r6
      000210 A3               [24]  586 	inc	dptr
      000211 F0               [24]  587 	movx	@dptr,a
      000212 EF               [12]  588 	mov	a,r7
      000213 A3               [24]  589 	inc	dptr
      000214 F0               [24]  590 	movx	@dptr,a
                           000156   591 	C$crc_4b6b.c$48$1$18 ==.
                                    592 ;	crc_4b6b.c:48: crc = 0xffff;
      000215 90 02 11         [24]  593 	mov	dptr,#_crc16_crc_1_18
      000218 74 FF            [12]  594 	mov	a,#0xFF
      00021A F0               [24]  595 	movx	@dptr,a
      00021B A3               [24]  596 	inc	dptr
      00021C F0               [24]  597 	movx	@dptr,a
                           00015E   598 	C$crc_4b6b.c$49$2$19 ==.
                                    599 ;	crc_4b6b.c:49: for( i = 0; i < nBytes; i++ ) {
      00021D 90 02 0E         [24]  600 	mov	dptr,#_crc16_message_1_17
      000220 E0               [24]  601 	movx	a,@dptr
      000221 F5 11            [12]  602 	mov	_crc16_sloc1_1_0,a
      000223 A3               [24]  603 	inc	dptr
      000224 E0               [24]  604 	movx	a,@dptr
      000225 F5 12            [12]  605 	mov	(_crc16_sloc1_1_0 + 1),a
      000227 A3               [24]  606 	inc	dptr
      000228 E0               [24]  607 	movx	a,@dptr
      000229 F5 13            [12]  608 	mov	(_crc16_sloc1_1_0 + 2),a
      00022B 90 02 0C         [24]  609 	mov	dptr,#_crc16_PARM_2
      00022E E0               [24]  610 	movx	a,@dptr
      00022F FB               [12]  611 	mov	r3,a
      000230 A3               [24]  612 	inc	dptr
      000231 E0               [24]  613 	movx	a,@dptr
      000232 FC               [12]  614 	mov	r4,a
      000233 79 00            [12]  615 	mov	r1,#0x00
      000235 7A 00            [12]  616 	mov	r2,#0x00
      000237                        617 00103$:
      000237 C3               [12]  618 	clr	c
      000238 E9               [12]  619 	mov	a,r1
      000239 9B               [12]  620 	subb	a,r3
      00023A EA               [12]  621 	mov	a,r2
      00023B 9C               [12]  622 	subb	a,r4
      00023C 50 61            [24]  623 	jnc	00101$
                           00017F   624 	C$crc_4b6b.c$50$1$18 ==.
                                    625 ;	crc_4b6b.c:50: short_c = 0x00ff & (unsigned short)message[i];
      00023E C0 03            [24]  626 	push	ar3
      000240 C0 04            [24]  627 	push	ar4
      000242 E9               [12]  628 	mov	a,r1
      000243 25 11            [12]  629 	add	a,_crc16_sloc1_1_0
      000245 F8               [12]  630 	mov	r0,a
      000246 EA               [12]  631 	mov	a,r2
      000247 35 12            [12]  632 	addc	a,(_crc16_sloc1_1_0 + 1)
      000249 FB               [12]  633 	mov	r3,a
      00024A AC 13            [24]  634 	mov	r4,(_crc16_sloc1_1_0 + 2)
      00024C 88 82            [24]  635 	mov	dpl,r0
      00024E 8B 83            [24]  636 	mov	dph,r3
      000250 8C F0            [24]  637 	mov	b,r4
      000252 12 1C 03         [24]  638 	lcall	__gptrget
      000255 F8               [12]  639 	mov	r0,a
      000256 33               [12]  640 	rlc	a
      000257 95 E0            [12]  641 	subb	a,acc
      000259 88 0F            [24]  642 	mov	_crc16_sloc0_1_0,r0
      00025B 75 10 00         [24]  643 	mov	(_crc16_sloc0_1_0 + 1),#0x00
                           00019F   644 	C$crc_4b6b.c$51$2$19 ==.
                                    645 ;	crc_4b6b.c:51: tmp = (crc >> 8) ^ short_c;
      00025E 90 02 11         [24]  646 	mov	dptr,#_crc16_crc_1_18
      000261 E0               [24]  647 	movx	a,@dptr
      000262 FB               [12]  648 	mov	r3,a
      000263 A3               [24]  649 	inc	dptr
      000264 E0               [24]  650 	movx	a,@dptr
      000265 F8               [12]  651 	mov	r0,a
      000266 7F 00            [12]  652 	mov	r7,#0x00
      000268 E5 0F            [12]  653 	mov	a,_crc16_sloc0_1_0
      00026A 62 00            [12]  654 	xrl	ar0,a
      00026C E5 10            [12]  655 	mov	a,(_crc16_sloc0_1_0 + 1)
      00026E 62 07            [12]  656 	xrl	ar7,a
                           0001B1   657 	C$crc_4b6b.c$52$2$19 ==.
                                    658 ;	crc_4b6b.c:52: crc = (crc << 8) ^ crc16Tab[tmp];
      000270 8B 04            [24]  659 	mov	ar4,r3
      000272 7B 00            [12]  660 	mov	r3,#0x00
      000274 EF               [12]  661 	mov	a,r7
      000275 C8               [12]  662 	xch	a,r0
      000276 25 E0            [12]  663 	add	a,acc
      000278 C8               [12]  664 	xch	a,r0
      000279 33               [12]  665 	rlc	a
      00027A FF               [12]  666 	mov	r7,a
      00027B E8               [12]  667 	mov	a,r0
      00027C 24 02            [12]  668 	add	a,#_crc16Tab
      00027E F5 82            [12]  669 	mov	dpl,a
      000280 EF               [12]  670 	mov	a,r7
      000281 34 00            [12]  671 	addc	a,#(_crc16Tab >> 8)
      000283 F5 83            [12]  672 	mov	dph,a
      000285 E0               [24]  673 	movx	a,@dptr
      000286 FE               [12]  674 	mov	r6,a
      000287 A3               [24]  675 	inc	dptr
      000288 E0               [24]  676 	movx	a,@dptr
      000289 FF               [12]  677 	mov	r7,a
      00028A 90 02 11         [24]  678 	mov	dptr,#_crc16_crc_1_18
      00028D EE               [12]  679 	mov	a,r6
      00028E 6B               [12]  680 	xrl	a,r3
      00028F F0               [24]  681 	movx	@dptr,a
      000290 EF               [12]  682 	mov	a,r7
      000291 6C               [12]  683 	xrl	a,r4
      000292 A3               [24]  684 	inc	dptr
      000293 F0               [24]  685 	movx	@dptr,a
                           0001D5   686 	C$crc_4b6b.c$49$1$18 ==.
                                    687 ;	crc_4b6b.c:49: for( i = 0; i < nBytes; i++ ) {
      000294 09               [12]  688 	inc	r1
      000295 B9 00 01         [24]  689 	cjne	r1,#0x00,00115$
      000298 0A               [12]  690 	inc	r2
      000299                        691 00115$:
      000299 D0 04            [24]  692 	pop	ar4
      00029B D0 03            [24]  693 	pop	ar3
      00029D 80 98            [24]  694 	sjmp	00103$
      00029F                        695 00101$:
                           0001E0   696 	C$crc_4b6b.c$55$1$18 ==.
                                    697 ;	crc_4b6b.c:55: return(crc);
      00029F 90 02 11         [24]  698 	mov	dptr,#_crc16_crc_1_18
      0002A2 E0               [24]  699 	movx	a,@dptr
      0002A3 FE               [12]  700 	mov	r6,a
      0002A4 A3               [24]  701 	inc	dptr
      0002A5 E0               [24]  702 	movx	a,@dptr
                           0001E7   703 	C$crc_4b6b.c$56$1$18 ==.
                           0001E7   704 	XG$crc16$0$0 ==.
      0002A6 8E 82            [24]  705 	mov	dpl,r6
      0002A8 F5 83            [12]  706 	mov	dph,a
      0002AA 22               [24]  707 	ret
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'get4b6bsymbol'
                                    710 ;------------------------------------------------------------
                                    711 ;inSymbol                  Allocated with name '_get4b6bsymbol_inSymbol_1_20'
                                    712 ;------------------------------------------------------------
                           0001EC   713 	G$get4b6bsymbol$0$0 ==.
                           0001EC   714 	C$crc_4b6b.c$58$1$18 ==.
                                    715 ;	crc_4b6b.c:58: char get4b6bsymbol( char inSymbol ) {
                                    716 ;	-----------------------------------------
                                    717 ;	 function get4b6bsymbol
                                    718 ;	-----------------------------------------
      0002AB                        719 _get4b6bsymbol:
      0002AB E5 82            [12]  720 	mov	a,dpl
      0002AD 90 02 13         [24]  721 	mov	dptr,#_get4b6bsymbol_inSymbol_1_20
      0002B0 F0               [24]  722 	movx	@dptr,a
                           0001F2   723 	C$crc_4b6b.c$59$1$21 ==.
                                    724 ;	crc_4b6b.c:59: switch( inSymbol ) {
      0002B1 E0               [24]  725 	movx	a,@dptr
      0002B2 FF               [12]  726 	mov	r7,a
      0002B3 30 E7 03         [24]  727 	jnb	acc.7,00127$
      0002B6 02 03 46         [24]  728 	ljmp	00117$
      0002B9                        729 00127$:
      0002B9 C3               [12]  730 	clr	c
      0002BA 74 8F            [12]  731 	mov	a,#(0x0F ^ 0x80)
      0002BC 8F F0            [24]  732 	mov	b,r7
      0002BE 63 F0 80         [24]  733 	xrl	b,#0x80
      0002C1 95 F0            [12]  734 	subb	a,b
      0002C3 50 03            [24]  735 	jnc	00128$
      0002C5 02 03 46         [24]  736 	ljmp	00117$
      0002C8                        737 00128$:
      0002C8 EF               [12]  738 	mov	a,r7
      0002C9 24 0A            [12]  739 	add	a,#(00129$-3-.)
      0002CB 83               [24]  740 	movc	a,@a+pc
      0002CC F5 82            [12]  741 	mov	dpl,a
      0002CE EF               [12]  742 	mov	a,r7
      0002CF 24 14            [12]  743 	add	a,#(00130$-3-.)
      0002D1 83               [24]  744 	movc	a,@a+pc
      0002D2 F5 83            [12]  745 	mov	dph,a
      0002D4 E4               [12]  746 	clr	a
      0002D5 73               [24]  747 	jmp	@a+dptr
      0002D6                        748 00129$:
      0002D6 F6                     749 	.db	00101$
      0002D7 FB                     750 	.db	00102$
      0002D8 00                     751 	.db	00103$
      0002D9 05                     752 	.db	00104$
      0002DA 0A                     753 	.db	00105$
      0002DB 0F                     754 	.db	00106$
      0002DC 14                     755 	.db	00107$
      0002DD 19                     756 	.db	00108$
      0002DE 1E                     757 	.db	00109$
      0002DF 23                     758 	.db	00110$
      0002E0 28                     759 	.db	00111$
      0002E1 2D                     760 	.db	00112$
      0002E2 32                     761 	.db	00113$
      0002E3 37                     762 	.db	00114$
      0002E4 3C                     763 	.db	00115$
      0002E5 41                     764 	.db	00116$
      0002E6                        765 00130$:
      0002E6 02                     766 	.db	00101$>>8
      0002E7 02                     767 	.db	00102$>>8
      0002E8 03                     768 	.db	00103$>>8
      0002E9 03                     769 	.db	00104$>>8
      0002EA 03                     770 	.db	00105$>>8
      0002EB 03                     771 	.db	00106$>>8
      0002EC 03                     772 	.db	00107$>>8
      0002ED 03                     773 	.db	00108$>>8
      0002EE 03                     774 	.db	00109$>>8
      0002EF 03                     775 	.db	00110$>>8
      0002F0 03                     776 	.db	00111$>>8
      0002F1 03                     777 	.db	00112$>>8
      0002F2 03                     778 	.db	00113$>>8
      0002F3 03                     779 	.db	00114$>>8
      0002F4 03                     780 	.db	00115$>>8
      0002F5 03                     781 	.db	00116$>>8
                           000237   782 	C$crc_4b6b.c$60$2$22 ==.
                                    783 ;	crc_4b6b.c:60: case 0x00: return 0x15;
      0002F6                        784 00101$:
      0002F6 75 82 15         [24]  785 	mov	dpl,#0x15
                           00023A   786 	C$crc_4b6b.c$61$2$22 ==.
                                    787 ;	crc_4b6b.c:61: case 0x01: return 0x31;
      0002F9 80 4E            [24]  788 	sjmp	00119$
      0002FB                        789 00102$:
      0002FB 75 82 31         [24]  790 	mov	dpl,#0x31
                           00023F   791 	C$crc_4b6b.c$62$2$22 ==.
                                    792 ;	crc_4b6b.c:62: case 0x02: return 0x32;
      0002FE 80 49            [24]  793 	sjmp	00119$
      000300                        794 00103$:
      000300 75 82 32         [24]  795 	mov	dpl,#0x32
                           000244   796 	C$crc_4b6b.c$63$2$22 ==.
                                    797 ;	crc_4b6b.c:63: case 0x03: return 0x23;
      000303 80 44            [24]  798 	sjmp	00119$
      000305                        799 00104$:
      000305 75 82 23         [24]  800 	mov	dpl,#0x23
                           000249   801 	C$crc_4b6b.c$64$2$22 ==.
                                    802 ;	crc_4b6b.c:64: case 0x04: return 0x34;
      000308 80 3F            [24]  803 	sjmp	00119$
      00030A                        804 00105$:
      00030A 75 82 34         [24]  805 	mov	dpl,#0x34
                           00024E   806 	C$crc_4b6b.c$65$2$22 ==.
                                    807 ;	crc_4b6b.c:65: case 0x05: return 0x25;
      00030D 80 3A            [24]  808 	sjmp	00119$
      00030F                        809 00106$:
      00030F 75 82 25         [24]  810 	mov	dpl,#0x25
                           000253   811 	C$crc_4b6b.c$66$2$22 ==.
                                    812 ;	crc_4b6b.c:66: case 0x06: return 0x26;
      000312 80 35            [24]  813 	sjmp	00119$
      000314                        814 00107$:
      000314 75 82 26         [24]  815 	mov	dpl,#0x26
                           000258   816 	C$crc_4b6b.c$67$2$22 ==.
                                    817 ;	crc_4b6b.c:67: case 0x07: return 0x16;
      000317 80 30            [24]  818 	sjmp	00119$
      000319                        819 00108$:
      000319 75 82 16         [24]  820 	mov	dpl,#0x16
                           00025D   821 	C$crc_4b6b.c$68$2$22 ==.
                                    822 ;	crc_4b6b.c:68: case 0x08: return 0x1A;
      00031C 80 2B            [24]  823 	sjmp	00119$
      00031E                        824 00109$:
      00031E 75 82 1A         [24]  825 	mov	dpl,#0x1A
                           000262   826 	C$crc_4b6b.c$69$2$22 ==.
                                    827 ;	crc_4b6b.c:69: case 0x09: return 0x19;
      000321 80 26            [24]  828 	sjmp	00119$
      000323                        829 00110$:
      000323 75 82 19         [24]  830 	mov	dpl,#0x19
                           000267   831 	C$crc_4b6b.c$70$2$22 ==.
                                    832 ;	crc_4b6b.c:70: case 0x0A: return 0x2A;
      000326 80 21            [24]  833 	sjmp	00119$
      000328                        834 00111$:
      000328 75 82 2A         [24]  835 	mov	dpl,#0x2A
                           00026C   836 	C$crc_4b6b.c$71$2$22 ==.
                                    837 ;	crc_4b6b.c:71: case 0x0B: return 0x0B;
      00032B 80 1C            [24]  838 	sjmp	00119$
      00032D                        839 00112$:
      00032D 75 82 0B         [24]  840 	mov	dpl,#0x0B
                           000271   841 	C$crc_4b6b.c$72$2$22 ==.
                                    842 ;	crc_4b6b.c:72: case 0x0C: return 0x2C;
      000330 80 17            [24]  843 	sjmp	00119$
      000332                        844 00113$:
      000332 75 82 2C         [24]  845 	mov	dpl,#0x2C
                           000276   846 	C$crc_4b6b.c$73$2$22 ==.
                                    847 ;	crc_4b6b.c:73: case 0x0D: return 0x0D;
      000335 80 12            [24]  848 	sjmp	00119$
      000337                        849 00114$:
      000337 75 82 0D         [24]  850 	mov	dpl,#0x0D
                           00027B   851 	C$crc_4b6b.c$74$2$22 ==.
                                    852 ;	crc_4b6b.c:74: case 0x0E: return 0x0E;
      00033A 80 0D            [24]  853 	sjmp	00119$
      00033C                        854 00115$:
      00033C 75 82 0E         [24]  855 	mov	dpl,#0x0E
                           000280   856 	C$crc_4b6b.c$75$2$22 ==.
                                    857 ;	crc_4b6b.c:75: case 0x0F: return 0x1C;
      00033F 80 08            [24]  858 	sjmp	00119$
      000341                        859 00116$:
      000341 75 82 1C         [24]  860 	mov	dpl,#0x1C
                           000285   861 	C$crc_4b6b.c$76$2$22 ==.
                                    862 ;	crc_4b6b.c:76: default:   return 0x00;
      000344 80 03            [24]  863 	sjmp	00119$
      000346                        864 00117$:
      000346 75 82 00         [24]  865 	mov	dpl,#0x00
                           00028A   866 	C$crc_4b6b.c$77$1$21 ==.
                                    867 ;	crc_4b6b.c:77: }
      000349                        868 00119$:
                           00028A   869 	C$crc_4b6b.c$78$1$21 ==.
                           00028A   870 	XG$get4b6bsymbol$0$0 ==.
      000349 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'decode4b6bsymbol'
                                    874 ;------------------------------------------------------------
                                    875 ;outSymbol                 Allocated with name '_decode4b6bsymbol_PARM_2'
                                    876 ;inSymbol                  Allocated with name '_decode4b6bsymbol_inSymbol_1_23'
                                    877 ;------------------------------------------------------------
                           00028B   878 	G$decode4b6bsymbol$0$0 ==.
                           00028B   879 	C$crc_4b6b.c$80$1$21 ==.
                                    880 ;	crc_4b6b.c:80: char decode4b6bsymbol( char inSymbol, char *outSymbol ) {
                                    881 ;	-----------------------------------------
                                    882 ;	 function decode4b6bsymbol
                                    883 ;	-----------------------------------------
      00034A                        884 _decode4b6bsymbol:
      00034A E5 82            [12]  885 	mov	a,dpl
      00034C 90 02 17         [24]  886 	mov	dptr,#_decode4b6bsymbol_inSymbol_1_23
      00034F F0               [24]  887 	movx	@dptr,a
                           000291   888 	C$crc_4b6b.c$81$1$24 ==.
                                    889 ;	crc_4b6b.c:81: switch( inSymbol ) {
      000350 E0               [24]  890 	movx	a,@dptr
      000351 FF               [12]  891 	mov	r7,a
      000352 BF 0B 03         [24]  892 	cjne	r7,#0x0B,00169$
      000355 02 04 E4         [24]  893 	ljmp	00112$
      000358                        894 00169$:
      000358 BF 0D 03         [24]  895 	cjne	r7,#0x0D,00170$
      00035B 02 05 1B         [24]  896 	ljmp	00114$
      00035E                        897 00170$:
      00035E BF 0E 03         [24]  898 	cjne	r7,#0x0E,00171$
      000361 02 05 36         [24]  899 	ljmp	00115$
      000364                        900 00171$:
      000364 BF 15 02         [24]  901 	cjne	r7,#0x15,00172$
      000367 80 48            [24]  902 	sjmp	00101$
      000369                        903 00172$:
      000369 BF 16 03         [24]  904 	cjne	r7,#0x16,00173$
      00036C 02 04 74         [24]  905 	ljmp	00108$
      00036F                        906 00173$:
      00036F BF 19 03         [24]  907 	cjne	r7,#0x19,00174$
      000372 02 04 AC         [24]  908 	ljmp	00110$
      000375                        909 00174$:
      000375 BF 1A 03         [24]  910 	cjne	r7,#0x1A,00175$
      000378 02 04 90         [24]  911 	ljmp	00109$
      00037B                        912 00175$:
      00037B BF 1C 03         [24]  913 	cjne	r7,#0x1C,00176$
      00037E 02 05 51         [24]  914 	ljmp	00116$
      000381                        915 00176$:
      000381 BF 23 03         [24]  916 	cjne	r7,#0x23,00177$
      000384 02 04 04         [24]  917 	ljmp	00104$
      000387                        918 00177$:
      000387 BF 25 03         [24]  919 	cjne	r7,#0x25,00178$
      00038A 02 04 3C         [24]  920 	ljmp	00106$
      00038D                        921 00178$:
      00038D BF 26 03         [24]  922 	cjne	r7,#0x26,00179$
      000390 02 04 58         [24]  923 	ljmp	00107$
      000393                        924 00179$:
      000393 BF 2A 03         [24]  925 	cjne	r7,#0x2A,00180$
      000396 02 04 C8         [24]  926 	ljmp	00111$
      000399                        927 00180$:
      000399 BF 2C 03         [24]  928 	cjne	r7,#0x2C,00181$
      00039C 02 05 00         [24]  929 	ljmp	00113$
      00039F                        930 00181$:
      00039F BF 31 02         [24]  931 	cjne	r7,#0x31,00182$
      0003A2 80 28            [24]  932 	sjmp	00102$
      0003A4                        933 00182$:
      0003A4 BF 32 02         [24]  934 	cjne	r7,#0x32,00183$
      0003A7 80 3F            [24]  935 	sjmp	00103$
      0003A9                        936 00183$:
      0003A9 BF 34 02         [24]  937 	cjne	r7,#0x34,00184$
      0003AC 80 72            [24]  938 	sjmp	00105$
      0003AE                        939 00184$:
      0003AE 02 05 6C         [24]  940 	ljmp	00117$
                           0002F2   941 	C$crc_4b6b.c$82$2$25 ==.
                                    942 ;	crc_4b6b.c:82: case 0x15: {*outSymbol = 0x00; return(0); }
      0003B1                        943 00101$:
      0003B1 90 02 14         [24]  944 	mov	dptr,#_decode4b6bsymbol_PARM_2
      0003B4 E0               [24]  945 	movx	a,@dptr
      0003B5 FD               [12]  946 	mov	r5,a
      0003B6 A3               [24]  947 	inc	dptr
      0003B7 E0               [24]  948 	movx	a,@dptr
      0003B8 FE               [12]  949 	mov	r6,a
      0003B9 A3               [24]  950 	inc	dptr
      0003BA E0               [24]  951 	movx	a,@dptr
      0003BB FF               [12]  952 	mov	r7,a
      0003BC 8D 82            [24]  953 	mov	dpl,r5
      0003BE 8E 83            [24]  954 	mov	dph,r6
      0003C0 8F F0            [24]  955 	mov	b,r7
      0003C2 E4               [12]  956 	clr	a
      0003C3 12 1B E8         [24]  957 	lcall	__gptrput
      0003C6 75 82 00         [24]  958 	mov	dpl,#0x00
      0003C9 02 05 84         [24]  959 	ljmp	00119$
                           00030D   960 	C$crc_4b6b.c$83$2$25 ==.
                                    961 ;	crc_4b6b.c:83: case 0x31: {*outSymbol = 0x01; return(0); }
      0003CC                        962 00102$:
      0003CC 90 02 14         [24]  963 	mov	dptr,#_decode4b6bsymbol_PARM_2
      0003CF E0               [24]  964 	movx	a,@dptr
      0003D0 FD               [12]  965 	mov	r5,a
      0003D1 A3               [24]  966 	inc	dptr
      0003D2 E0               [24]  967 	movx	a,@dptr
      0003D3 FE               [12]  968 	mov	r6,a
      0003D4 A3               [24]  969 	inc	dptr
      0003D5 E0               [24]  970 	movx	a,@dptr
      0003D6 FF               [12]  971 	mov	r7,a
      0003D7 8D 82            [24]  972 	mov	dpl,r5
      0003D9 8E 83            [24]  973 	mov	dph,r6
      0003DB 8F F0            [24]  974 	mov	b,r7
      0003DD 74 01            [12]  975 	mov	a,#0x01
      0003DF 12 1B E8         [24]  976 	lcall	__gptrput
      0003E2 75 82 00         [24]  977 	mov	dpl,#0x00
      0003E5 02 05 84         [24]  978 	ljmp	00119$
                           000329   979 	C$crc_4b6b.c$84$2$25 ==.
                                    980 ;	crc_4b6b.c:84: case 0x32: {*outSymbol = 0x02; return(0); }
      0003E8                        981 00103$:
      0003E8 90 02 14         [24]  982 	mov	dptr,#_decode4b6bsymbol_PARM_2
      0003EB E0               [24]  983 	movx	a,@dptr
      0003EC FD               [12]  984 	mov	r5,a
      0003ED A3               [24]  985 	inc	dptr
      0003EE E0               [24]  986 	movx	a,@dptr
      0003EF FE               [12]  987 	mov	r6,a
      0003F0 A3               [24]  988 	inc	dptr
      0003F1 E0               [24]  989 	movx	a,@dptr
      0003F2 FF               [12]  990 	mov	r7,a
      0003F3 8D 82            [24]  991 	mov	dpl,r5
      0003F5 8E 83            [24]  992 	mov	dph,r6
      0003F7 8F F0            [24]  993 	mov	b,r7
      0003F9 74 02            [12]  994 	mov	a,#0x02
      0003FB 12 1B E8         [24]  995 	lcall	__gptrput
      0003FE 75 82 00         [24]  996 	mov	dpl,#0x00
      000401 02 05 84         [24]  997 	ljmp	00119$
                           000345   998 	C$crc_4b6b.c$85$2$25 ==.
                                    999 ;	crc_4b6b.c:85: case 0x23: {*outSymbol = 0x03; return(0); }
      000404                       1000 00104$:
      000404 90 02 14         [24] 1001 	mov	dptr,#_decode4b6bsymbol_PARM_2
      000407 E0               [24] 1002 	movx	a,@dptr
      000408 FD               [12] 1003 	mov	r5,a
      000409 A3               [24] 1004 	inc	dptr
      00040A E0               [24] 1005 	movx	a,@dptr
      00040B FE               [12] 1006 	mov	r6,a
      00040C A3               [24] 1007 	inc	dptr
      00040D E0               [24] 1008 	movx	a,@dptr
      00040E FF               [12] 1009 	mov	r7,a
      00040F 8D 82            [24] 1010 	mov	dpl,r5
      000411 8E 83            [24] 1011 	mov	dph,r6
      000413 8F F0            [24] 1012 	mov	b,r7
      000415 74 03            [12] 1013 	mov	a,#0x03
      000417 12 1B E8         [24] 1014 	lcall	__gptrput
      00041A 75 82 00         [24] 1015 	mov	dpl,#0x00
      00041D 02 05 84         [24] 1016 	ljmp	00119$
                           000361  1017 	C$crc_4b6b.c$86$2$25 ==.
                                   1018 ;	crc_4b6b.c:86: case 0x34: {*outSymbol = 0x04; return(0); }
      000420                       1019 00105$:
      000420 90 02 14         [24] 1020 	mov	dptr,#_decode4b6bsymbol_PARM_2
      000423 E0               [24] 1021 	movx	a,@dptr
      000424 FD               [12] 1022 	mov	r5,a
      000425 A3               [24] 1023 	inc	dptr
      000426 E0               [24] 1024 	movx	a,@dptr
      000427 FE               [12] 1025 	mov	r6,a
      000428 A3               [24] 1026 	inc	dptr
      000429 E0               [24] 1027 	movx	a,@dptr
      00042A FF               [12] 1028 	mov	r7,a
      00042B 8D 82            [24] 1029 	mov	dpl,r5
      00042D 8E 83            [24] 1030 	mov	dph,r6
      00042F 8F F0            [24] 1031 	mov	b,r7
      000431 74 04            [12] 1032 	mov	a,#0x04
      000433 12 1B E8         [24] 1033 	lcall	__gptrput
      000436 75 82 00         [24] 1034 	mov	dpl,#0x00
      000439 02 05 84         [24] 1035 	ljmp	00119$
                           00037D  1036 	C$crc_4b6b.c$87$2$25 ==.
                                   1037 ;	crc_4b6b.c:87: case 0x25: {*outSymbol = 0x05; return(0); }
      00043C                       1038 00106$:
      00043C 90 02 14         [24] 1039 	mov	dptr,#_decode4b6bsymbol_PARM_2
      00043F E0               [24] 1040 	movx	a,@dptr
      000440 FD               [12] 1041 	mov	r5,a
      000441 A3               [24] 1042 	inc	dptr
      000442 E0               [24] 1043 	movx	a,@dptr
      000443 FE               [12] 1044 	mov	r6,a
      000444 A3               [24] 1045 	inc	dptr
      000445 E0               [24] 1046 	movx	a,@dptr
      000446 FF               [12] 1047 	mov	r7,a
      000447 8D 82            [24] 1048 	mov	dpl,r5
      000449 8E 83            [24] 1049 	mov	dph,r6
      00044B 8F F0            [24] 1050 	mov	b,r7
      00044D 74 05            [12] 1051 	mov	a,#0x05
      00044F 12 1B E8         [24] 1052 	lcall	__gptrput
      000452 75 82 00         [24] 1053 	mov	dpl,#0x00
      000455 02 05 84         [24] 1054 	ljmp	00119$
                           000399  1055 	C$crc_4b6b.c$88$2$25 ==.
                                   1056 ;	crc_4b6b.c:88: case 0x26: {*outSymbol = 0x06; return(0); }
      000458                       1057 00107$:
      000458 90 02 14         [24] 1058 	mov	dptr,#_decode4b6bsymbol_PARM_2
      00045B E0               [24] 1059 	movx	a,@dptr
      00045C FD               [12] 1060 	mov	r5,a
      00045D A3               [24] 1061 	inc	dptr
      00045E E0               [24] 1062 	movx	a,@dptr
      00045F FE               [12] 1063 	mov	r6,a
      000460 A3               [24] 1064 	inc	dptr
      000461 E0               [24] 1065 	movx	a,@dptr
      000462 FF               [12] 1066 	mov	r7,a
      000463 8D 82            [24] 1067 	mov	dpl,r5
      000465 8E 83            [24] 1068 	mov	dph,r6
      000467 8F F0            [24] 1069 	mov	b,r7
      000469 74 06            [12] 1070 	mov	a,#0x06
      00046B 12 1B E8         [24] 1071 	lcall	__gptrput
      00046E 75 82 00         [24] 1072 	mov	dpl,#0x00
      000471 02 05 84         [24] 1073 	ljmp	00119$
                           0003B5  1074 	C$crc_4b6b.c$89$2$25 ==.
                                   1075 ;	crc_4b6b.c:89: case 0x16: {*outSymbol = 0x07; return(0); }
      000474                       1076 00108$:
      000474 90 02 14         [24] 1077 	mov	dptr,#_decode4b6bsymbol_PARM_2
      000477 E0               [24] 1078 	movx	a,@dptr
      000478 FD               [12] 1079 	mov	r5,a
      000479 A3               [24] 1080 	inc	dptr
      00047A E0               [24] 1081 	movx	a,@dptr
      00047B FE               [12] 1082 	mov	r6,a
      00047C A3               [24] 1083 	inc	dptr
      00047D E0               [24] 1084 	movx	a,@dptr
      00047E FF               [12] 1085 	mov	r7,a
      00047F 8D 82            [24] 1086 	mov	dpl,r5
      000481 8E 83            [24] 1087 	mov	dph,r6
      000483 8F F0            [24] 1088 	mov	b,r7
      000485 74 07            [12] 1089 	mov	a,#0x07
      000487 12 1B E8         [24] 1090 	lcall	__gptrput
      00048A 75 82 00         [24] 1091 	mov	dpl,#0x00
      00048D 02 05 84         [24] 1092 	ljmp	00119$
                           0003D1  1093 	C$crc_4b6b.c$90$2$25 ==.
                                   1094 ;	crc_4b6b.c:90: case 0x1A: {*outSymbol = 0x08; return(0); }
      000490                       1095 00109$:
      000490 90 02 14         [24] 1096 	mov	dptr,#_decode4b6bsymbol_PARM_2
      000493 E0               [24] 1097 	movx	a,@dptr
      000494 FD               [12] 1098 	mov	r5,a
      000495 A3               [24] 1099 	inc	dptr
      000496 E0               [24] 1100 	movx	a,@dptr
      000497 FE               [12] 1101 	mov	r6,a
      000498 A3               [24] 1102 	inc	dptr
      000499 E0               [24] 1103 	movx	a,@dptr
      00049A FF               [12] 1104 	mov	r7,a
      00049B 8D 82            [24] 1105 	mov	dpl,r5
      00049D 8E 83            [24] 1106 	mov	dph,r6
      00049F 8F F0            [24] 1107 	mov	b,r7
      0004A1 74 08            [12] 1108 	mov	a,#0x08
      0004A3 12 1B E8         [24] 1109 	lcall	__gptrput
      0004A6 75 82 00         [24] 1110 	mov	dpl,#0x00
      0004A9 02 05 84         [24] 1111 	ljmp	00119$
                           0003ED  1112 	C$crc_4b6b.c$91$2$25 ==.
                                   1113 ;	crc_4b6b.c:91: case 0x19: {*outSymbol = 0x09; return(0); }
      0004AC                       1114 00110$:
      0004AC 90 02 14         [24] 1115 	mov	dptr,#_decode4b6bsymbol_PARM_2
      0004AF E0               [24] 1116 	movx	a,@dptr
      0004B0 FD               [12] 1117 	mov	r5,a
      0004B1 A3               [24] 1118 	inc	dptr
      0004B2 E0               [24] 1119 	movx	a,@dptr
      0004B3 FE               [12] 1120 	mov	r6,a
      0004B4 A3               [24] 1121 	inc	dptr
      0004B5 E0               [24] 1122 	movx	a,@dptr
      0004B6 FF               [12] 1123 	mov	r7,a
      0004B7 8D 82            [24] 1124 	mov	dpl,r5
      0004B9 8E 83            [24] 1125 	mov	dph,r6
      0004BB 8F F0            [24] 1126 	mov	b,r7
      0004BD 74 09            [12] 1127 	mov	a,#0x09
      0004BF 12 1B E8         [24] 1128 	lcall	__gptrput
      0004C2 75 82 00         [24] 1129 	mov	dpl,#0x00
      0004C5 02 05 84         [24] 1130 	ljmp	00119$
                           000409  1131 	C$crc_4b6b.c$92$2$25 ==.
                                   1132 ;	crc_4b6b.c:92: case 0x2A: {*outSymbol = 0x0A; return(0); }
      0004C8                       1133 00111$:
      0004C8 90 02 14         [24] 1134 	mov	dptr,#_decode4b6bsymbol_PARM_2
      0004CB E0               [24] 1135 	movx	a,@dptr
      0004CC FD               [12] 1136 	mov	r5,a
      0004CD A3               [24] 1137 	inc	dptr
      0004CE E0               [24] 1138 	movx	a,@dptr
      0004CF FE               [12] 1139 	mov	r6,a
      0004D0 A3               [24] 1140 	inc	dptr
      0004D1 E0               [24] 1141 	movx	a,@dptr
      0004D2 FF               [12] 1142 	mov	r7,a
      0004D3 8D 82            [24] 1143 	mov	dpl,r5
      0004D5 8E 83            [24] 1144 	mov	dph,r6
      0004D7 8F F0            [24] 1145 	mov	b,r7
      0004D9 74 0A            [12] 1146 	mov	a,#0x0A
      0004DB 12 1B E8         [24] 1147 	lcall	__gptrput
      0004DE 75 82 00         [24] 1148 	mov	dpl,#0x00
      0004E1 02 05 84         [24] 1149 	ljmp	00119$
                           000425  1150 	C$crc_4b6b.c$93$2$25 ==.
                                   1151 ;	crc_4b6b.c:93: case 0x0B: {*outSymbol = 0x0B; return(0); }
      0004E4                       1152 00112$:
      0004E4 90 02 14         [24] 1153 	mov	dptr,#_decode4b6bsymbol_PARM_2
      0004E7 E0               [24] 1154 	movx	a,@dptr
      0004E8 FD               [12] 1155 	mov	r5,a
      0004E9 A3               [24] 1156 	inc	dptr
      0004EA E0               [24] 1157 	movx	a,@dptr
      0004EB FE               [12] 1158 	mov	r6,a
      0004EC A3               [24] 1159 	inc	dptr
      0004ED E0               [24] 1160 	movx	a,@dptr
      0004EE FF               [12] 1161 	mov	r7,a
      0004EF 8D 82            [24] 1162 	mov	dpl,r5
      0004F1 8E 83            [24] 1163 	mov	dph,r6
      0004F3 8F F0            [24] 1164 	mov	b,r7
      0004F5 74 0B            [12] 1165 	mov	a,#0x0B
      0004F7 12 1B E8         [24] 1166 	lcall	__gptrput
      0004FA 75 82 00         [24] 1167 	mov	dpl,#0x00
      0004FD 02 05 84         [24] 1168 	ljmp	00119$
                           000441  1169 	C$crc_4b6b.c$94$2$25 ==.
                                   1170 ;	crc_4b6b.c:94: case 0x2C: {*outSymbol = 0x0C; return(0); }
      000500                       1171 00113$:
      000500 90 02 14         [24] 1172 	mov	dptr,#_decode4b6bsymbol_PARM_2
      000503 E0               [24] 1173 	movx	a,@dptr
      000504 FD               [12] 1174 	mov	r5,a
      000505 A3               [24] 1175 	inc	dptr
      000506 E0               [24] 1176 	movx	a,@dptr
      000507 FE               [12] 1177 	mov	r6,a
      000508 A3               [24] 1178 	inc	dptr
      000509 E0               [24] 1179 	movx	a,@dptr
      00050A FF               [12] 1180 	mov	r7,a
      00050B 8D 82            [24] 1181 	mov	dpl,r5
      00050D 8E 83            [24] 1182 	mov	dph,r6
      00050F 8F F0            [24] 1183 	mov	b,r7
      000511 74 0C            [12] 1184 	mov	a,#0x0C
      000513 12 1B E8         [24] 1185 	lcall	__gptrput
      000516 75 82 00         [24] 1186 	mov	dpl,#0x00
                           00045A  1187 	C$crc_4b6b.c$95$2$25 ==.
                                   1188 ;	crc_4b6b.c:95: case 0x0D: {*outSymbol = 0x0D; return(0); }
      000519 80 69            [24] 1189 	sjmp	00119$
      00051B                       1190 00114$:
      00051B 90 02 14         [24] 1191 	mov	dptr,#_decode4b6bsymbol_PARM_2
      00051E E0               [24] 1192 	movx	a,@dptr
      00051F FD               [12] 1193 	mov	r5,a
      000520 A3               [24] 1194 	inc	dptr
      000521 E0               [24] 1195 	movx	a,@dptr
      000522 FE               [12] 1196 	mov	r6,a
      000523 A3               [24] 1197 	inc	dptr
      000524 E0               [24] 1198 	movx	a,@dptr
      000525 FF               [12] 1199 	mov	r7,a
      000526 8D 82            [24] 1200 	mov	dpl,r5
      000528 8E 83            [24] 1201 	mov	dph,r6
      00052A 8F F0            [24] 1202 	mov	b,r7
      00052C 74 0D            [12] 1203 	mov	a,#0x0D
      00052E 12 1B E8         [24] 1204 	lcall	__gptrput
      000531 75 82 00         [24] 1205 	mov	dpl,#0x00
                           000475  1206 	C$crc_4b6b.c$96$2$25 ==.
                                   1207 ;	crc_4b6b.c:96: case 0x0E: {*outSymbol = 0x0E; return(0); }
      000534 80 4E            [24] 1208 	sjmp	00119$
      000536                       1209 00115$:
      000536 90 02 14         [24] 1210 	mov	dptr,#_decode4b6bsymbol_PARM_2
      000539 E0               [24] 1211 	movx	a,@dptr
      00053A FD               [12] 1212 	mov	r5,a
      00053B A3               [24] 1213 	inc	dptr
      00053C E0               [24] 1214 	movx	a,@dptr
      00053D FE               [12] 1215 	mov	r6,a
      00053E A3               [24] 1216 	inc	dptr
      00053F E0               [24] 1217 	movx	a,@dptr
      000540 FF               [12] 1218 	mov	r7,a
      000541 8D 82            [24] 1219 	mov	dpl,r5
      000543 8E 83            [24] 1220 	mov	dph,r6
      000545 8F F0            [24] 1221 	mov	b,r7
      000547 74 0E            [12] 1222 	mov	a,#0x0E
      000549 12 1B E8         [24] 1223 	lcall	__gptrput
      00054C 75 82 00         [24] 1224 	mov	dpl,#0x00
                           000490  1225 	C$crc_4b6b.c$97$2$25 ==.
                                   1226 ;	crc_4b6b.c:97: case 0x1C: {*outSymbol = 0x0F; return(0); }
      00054F 80 33            [24] 1227 	sjmp	00119$
      000551                       1228 00116$:
      000551 90 02 14         [24] 1229 	mov	dptr,#_decode4b6bsymbol_PARM_2
      000554 E0               [24] 1230 	movx	a,@dptr
      000555 FD               [12] 1231 	mov	r5,a
      000556 A3               [24] 1232 	inc	dptr
      000557 E0               [24] 1233 	movx	a,@dptr
      000558 FE               [12] 1234 	mov	r6,a
      000559 A3               [24] 1235 	inc	dptr
      00055A E0               [24] 1236 	movx	a,@dptr
      00055B FF               [12] 1237 	mov	r7,a
      00055C 8D 82            [24] 1238 	mov	dpl,r5
      00055E 8E 83            [24] 1239 	mov	dph,r6
      000560 8F F0            [24] 1240 	mov	b,r7
      000562 74 0F            [12] 1241 	mov	a,#0x0F
      000564 12 1B E8         [24] 1242 	lcall	__gptrput
      000567 75 82 00         [24] 1243 	mov	dpl,#0x00
                           0004AB  1244 	C$crc_4b6b.c$98$2$25 ==.
                                   1245 ;	crc_4b6b.c:98: default:   {*outSymbol = 0x00; return(1); }
      00056A 80 18            [24] 1246 	sjmp	00119$
      00056C                       1247 00117$:
      00056C 90 02 14         [24] 1248 	mov	dptr,#_decode4b6bsymbol_PARM_2
      00056F E0               [24] 1249 	movx	a,@dptr
      000570 FD               [12] 1250 	mov	r5,a
      000571 A3               [24] 1251 	inc	dptr
      000572 E0               [24] 1252 	movx	a,@dptr
      000573 FE               [12] 1253 	mov	r6,a
      000574 A3               [24] 1254 	inc	dptr
      000575 E0               [24] 1255 	movx	a,@dptr
      000576 FF               [12] 1256 	mov	r7,a
      000577 8D 82            [24] 1257 	mov	dpl,r5
      000579 8E 83            [24] 1258 	mov	dph,r6
      00057B 8F F0            [24] 1259 	mov	b,r7
      00057D E4               [12] 1260 	clr	a
      00057E 12 1B E8         [24] 1261 	lcall	__gptrput
      000581 75 82 01         [24] 1262 	mov	dpl,#0x01
                           0004C5  1263 	C$crc_4b6b.c$99$1$24 ==.
                                   1264 ;	crc_4b6b.c:99: }
      000584                       1265 00119$:
                           0004C5  1266 	C$crc_4b6b.c$100$1$24 ==.
                           0004C5  1267 	XG$decode4b6bsymbol$0$0 ==.
      000584 22               [24] 1268 	ret
                                   1269 ;------------------------------------------------------------
                                   1270 ;Allocation info for local variables in function 'encode4b6b'
                                   1271 ;------------------------------------------------------------
                                   1272 ;sloc0                     Allocated with name '_encode4b6b_sloc0_1_0'
                                   1273 ;sloc1                     Allocated with name '_encode4b6b_sloc1_1_0'
                                   1274 ;sloc2                     Allocated with name '_encode4b6b_sloc2_1_0'
                                   1275 ;sloc3                     Allocated with name '_encode4b6b_sloc3_1_0'
                                   1276 ;sloc4                     Allocated with name '_encode4b6b_sloc4_1_0'
                                   1277 ;sloc5                     Allocated with name '_encode4b6b_sloc5_1_0'
                                   1278 ;sloc6                     Allocated with name '_encode4b6b_sloc6_1_0'
                                   1279 ;bytesIn                   Allocated with name '_encode4b6b_PARM_2'
                                   1280 ;messageOut                Allocated with name '_encode4b6b_PARM_3'
                                   1281 ;bytesOut                  Allocated with name '_encode4b6b_PARM_4'
                                   1282 ;messageIn                 Allocated with name '_encode4b6b_messageIn_1_43'
                                   1283 ;i                         Allocated with name '_encode4b6b_i_1_44'
                                   1284 ;j                         Allocated with name '_encode4b6b_j_1_44'
                                   1285 ;intBuffer                 Allocated with name '_encode4b6b_intBuffer_1_44'
                                   1286 ;mask                      Allocated with name '_encode4b6b_mask_1_44'
                                   1287 ;intBitsAvailable          Allocated with name '_encode4b6b_intBitsAvailable_1_44'
                                   1288 ;symbol                    Allocated with name '_encode4b6b_symbol_1_44'
                                   1289 ;------------------------------------------------------------
                           0004C6  1290 	G$encode4b6b$0$0 ==.
                           0004C6  1291 	C$crc_4b6b.c$102$1$24 ==.
                                   1292 ;	crc_4b6b.c:102: void encode4b6b( char *messageIn, unsigned int bytesIn, char *messageOut, unsigned int *bytesOut ) {
                                   1293 ;	-----------------------------------------
                                   1294 ;	 function encode4b6b
                                   1295 ;	-----------------------------------------
      000585                       1296 _encode4b6b:
      000585 AF F0            [24] 1297 	mov	r7,b
      000587 AE 83            [24] 1298 	mov	r6,dph
      000589 E5 82            [12] 1299 	mov	a,dpl
      00058B 90 02 20         [24] 1300 	mov	dptr,#_encode4b6b_messageIn_1_43
      00058E F0               [24] 1301 	movx	@dptr,a
      00058F EE               [12] 1302 	mov	a,r6
      000590 A3               [24] 1303 	inc	dptr
      000591 F0               [24] 1304 	movx	@dptr,a
      000592 EF               [12] 1305 	mov	a,r7
      000593 A3               [24] 1306 	inc	dptr
      000594 F0               [24] 1307 	movx	@dptr,a
                           0004D6  1308 	C$crc_4b6b.c$110$1$44 ==.
                                   1309 ;	crc_4b6b.c:110: *bytesOut = 0;
      000595 90 02 1D         [24] 1310 	mov	dptr,#_encode4b6b_PARM_4
      000598 E0               [24] 1311 	movx	a,@dptr
      000599 FD               [12] 1312 	mov	r5,a
      00059A A3               [24] 1313 	inc	dptr
      00059B E0               [24] 1314 	movx	a,@dptr
      00059C FE               [12] 1315 	mov	r6,a
      00059D A3               [24] 1316 	inc	dptr
      00059E E0               [24] 1317 	movx	a,@dptr
      00059F FF               [12] 1318 	mov	r7,a
      0005A0 8D 82            [24] 1319 	mov	dpl,r5
      0005A2 8E 83            [24] 1320 	mov	dph,r6
      0005A4 8F F0            [24] 1321 	mov	b,r7
      0005A6 E4               [12] 1322 	clr	a
      0005A7 12 1B E8         [24] 1323 	lcall	__gptrput
      0005AA A3               [24] 1324 	inc	dptr
      0005AB 12 1B E8         [24] 1325 	lcall	__gptrput
                           0004EF  1326 	C$crc_4b6b.c$111$1$44 ==.
                                   1327 ;	crc_4b6b.c:111: intBitsAvailable = 0;
      0005AE 90 02 25         [24] 1328 	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
      0005B1 F0               [24] 1329 	movx	@dptr,a
      0005B2 A3               [24] 1330 	inc	dptr
      0005B3 F0               [24] 1331 	movx	@dptr,a
                           0004F5  1332 	C$crc_4b6b.c$112$1$44 ==.
                                   1333 ;	crc_4b6b.c:112: intBuffer = 0;
      0005B4 90 02 23         [24] 1334 	mov	dptr,#_encode4b6b_intBuffer_1_44
      0005B7 F0               [24] 1335 	movx	@dptr,a
      0005B8 A3               [24] 1336 	inc	dptr
      0005B9 F0               [24] 1337 	movx	@dptr,a
                           0004FB  1338 	C$crc_4b6b.c$114$3$47 ==.
                                   1339 ;	crc_4b6b.c:114: for( i = 0; i < bytesIn * 2; i++ ) {
      0005BA 90 02 20         [24] 1340 	mov	dptr,#_encode4b6b_messageIn_1_43
      0005BD E0               [24] 1341 	movx	a,@dptr
      0005BE F5 2B            [12] 1342 	mov	_encode4b6b_sloc4_1_0,a
      0005C0 A3               [24] 1343 	inc	dptr
      0005C1 E0               [24] 1344 	movx	a,@dptr
      0005C2 F5 2C            [12] 1345 	mov	(_encode4b6b_sloc4_1_0 + 1),a
      0005C4 A3               [24] 1346 	inc	dptr
      0005C5 E0               [24] 1347 	movx	a,@dptr
      0005C6 F5 2D            [12] 1348 	mov	(_encode4b6b_sloc4_1_0 + 2),a
      0005C8 85 2B 21         [24] 1349 	mov	_encode4b6b_sloc0_1_0,_encode4b6b_sloc4_1_0
      0005CB 85 2C 22         [24] 1350 	mov	(_encode4b6b_sloc0_1_0 + 1),(_encode4b6b_sloc4_1_0 + 1)
      0005CE 85 2D 23         [24] 1351 	mov	(_encode4b6b_sloc0_1_0 + 2),(_encode4b6b_sloc4_1_0 + 2)
      0005D1 90 02 1A         [24] 1352 	mov	dptr,#_encode4b6b_PARM_3
      0005D4 E0               [24] 1353 	movx	a,@dptr
      0005D5 F5 24            [12] 1354 	mov	_encode4b6b_sloc1_1_0,a
      0005D7 A3               [24] 1355 	inc	dptr
      0005D8 E0               [24] 1356 	movx	a,@dptr
      0005D9 F5 25            [12] 1357 	mov	(_encode4b6b_sloc1_1_0 + 1),a
      0005DB A3               [24] 1358 	inc	dptr
      0005DC E0               [24] 1359 	movx	a,@dptr
      0005DD F5 26            [12] 1360 	mov	(_encode4b6b_sloc1_1_0 + 2),a
      0005DF 90 02 18         [24] 1361 	mov	dptr,#_encode4b6b_PARM_2
      0005E2 E0               [24] 1362 	movx	a,@dptr
      0005E3 F8               [12] 1363 	mov	r0,a
      0005E4 A3               [24] 1364 	inc	dptr
      0005E5 E0               [24] 1365 	movx	a,@dptr
      0005E6 F9               [12] 1366 	mov	r1,a
      0005E7 88 2E            [24] 1367 	mov	_encode4b6b_sloc5_1_0,r0
      0005E9 C5 2E            [12] 1368 	xch	a,_encode4b6b_sloc5_1_0
      0005EB 25 E0            [12] 1369 	add	a,acc
      0005ED C5 2E            [12] 1370 	xch	a,_encode4b6b_sloc5_1_0
      0005EF 33               [12] 1371 	rlc	a
      0005F0 F5 2F            [12] 1372 	mov	(_encode4b6b_sloc5_1_0 + 1),a
      0005F2 E4               [12] 1373 	clr	a
      0005F3 F5 27            [12] 1374 	mov	_encode4b6b_sloc2_1_0,a
      0005F5 F5 28            [12] 1375 	mov	(_encode4b6b_sloc2_1_0 + 1),a
      0005F7                       1376 00110$:
      0005F7 C3               [12] 1377 	clr	c
      0005F8 E5 27            [12] 1378 	mov	a,_encode4b6b_sloc2_1_0
      0005FA 95 2E            [12] 1379 	subb	a,_encode4b6b_sloc5_1_0
      0005FC E5 28            [12] 1380 	mov	a,(_encode4b6b_sloc2_1_0 + 1)
      0005FE 95 2F            [12] 1381 	subb	a,(_encode4b6b_sloc5_1_0 + 1)
      000600 40 03            [24] 1382 	jc	00130$
      000602 02 07 99         [24] 1383 	ljmp	00106$
      000605                       1384 00130$:
                           000546  1385 	C$crc_4b6b.c$115$1$44 ==.
                                   1386 ;	crc_4b6b.c:115: j = i >> 1;
      000605 85 27 29         [24] 1387 	mov	_encode4b6b_sloc3_1_0,_encode4b6b_sloc2_1_0
      000608 E5 28            [12] 1388 	mov	a,(_encode4b6b_sloc2_1_0 + 1)
      00060A C3               [12] 1389 	clr	c
      00060B 13               [12] 1390 	rrc	a
      00060C C5 29            [12] 1391 	xch	a,_encode4b6b_sloc3_1_0
      00060E 13               [12] 1392 	rrc	a
      00060F C5 29            [12] 1393 	xch	a,_encode4b6b_sloc3_1_0
                           000552  1394 	C$crc_4b6b.c$116$2$45 ==.
                                   1395 ;	crc_4b6b.c:116: if( j * 2 == i ) {
      000611 F5 2A            [12] 1396 	mov	(_encode4b6b_sloc3_1_0 + 1),a
      000613 A8 29            [24] 1397 	mov	r0,_encode4b6b_sloc3_1_0
      000615 C8               [12] 1398 	xch	a,r0
      000616 25 E0            [12] 1399 	add	a,acc
      000618 C8               [12] 1400 	xch	a,r0
      000619 33               [12] 1401 	rlc	a
      00061A F9               [12] 1402 	mov	r1,a
      00061B E8               [12] 1403 	mov	a,r0
      00061C B5 27 2C         [24] 1404 	cjne	a,_encode4b6b_sloc2_1_0,00102$
      00061F E9               [12] 1405 	mov	a,r1
      000620 B5 28 28         [24] 1406 	cjne	a,(_encode4b6b_sloc2_1_0 + 1),00102$
                           000564  1407 	C$crc_4b6b.c$117$1$44 ==.
                                   1408 ;	crc_4b6b.c:117: symbol = (messageIn[j] >> 4) & 0x0F;
      000623 E5 29            [12] 1409 	mov	a,_encode4b6b_sloc3_1_0
      000625 25 21            [12] 1410 	add	a,_encode4b6b_sloc0_1_0
      000627 F8               [12] 1411 	mov	r0,a
      000628 E5 2A            [12] 1412 	mov	a,(_encode4b6b_sloc3_1_0 + 1)
      00062A 35 22            [12] 1413 	addc	a,(_encode4b6b_sloc0_1_0 + 1)
      00062C F9               [12] 1414 	mov	r1,a
      00062D AC 23            [24] 1415 	mov	r4,(_encode4b6b_sloc0_1_0 + 2)
      00062F 88 82            [24] 1416 	mov	dpl,r0
      000631 89 83            [24] 1417 	mov	dph,r1
      000633 8C F0            [24] 1418 	mov	b,r4
      000635 12 1C 03         [24] 1419 	lcall	__gptrget
      000638 F8               [12] 1420 	mov	r0,a
      000639 C4               [12] 1421 	swap	a
      00063A 54 0F            [12] 1422 	anl	a,#0x0F
      00063C 30 E3 02         [24] 1423 	jnb	acc.3,00133$
      00063F 44 F0            [12] 1424 	orl	a,#0xF0
      000641                       1425 00133$:
      000641 F8               [12] 1426 	mov	r0,a
      000642 90 02 27         [24] 1427 	mov	dptr,#_encode4b6b_symbol_1_44
      000645 74 0F            [12] 1428 	mov	a,#0x0F
      000647 58               [12] 1429 	anl	a,r0
      000648 F0               [24] 1430 	movx	@dptr,a
      000649 80 1D            [24] 1431 	sjmp	00103$
      00064B                       1432 00102$:
                           00058C  1433 	C$crc_4b6b.c$119$3$47 ==.
                                   1434 ;	crc_4b6b.c:119: symbol = messageIn[j] & 0x0F;
      00064B E5 29            [12] 1435 	mov	a,_encode4b6b_sloc3_1_0
      00064D 25 2B            [12] 1436 	add	a,_encode4b6b_sloc4_1_0
      00064F FA               [12] 1437 	mov	r2,a
      000650 E5 2A            [12] 1438 	mov	a,(_encode4b6b_sloc3_1_0 + 1)
      000652 35 2C            [12] 1439 	addc	a,(_encode4b6b_sloc4_1_0 + 1)
      000654 FB               [12] 1440 	mov	r3,a
      000655 AC 2D            [24] 1441 	mov	r4,(_encode4b6b_sloc4_1_0 + 2)
      000657 8A 82            [24] 1442 	mov	dpl,r2
      000659 8B 83            [24] 1443 	mov	dph,r3
      00065B 8C F0            [24] 1444 	mov	b,r4
      00065D 12 1C 03         [24] 1445 	lcall	__gptrget
      000660 FA               [12] 1446 	mov	r2,a
      000661 90 02 27         [24] 1447 	mov	dptr,#_encode4b6b_symbol_1_44
      000664 74 0F            [12] 1448 	mov	a,#0x0F
      000666 5A               [12] 1449 	anl	a,r2
      000667 F0               [24] 1450 	movx	@dptr,a
      000668                       1451 00103$:
                           0005A9  1452 	C$crc_4b6b.c$121$1$44 ==.
                                   1453 ;	crc_4b6b.c:121: symbol = get4b6bsymbol( symbol );
      000668 90 02 27         [24] 1454 	mov	dptr,#_encode4b6b_symbol_1_44
      00066B E0               [24] 1455 	movx	a,@dptr
      00066C F5 82            [12] 1456 	mov	dpl,a
      00066E C0 07            [24] 1457 	push	ar7
      000670 C0 06            [24] 1458 	push	ar6
      000672 C0 05            [24] 1459 	push	ar5
      000674 12 02 AB         [24] 1460 	lcall	_get4b6bsymbol
      000677 AC 82            [24] 1461 	mov	r4,dpl
      000679 D0 05            [24] 1462 	pop	ar5
      00067B D0 06            [24] 1463 	pop	ar6
      00067D D0 07            [24] 1464 	pop	ar7
                           0005C0  1465 	C$crc_4b6b.c$122$2$45 ==.
                                   1466 ;	crc_4b6b.c:122: intBuffer = (intBuffer << 6) & 0xFFC0;
      00067F 90 02 23         [24] 1467 	mov	dptr,#_encode4b6b_intBuffer_1_44
      000682 E0               [24] 1468 	movx	a,@dptr
      000683 FA               [12] 1469 	mov	r2,a
      000684 A3               [24] 1470 	inc	dptr
      000685 E0               [24] 1471 	movx	a,@dptr
      000686 54 03            [12] 1472 	anl	a,#0x03
      000688 A2 E0            [12] 1473 	mov	c,acc.0
      00068A CA               [12] 1474 	xch	a,r2
      00068B 13               [12] 1475 	rrc	a
      00068C CA               [12] 1476 	xch	a,r2
      00068D 13               [12] 1477 	rrc	a
      00068E A2 E0            [12] 1478 	mov	c,acc.0
      000690 CA               [12] 1479 	xch	a,r2
      000691 13               [12] 1480 	rrc	a
      000692 CA               [12] 1481 	xch	a,r2
      000693 13               [12] 1482 	rrc	a
      000694 CA               [12] 1483 	xch	a,r2
      000695 FB               [12] 1484 	mov	r3,a
      000696 90 02 23         [24] 1485 	mov	dptr,#_encode4b6b_intBuffer_1_44
      000699 74 C0            [12] 1486 	mov	a,#0xC0
      00069B 5A               [12] 1487 	anl	a,r2
      00069C F0               [24] 1488 	movx	@dptr,a
      00069D EB               [12] 1489 	mov	a,r3
      00069E A3               [24] 1490 	inc	dptr
      00069F F0               [24] 1491 	movx	@dptr,a
                           0005E1  1492 	C$crc_4b6b.c$123$2$45 ==.
                                   1493 ;	crc_4b6b.c:123: intBuffer = intBuffer | symbol;
      0006A0 90 02 23         [24] 1494 	mov	dptr,#_encode4b6b_intBuffer_1_44
      0006A3 E0               [24] 1495 	movx	a,@dptr
      0006A4 FA               [12] 1496 	mov	r2,a
      0006A5 A3               [24] 1497 	inc	dptr
      0006A6 E0               [24] 1498 	movx	a,@dptr
      0006A7 FB               [12] 1499 	mov	r3,a
      0006A8 EC               [12] 1500 	mov	a,r4
      0006A9 F9               [12] 1501 	mov	r1,a
      0006AA 33               [12] 1502 	rlc	a
      0006AB 95 E0            [12] 1503 	subb	a,acc
      0006AD FC               [12] 1504 	mov	r4,a
      0006AE 90 02 23         [24] 1505 	mov	dptr,#_encode4b6b_intBuffer_1_44
      0006B1 E9               [12] 1506 	mov	a,r1
      0006B2 4A               [12] 1507 	orl	a,r2
      0006B3 F0               [24] 1508 	movx	@dptr,a
      0006B4 EC               [12] 1509 	mov	a,r4
      0006B5 4B               [12] 1510 	orl	a,r3
      0006B6 A3               [24] 1511 	inc	dptr
      0006B7 F0               [24] 1512 	movx	@dptr,a
                           0005F9  1513 	C$crc_4b6b.c$124$2$45 ==.
                                   1514 ;	crc_4b6b.c:124: intBitsAvailable += 6;
      0006B8 90 02 25         [24] 1515 	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
      0006BB E0               [24] 1516 	movx	a,@dptr
      0006BC FB               [12] 1517 	mov	r3,a
      0006BD A3               [24] 1518 	inc	dptr
      0006BE E0               [24] 1519 	movx	a,@dptr
      0006BF FC               [12] 1520 	mov	r4,a
      0006C0 90 02 25         [24] 1521 	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
      0006C3 74 06            [12] 1522 	mov	a,#0x06
      0006C5 2B               [12] 1523 	add	a,r3
      0006C6 F0               [24] 1524 	movx	@dptr,a
      0006C7 E4               [12] 1525 	clr	a
      0006C8 3C               [12] 1526 	addc	a,r4
      0006C9 A3               [24] 1527 	inc	dptr
      0006CA F0               [24] 1528 	movx	@dptr,a
                           00060C  1529 	C$crc_4b6b.c$125$2$45 ==.
                                   1530 ;	crc_4b6b.c:125: if( intBitsAvailable >= 8 ) {
      0006CB 90 02 25         [24] 1531 	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
      0006CE E0               [24] 1532 	movx	a,@dptr
      0006CF F5 29            [12] 1533 	mov	_encode4b6b_sloc3_1_0,a
      0006D1 A3               [24] 1534 	inc	dptr
      0006D2 E0               [24] 1535 	movx	a,@dptr
      0006D3 F5 2A            [12] 1536 	mov	(_encode4b6b_sloc3_1_0 + 1),a
      0006D5 C3               [12] 1537 	clr	c
      0006D6 E5 29            [12] 1538 	mov	a,_encode4b6b_sloc3_1_0
      0006D8 94 08            [12] 1539 	subb	a,#0x08
      0006DA E5 2A            [12] 1540 	mov	a,(_encode4b6b_sloc3_1_0 + 1)
      0006DC 64 80            [12] 1541 	xrl	a,#0x80
      0006DE 94 80            [12] 1542 	subb	a,#0x80
      0006E0 50 03            [24] 1543 	jnc	00134$
      0006E2 02 07 8E         [24] 1544 	ljmp	00111$
      0006E5                       1545 00134$:
                           000626  1546 	C$crc_4b6b.c$126$3$48 ==.
                                   1547 ;	crc_4b6b.c:126: symbol = intBuffer >> (intBitsAvailable - 8);
      0006E5 E5 29            [12] 1548 	mov	a,_encode4b6b_sloc3_1_0
      0006E7 24 F8            [12] 1549 	add	a,#0xF8
      0006E9 FB               [12] 1550 	mov	r3,a
      0006EA E5 2A            [12] 1551 	mov	a,(_encode4b6b_sloc3_1_0 + 1)
      0006EC 34 FF            [12] 1552 	addc	a,#0xFF
      0006EE FC               [12] 1553 	mov	r4,a
      0006EF 90 02 23         [24] 1554 	mov	dptr,#_encode4b6b_intBuffer_1_44
      0006F2 E0               [24] 1555 	movx	a,@dptr
      0006F3 F5 29            [12] 1556 	mov	_encode4b6b_sloc3_1_0,a
      0006F5 A3               [24] 1557 	inc	dptr
      0006F6 E0               [24] 1558 	movx	a,@dptr
      0006F7 F5 2A            [12] 1559 	mov	(_encode4b6b_sloc3_1_0 + 1),a
      0006F9 8B F0            [24] 1560 	mov	b,r3
      0006FB 05 F0            [12] 1561 	inc	b
      0006FD A8 29            [24] 1562 	mov	r0,_encode4b6b_sloc3_1_0
      0006FF E5 2A            [12] 1563 	mov	a,(_encode4b6b_sloc3_1_0 + 1)
      000701 FA               [12] 1564 	mov	r2,a
      000702 33               [12] 1565 	rlc	a
      000703 92 D2            [24] 1566 	mov	ov,c
      000705 80 08            [24] 1567 	sjmp	00136$
      000707                       1568 00135$:
      000707 A2 D2            [12] 1569 	mov	c,ov
      000709 EA               [12] 1570 	mov	a,r2
      00070A 13               [12] 1571 	rrc	a
      00070B FA               [12] 1572 	mov	r2,a
      00070C E8               [12] 1573 	mov	a,r0
      00070D 13               [12] 1574 	rrc	a
      00070E F8               [12] 1575 	mov	r0,a
      00070F                       1576 00136$:
      00070F D5 F0 F5         [24] 1577 	djnz	b,00135$
      000712 88 30            [24] 1578 	mov	_encode4b6b_sloc6_1_0,r0
                           000655  1579 	C$crc_4b6b.c$127$3$48 ==.
                                   1580 ;	crc_4b6b.c:127: messageOut[*bytesOut] = symbol;
      000714 8D 82            [24] 1581 	mov	dpl,r5
      000716 8E 83            [24] 1582 	mov	dph,r6
      000718 8F F0            [24] 1583 	mov	b,r7
      00071A 12 1C 03         [24] 1584 	lcall	__gptrget
      00071D F9               [12] 1585 	mov	r1,a
      00071E A3               [24] 1586 	inc	dptr
      00071F 12 1C 03         [24] 1587 	lcall	__gptrget
      000722 FA               [12] 1588 	mov	r2,a
      000723 E9               [12] 1589 	mov	a,r1
      000724 25 24            [12] 1590 	add	a,_encode4b6b_sloc1_1_0
      000726 F9               [12] 1591 	mov	r1,a
      000727 EA               [12] 1592 	mov	a,r2
      000728 35 25            [12] 1593 	addc	a,(_encode4b6b_sloc1_1_0 + 1)
      00072A F8               [12] 1594 	mov	r0,a
      00072B AA 26            [24] 1595 	mov	r2,(_encode4b6b_sloc1_1_0 + 2)
      00072D 89 82            [24] 1596 	mov	dpl,r1
      00072F 88 83            [24] 1597 	mov	dph,r0
      000731 8A F0            [24] 1598 	mov	b,r2
      000733 E5 30            [12] 1599 	mov	a,_encode4b6b_sloc6_1_0
      000735 12 1B E8         [24] 1600 	lcall	__gptrput
                           000679  1601 	C$crc_4b6b.c$128$3$48 ==.
                                   1602 ;	crc_4b6b.c:128: (*bytesOut)++;
      000738 8D 82            [24] 1603 	mov	dpl,r5
      00073A 8E 83            [24] 1604 	mov	dph,r6
      00073C 8F F0            [24] 1605 	mov	b,r7
      00073E 12 1C 03         [24] 1606 	lcall	__gptrget
      000741 F9               [12] 1607 	mov	r1,a
      000742 A3               [24] 1608 	inc	dptr
      000743 12 1C 03         [24] 1609 	lcall	__gptrget
      000746 FA               [12] 1610 	mov	r2,a
      000747 09               [12] 1611 	inc	r1
      000748 B9 00 01         [24] 1612 	cjne	r1,#0x00,00137$
      00074B 0A               [12] 1613 	inc	r2
      00074C                       1614 00137$:
      00074C 8D 82            [24] 1615 	mov	dpl,r5
      00074E 8E 83            [24] 1616 	mov	dph,r6
      000750 8F F0            [24] 1617 	mov	b,r7
      000752 E9               [12] 1618 	mov	a,r1
      000753 12 1B E8         [24] 1619 	lcall	__gptrput
      000756 A3               [24] 1620 	inc	dptr
      000757 EA               [12] 1621 	mov	a,r2
      000758 12 1B E8         [24] 1622 	lcall	__gptrput
                           00069C  1623 	C$crc_4b6b.c$129$3$48 ==.
                                   1624 ;	crc_4b6b.c:129: intBitsAvailable -= 8;
      00075B 90 02 25         [24] 1625 	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
      00075E EB               [12] 1626 	mov	a,r3
      00075F F0               [24] 1627 	movx	@dptr,a
      000760 EC               [12] 1628 	mov	a,r4
      000761 A3               [24] 1629 	inc	dptr
      000762 F0               [24] 1630 	movx	@dptr,a
                           0006A4  1631 	C$crc_4b6b.c$130$3$48 ==.
                                   1632 ;	crc_4b6b.c:130: mask = (1 << intBitsAvailable) - 1;
      000763 90 02 25         [24] 1633 	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
      000766 E0               [24] 1634 	movx	a,@dptr
      000767 FB               [12] 1635 	mov	r3,a
      000768 A3               [24] 1636 	inc	dptr
      000769 E0               [24] 1637 	movx	a,@dptr
      00076A 8B F0            [24] 1638 	mov	b,r3
      00076C 05 F0            [12] 1639 	inc	b
      00076E 7B 01            [12] 1640 	mov	r3,#0x01
      000770 7C 00            [12] 1641 	mov	r4,#0x00
      000772 80 06            [24] 1642 	sjmp	00139$
      000774                       1643 00138$:
      000774 EB               [12] 1644 	mov	a,r3
      000775 2B               [12] 1645 	add	a,r3
      000776 FB               [12] 1646 	mov	r3,a
      000777 EC               [12] 1647 	mov	a,r4
      000778 33               [12] 1648 	rlc	a
      000779 FC               [12] 1649 	mov	r4,a
      00077A                       1650 00139$:
      00077A D5 F0 F7         [24] 1651 	djnz	b,00138$
      00077D 1B               [12] 1652 	dec	r3
      00077E BB FF 01         [24] 1653 	cjne	r3,#0xFF,00140$
      000781 1C               [12] 1654 	dec	r4
      000782                       1655 00140$:
                           0006C3  1656 	C$crc_4b6b.c$131$3$48 ==.
                                   1657 ;	crc_4b6b.c:131: intBuffer = intBuffer & mask;
      000782 90 02 23         [24] 1658 	mov	dptr,#_encode4b6b_intBuffer_1_44
      000785 EB               [12] 1659 	mov	a,r3
      000786 55 29            [12] 1660 	anl	a,_encode4b6b_sloc3_1_0
      000788 F0               [24] 1661 	movx	@dptr,a
      000789 EC               [12] 1662 	mov	a,r4
      00078A 55 2A            [12] 1663 	anl	a,(_encode4b6b_sloc3_1_0 + 1)
      00078C A3               [24] 1664 	inc	dptr
      00078D F0               [24] 1665 	movx	@dptr,a
      00078E                       1666 00111$:
                           0006CF  1667 	C$crc_4b6b.c$114$1$44 ==.
                                   1668 ;	crc_4b6b.c:114: for( i = 0; i < bytesIn * 2; i++ ) {
      00078E 05 27            [12] 1669 	inc	_encode4b6b_sloc2_1_0
      000790 E4               [12] 1670 	clr	a
      000791 B5 27 02         [24] 1671 	cjne	a,_encode4b6b_sloc2_1_0,00141$
      000794 05 28            [12] 1672 	inc	(_encode4b6b_sloc2_1_0 + 1)
      000796                       1673 00141$:
      000796 02 05 F7         [24] 1674 	ljmp	00110$
      000799                       1675 00106$:
                           0006DA  1676 	C$crc_4b6b.c$135$1$44 ==.
                                   1677 ;	crc_4b6b.c:135: if( intBitsAvailable != 0 ) {
      000799 90 02 25         [24] 1678 	mov	dptr,#_encode4b6b_intBitsAvailable_1_44
      00079C E0               [24] 1679 	movx	a,@dptr
      00079D FB               [12] 1680 	mov	r3,a
      00079E A3               [24] 1681 	inc	dptr
      00079F E0               [24] 1682 	movx	a,@dptr
      0007A0 FC               [12] 1683 	mov	r4,a
      0007A1 4B               [12] 1684 	orl	a,r3
      0007A2 70 03            [24] 1685 	jnz	00142$
      0007A4 02 08 4F         [24] 1686 	ljmp	00112$
      0007A7                       1687 00142$:
                           0006E8  1688 	C$crc_4b6b.c$136$2$49 ==.
                                   1689 ;	crc_4b6b.c:136: mask = (1 << intBitsAvailable) - 1;
      0007A7 8B F0            [24] 1690 	mov	b,r3
      0007A9 05 F0            [12] 1691 	inc	b
      0007AB 79 01            [12] 1692 	mov	r1,#0x01
      0007AD 7A 00            [12] 1693 	mov	r2,#0x00
      0007AF 80 06            [24] 1694 	sjmp	00144$
      0007B1                       1695 00143$:
      0007B1 E9               [12] 1696 	mov	a,r1
      0007B2 29               [12] 1697 	add	a,r1
      0007B3 F9               [12] 1698 	mov	r1,a
      0007B4 EA               [12] 1699 	mov	a,r2
      0007B5 33               [12] 1700 	rlc	a
      0007B6 FA               [12] 1701 	mov	r2,a
      0007B7                       1702 00144$:
      0007B7 D5 F0 F7         [24] 1703 	djnz	b,00143$
      0007BA E9               [12] 1704 	mov	a,r1
      0007BB 24 FF            [12] 1705 	add	a,#0xFF
      0007BD F5 2E            [12] 1706 	mov	_encode4b6b_sloc5_1_0,a
      0007BF EA               [12] 1707 	mov	a,r2
      0007C0 34 FF            [12] 1708 	addc	a,#0xFF
      0007C2 F5 2F            [12] 1709 	mov	(_encode4b6b_sloc5_1_0 + 1),a
                           000705  1710 	C$crc_4b6b.c$137$2$49 ==.
                                   1711 ;	crc_4b6b.c:137: intBuffer = intBuffer & mask;
      0007C4 90 02 23         [24] 1712 	mov	dptr,#_encode4b6b_intBuffer_1_44
      0007C7 E0               [24] 1713 	movx	a,@dptr
      0007C8 F8               [12] 1714 	mov	r0,a
      0007C9 A3               [24] 1715 	inc	dptr
      0007CA E0               [24] 1716 	movx	a,@dptr
      0007CB FA               [12] 1717 	mov	r2,a
      0007CC 90 02 23         [24] 1718 	mov	dptr,#_encode4b6b_intBuffer_1_44
      0007CF E5 2E            [12] 1719 	mov	a,_encode4b6b_sloc5_1_0
      0007D1 58               [12] 1720 	anl	a,r0
      0007D2 F0               [24] 1721 	movx	@dptr,a
      0007D3 E5 2F            [12] 1722 	mov	a,(_encode4b6b_sloc5_1_0 + 1)
      0007D5 5A               [12] 1723 	anl	a,r2
      0007D6 A3               [24] 1724 	inc	dptr
      0007D7 F0               [24] 1725 	movx	@dptr,a
                           000719  1726 	C$crc_4b6b.c$138$2$49 ==.
                                   1727 ;	crc_4b6b.c:138: intBuffer = intBuffer << (8 - intBitsAvailable);
      0007D8 74 08            [12] 1728 	mov	a,#0x08
      0007DA C3               [12] 1729 	clr	c
      0007DB 9B               [12] 1730 	subb	a,r3
      0007DC FB               [12] 1731 	mov	r3,a
      0007DD E4               [12] 1732 	clr	a
      0007DE 9C               [12] 1733 	subb	a,r4
      0007DF 90 02 23         [24] 1734 	mov	dptr,#_encode4b6b_intBuffer_1_44
      0007E2 E0               [24] 1735 	movx	a,@dptr
      0007E3 F9               [12] 1736 	mov	r1,a
      0007E4 A3               [24] 1737 	inc	dptr
      0007E5 E0               [24] 1738 	movx	a,@dptr
      0007E6 FA               [12] 1739 	mov	r2,a
      0007E7 8B F0            [24] 1740 	mov	b,r3
      0007E9 05 F0            [12] 1741 	inc	b
      0007EB AB 01            [24] 1742 	mov	r3,ar1
      0007ED AC 02            [24] 1743 	mov	r4,ar2
      0007EF 80 06            [24] 1744 	sjmp	00146$
      0007F1                       1745 00145$:
      0007F1 EB               [12] 1746 	mov	a,r3
      0007F2 2B               [12] 1747 	add	a,r3
      0007F3 FB               [12] 1748 	mov	r3,a
      0007F4 EC               [12] 1749 	mov	a,r4
      0007F5 33               [12] 1750 	rlc	a
      0007F6 FC               [12] 1751 	mov	r4,a
      0007F7                       1752 00146$:
      0007F7 D5 F0 F7         [24] 1753 	djnz	b,00145$
      0007FA 90 02 23         [24] 1754 	mov	dptr,#_encode4b6b_intBuffer_1_44
      0007FD EB               [12] 1755 	mov	a,r3
      0007FE F0               [24] 1756 	movx	@dptr,a
      0007FF EC               [12] 1757 	mov	a,r4
      000800 A3               [24] 1758 	inc	dptr
      000801 F0               [24] 1759 	movx	@dptr,a
                           000743  1760 	C$crc_4b6b.c$139$2$49 ==.
                                   1761 ;	crc_4b6b.c:139: symbol = intBuffer & 0x00FF;
      000802 90 02 23         [24] 1762 	mov	dptr,#_encode4b6b_intBuffer_1_44
      000805 E0               [24] 1763 	movx	a,@dptr
      000806 FB               [12] 1764 	mov	r3,a
      000807 A3               [24] 1765 	inc	dptr
      000808 E0               [24] 1766 	movx	a,@dptr
                           00074A  1767 	C$crc_4b6b.c$140$2$49 ==.
                                   1768 ;	crc_4b6b.c:140: messageOut[*bytesOut] = symbol;
      000809 8D 82            [24] 1769 	mov	dpl,r5
      00080B 8E 83            [24] 1770 	mov	dph,r6
      00080D 8F F0            [24] 1771 	mov	b,r7
      00080F 12 1C 03         [24] 1772 	lcall	__gptrget
      000812 FA               [12] 1773 	mov	r2,a
      000813 A3               [24] 1774 	inc	dptr
      000814 12 1C 03         [24] 1775 	lcall	__gptrget
      000817 FC               [12] 1776 	mov	r4,a
      000818 EA               [12] 1777 	mov	a,r2
      000819 25 24            [12] 1778 	add	a,_encode4b6b_sloc1_1_0
      00081B FA               [12] 1779 	mov	r2,a
      00081C EC               [12] 1780 	mov	a,r4
      00081D 35 25            [12] 1781 	addc	a,(_encode4b6b_sloc1_1_0 + 1)
      00081F F9               [12] 1782 	mov	r1,a
      000820 AC 26            [24] 1783 	mov	r4,(_encode4b6b_sloc1_1_0 + 2)
      000822 8A 82            [24] 1784 	mov	dpl,r2
      000824 89 83            [24] 1785 	mov	dph,r1
      000826 8C F0            [24] 1786 	mov	b,r4
      000828 EB               [12] 1787 	mov	a,r3
      000829 12 1B E8         [24] 1788 	lcall	__gptrput
                           00076D  1789 	C$crc_4b6b.c$141$2$49 ==.
                                   1790 ;	crc_4b6b.c:141: (*bytesOut)++;
      00082C 8D 82            [24] 1791 	mov	dpl,r5
      00082E 8E 83            [24] 1792 	mov	dph,r6
      000830 8F F0            [24] 1793 	mov	b,r7
      000832 12 1C 03         [24] 1794 	lcall	__gptrget
      000835 FB               [12] 1795 	mov	r3,a
      000836 A3               [24] 1796 	inc	dptr
      000837 12 1C 03         [24] 1797 	lcall	__gptrget
      00083A FC               [12] 1798 	mov	r4,a
      00083B 0B               [12] 1799 	inc	r3
      00083C BB 00 01         [24] 1800 	cjne	r3,#0x00,00147$
      00083F 0C               [12] 1801 	inc	r4
      000840                       1802 00147$:
      000840 8D 82            [24] 1803 	mov	dpl,r5
      000842 8E 83            [24] 1804 	mov	dph,r6
      000844 8F F0            [24] 1805 	mov	b,r7
      000846 EB               [12] 1806 	mov	a,r3
      000847 12 1B E8         [24] 1807 	lcall	__gptrput
      00084A A3               [24] 1808 	inc	dptr
      00084B EC               [12] 1809 	mov	a,r4
      00084C 12 1B E8         [24] 1810 	lcall	__gptrput
      00084F                       1811 00112$:
                           000790  1812 	C$crc_4b6b.c$143$1$44 ==.
                           000790  1813 	XG$encode4b6b$0$0 ==.
      00084F 22               [24] 1814 	ret
                                   1815 ;------------------------------------------------------------
                                   1816 ;Allocation info for local variables in function 'decode4b6b'
                                   1817 ;------------------------------------------------------------
                                   1818 ;sloc0                     Allocated with name '_decode4b6b_sloc0_1_0'
                                   1819 ;sloc1                     Allocated with name '_decode4b6b_sloc1_1_0'
                                   1820 ;sloc2                     Allocated with name '_decode4b6b_sloc2_1_0'
                                   1821 ;sloc3                     Allocated with name '_decode4b6b_sloc3_1_0'
                                   1822 ;sloc4                     Allocated with name '_decode4b6b_sloc4_1_0'
                                   1823 ;bytesIn                   Allocated with name '_decode4b6b_PARM_2'
                                   1824 ;messageOut                Allocated with name '_decode4b6b_PARM_3'
                                   1825 ;bytesOut                  Allocated with name '_decode4b6b_PARM_4'
                                   1826 ;messageIn                 Allocated with name '_decode4b6b_messageIn_1_50'
                                   1827 ;i                         Allocated with name '_decode4b6b_i_1_51'
                                   1828 ;intBuffer                 Allocated with name '_decode4b6b_intBuffer_1_51'
                                   1829 ;intBitsAvailable          Allocated with name '_decode4b6b_intBitsAvailable_1_51'
                                   1830 ;symbol                    Allocated with name '_decode4b6b_symbol_1_51'
                                   1831 ;recByte                   Allocated with name '_decode4b6b_recByte_1_51'
                                   1832 ;nibbleFlag                Allocated with name '_decode4b6b_nibbleFlag_1_51'
                                   1833 ;outBytes                  Allocated with name '_decode4b6b_outBytes_1_51'
                                   1834 ;------------------------------------------------------------
                           000791  1835 	G$decode4b6b$0$0 ==.
                           000791  1836 	C$crc_4b6b.c$145$1$44 ==.
                                   1837 ;	crc_4b6b.c:145: void decode4b6b( char *messageIn, unsigned int bytesIn, char *messageOut, unsigned int *bytesOut ) {
                                   1838 ;	-----------------------------------------
                                   1839 ;	 function decode4b6b
                                   1840 ;	-----------------------------------------
      000850                       1841 _decode4b6b:
      000850 AF F0            [24] 1842 	mov	r7,b
      000852 AE 83            [24] 1843 	mov	r6,dph
      000854 E5 82            [12] 1844 	mov	a,dpl
      000856 90 02 30         [24] 1845 	mov	dptr,#_decode4b6b_messageIn_1_50
      000859 F0               [24] 1846 	movx	@dptr,a
      00085A EE               [12] 1847 	mov	a,r6
      00085B A3               [24] 1848 	inc	dptr
      00085C F0               [24] 1849 	movx	@dptr,a
      00085D EF               [12] 1850 	mov	a,r7
      00085E A3               [24] 1851 	inc	dptr
      00085F F0               [24] 1852 	movx	@dptr,a
                           0007A1  1853 	C$crc_4b6b.c$147$1$44 ==.
                                   1854 ;	crc_4b6b.c:147: int intBuffer = 0;
      000860 90 02 33         [24] 1855 	mov	dptr,#_decode4b6b_intBuffer_1_51
      000863 E4               [12] 1856 	clr	a
      000864 F0               [24] 1857 	movx	@dptr,a
      000865 A3               [24] 1858 	inc	dptr
      000866 F0               [24] 1859 	movx	@dptr,a
                           0007A8  1860 	C$crc_4b6b.c$149$1$44 ==.
                                   1861 ;	crc_4b6b.c:149: char symbol = 0;
      000867 90 02 37         [24] 1862 	mov	dptr,#_decode4b6b_symbol_1_51
      00086A F0               [24] 1863 	movx	@dptr,a
                           0007AC  1864 	C$crc_4b6b.c$150$1$44 ==.
                                   1865 ;	crc_4b6b.c:150: char recByte = 0;
      00086B 90 02 38         [24] 1866 	mov	dptr,#_decode4b6b_recByte_1_51
      00086E F0               [24] 1867 	movx	@dptr,a
                           0007B0  1868 	C$crc_4b6b.c$154$1$51 ==.
                                   1869 ;	crc_4b6b.c:154: intBitsAvailable = 0;
      00086F 90 02 35         [24] 1870 	mov	dptr,#_decode4b6b_intBitsAvailable_1_51
      000872 F0               [24] 1871 	movx	@dptr,a
      000873 A3               [24] 1872 	inc	dptr
      000874 F0               [24] 1873 	movx	@dptr,a
                           0007B6  1874 	C$crc_4b6b.c$155$1$51 ==.
                                   1875 ;	crc_4b6b.c:155: nibbleFlag = 0;
      000875 90 02 39         [24] 1876 	mov	dptr,#_decode4b6b_nibbleFlag_1_51
      000878 F0               [24] 1877 	movx	@dptr,a
                           0007BA  1878 	C$crc_4b6b.c$156$1$51 ==.
                                   1879 ;	crc_4b6b.c:156: outBytes = 0;
      000879 90 02 3A         [24] 1880 	mov	dptr,#_decode4b6b_outBytes_1_51
      00087C F0               [24] 1881 	movx	@dptr,a
                           0007BE  1882 	C$crc_4b6b.c$157$2$52 ==.
                                   1883 ;	crc_4b6b.c:157: for( i = 0; i < bytesIn; i++ ) {
      00087D 90 02 30         [24] 1884 	mov	dptr,#_decode4b6b_messageIn_1_50
      000880 E0               [24] 1885 	movx	a,@dptr
      000881 F5 33            [12] 1886 	mov	_decode4b6b_sloc1_1_0,a
      000883 A3               [24] 1887 	inc	dptr
      000884 E0               [24] 1888 	movx	a,@dptr
      000885 F5 34            [12] 1889 	mov	(_decode4b6b_sloc1_1_0 + 1),a
      000887 A3               [24] 1890 	inc	dptr
      000888 E0               [24] 1891 	movx	a,@dptr
      000889 F5 35            [12] 1892 	mov	(_decode4b6b_sloc1_1_0 + 2),a
      00088B 90 02 2A         [24] 1893 	mov	dptr,#_decode4b6b_PARM_3
      00088E E0               [24] 1894 	movx	a,@dptr
      00088F FA               [12] 1895 	mov	r2,a
      000890 A3               [24] 1896 	inc	dptr
      000891 E0               [24] 1897 	movx	a,@dptr
      000892 FB               [12] 1898 	mov	r3,a
      000893 A3               [24] 1899 	inc	dptr
      000894 E0               [24] 1900 	movx	a,@dptr
      000895 FC               [12] 1901 	mov	r4,a
      000896 90 02 28         [24] 1902 	mov	dptr,#_decode4b6b_PARM_2
      000899 E0               [24] 1903 	movx	a,@dptr
      00089A F8               [12] 1904 	mov	r0,a
      00089B A3               [24] 1905 	inc	dptr
      00089C E0               [24] 1906 	movx	a,@dptr
      00089D F9               [12] 1907 	mov	r1,a
      00089E E4               [12] 1908 	clr	a
      00089F F5 31            [12] 1909 	mov	_decode4b6b_sloc0_1_0,a
      0008A1 F5 32            [12] 1910 	mov	(_decode4b6b_sloc0_1_0 + 1),a
      0008A3                       1911 00108$:
      0008A3 C3               [12] 1912 	clr	c
      0008A4 E5 31            [12] 1913 	mov	a,_decode4b6b_sloc0_1_0
      0008A6 98               [12] 1914 	subb	a,r0
      0008A7 E5 32            [12] 1915 	mov	a,(_decode4b6b_sloc0_1_0 + 1)
      0008A9 99               [12] 1916 	subb	a,r1
      0008AA 40 03            [24] 1917 	jc	00129$
      0008AC 02 09 FA         [24] 1918 	ljmp	00106$
      0008AF                       1919 00129$:
                           0007F0  1920 	C$crc_4b6b.c$158$1$51 ==.
                                   1921 ;	crc_4b6b.c:158: intBuffer = intBuffer << 8;
      0008AF C0 00            [24] 1922 	push	ar0
      0008B1 C0 01            [24] 1923 	push	ar1
      0008B3 90 02 33         [24] 1924 	mov	dptr,#_decode4b6b_intBuffer_1_51
      0008B6 E0               [24] 1925 	movx	a,@dptr
      0008B7 F8               [12] 1926 	mov	r0,a
      0008B8 A3               [24] 1927 	inc	dptr
      0008B9 E0               [24] 1928 	movx	a,@dptr
      0008BA 88 01            [24] 1929 	mov	ar1,r0
      0008BC 78 00            [12] 1930 	mov	r0,#0x00
      0008BE 90 02 33         [24] 1931 	mov	dptr,#_decode4b6b_intBuffer_1_51
      0008C1 E8               [12] 1932 	mov	a,r0
      0008C2 F0               [24] 1933 	movx	@dptr,a
      0008C3 E9               [12] 1934 	mov	a,r1
      0008C4 A3               [24] 1935 	inc	dptr
      0008C5 F0               [24] 1936 	movx	@dptr,a
                           000807  1937 	C$crc_4b6b.c$159$2$52 ==.
                                   1938 ;	crc_4b6b.c:159: intBuffer |= messageIn[i];
      0008C6 E5 31            [12] 1939 	mov	a,_decode4b6b_sloc0_1_0
      0008C8 25 33            [12] 1940 	add	a,_decode4b6b_sloc1_1_0
      0008CA F8               [12] 1941 	mov	r0,a
      0008CB E5 32            [12] 1942 	mov	a,(_decode4b6b_sloc0_1_0 + 1)
      0008CD 35 34            [12] 1943 	addc	a,(_decode4b6b_sloc1_1_0 + 1)
      0008CF F9               [12] 1944 	mov	r1,a
      0008D0 AF 35            [24] 1945 	mov	r7,(_decode4b6b_sloc1_1_0 + 2)
      0008D2 88 82            [24] 1946 	mov	dpl,r0
      0008D4 89 83            [24] 1947 	mov	dph,r1
      0008D6 8F F0            [24] 1948 	mov	b,r7
      0008D8 12 1C 03         [24] 1949 	lcall	__gptrget
      0008DB F8               [12] 1950 	mov	r0,a
      0008DC 90 02 33         [24] 1951 	mov	dptr,#_decode4b6b_intBuffer_1_51
      0008DF E0               [24] 1952 	movx	a,@dptr
      0008E0 FE               [12] 1953 	mov	r6,a
      0008E1 A3               [24] 1954 	inc	dptr
      0008E2 E0               [24] 1955 	movx	a,@dptr
      0008E3 FF               [12] 1956 	mov	r7,a
      0008E4 E8               [12] 1957 	mov	a,r0
      0008E5 33               [12] 1958 	rlc	a
      0008E6 95 E0            [12] 1959 	subb	a,acc
      0008E8 FD               [12] 1960 	mov	r5,a
      0008E9 90 02 33         [24] 1961 	mov	dptr,#_decode4b6b_intBuffer_1_51
      0008EC E8               [12] 1962 	mov	a,r0
      0008ED 4E               [12] 1963 	orl	a,r6
      0008EE F0               [24] 1964 	movx	@dptr,a
      0008EF ED               [12] 1965 	mov	a,r5
      0008F0 4F               [12] 1966 	orl	a,r7
      0008F1 A3               [24] 1967 	inc	dptr
      0008F2 F0               [24] 1968 	movx	@dptr,a
                           000834  1969 	C$crc_4b6b.c$160$2$52 ==.
                                   1970 ;	crc_4b6b.c:160: intBitsAvailable += 8;
      0008F3 90 02 35         [24] 1971 	mov	dptr,#_decode4b6b_intBitsAvailable_1_51
      0008F6 E0               [24] 1972 	movx	a,@dptr
      0008F7 FE               [12] 1973 	mov	r6,a
      0008F8 A3               [24] 1974 	inc	dptr
      0008F9 E0               [24] 1975 	movx	a,@dptr
      0008FA FF               [12] 1976 	mov	r7,a
      0008FB 90 02 35         [24] 1977 	mov	dptr,#_decode4b6b_intBitsAvailable_1_51
      0008FE 74 08            [12] 1978 	mov	a,#0x08
      000900 2E               [12] 1979 	add	a,r6
      000901 F0               [24] 1980 	movx	@dptr,a
      000902 E4               [12] 1981 	clr	a
      000903 3F               [12] 1982 	addc	a,r7
      000904 A3               [24] 1983 	inc	dptr
      000905 F0               [24] 1984 	movx	@dptr,a
                           000847  1985 	C$crc_4b6b.c$162$3$53 ==.
                                   1986 ;	crc_4b6b.c:162: while( intBitsAvailable >= 6 ) {
      000906 90 02 33         [24] 1987 	mov	dptr,#_decode4b6b_intBuffer_1_51
      000909 E0               [24] 1988 	movx	a,@dptr
      00090A F5 36            [12] 1989 	mov	_decode4b6b_sloc2_1_0,a
      00090C A3               [24] 1990 	inc	dptr
      00090D E0               [24] 1991 	movx	a,@dptr
      00090E F5 37            [12] 1992 	mov	(_decode4b6b_sloc2_1_0 + 1),a
      000910 90 02 3A         [24] 1993 	mov	dptr,#_decode4b6b_outBytes_1_51
      000913 E0               [24] 1994 	movx	a,@dptr
      000914 F5 38            [12] 1995 	mov	_decode4b6b_sloc3_1_0,a
      000916 90 02 35         [24] 1996 	mov	dptr,#_decode4b6b_intBitsAvailable_1_51
      000919 E0               [24] 1997 	movx	a,@dptr
      00091A F5 39            [12] 1998 	mov	_decode4b6b_sloc4_1_0,a
      00091C A3               [24] 1999 	inc	dptr
      00091D E0               [24] 2000 	movx	a,@dptr
      00091E F5 3A            [12] 2001 	mov	(_decode4b6b_sloc4_1_0 + 1),a
                           000861  2002 	C$crc_4b6b.c$178$1$51 ==.
                                   2003 ;	crc_4b6b.c:178: *bytesOut = outBytes;
      000920 D0 01            [24] 2004 	pop	ar1
      000922 D0 00            [24] 2005 	pop	ar0
                           000865  2006 	C$crc_4b6b.c$162$2$52 ==.
                                   2007 ;	crc_4b6b.c:162: while( intBitsAvailable >= 6 ) {
      000924                       2008 00103$:
      000924 C3               [12] 2009 	clr	c
      000925 E5 39            [12] 2010 	mov	a,_decode4b6b_sloc4_1_0
      000927 94 06            [12] 2011 	subb	a,#0x06
      000929 E5 3A            [12] 2012 	mov	a,(_decode4b6b_sloc4_1_0 + 1)
      00092B 64 80            [12] 2013 	xrl	a,#0x80
      00092D 94 80            [12] 2014 	subb	a,#0x80
      00092F 50 03            [24] 2015 	jnc	00130$
      000931 02 09 DF         [24] 2016 	ljmp	00117$
      000934                       2017 00130$:
                           000875  2018 	C$crc_4b6b.c$163$3$53 ==.
                                   2019 ;	crc_4b6b.c:163: symbol = intBuffer >> (intBitsAvailable - 6);
      000934 E5 39            [12] 2020 	mov	a,_decode4b6b_sloc4_1_0
      000936 24 FA            [12] 2021 	add	a,#0xFA
      000938 FE               [12] 2022 	mov	r6,a
      000939 E5 3A            [12] 2023 	mov	a,(_decode4b6b_sloc4_1_0 + 1)
      00093B 34 FF            [12] 2024 	addc	a,#0xFF
      00093D 8E F0            [24] 2025 	mov	b,r6
      00093F 05 F0            [12] 2026 	inc	b
      000941 AE 36            [24] 2027 	mov	r6,_decode4b6b_sloc2_1_0
      000943 E5 37            [12] 2028 	mov	a,(_decode4b6b_sloc2_1_0 + 1)
      000945 FF               [12] 2029 	mov	r7,a
      000946 33               [12] 2030 	rlc	a
      000947 92 D2            [24] 2031 	mov	ov,c
      000949 80 08            [24] 2032 	sjmp	00132$
      00094B                       2033 00131$:
      00094B A2 D2            [12] 2034 	mov	c,ov
      00094D EF               [12] 2035 	mov	a,r7
      00094E 13               [12] 2036 	rrc	a
      00094F FF               [12] 2037 	mov	r7,a
      000950 EE               [12] 2038 	mov	a,r6
      000951 13               [12] 2039 	rrc	a
      000952 FE               [12] 2040 	mov	r6,a
      000953                       2041 00132$:
      000953 D5 F0 F5         [24] 2042 	djnz	b,00131$
      000956 90 02 37         [24] 2043 	mov	dptr,#_decode4b6b_symbol_1_51
      000959 EE               [12] 2044 	mov	a,r6
      00095A F0               [24] 2045 	movx	@dptr,a
                           00089C  2046 	C$crc_4b6b.c$164$3$53 ==.
                                   2047 ;	crc_4b6b.c:164: symbol &= 0x3F;
      00095B 53 06 3F         [24] 2048 	anl	ar6,#0x3F
      00095E 90 02 37         [24] 2049 	mov	dptr,#_decode4b6b_symbol_1_51
      000961 EE               [12] 2050 	mov	a,r6
      000962 F0               [24] 2051 	movx	@dptr,a
                           0008A4  2052 	C$crc_4b6b.c$165$3$53 ==.
                                   2053 ;	crc_4b6b.c:165: decode4b6bsymbol( symbol, &symbol );
      000963 90 02 14         [24] 2054 	mov	dptr,#_decode4b6bsymbol_PARM_2
      000966 74 37            [12] 2055 	mov	a,#_decode4b6b_symbol_1_51
      000968 F0               [24] 2056 	movx	@dptr,a
      000969 74 02            [12] 2057 	mov	a,#(_decode4b6b_symbol_1_51 >> 8)
      00096B A3               [24] 2058 	inc	dptr
      00096C F0               [24] 2059 	movx	@dptr,a
      00096D E4               [12] 2060 	clr	a
      00096E A3               [24] 2061 	inc	dptr
      00096F F0               [24] 2062 	movx	@dptr,a
      000970 8E 82            [24] 2063 	mov	dpl,r6
      000972 C0 04            [24] 2064 	push	ar4
      000974 C0 03            [24] 2065 	push	ar3
      000976 C0 02            [24] 2066 	push	ar2
      000978 C0 01            [24] 2067 	push	ar1
      00097A C0 00            [24] 2068 	push	ar0
      00097C 12 03 4A         [24] 2069 	lcall	_decode4b6bsymbol
      00097F D0 00            [24] 2070 	pop	ar0
      000981 D0 01            [24] 2071 	pop	ar1
      000983 D0 02            [24] 2072 	pop	ar2
      000985 D0 03            [24] 2073 	pop	ar3
      000987 D0 04            [24] 2074 	pop	ar4
                           0008CA  2075 	C$crc_4b6b.c$166$3$53 ==.
                                   2076 ;	crc_4b6b.c:166: recByte = recByte << 4;
      000989 90 02 38         [24] 2077 	mov	dptr,#_decode4b6b_recByte_1_51
      00098C E0               [24] 2078 	movx	a,@dptr
      00098D C4               [12] 2079 	swap	a
      00098E 54 F0            [12] 2080 	anl	a,#0xF0
      000990 F0               [24] 2081 	movx	@dptr,a
                           0008D2  2082 	C$crc_4b6b.c$167$3$53 ==.
                                   2083 ;	crc_4b6b.c:167: recByte &= 0xF0;
      000991 E0               [24] 2084 	movx	a,@dptr
      000992 FF               [12] 2085 	mov	r7,a
      000993 74 F0            [12] 2086 	mov	a,#0xF0
      000995 5F               [12] 2087 	anl	a,r7
      000996 F0               [24] 2088 	movx	@dptr,a
                           0008D8  2089 	C$crc_4b6b.c$168$3$53 ==.
                                   2090 ;	crc_4b6b.c:168: recByte |= symbol;
      000997 90 02 37         [24] 2091 	mov	dptr,#_decode4b6b_symbol_1_51
      00099A E0               [24] 2092 	movx	a,@dptr
      00099B FF               [12] 2093 	mov	r7,a
      00099C 90 02 38         [24] 2094 	mov	dptr,#_decode4b6b_recByte_1_51
      00099F E0               [24] 2095 	movx	a,@dptr
      0009A0 FE               [12] 2096 	mov	r6,a
      0009A1 4F               [12] 2097 	orl	a,r7
      0009A2 F0               [24] 2098 	movx	@dptr,a
                           0008E4  2099 	C$crc_4b6b.c$169$3$53 ==.
                                   2100 ;	crc_4b6b.c:169: nibbleFlag ^= 1;
      0009A3 90 02 39         [24] 2101 	mov	dptr,#_decode4b6b_nibbleFlag_1_51
      0009A6 E0               [24] 2102 	movx	a,@dptr
      0009A7 FF               [12] 2103 	mov	r7,a
      0009A8 74 01            [12] 2104 	mov	a,#0x01
      0009AA 6F               [12] 2105 	xrl	a,r7
      0009AB F0               [24] 2106 	movx	@dptr,a
                           0008ED  2107 	C$crc_4b6b.c$170$3$53 ==.
                                   2108 ;	crc_4b6b.c:170: if( nibbleFlag == 0 ) {
      0009AC E0               [24] 2109 	movx	a,@dptr
      0009AD FF               [12] 2110 	mov	r7,a
      0009AE 70 20            [24] 2111 	jnz	00102$
                           0008F1  2112 	C$crc_4b6b.c$171$1$51 ==.
                                   2113 ;	crc_4b6b.c:171: messageOut[outBytes] = recByte;
      0009B0 C0 00            [24] 2114 	push	ar0
      0009B2 C0 01            [24] 2115 	push	ar1
      0009B4 E5 38            [12] 2116 	mov	a,_decode4b6b_sloc3_1_0
      0009B6 2A               [12] 2117 	add	a,r2
      0009B7 FD               [12] 2118 	mov	r5,a
      0009B8 E4               [12] 2119 	clr	a
      0009B9 3B               [12] 2120 	addc	a,r3
      0009BA FE               [12] 2121 	mov	r6,a
      0009BB 8C 07            [24] 2122 	mov	ar7,r4
      0009BD 90 02 38         [24] 2123 	mov	dptr,#_decode4b6b_recByte_1_51
      0009C0 E0               [24] 2124 	movx	a,@dptr
      0009C1 8D 82            [24] 2125 	mov	dpl,r5
      0009C3 8E 83            [24] 2126 	mov	dph,r6
      0009C5 8F F0            [24] 2127 	mov	b,r7
      0009C7 12 1B E8         [24] 2128 	lcall	__gptrput
                           00090B  2129 	C$crc_4b6b.c$172$4$54 ==.
                                   2130 ;	crc_4b6b.c:172: outBytes++;
      0009CA 05 38            [12] 2131 	inc	_decode4b6b_sloc3_1_0
                           00090D  2132 	C$crc_4b6b.c$178$1$51 ==.
                                   2133 ;	crc_4b6b.c:178: *bytesOut = outBytes;
      0009CC D0 01            [24] 2134 	pop	ar1
      0009CE D0 00            [24] 2135 	pop	ar0
                           000911  2136 	C$crc_4b6b.c$172$3$53 ==.
                                   2137 ;	crc_4b6b.c:172: outBytes++;
      0009D0                       2138 00102$:
                           000911  2139 	C$crc_4b6b.c$174$3$53 ==.
                                   2140 ;	crc_4b6b.c:174: intBitsAvailable -= 6;
      0009D0 E5 39            [12] 2141 	mov	a,_decode4b6b_sloc4_1_0
      0009D2 24 FA            [12] 2142 	add	a,#0xFA
      0009D4 F5 39            [12] 2143 	mov	_decode4b6b_sloc4_1_0,a
      0009D6 E5 3A            [12] 2144 	mov	a,(_decode4b6b_sloc4_1_0 + 1)
      0009D8 34 FF            [12] 2145 	addc	a,#0xFF
      0009DA F5 3A            [12] 2146 	mov	(_decode4b6b_sloc4_1_0 + 1),a
      0009DC 02 09 24         [24] 2147 	ljmp	00103$
      0009DF                       2148 00117$:
      0009DF 90 02 3A         [24] 2149 	mov	dptr,#_decode4b6b_outBytes_1_51
      0009E2 E5 38            [12] 2150 	mov	a,_decode4b6b_sloc3_1_0
      0009E4 F0               [24] 2151 	movx	@dptr,a
      0009E5 90 02 35         [24] 2152 	mov	dptr,#_decode4b6b_intBitsAvailable_1_51
      0009E8 E5 39            [12] 2153 	mov	a,_decode4b6b_sloc4_1_0
      0009EA F0               [24] 2154 	movx	@dptr,a
      0009EB E5 3A            [12] 2155 	mov	a,(_decode4b6b_sloc4_1_0 + 1)
      0009ED A3               [24] 2156 	inc	dptr
      0009EE F0               [24] 2157 	movx	@dptr,a
                           000930  2158 	C$crc_4b6b.c$157$1$51 ==.
                                   2159 ;	crc_4b6b.c:157: for( i = 0; i < bytesIn; i++ ) {
      0009EF 05 31            [12] 2160 	inc	_decode4b6b_sloc0_1_0
      0009F1 E4               [12] 2161 	clr	a
      0009F2 B5 31 02         [24] 2162 	cjne	a,_decode4b6b_sloc0_1_0,00134$
      0009F5 05 32            [12] 2163 	inc	(_decode4b6b_sloc0_1_0 + 1)
      0009F7                       2164 00134$:
      0009F7 02 08 A3         [24] 2165 	ljmp	00108$
      0009FA                       2166 00106$:
                           00093B  2167 	C$crc_4b6b.c$178$1$51 ==.
                                   2168 ;	crc_4b6b.c:178: *bytesOut = outBytes;
      0009FA 90 02 2D         [24] 2169 	mov	dptr,#_decode4b6b_PARM_4
      0009FD E0               [24] 2170 	movx	a,@dptr
      0009FE FD               [12] 2171 	mov	r5,a
      0009FF A3               [24] 2172 	inc	dptr
      000A00 E0               [24] 2173 	movx	a,@dptr
      000A01 FE               [12] 2174 	mov	r6,a
      000A02 A3               [24] 2175 	inc	dptr
      000A03 E0               [24] 2176 	movx	a,@dptr
      000A04 FF               [12] 2177 	mov	r7,a
      000A05 90 02 3A         [24] 2178 	mov	dptr,#_decode4b6b_outBytes_1_51
      000A08 E0               [24] 2179 	movx	a,@dptr
      000A09 FC               [12] 2180 	mov	r4,a
      000A0A 33               [12] 2181 	rlc	a
      000A0B 95 E0            [12] 2182 	subb	a,acc
      000A0D FB               [12] 2183 	mov	r3,a
      000A0E 8D 82            [24] 2184 	mov	dpl,r5
      000A10 8E 83            [24] 2185 	mov	dph,r6
      000A12 8F F0            [24] 2186 	mov	b,r7
      000A14 EC               [12] 2187 	mov	a,r4
      000A15 12 1B E8         [24] 2188 	lcall	__gptrput
      000A18 A3               [24] 2189 	inc	dptr
      000A19 EB               [12] 2190 	mov	a,r3
      000A1A 12 1B E8         [24] 2191 	lcall	__gptrput
                           00095E  2192 	C$crc_4b6b.c$179$1$51 ==.
                           00095E  2193 	XG$decode4b6b$0$0 ==.
      000A1D 22               [24] 2194 	ret
                                   2195 ;------------------------------------------------------------
                                   2196 ;Allocation info for local variables in function 'sleep'
                                   2197 ;------------------------------------------------------------
                                   2198 ;time                      Allocated with name '_sleep_time_1_55'
                                   2199 ;i                         Allocated with name '_sleep_i_1_56'
                                   2200 ;j                         Allocated with name '_sleep_j_1_56'
                                   2201 ;------------------------------------------------------------
                           00095F  2202 	G$sleep$0$0 ==.
                           00095F  2203 	C$crc_4b6b.c$181$1$51 ==.
                                   2204 ;	crc_4b6b.c:181: void sleep( int time ) {
                                   2205 ;	-----------------------------------------
                                   2206 ;	 function sleep
                                   2207 ;	-----------------------------------------
      000A1E                       2208 _sleep:
      000A1E AF 83            [24] 2209 	mov	r7,dph
      000A20 E5 82            [12] 2210 	mov	a,dpl
      000A22 90 02 3B         [24] 2211 	mov	dptr,#_sleep_time_1_55
      000A25 F0               [24] 2212 	movx	@dptr,a
      000A26 EF               [12] 2213 	mov	a,r7
      000A27 A3               [24] 2214 	inc	dptr
      000A28 F0               [24] 2215 	movx	@dptr,a
                           00096A  2216 	C$crc_4b6b.c$184$1$56 ==.
                                   2217 ;	crc_4b6b.c:184: for( j = 0; j < time * 4; j++ ) for( i = 0; i < 0xFFFF; i++ ) Nop( );
      000A29 90 02 3B         [24] 2218 	mov	dptr,#_sleep_time_1_55
      000A2C E0               [24] 2219 	movx	a,@dptr
      000A2D FE               [12] 2220 	mov	r6,a
      000A2E A3               [24] 2221 	inc	dptr
      000A2F E0               [24] 2222 	movx	a,@dptr
      000A30 CE               [12] 2223 	xch	a,r6
      000A31 25 E0            [12] 2224 	add	a,acc
      000A33 CE               [12] 2225 	xch	a,r6
      000A34 33               [12] 2226 	rlc	a
      000A35 CE               [12] 2227 	xch	a,r6
      000A36 25 E0            [12] 2228 	add	a,acc
      000A38 CE               [12] 2229 	xch	a,r6
      000A39 33               [12] 2230 	rlc	a
      000A3A FF               [12] 2231 	mov	r7,a
      000A3B 7C 00            [12] 2232 	mov	r4,#0x00
      000A3D 7D 00            [12] 2233 	mov	r5,#0x00
      000A3F                       2234 00107$:
      000A3F C3               [12] 2235 	clr	c
      000A40 EC               [12] 2236 	mov	a,r4
      000A41 9E               [12] 2237 	subb	a,r6
      000A42 ED               [12] 2238 	mov	a,r5
      000A43 64 80            [12] 2239 	xrl	a,#0x80
      000A45 8F F0            [24] 2240 	mov	b,r7
      000A47 63 F0 80         [24] 2241 	xrl	b,#0x80
      000A4A 95 F0            [12] 2242 	subb	a,b
      000A4C 50 15            [24] 2243 	jnc	00109$
      000A4E 7A FF            [12] 2244 	mov	r2,#0xFF
      000A50 7B FF            [12] 2245 	mov	r3,#0xFF
      000A52                       2246 00105$:
      000A52 00               [12] 2247 	nop 
      000A53 1A               [12] 2248 	dec	r2
      000A54 BA FF 01         [24] 2249 	cjne	r2,#0xFF,00126$
      000A57 1B               [12] 2250 	dec	r3
      000A58                       2251 00126$:
      000A58 EA               [12] 2252 	mov	a,r2
      000A59 4B               [12] 2253 	orl	a,r3
      000A5A 70 F6            [24] 2254 	jnz	00105$
      000A5C 0C               [12] 2255 	inc	r4
      000A5D BC 00 DF         [24] 2256 	cjne	r4,#0x00,00107$
      000A60 0D               [12] 2257 	inc	r5
      000A61 80 DC            [24] 2258 	sjmp	00107$
      000A63                       2259 00109$:
                           0009A4  2260 	C$crc_4b6b.c$185$1$56 ==.
                           0009A4  2261 	XG$sleep$0$0 ==.
      000A63 22               [24] 2262 	ret
                                   2263 	.area CSEG    (CODE)
                                   2264 	.area CONST   (CODE)
                                   2265 	.area XINIT   (CODE)
                                   2266 	.area CABS    (ABS,CODE)
