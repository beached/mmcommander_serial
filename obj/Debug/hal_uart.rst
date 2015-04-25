                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW64)
                                      4 ; This file was generated Sat Apr 25 00:05:13 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module hal_uart
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _halUartRead_PARM_2
                                     13 	.globl _halUartWrite_PARM_2
                                     14 	.globl _halUartInit_PARM_2
                                     15 	.globl _halUartInit
                                     16 	.globl _halUartWrite
                                     17 	.globl _halUartRead
                                     18 	.globl _halUartGetNumRxBytes
                                     19 	.globl _halUartEnableRxFlow
                                     20 ;--------------------------------------------------------
                                     21 ; special function registers
                                     22 ;--------------------------------------------------------
                                     23 	.area RSEG    (ABS,DATA)
      000000                         24 	.org 0x0000
                                     25 ;--------------------------------------------------------
                                     26 ; special function bits
                                     27 ;--------------------------------------------------------
                                     28 	.area RSEG    (ABS,DATA)
      000000                         29 	.org 0x0000
                                     30 ;--------------------------------------------------------
                                     31 ; overlayable register banks
                                     32 ;--------------------------------------------------------
                                     33 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         34 	.ds 8
                                     35 ;--------------------------------------------------------
                                     36 ; internal ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area DSEG    (DATA)
                                     39 ;--------------------------------------------------------
                                     40 ; overlayable items in internal ram 
                                     41 ;--------------------------------------------------------
                                     42 ;--------------------------------------------------------
                                     43 ; indirectly addressable internal ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area ISEG    (DATA)
                                     46 ;--------------------------------------------------------
                                     47 ; absolute internal ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area IABS    (ABS,DATA)
                                     50 	.area IABS    (ABS,DATA)
                                     51 ;--------------------------------------------------------
                                     52 ; bit data
                                     53 ;--------------------------------------------------------
                                     54 	.area BSEG    (BIT)
                                     55 ;--------------------------------------------------------
                                     56 ; paged external ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area PSEG    (PAG,XDATA)
                                     59 ;--------------------------------------------------------
                                     60 ; external ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area XSEG    (XDATA)
                           000000    63 Lhal_uart.halUartInit$options$1$8==.
      000243                         64 _halUartInit_PARM_2:
      000243                         65 	.ds 1
                           000001    66 Lhal_uart.halUartWrite$length$1$10==.
      000244                         67 _halUartWrite_PARM_2:
      000244                         68 	.ds 2
                           000003    69 Lhal_uart.halUartRead$length$1$12==.
      000246                         70 _halUartRead_PARM_2:
      000246                         71 	.ds 2
                                     72 ;--------------------------------------------------------
                                     73 ; absolute external ram data
                                     74 ;--------------------------------------------------------
                                     75 	.area XABS    (ABS,XDATA)
                                     76 ;--------------------------------------------------------
                                     77 ; external initialized ram data
                                     78 ;--------------------------------------------------------
                                     79 	.area XISEG   (XDATA)
                                     80 	.area HOME    (CODE)
                                     81 	.area GSINIT0 (CODE)
                                     82 	.area GSINIT1 (CODE)
                                     83 	.area GSINIT2 (CODE)
                                     84 	.area GSINIT3 (CODE)
                                     85 	.area GSINIT4 (CODE)
                                     86 	.area GSINIT5 (CODE)
                                     87 	.area GSINIT  (CODE)
                                     88 	.area GSFINAL (CODE)
                                     89 	.area CSEG    (CODE)
                                     90 ;--------------------------------------------------------
                                     91 ; global & static initialisations
                                     92 ;--------------------------------------------------------
                                     93 	.area HOME    (CODE)
                                     94 	.area GSINIT  (CODE)
                                     95 	.area GSFINAL (CODE)
                                     96 	.area GSINIT  (CODE)
                                     97 ;--------------------------------------------------------
                                     98 ; Home
                                     99 ;--------------------------------------------------------
                                    100 	.area HOME    (CODE)
                                    101 	.area HOME    (CODE)
                                    102 ;--------------------------------------------------------
                                    103 ; code
                                    104 ;--------------------------------------------------------
                                    105 	.area CSEG    (CODE)
                                    106 ;------------------------------------------------------------
                                    107 ;Allocation info for local variables in function 'halUartInit'
                                    108 ;------------------------------------------------------------
                                    109 ;options                   Allocated with name '_halUartInit_PARM_2'
                                    110 ;baudrate                  Allocated with name '_halUartInit_baudrate_1_8'
                                    111 ;------------------------------------------------------------
                           000000   112 	G$halUartInit$0$0 ==.
                           000000   113 	C$hal_uart.c$3$0$0 ==.
                                    114 ;	hal_uart.c:3: void halUartInit( uint8_t baudrate, uint8_t options ) {
                                    115 ;	-----------------------------------------
                                    116 ;	 function halUartInit
                                    117 ;	-----------------------------------------
      000B32                        118 _halUartInit:
                           000007   119 	ar7 = 0x07
                           000006   120 	ar6 = 0x06
                           000005   121 	ar5 = 0x05
                           000004   122 	ar4 = 0x04
                           000003   123 	ar3 = 0x03
                           000002   124 	ar2 = 0x02
                           000001   125 	ar1 = 0x01
                           000000   126 	ar0 = 0x00
                           000000   127 	C$hal_uart.c$5$0$0 ==.
                                    128 ;	hal_uart.c:5: }
                           000000   129 	C$hal_uart.c$5$0$0 ==.
                           000000   130 	XG$halUartInit$0$0 ==.
      000B32 22               [24]  131 	ret
                                    132 ;------------------------------------------------------------
                                    133 ;Allocation info for local variables in function 'halUartWrite'
                                    134 ;------------------------------------------------------------
                                    135 ;length                    Allocated with name '_halUartWrite_PARM_2'
                                    136 ;buf                       Allocated with name '_halUartWrite_buf_1_10'
                                    137 ;------------------------------------------------------------
                           000001   138 	G$halUartWrite$0$0 ==.
                           000001   139 	C$hal_uart.c$7$0$0 ==.
                                    140 ;	hal_uart.c:7: uint16_t halUartWrite( const uint8_t* buf, uint16_t length ) {
                                    141 ;	-----------------------------------------
                                    142 ;	 function halUartWrite
                                    143 ;	-----------------------------------------
      000B33                        144 _halUartWrite:
                           000001   145 	C$hal_uart.c$9$1$11 ==.
                                    146 ;	hal_uart.c:9: return 0;
      000B33 90 00 00         [24]  147 	mov	dptr,#0x0000
                           000004   148 	C$hal_uart.c$10$1$11 ==.
                           000004   149 	XG$halUartWrite$0$0 ==.
      000B36 22               [24]  150 	ret
                                    151 ;------------------------------------------------------------
                                    152 ;Allocation info for local variables in function 'halUartRead'
                                    153 ;------------------------------------------------------------
                                    154 ;length                    Allocated with name '_halUartRead_PARM_2'
                                    155 ;buf                       Allocated with name '_halUartRead_buf_1_12'
                                    156 ;------------------------------------------------------------
                           000005   157 	G$halUartRead$0$0 ==.
                           000005   158 	C$hal_uart.c$12$1$11 ==.
                                    159 ;	hal_uart.c:12: uint16_t halUartRead( uint8_t* buf, uint16_t length ) {
                                    160 ;	-----------------------------------------
                                    161 ;	 function halUartRead
                                    162 ;	-----------------------------------------
      000B37                        163 _halUartRead:
                           000005   164 	C$hal_uart.c$14$1$13 ==.
                                    165 ;	hal_uart.c:14: return 0;
      000B37 90 00 00         [24]  166 	mov	dptr,#0x0000
                           000008   167 	C$hal_uart.c$15$1$13 ==.
                           000008   168 	XG$halUartRead$0$0 ==.
      000B3A 22               [24]  169 	ret
                                    170 ;------------------------------------------------------------
                                    171 ;Allocation info for local variables in function 'halUartGetNumRxBytes'
                                    172 ;------------------------------------------------------------
                           000009   173 	G$halUartGetNumRxBytes$0$0 ==.
                           000009   174 	C$hal_uart.c$17$1$13 ==.
                                    175 ;	hal_uart.c:17: uint16_t halUartGetNumRxBytes( void ) {
                                    176 ;	-----------------------------------------
                                    177 ;	 function halUartGetNumRxBytes
                                    178 ;	-----------------------------------------
      000B3B                        179 _halUartGetNumRxBytes:
                           000009   180 	C$hal_uart.c$19$1$15 ==.
                                    181 ;	hal_uart.c:19: return 0;
      000B3B 90 00 00         [24]  182 	mov	dptr,#0x0000
                           00000C   183 	C$hal_uart.c$20$1$15 ==.
                           00000C   184 	XG$halUartGetNumRxBytes$0$0 ==.
      000B3E 22               [24]  185 	ret
                                    186 ;------------------------------------------------------------
                                    187 ;Allocation info for local variables in function 'halUartEnableRxFlow'
                                    188 ;------------------------------------------------------------
                                    189 ;enable                    Allocated with name '_halUartEnableRxFlow_enable_1_16'
                                    190 ;------------------------------------------------------------
                           00000D   191 	G$halUartEnableRxFlow$0$0 ==.
                           00000D   192 	C$hal_uart.c$22$1$15 ==.
                                    193 ;	hal_uart.c:22: void halUartEnableRxFlow( uint8_t enable ) {
                                    194 ;	-----------------------------------------
                                    195 ;	 function halUartEnableRxFlow
                                    196 ;	-----------------------------------------
      000B3F                        197 _halUartEnableRxFlow:
                           00000D   198 	C$hal_uart.c$24$1$15 ==.
                                    199 ;	hal_uart.c:24: }
                           00000D   200 	C$hal_uart.c$24$1$15 ==.
                           00000D   201 	XG$halUartEnableRxFlow$0$0 ==.
      000B3F 22               [24]  202 	ret
                                    203 	.area CSEG    (CODE)
                                    204 	.area CONST   (CODE)
                                    205 	.area XINIT   (CODE)
                                    206 	.area CABS    (ABS,CODE)
