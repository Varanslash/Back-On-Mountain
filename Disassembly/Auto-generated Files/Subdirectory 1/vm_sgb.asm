;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_sgb
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_VM_SGB
	.globl ___func_VM_SGB
	.globl _sgb_transfer
	.globl _vm_sgb_transfer
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
	G$vm_sgb_transfer$0$0	= .
	.globl	G$vm_sgb_transfer$0$0
	C$vm_sgb.c$9$1_0$194	= .
	.globl	C$vm_sgb.c$9$1_0$194
;src\core\vm_sgb.c:9: void vm_sgb_transfer(DUMMY0_t dummy0, DUMMY1_t dummy1, SCRIPT_CTX * THIS) OLDCALL NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_sgb_transfer
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_vm_sgb_transfer::
;	adjustStack by -1
	dec	sp
	C$vm_sgb.c$11$2_0$195	= .
	.globl	C$vm_sgb.c$11$2_0$195
;src\core\vm_sgb.c:11: UBYTE _save = CURRENT_BANK;
;	genAssign
;	AOP_STK for _vm_sgb_transfer_sloc0_1_0
	ldh	a, (__current_bank + 0)
	ldhl	sp,	#0
	ld	(hl), a
	C$vm_sgb.c$12$1_1$195	= .
	.globl	C$vm_sgb.c$12$1_1$195
;src\core\vm_sgb.c:12: SWITCH_ROM(THIS->bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
	ldh	(__current_bank + 0), a
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$vm_sgb.c$13$1_1$195	= .
	.globl	C$vm_sgb.c$13$1_1$195
;src\core\vm_sgb.c:13: sgb_transfer((void *)THIS->PC);
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genIpush
	push	hl
;	genCall
;	adjustStack by 2
	call	_sgb_transfer
; peephole sp10c increased SP by 2 through pop
	pop	hl
	C$vm_sgb.c$14$1_1$195	= .
	.globl	C$vm_sgb.c$14$1_1$195
;src\core\vm_sgb.c:14: THIS->PC += (*THIS->PC & 0x07) << 4;
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 1
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into d.
;	genAnd
	and	a, #0x07
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genLeftShift
;	genMove_o size 2
	ld	a, e
;	genMove_o size 0
	add	a, a
	rl	d
	add	a, a
	rl	d
	add	a, a
	rl	d
	add	a, a
	rl	d
;	genPlus
	add	a, l
	ld	e, a
	ld	a, d
	adc	a, h
	ld	d, a
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_sgb.c$15$1_1$195	= .
	.globl	C$vm_sgb.c$15$1_1$195
;src\core\vm_sgb.c:15: SWITCH_ROM(_save);
;	genAssign
;	AOP_STK for _vm_sgb_transfer_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for _vm_sgb_transfer_sloc0_1_0
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_sgb.c$16$1_1$194	= .
	.globl	C$vm_sgb.c$16$1_1$194
;src\core\vm_sgb.c:16: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	C$vm_sgb.c$16$1_1$194	= .
	.globl	C$vm_sgb.c$16$1_1$194
	XG$vm_sgb_transfer$0$0	= .
	.globl	XG$vm_sgb_transfer$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$__func_VM_SGB$0$0	= .
	.globl	G$__func_VM_SGB$0$0
	C$vm_sgb.c$7$0_0$192	= .
	.globl	C$vm_sgb.c$7$0_0$192
;src\core\vm_sgb.c:7: BANKREF(VM_SGB)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_SGB
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_SGB	= 255
___func_VM_SGB::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_SGB 
	___bank_VM_SGB = b___func_VM_SGB 
	.globl ___bank_VM_SGB 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
