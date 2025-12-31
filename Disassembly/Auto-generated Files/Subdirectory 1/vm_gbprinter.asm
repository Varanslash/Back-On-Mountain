;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_gbprinter
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_VM_GBPRINTER
	.globl ___func_VM_GBPRINTER
	.globl b_gbprinter_print_overlay
	.globl _gbprinter_print_overlay
	.globl b_gbprinter_detect
	.globl _gbprinter_detect
	.globl _set_interrupts
	.globl b_vm_print_detect
	.globl _vm_print_detect
	.globl b_vm_print_overlay
	.globl _vm_print_overlay
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
	G$__func_VM_GBPRINTER$0$0	= .
	.globl	G$__func_VM_GBPRINTER$0$0
	C$vm_gbprinter.c$9$0_0$197	= .
	.globl	C$vm_gbprinter.c$9$0_0$197
;src\core\vm_gbprinter.c:9: BANKREF(VM_GBPRINTER)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_GBPRINTER
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_GBPRINTER	= 255
___func_VM_GBPRINTER::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_GBPRINTER 
	___bank_VM_GBPRINTER = b___func_VM_GBPRINTER 
	.globl ___bank_VM_GBPRINTER 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_print_detect$0$0	= .
	.globl	G$vm_print_detect$0$0
	C$vm_gbprinter.c$11$1_0$199	= .
	.globl	C$vm_gbprinter.c$11$1_0$199
;src\core\vm_gbprinter.c:11: void vm_print_detect(SCRIPT_CTX * THIS, INT16 idx, UBYTE delay) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_print_detect
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
	b_vm_print_detect	= 255
_vm_print_detect::
;	adjustStack by -1
	dec	sp
	C$vm_gbprinter.c$12$1_0$199	= .
	.globl	C$vm_gbprinter.c$12$1_0$199
;src\core\vm_gbprinter.c:12: uint16_t * error = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#10
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	skipping generated iCode
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
	ldhl	sp,	#9
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
	ldhl	sp,#9
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
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_gbprinter.c$13$1_0$199	= .
	.globl	C$vm_gbprinter.c$13$1_0$199
;src\core\vm_gbprinter.c:13: uint8_t IE = IE_REG;
;	genAssign
;	AOP_STK for _vm_print_detect_sloc0_1_0
	ldh	a, (_IE_REG + 0)
	ldhl	sp,	#0
	ld	(hl), a
	C$vm_gbprinter.c$14$1_0$199	= .
	.globl	C$vm_gbprinter.c$14$1_0$199
;src\core\vm_gbprinter.c:14: set_interrupts(IE & ~SIO_IFLAG);
;	genAnd
;	AOP_STK for _vm_print_detect_sloc0_1_0
	ld	a, (hl)
	and	a, #0xf7
;	genMove_o size 1
;	genMove_o size 0
;	genSend
;	genMove_o size 1
; common peephole 9 loaded a from a directly instead of going through e.
; common peephole 0a removed redundant load from a into a.
;	genMove_o size 0
;	genCall
	call	_set_interrupts
	C$vm_gbprinter.c$15$1_0$199	= .
	.globl	C$vm_gbprinter.c$15$1_0$199
;src\core\vm_gbprinter.c:15: *error = gbprinter_detect(delay);
;	genIpush
	push	bc
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_gbprinter_detect
	ld	hl, #_gbprinter_detect
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
;	genMove_o size 1
	pop	bc
;	genCast
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_gbprinter.c$16$1_0$199	= .
	.globl	C$vm_gbprinter.c$16$1_0$199
;src\core\vm_gbprinter.c:16: set_interrupts(IE);
;	genSend
;	AOP_STK for _vm_print_detect_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genCall
;	adjustStack by 1
	inc	sp
	jp	_set_interrupts
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_gbprinter.c$17$1_0$199	= .
	.globl	C$vm_gbprinter.c$17$1_0$199
;src\core\vm_gbprinter.c:17: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	C$vm_gbprinter.c$17$1_0$199	= .
	.globl	C$vm_gbprinter.c$17$1_0$199
	XG$vm_print_detect$0$0	= .
	.globl	XG$vm_print_detect$0$0
	ret
	G$vm_print_overlay$0$0	= .
	.globl	G$vm_print_overlay$0$0
	C$vm_gbprinter.c$19$1_0$201	= .
	.globl	C$vm_gbprinter.c$19$1_0$201
;src\core\vm_gbprinter.c:19: void vm_print_overlay(SCRIPT_CTX * THIS, INT16 idx, UBYTE start, UBYTE height, UBYTE margins) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_print_overlay
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
	b_vm_print_overlay	= 255
_vm_print_overlay::
;	adjustStack by -1
	dec	sp
	C$vm_gbprinter.c$20$1_0$201	= .
	.globl	C$vm_gbprinter.c$20$1_0$201
;src\core\vm_gbprinter.c:20: uint16_t * error = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#10
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	skipping generated iCode
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
	ldhl	sp,	#9
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
	ldhl	sp,#9
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
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_gbprinter.c$21$1_0$201	= .
	.globl	C$vm_gbprinter.c$21$1_0$201
;src\core\vm_gbprinter.c:21: uint8_t IE = IE_REG;
;	genAssign
;	AOP_STK for _vm_print_overlay_sloc0_1_0
	ldh	a, (_IE_REG + 0)
	ldhl	sp,	#0
	ld	(hl), a
	C$vm_gbprinter.c$22$1_0$201	= .
	.globl	C$vm_gbprinter.c$22$1_0$201
;src\core\vm_gbprinter.c:22: set_interrupts(IE & ~SIO_IFLAG);
;	genAnd
;	AOP_STK for _vm_print_overlay_sloc0_1_0
	ld	a, (hl)
	and	a, #0xf7
;	genMove_o size 1
;	genMove_o size 0
;	genSend
;	genMove_o size 1
; common peephole 9 loaded a from a directly instead of going through e.
; common peephole 0a removed redundant load from a into a.
;	genMove_o size 0
;	genCall
	call	_set_interrupts
	C$vm_gbprinter.c$23$1_0$201	= .
	.globl	C$vm_gbprinter.c$23$1_0$201
;src\core\vm_gbprinter.c:23: *error = gbprinter_print_overlay(start, height, margins);
;	genIpush
	push	bc
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#15
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move dec hl before push (de)
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	push	de
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_gbprinter_print_overlay
	ld	hl, #_gbprinter_print_overlay
	call	___sdcc_bcall_ehl
;	adjustStack by 3
	add	sp, #3
;	genMove_o size 1
	pop	bc
;	genCast
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_gbprinter.c$24$1_0$201	= .
	.globl	C$vm_gbprinter.c$24$1_0$201
;src\core\vm_gbprinter.c:24: set_interrupts(IE);
;	genSend
;	AOP_STK for _vm_print_overlay_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genCall
;	adjustStack by 1
	inc	sp
	jp	_set_interrupts
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_gbprinter.c$25$1_0$201	= .
	.globl	C$vm_gbprinter.c$25$1_0$201
;src\core\vm_gbprinter.c:25: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	C$vm_gbprinter.c$25$1_0$201	= .
	.globl	C$vm_gbprinter.c$25$1_0$201
	XG$vm_print_overlay$0$0	= .
	.globl	XG$vm_print_overlay$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
