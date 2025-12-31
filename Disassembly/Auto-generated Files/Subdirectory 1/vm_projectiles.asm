;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_projectiles
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_vm_projectile_load_type
	.globl _vm_projectile_load_type
	.globl b_vm_projectile_launch
	.globl _vm_projectile_launch
	.globl b___func_VM_PROJECTILE
	.globl ___func_VM_PROJECTILE
	.globl b_projectile_launch
	.globl _projectile_launch
	.globl _IndexOfFarPtr
	.globl _MemcpyBanked
	.globl _ReadBankedFarPtr
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
	G$__func_VM_PROJECTILE$0$0	= .
	.globl	G$__func_VM_PROJECTILE$0$0
	C$vm_projectiles.c$9$0_0$288	= .
	.globl	C$vm_projectiles.c$9$0_0$288
;src\core\vm_projectiles.c:9: BANKREF(VM_PROJECTILE)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_PROJECTILE
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_PROJECTILE	= 255
___func_VM_PROJECTILE::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_PROJECTILE 
	___bank_VM_PROJECTILE = b___func_VM_PROJECTILE 
	.globl ___bank_VM_PROJECTILE 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_projectile_launch$0$0	= .
	.globl	G$vm_projectile_launch$0$0
	C$vm_projectiles.c$17$1_0$290	= .
	.globl	C$vm_projectiles.c$17$1_0$290
;src\core\vm_projectiles.c:17: void vm_projectile_launch(SCRIPT_CTX * THIS, UBYTE type, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_projectile_launch
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_projectile_launch	= 255
_vm_projectile_launch::
	C$vm_projectiles.c$18$1_0$290	= .
	.globl	C$vm_projectiles.c$18$1_0$290
;src\core\vm_projectiles.c:18: projectile_launch_t * params = VM_REF_TO_PTR(idx);
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
	ldhl	sp,	#6
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
	C$vm_projectiles.c$19$1_0$290	= .
	.globl	C$vm_projectiles.c$19$1_0$290
;src\core\vm_projectiles.c:19: projectile_launch(type, &params->pos, (UBYTE)params->angle, (UBYTE)params->flags);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, bc
;	genPointerGet
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIpush
	push	de
	inc	sp
;	genIpush
	push	af
	inc	sp
;	genIpush
	push	bc
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_projectile_launch
	ld	hl, #_projectile_launch
	call	___sdcc_bcall_ehl
;	adjustStack by 5
	add	sp, #5
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_projectiles.c$20$1_0$290	= .
	.globl	C$vm_projectiles.c$20$1_0$290
;src\core\vm_projectiles.c:20: }
;	genEndFunction
	C$vm_projectiles.c$20$1_0$290	= .
	.globl	C$vm_projectiles.c$20$1_0$290
	XG$vm_projectile_launch$0$0	= .
	.globl	XG$vm_projectile_launch$0$0
	ret
	G$vm_projectile_load_type$0$0	= .
	.globl	G$vm_projectile_load_type$0$0
	C$vm_projectiles.c$22$1_0$292	= .
	.globl	C$vm_projectiles.c$22$1_0$292
;src\core\vm_projectiles.c:22: void vm_projectile_load_type(SCRIPT_CTX * THIS, UBYTE type, UBYTE projectile_def_bank, const projectile_def_t * projectile_def) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_projectile_load_type
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
	b_vm_projectile_load_type	= 255
_vm_projectile_load_type::
;	adjustStack by -6
	add	sp, #-6
	C$vm_projectiles.c$24$1_1$293	= .
	.globl	C$vm_projectiles.c$24$1_1$293
;src\core\vm_projectiles.c:24: projectile_def_t * current_def = projectile_defs + type;
;	skipping iCode since result will be rematerialized
;	genMult
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#14
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
; common peephole 119 removed loads by exploiting commutativity of addition.
	ld	bc,#_projectile_defs
	add	hl,bc
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_projectile_load_type_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#3
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm_projectiles.c$26$1_1$293	= .
	.globl	C$vm_projectiles.c$26$1_1$293
;src\core\vm_projectiles.c:26: ReadBankedFarPtr(&scene_sprites, (const unsigned char *)&((scene_t *)current_scene.ptr)->sprites, current_scene.bank);
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_current_scene
;	_moveFrom_tpair_()
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_current_scene + 1)
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x001d
	add	hl, de
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	inc	sp
;	genSend
;	genMove_o size 2
	ld	c, e
	ld	b, d
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	hl, #1
	add	hl, sp
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCall
	call	_ReadBankedFarPtr
	C$vm_projectiles.c$27$1_1$293	= .
	.globl	C$vm_projectiles.c$27$1_1$293
;src\core\vm_projectiles.c:27: MemcpyBanked(current_def, projectile_def, sizeof(projectile_def_t), projectile_def_bank);
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_projectile_load_type_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#15
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0017
	push	hl
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	_MemcpyBanked
	C$vm_projectiles.c$28$1_2$294	= .
	.globl	C$vm_projectiles.c$28$1_2$294
;src\core\vm_projectiles.c:28: UBYTE idx = IndexOfFarPtr(scene_sprites.ptr, scene_sprites.bank, sprites_len, &current_def->sprite);
;	genPlus
;	AOP_STK for _vm_projectile_load_type_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_projectile_load_type_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ldhl	sp,	#1
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCast
;	genMove_o size 2
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
;	genMove_o size 0
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_sprites_len)
; common peephole 17 loaded a from (#_sprites_len) directly instead of using hl.
	push	af
	inc	sp
;	genSend
;	AOP_STK for _vm_projectile_load_type_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_IndexOfFarPtr
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$vm_projectiles.c$29$1_2$294	= .
	.globl	C$vm_projectiles.c$29$1_2$294
;src\core\vm_projectiles.c:29: current_def->base_tile = (idx < sprites_len) ? scene_sprites_base_tiles[idx] : 0;
;	genPlus
;	AOP_STK for _vm_projectile_load_type_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCmpLt
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_sprites_len
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00103$
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scene_sprites_base_tiles
	ld	b, #0x00
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genLabel
00104$:
;	genCast
;	(locations are the same)
;	genAssign (pointer)
	ld	(de), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_projectiles.c$30$1_2$292	= .
	.globl	C$vm_projectiles.c$30$1_2$292
;src\core\vm_projectiles.c:30: }
;	genEndFunction
;	adjustStack by 6
	add	sp, #6
	C$vm_projectiles.c$30$1_2$292	= .
	.globl	C$vm_projectiles.c$30$1_2$292
	XG$vm_projectile_load_type$0$0	= .
	.globl	XG$vm_projectile_load_type$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
