;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module math_atan2
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atan2_table
	.globl b_atan2
	.globl _atan2
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$atan2$0$0	= .
	.globl	G$atan2$0$0
	C$math_atan2.c$28$0_0$146	= .
	.globl	C$math_atan2.c$28$0_0$146
;src\core\math_atan2.c:28: uint8_t atan2(int16_t y, int16_t x) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function atan2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_atan2	= 255
_atan2::
	C$math_atan2.c$29$1_0$146	= .
	.globl	C$math_atan2.c$29$1_0$146
;src\core\math_atan2.c:29: x = CLAMP(x, -19, 19);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#8
; common peephole 96b move inc hl before sub a, #0xed
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, #0xed
	ld	a, (hl)
	sbc	a, #0xff
	ld	d, (hl)
	ld	a, #0xff
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through e.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00183$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00184$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00184$
00183$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00184$
	scf
00184$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00115$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0xffed
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;	genLabel
00115$:
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from #0x00 directly instead of going through a.
	ld	d, #0x00
	ld	a, #0x13
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00185$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00186$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00186$
00185$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00186$
	scf
00186$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00117$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x0013
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00118$
;	genLabel
00117$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genLabel
00118$:
;	genAssign
;	(locations are the same)
;	genLabel
00116$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$math_atan2.c$30$1_0$146	= .
	.globl	C$math_atan2.c$30$1_0$146
;src\core\math_atan2.c:30: y = CLAMP(y, -17, 17);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#6
; common peephole 96b move inc hl before sub a, #0xef
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, #0xef
	ld	a, (hl)
	sbc	a, #0xff
	ld	d, (hl)
	ld	a, #0xff
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through e.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00187$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00188$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00188$
00187$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00188$
	scf
00188$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00119$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0xffef
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
;	genLabel
00119$:
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from #0x00 directly instead of going through a.
	ld	d, #0x00
	ld	a, #0x11
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00189$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00190$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00190$
00189$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00190$
	scf
00190$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00121$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x0011
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00122$
;	genLabel
00121$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genLabel
00122$:
;	genAssign
;	(locations are the same)
;	genLabel
00120$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genMove_o size 0
	C$math_atan2.c$32$1_0$146	= .
	.globl	C$math_atan2.c$32$1_0$146
;src\core\math_atan2.c:32: if (x >= 0 && y <= 0) {
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ld	a, b
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	a, (hl+)
; common peephole 1 removed dead load from a into c.
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCmpLt
; common peephole 73 tested bit 7 of (hl) directly instead of going through b.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00110$
;	skipping generated iCode
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from #0x00 directly instead of going through a.
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	d, a
	cp	a, c
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00191$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00192$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00192$
00191$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00192$
	scf
00192$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00110$
;	skipping generated iCode
	C$math_atan2.c$33$2_0$147	= .
	.globl	C$math_atan2.c$33$2_0$147
;src\core\math_atan2.c:33: return 64 - atan2_table[x][-y];
;	skipping iCode since result will be rematerialized
;	genMult
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
; common peephole 119 removed loads by exploiting commutativity of addition.
	ld	bc,#_atan2_table
	add	hl,bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#6
	ld	e, (hl)
;	genMove_o size 0
;	genUminus
	xor	a, a
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
;	genMove_o size 2
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, #0x40
	sub	a, c
;	genRet
;	genMove_o size 1
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00110$:
	C$math_atan2.c$34$1_0$146	= .
	.globl	C$math_atan2.c$34$1_0$146
;src\core\math_atan2.c:34: } else if (x >= 0 && y >= 0) {
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
; common peephole 1 removed dead load from a into c.
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCmpLt
; common peephole 73 tested bit 7 of (hl) directly instead of going through b.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00106$
;	skipping generated iCode
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
; common peephole 1 removed dead load from a into c.
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCmpLt
; common peephole 73 tested bit 7 of (hl) directly instead of going through b.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00106$
;	skipping generated iCode
	C$math_atan2.c$35$2_0$148	= .
	.globl	C$math_atan2.c$35$2_0$148
;src\core\math_atan2.c:35: return 64 + atan2_table[x][y];
;	skipping iCode since result will be rematerialized
;	genMult
;	AOP_STK for 
;fetchPairLong
	inc	hl
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
; common peephole 119 removed loads by exploiting commutativity of addition.
	ld	bc,#_atan2_table
	add	hl,bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
;	genPlus
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genPlus
	add	a, #0x40
;	genRet
;	genMove_o size 1
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00106$:
	C$math_atan2.c$36$1_0$146	= .
	.globl	C$math_atan2.c$36$1_0$146
;src\core\math_atan2.c:36: } else if (x <= 0 && y >= 0) {
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from #0x00 directly instead of going through a.
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	d, a
	cp	a, c
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00193$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00194$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00194$
00193$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00194$
	scf
00194$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00102$
;	skipping generated iCode
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
; common peephole 1 removed dead load from a into c.
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCmpLt
; common peephole 73 tested bit 7 of (hl) directly instead of going through b.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
;	skipping generated iCode
	C$math_atan2.c$37$2_0$149	= .
	.globl	C$math_atan2.c$37$2_0$149
;src\core\math_atan2.c:37: return 192 - atan2_table[-x][y];
;	skipping iCode since result will be rematerialized
;	genUminus
;	AOP_STK for 
;fetchPairLong
;fetchLitPair	de
;fetchPairLong
; common peephole 96b move inc hl before ld de, #0x0000
	inc	hl
	ld	de, #0x0000
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	b, a
	ld	c, e
;	genMult
;fetchPairLong
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
;	genMove_o size 2
;	genPlus
	ld	a, l
	add	a, #<(_atan2_table)
	ld	c, a
	ld	a, h
	adc	a, #>(_atan2_table)
	ld	b, a
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
;	genPlus
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMinus
	ld	a, #0xc0
	sub	a, c
;	genRet
;	genMove_o size 1
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
	C$math_atan2.c$39$2_0$150	= .
	.globl	C$math_atan2.c$39$2_0$150
;src\core\math_atan2.c:39: return 192 + atan2_table[-x][-y];
;	skipping iCode since result will be rematerialized
;	genUminus
;	AOP_STK for 
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0000
;fetchPairLong
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	b, a
	ld	c, e
;	genMult
;fetchPairLong
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
;	genMove_o size 2
;	genPlus
	ld	a, l
	add	a, #<(_atan2_table)
	ld	c, a
	ld	a, h
	adc	a, #>(_atan2_table)
	ld	b, a
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#6
	ld	e, (hl)
;	genMove_o size 0
;	genUminus
	xor	a, a
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
;	genMove_o size 2
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genCast
;	(locations are the same)
;	genPlus
	add	a, #0xc0
;	genRet
;	genMove_o size 1
;	genLabel
; common peephole 158 removed unused label 00113$.
	C$math_atan2.c$41$1_0$146	= .
	.globl	C$math_atan2.c$41$1_0$146
;src\core\math_atan2.c:41: }
;	genEndFunction
	C$math_atan2.c$41$1_0$146	= .
	.globl	C$math_atan2.c$41$1_0$146
	XG$atan2$0$0	= .
	.globl	XG$atan2$0$0
	ret
G$atan2_table$0_0$0 == .
_atan2_table:
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x2d	; 45
	.db #0x33	; 51	'3'
	.db #0x36	; 54	'6'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3d	; 61
	.db #0x3d	; 61
	.db #0x3d	; 61
	.db #0x3d	; 61
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x20	; 32
	.db #0x28	; 40
	.db #0x2d	; 45
	.db #0x30	; 48	'0'
	.db #0x33	; 51	'3'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x26	; 38
	.db #0x2a	; 42
	.db #0x2d	; 45
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x13	; 19
	.db #0x1a	; 26
	.db #0x20	; 32
	.db #0x25	; 37
	.db #0x28	; 40
	.db #0x2b	; 43
	.db #0x2d	; 45
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x16	; 22
	.db #0x1b	; 27
	.db #0x20	; 32
	.db #0x24	; 36
	.db #0x27	; 39
	.db #0x29	; 41
	.db #0x2b	; 43
	.db #0x2d	; 45
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x0d	; 13
	.db #0x13	; 19
	.db #0x18	; 24
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x23	; 35
	.db #0x26	; 38
	.db #0x28	; 40
	.db #0x2a	; 42
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x0b	; 11
	.db #0x10	; 16
	.db #0x15	; 21
	.db #0x19	; 25
	.db #0x1d	; 29
	.db #0x20	; 32
	.db #0x23	; 35
	.db #0x25	; 37
	.db #0x27	; 39
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x13	; 19
	.db #0x17	; 23
	.db #0x1a	; 26
	.db #0x1d	; 29
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x28	; 40
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x0d	; 13
	.db #0x11	; 17
	.db #0x15	; 21
	.db #0x18	; 24
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x24	; 36
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0x13	; 19
	.db #0x16	; 22
	.db #0x19	; 25
	.db #0x1b	; 27
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x11	; 17
	.db #0x14	; 20
	.db #0x17	; 23
	.db #0x1a	; 26
	.db #0x1c	; 28
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x29	; 41
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x0d	; 13
	.db #0x10	; 16
	.db #0x13	; 19
	.db #0x16	; 22
	.db #0x18	; 24
	.db #0x1a	; 26
	.db #0x1c	; 28
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x12	; 18
	.db #0x14	; 20
	.db #0x16	; 22
	.db #0x19	; 25
	.db #0x1b	; 27
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x10	; 16
	.db #0x13	; 19
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x1b	; 27
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x0d	; 13
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x14	; 20
	.db #0x16	; 22
	.db #0x18	; 24
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1d	; 29
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x11	; 17
	.db #0x13	; 19
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x14	; 20
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x0b	; 11
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x11	; 17
	.db #0x13	; 19
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1d	; 29
	.db #0x1e	; 30
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
