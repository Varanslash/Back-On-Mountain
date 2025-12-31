;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_math
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_VM_MATH
	.globl ___func_VM_MATH
	.globl b_vm_sin_scale
	.globl _vm_sin_scale
	.globl b_vm_cos_scale
	.globl _vm_cos_scale
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
	G$__func_VM_MATH$0$0	= .
	.globl	G$__func_VM_MATH$0$0
	C$vm_math.c$9$0_0$203	= .
	.globl	C$vm_math.c$9$0_0$203
;src\core\vm_math.c:9: BANKREF(VM_MATH)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_MATH
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_MATH	= 255
___func_VM_MATH::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_MATH 
	___bank_VM_MATH = b___func_VM_MATH 
	.globl ___bank_VM_MATH 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_sin_scale$0$0	= .
	.globl	G$vm_sin_scale$0$0
	C$vm_math.c$11$1_0$205	= .
	.globl	C$vm_math.c$11$1_0$205
;src\core\vm_math.c:11: void vm_sin_scale(SCRIPT_CTX * THIS, INT16 idx, INT16 idx_angle, UBYTE accuracy) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_sin_scale
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_sin_scale	= 255
_vm_sin_scale::
;	adjustStack by -4
	add	sp, #-4
	C$vm_math.c$12$1_0$205	= .
	.globl	C$vm_math.c$12$1_0$205
;src\core\vm_math.c:12: INT16 * res = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00104$:
;	genCast
;	genMove_o size 2
	ld	a, l
	ld	c, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_sin_scale_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
	C$vm_math.c$13$1_0$205	= .
	.globl	C$vm_math.c$13$1_0$205
;src\core\vm_math.c:13: INT16 * angle = VM_REF_TO_PTR(idx_angle);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#15
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
;	genCast
;	(locations are the same)
;	genLabel
00106$:
;	genCast
;	(locations are the same)
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	C$vm_math.c$14$1_0$205	= .
	.globl	C$vm_math.c$14$1_0$205
;src\core\vm_math.c:14: *res = (*res * (SIN(*angle) >> (7 - accuracy))) >> accuracy;
;	genPointerGet
;	AOP_STK for _vm_sin_scale_sloc0_1_0
;	AOP_STK for _vm_sin_scale_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genAddrOf
	ld	de, #_sine_wave+0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
;	genPointerGet
	ld	c, (hl)
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#16
	ld	e, (hl)
;	genMove_o size 0
;	genMinus
	ld	a, #0x07
	sub	a, e
	ld	b, a
;	genRightShift
;	genMove_o size 1
;	genMove_o size 0
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00124$
00123$:
	sra	c
00124$:
	dec	b
	jr	NZ, 00123$
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	rlca
	sbc	a, a
	ld	b, a
;	genSend
	push	de
;	genMove_o size 2
;	genSend
;	AOP_STK for _vm_sin_scale_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	__mulint
;	genMove_o size 2
	pop	de
;	genRightShift
;	genMove_o size 2
;	genMove_o size 0
	inc	e
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00126$
00125$:
	sra	b
	rr	c
00126$:
	dec	e
	jr	NZ, 00125$
;	genMove_o size 2
;	genAssign (pointer)
;	AOP_STK for _vm_sin_scale_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_math.c$15$1_0$205	= .
	.globl	C$vm_math.c$15$1_0$205
;src\core\vm_math.c:15: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm_math.c$15$1_0$205	= .
	.globl	C$vm_math.c$15$1_0$205
	XG$vm_sin_scale$0$0	= .
	.globl	XG$vm_sin_scale$0$0
	ret
	G$vm_cos_scale$0$0	= .
	.globl	G$vm_cos_scale$0$0
	C$vm_math.c$17$1_0$207	= .
	.globl	C$vm_math.c$17$1_0$207
;src\core\vm_math.c:17: void vm_cos_scale(SCRIPT_CTX * THIS, INT16 idx, INT16 idx_angle, UBYTE accuracy) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_cos_scale
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_cos_scale	= 255
_vm_cos_scale::
;	adjustStack by -4
	add	sp, #-4
	C$vm_math.c$18$1_0$207	= .
	.globl	C$vm_math.c$18$1_0$207
;src\core\vm_math.c:18: INT16 * res = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00104$:
;	genCast
;	genMove_o size 2
	ld	a, l
	ld	c, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_cos_scale_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
	C$vm_math.c$19$1_0$207	= .
	.globl	C$vm_math.c$19$1_0$207
;src\core\vm_math.c:19: INT16 * angle = VM_REF_TO_PTR(idx_angle);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#15
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
;	genCast
;	(locations are the same)
;	genLabel
00106$:
;	genCast
;	(locations are the same)
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	C$vm_math.c$20$1_0$207	= .
	.globl	C$vm_math.c$20$1_0$207
;src\core\vm_math.c:20: *res = (*res * (COS(*angle) >> (7 - accuracy))) >> accuracy;
;	genPointerGet
;	AOP_STK for _vm_cos_scale_sloc0_1_0
;	AOP_STK for _vm_cos_scale_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genAddrOf
	ld	de, #_sine_wave+0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genPlus
	add	a, #0x40
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
;	genPointerGet
	ld	c, (hl)
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#16
	ld	e, (hl)
;	genMove_o size 0
;	genMinus
	ld	a, #0x07
	sub	a, e
	ld	b, a
;	genRightShift
;	genMove_o size 1
;	genMove_o size 0
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00124$
00123$:
	sra	c
00124$:
	dec	b
	jr	NZ, 00123$
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	rlca
	sbc	a, a
	ld	b, a
;	genSend
	push	de
;	genMove_o size 2
;	genSend
;	AOP_STK for _vm_cos_scale_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	__mulint
;	genMove_o size 2
	pop	de
;	genRightShift
;	genMove_o size 2
;	genMove_o size 0
	inc	e
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00126$
00125$:
	sra	b
	rr	c
00126$:
	dec	e
	jr	NZ, 00125$
;	genMove_o size 2
;	genAssign (pointer)
;	AOP_STK for _vm_cos_scale_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_math.c$21$1_0$207	= .
	.globl	C$vm_math.c$21$1_0$207
;src\core\vm_math.c:21: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm_math.c$21$1_0$207	= .
	.globl	C$vm_math.c$21$1_0$207
	XG$vm_cos_scale$0$0	= .
	.globl	XG$vm_cos_scale$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
