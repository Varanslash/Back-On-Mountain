;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module math
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _dir_angle_lookup
	.globl _dir_lookup
	.globl _sine_wave
	.globl _isqrt
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	G$isqrt$0$0	= .
	.globl	G$isqrt$0$0
	C$math.c$36$0_0$146	= .
	.globl	C$math.c$36$0_0$146
;src\core\math.c:36: UBYTE isqrt(uint16_t x) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function isqrt
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
_isqrt::
;	adjustStack by -6
	add	sp, #-6
;	genReceive
;	AOP_STK for _isqrt_x_10000_145
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genMove_o size 0
	C$math.c$38$1_0$146	= .
	.globl	C$math.c$38$1_0$146
;src\core\math.c:38: m = 0x4000;
;	genAssign
;	genMove_o size 2
;fetchLitPair	bc
	C$math.c$39$1_0$146	= .
	.globl	C$math.c$39$1_0$146
;src\core\math.c:39: y = 0;
;	genAssign
;	AOP_STK for _isqrt_sloc0_1_0
;	genMove_o size 2
; common peephole 96b move inc hl before xor a, a
; common peephole 96b move inc hl before ld bc, #0x4000
	ld	a, d
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	bc, #0x4000
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$math.c$40$1_0$146	= .
	.globl	C$math.c$40$1_0$146
;src\core\math.c:40: while (m != 0) {
;	genLabel
00103$:
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
	C$math.c$41$2_0$147	= .
	.globl	C$math.c$41$2_0$147
;src\core\math.c:41: b = y | m;
;	genOr
;	AOP_STK for _isqrt_sloc0_1_0
;	AOP_STK for _isqrt_sloc1_1_0
	ldhl	sp,	#4
	ld	a, (hl)
	or	a, c
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), a
;	genMove_o size 0
	ldhl	sp,	#5
	ld	a, (hl)
	or	a, b
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
	C$math.c$42$2_0$147	= .
	.globl	C$math.c$42$2_0$147
;src\core\math.c:42: y >>= 1;
;	genRightShift
;	AOP_STK for _isqrt_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#5
	srl	(hl)
	dec	hl
	rr	(hl)
	C$math.c$43$2_0$147	= .
	.globl	C$math.c$43$2_0$147
;src\core\math.c:43: if (x >= b) {
;	genCmpLt
;	AOP_STK for _isqrt_x_10000_145
;	AOP_STK for _isqrt_sloc1_1_0
	ldhl	sp,	#2
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00102$
;	skipping generated iCode
	C$math.c$44$3_0$148	= .
	.globl	C$math.c$44$3_0$148
;src\core\math.c:44: x -= b;
;	genMinus
;	AOP_STK for _isqrt_x_10000_145
;	AOP_STK for _isqrt_sloc1_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
	pop	hl
	push	hl
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#3
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	C$math.c$45$3_0$148	= .
	.globl	C$math.c$45$3_0$148
;src\core\math.c:45: y |= m;
;	genOr
;	AOP_STK for _isqrt_sloc0_1_0
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	inc	hl
	ld	a, (hl)
	or	a, c
;	genMove_o size 1
;	genMove_o size 0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	or	a, b
;	genMove_o size 1
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00102$:
	C$math.c$47$2_0$147	= .
	.globl	C$math.c$47$2_0$147
;src\core\math.c:47: m >>= 2;
;	genRightShift
;fetchPairLong
	srl	b
	rr	c
	srl	b
	rr	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00105$:
	C$math.c$49$1_0$146	= .
	.globl	C$math.c$49$1_0$146
;src\core\math.c:49: return (UBYTE)y;
;	genCast
;	AOP_STK for _isqrt_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	a, (hl)
;	genMove_o size 0
;	genRet
;	genMove_o size 1
;	genLabel
; common peephole 158 removed unused label 00106$.
	C$math.c$50$1_0$146	= .
	.globl	C$math.c$50$1_0$146
;src\core\math.c:50: }
;	genEndFunction
;	adjustStack by 6
	add	sp, #6
	C$math.c$50$1_0$146	= .
	.globl	C$math.c$50$1_0$146
	XG$isqrt$0$0	= .
	.globl	XG$isqrt$0$0
	ret
G$sine_wave$0_0$0 == .
_sine_wave:
	.db #0x00	;  0
	.db #0x03	;  3
	.db #0x06	;  6
	.db #0x09	;  9
	.db #0x0c	;  12
	.db #0x10	;  16
	.db #0x13	;  19
	.db #0x16	;  22
	.db #0x19	;  25
	.db #0x1c	;  28
	.db #0x1f	;  31
	.db #0x22	;  34
	.db #0x25	;  37
	.db #0x28	;  40
	.db #0x2b	;  43
	.db #0x2e	;  46
	.db #0x31	;  49	'1'
	.db #0x33	;  51	'3'
	.db #0x36	;  54	'6'
	.db #0x39	;  57	'9'
	.db #0x3c	;  60
	.db #0x3f	;  63
	.db #0x41	;  65	'A'
	.db #0x44	;  68	'D'
	.db #0x47	;  71	'G'
	.db #0x49	;  73	'I'
	.db #0x4c	;  76	'L'
	.db #0x4e	;  78	'N'
	.db #0x51	;  81	'Q'
	.db #0x53	;  83	'S'
	.db #0x55	;  85	'U'
	.db #0x58	;  88	'X'
	.db #0x5a	;  90	'Z'
	.db #0x5c	;  92
	.db #0x5e	;  94
	.db #0x60	;  96
	.db #0x62	;  98	'b'
	.db #0x64	;  100	'd'
	.db #0x66	;  102	'f'
	.db #0x68	;  104	'h'
	.db #0x6a	;  106	'j'
	.db #0x6b	;  107	'k'
	.db #0x6d	;  109	'm'
	.db #0x6f	;  111	'o'
	.db #0x70	;  112	'p'
	.db #0x71	;  113	'q'
	.db #0x73	;  115	's'
	.db #0x74	;  116	't'
	.db #0x75	;  117	'u'
	.db #0x76	;  118	'v'
	.db #0x78	;  120	'x'
	.db #0x79	;  121	'y'
	.db #0x7a	;  122	'z'
	.db #0x7a	;  122	'z'
	.db #0x7b	;  123
	.db #0x7c	;  124
	.db #0x7d	;  125
	.db #0x7d	;  125
	.db #0x7e	;  126
	.db #0x7e	;  126
	.db #0x7e	;  126
	.db #0x7f	;  127
	.db #0x7f	;  127
	.db #0x7f	;  127
	.db #0x7f	;  127
	.db #0x7f	;  127
	.db #0x7f	;  127
	.db #0x7f	;  127
	.db #0x7e	;  126
	.db #0x7e	;  126
	.db #0x7e	;  126
	.db #0x7d	;  125
	.db #0x7d	;  125
	.db #0x7c	;  124
	.db #0x7b	;  123
	.db #0x7a	;  122	'z'
	.db #0x7a	;  122	'z'
	.db #0x79	;  121	'y'
	.db #0x78	;  120	'x'
	.db #0x76	;  118	'v'
	.db #0x75	;  117	'u'
	.db #0x74	;  116	't'
	.db #0x73	;  115	's'
	.db #0x71	;  113	'q'
	.db #0x70	;  112	'p'
	.db #0x6f	;  111	'o'
	.db #0x6d	;  109	'm'
	.db #0x6b	;  107	'k'
	.db #0x6a	;  106	'j'
	.db #0x68	;  104	'h'
	.db #0x66	;  102	'f'
	.db #0x64	;  100	'd'
	.db #0x62	;  98	'b'
	.db #0x60	;  96
	.db #0x5e	;  94
	.db #0x5c	;  92
	.db #0x5a	;  90	'Z'
	.db #0x58	;  88	'X'
	.db #0x55	;  85	'U'
	.db #0x53	;  83	'S'
	.db #0x51	;  81	'Q'
	.db #0x4e	;  78	'N'
	.db #0x4c	;  76	'L'
	.db #0x49	;  73	'I'
	.db #0x47	;  71	'G'
	.db #0x44	;  68	'D'
	.db #0x41	;  65	'A'
	.db #0x3f	;  63
	.db #0x3c	;  60
	.db #0x39	;  57	'9'
	.db #0x36	;  54	'6'
	.db #0x33	;  51	'3'
	.db #0x31	;  49	'1'
	.db #0x2e	;  46
	.db #0x2b	;  43
	.db #0x28	;  40
	.db #0x25	;  37
	.db #0x22	;  34
	.db #0x1f	;  31
	.db #0x1c	;  28
	.db #0x19	;  25
	.db #0x16	;  22
	.db #0x13	;  19
	.db #0x10	;  16
	.db #0x0c	;  12
	.db #0x09	;  9
	.db #0x06	;  6
	.db #0x03	;  3
	.db #0x00	;  0
	.db #0xfd	; -3
	.db #0xfa	; -6
	.db #0xf7	; -9
	.db #0xf4	; -12
	.db #0xf0	; -16
	.db #0xed	; -19
	.db #0xea	; -22
	.db #0xe7	; -25
	.db #0xe4	; -28
	.db #0xe1	; -31
	.db #0xde	; -34
	.db #0xdb	; -37
	.db #0xd8	; -40
	.db #0xd5	; -43
	.db #0xd2	; -46
	.db #0xcf	; -49
	.db #0xcd	; -51
	.db #0xca	; -54
	.db #0xc7	; -57
	.db #0xc4	; -60
	.db #0xc1	; -63
	.db #0xbf	; -65
	.db #0xbc	; -68
	.db #0xb9	; -71
	.db #0xb7	; -73
	.db #0xb4	; -76
	.db #0xb2	; -78
	.db #0xaf	; -81
	.db #0xad	; -83
	.db #0xab	; -85
	.db #0xa8	; -88
	.db #0xa6	; -90
	.db #0xa4	; -92
	.db #0xa2	; -94
	.db #0xa0	; -96
	.db #0x9e	; -98
	.db #0x9c	; -100
	.db #0x9a	; -102
	.db #0x98	; -104
	.db #0x96	; -106
	.db #0x95	; -107
	.db #0x93	; -109
	.db #0x91	; -111
	.db #0x90	; -112
	.db #0x8f	; -113
	.db #0x8d	; -115
	.db #0x8c	; -116
	.db #0x8b	; -117
	.db #0x8a	; -118
	.db #0x88	; -120
	.db #0x87	; -121
	.db #0x86	; -122
	.db #0x86	; -122
	.db #0x85	; -123
	.db #0x84	; -124
	.db #0x83	; -125
	.db #0x83	; -125
	.db #0x82	; -126
	.db #0x82	; -126
	.db #0x82	; -126
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x81	; -127
	.db #0x82	; -126
	.db #0x82	; -126
	.db #0x82	; -126
	.db #0x83	; -125
	.db #0x83	; -125
	.db #0x84	; -124
	.db #0x85	; -123
	.db #0x86	; -122
	.db #0x86	; -122
	.db #0x87	; -121
	.db #0x88	; -120
	.db #0x8a	; -118
	.db #0x8b	; -117
	.db #0x8c	; -116
	.db #0x8d	; -115
	.db #0x8f	; -113
	.db #0x90	; -112
	.db #0x91	; -111
	.db #0x93	; -109
	.db #0x95	; -107
	.db #0x96	; -106
	.db #0x98	; -104
	.db #0x9a	; -102
	.db #0x9c	; -100
	.db #0x9e	; -98
	.db #0xa0	; -96
	.db #0xa2	; -94
	.db #0xa4	; -92
	.db #0xa6	; -90
	.db #0xa8	; -88
	.db #0xab	; -85
	.db #0xad	; -83
	.db #0xaf	; -81
	.db #0xb2	; -78
	.db #0xb4	; -76
	.db #0xb7	; -73
	.db #0xb9	; -71
	.db #0xbc	; -68
	.db #0xbf	; -65
	.db #0xc1	; -63
	.db #0xc4	; -60
	.db #0xc7	; -57
	.db #0xca	; -54
	.db #0xcd	; -51
	.db #0xcf	; -49
	.db #0xd2	; -46
	.db #0xd5	; -43
	.db #0xd8	; -40
	.db #0xdb	; -37
	.db #0xde	; -34
	.db #0xe1	; -31
	.db #0xe4	; -28
	.db #0xe7	; -25
	.db #0xea	; -22
	.db #0xed	; -19
	.db #0xf0	; -16
	.db #0xf4	; -12
	.db #0xf7	; -9
	.db #0xfa	; -6
	.db #0xfd	; -3
G$dir_lookup$0_0$0 == .
_dir_lookup:
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0x00	;  0
G$dir_angle_lookup$0_0$0 == .
_dir_angle_lookup:
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xc0	; 192
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
