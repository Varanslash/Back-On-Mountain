;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_load_save
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_vm_save_peek
	.globl _vm_save_peek
	.globl b_vm_save_clear
	.globl _vm_save_clear
	.globl b___func_VM_LOAD_SAVE
	.globl ___func_VM_LOAD_SAVE
	.globl b_data_peek
	.globl _data_peek
	.globl b_data_clear
	.globl _data_clear
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
	G$__func_VM_LOAD_SAVE$0$0	= .
	.globl	G$__func_VM_LOAD_SAVE$0$0
	C$vm_load_save.c$7$0_0$196	= .
	.globl	C$vm_load_save.c$7$0_0$196
;src\core\vm_load_save.c:7: BANKREF(VM_LOAD_SAVE)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_LOAD_SAVE
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_LOAD_SAVE	= 255
___func_VM_LOAD_SAVE::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_LOAD_SAVE 
	___bank_VM_LOAD_SAVE = b___func_VM_LOAD_SAVE 
	.globl ___bank_VM_LOAD_SAVE 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_save_clear$0$0	= .
	.globl	G$vm_save_clear$0$0
	C$vm_load_save.c$9$1_0$198	= .
	.globl	C$vm_load_save.c$9$1_0$198
;src\core\vm_load_save.c:9: void vm_save_clear(SCRIPT_CTX * THIS, UBYTE slot) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_save_clear
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_save_clear	= 255
_vm_save_clear::
	C$vm_load_save.c$11$1_0$198	= .
	.globl	C$vm_load_save.c$11$1_0$198
;src\core\vm_load_save.c:11: data_clear(slot);
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_data_clear
	ld	hl, #_data_clear
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_load_save.c$12$1_0$198	= .
	.globl	C$vm_load_save.c$12$1_0$198
;src\core\vm_load_save.c:12: }
;	genEndFunction
	C$vm_load_save.c$12$1_0$198	= .
	.globl	C$vm_load_save.c$12$1_0$198
	XG$vm_save_clear$0$0	= .
	.globl	XG$vm_save_clear$0$0
	ret
	G$vm_save_peek$0$0	= .
	.globl	G$vm_save_peek$0$0
	C$vm_load_save.c$14$1_0$200	= .
	.globl	C$vm_load_save.c$14$1_0$200
;src\core\vm_load_save.c:14: void vm_save_peek(SCRIPT_CTX * THIS, INT16 idxA, INT16 idxB, INT16 idxC, UWORD count, UBYTE slot) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_save_peek
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_save_peek	= 255
_vm_save_peek::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm_load_save.c$15$1_0$200	= .
	.globl	C$vm_load_save.c$15$1_0$200
;src\core\vm_load_save.c:15: INT16 * res = VM_REF_TO_PTR(idxA);      // result of the operation
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
	ldhl	sp,	#10
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
	jr	00106$
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#10
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
00106$:
;	genCast
;	genMove_o size 2
	ld	a, l
	ld	c, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_save_peek_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
	C$vm_load_save.c$16$1_0$200	= .
	.globl	C$vm_load_save.c$16$1_0$200
;src\core\vm_load_save.c:16: INT16 * dest = VM_REF_TO_PTR(idxB);     // destination for data being peeked
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00107$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
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
00108$:
;	genCast
;	(locations are the same)
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	C$vm_load_save.c$17$1_0$200	= .
	.globl	C$vm_load_save.c$17$1_0$200
;src\core\vm_load_save.c:17: if (idxC < 0) idxC = 0;                 // source of peek in save slot (global)
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#15
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
; common peephole 96b move dec hl before xor a, a
	dec	hl
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00102$:
	C$vm_load_save.c$18$1_0$200	= .
	.globl	C$vm_load_save.c$18$1_0$200
;src\core\vm_load_save.c:18: *res = data_peek(slot, idxC, count, dest);
;	genIpush
	push	bc
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#24
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_data_peek
	ld	hl, #_data_peek
	call	___sdcc_bcall_ehl
;	adjustStack by 7
	add	sp, #7
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_save_peek_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$vm_load_save.c$19$1_0$200	= .
	.globl	C$vm_load_save.c$19$1_0$200
;src\core\vm_load_save.c:19: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm_load_save.c$19$1_0$200	= .
	.globl	C$vm_load_save.c$19$1_0$200
	XG$vm_save_peek$0$0	= .
	.globl	XG$vm_save_peek$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
