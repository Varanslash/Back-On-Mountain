;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_actor
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_VM_ACTOR
	.globl ___func_VM_ACTOR
	.globl b_load_bounds
	.globl _load_bounds
	.globl _load_animations
	.globl b_load_emote
	.globl _load_emote
	.globl b_load_sprite
	.globl _load_sprite
	.globl b_check_collision_in_direction
	.globl _check_collision_in_direction
	.globl b_actor_set_dir
	.globl _actor_set_dir
	.globl b_actor_set_anim_moving
	.globl _actor_set_anim_moving
	.globl b_actor_set_anim_idle
	.globl _actor_set_anim_idle
	.globl b_actor_overlapping_bb
	.globl _actor_overlapping_bb
	.globl b_actor_get_frame_offset
	.globl _actor_get_frame_offset
	.globl b_actor_set_frame_offset
	.globl _actor_set_frame_offset
	.globl b_actor_set_frames
	.globl _actor_set_frames
	.globl b_activate_actor
	.globl _activate_actor
	.globl b_deactivate_actor
	.globl _deactivate_actor
	.globl _SetBankedSpriteData
	.globl b_script_terminate
	.globl _script_terminate
	.globl b_script_execute
	.globl _script_execute
	.globl b_vm_actor_move_to
	.globl _vm_actor_move_to
	.globl b_vm_actor_move_cancel
	.globl _vm_actor_move_cancel
	.globl b_vm_actor_activate
	.globl _vm_actor_activate
	.globl b_vm_actor_deactivate
	.globl _vm_actor_deactivate
	.globl b_vm_actor_begin_update
	.globl _vm_actor_begin_update
	.globl b_vm_actor_terminate_update
	.globl _vm_actor_terminate_update
	.globl b_vm_actor_set_dir
	.globl _vm_actor_set_dir
	.globl b_vm_actor_set_anim
	.globl _vm_actor_set_anim
	.globl b_vm_actor_set_pos
	.globl _vm_actor_set_pos
	.globl b_vm_actor_get_pos
	.globl _vm_actor_get_pos
	.globl b_vm_actor_get_dir
	.globl _vm_actor_get_dir
	.globl b_vm_actor_get_angle
	.globl _vm_actor_get_angle
	.globl b_vm_actor_emote
	.globl _vm_actor_emote
	.globl b_vm_actor_set_bounds
	.globl _vm_actor_set_bounds
	.globl b_vm_actor_set_spritesheet
	.globl _vm_actor_set_spritesheet
	.globl b_vm_actor_replace_tile
	.globl _vm_actor_replace_tile
	.globl b_vm_actor_set_anim_tick
	.globl _vm_actor_set_anim_tick
	.globl b_vm_actor_set_move_speed
	.globl _vm_actor_set_move_speed
	.globl b_vm_actor_set_anim_frame
	.globl _vm_actor_set_anim_frame
	.globl b_vm_actor_get_anim_frame
	.globl _vm_actor_get_anim_frame
	.globl b_vm_actor_set_anim_set
	.globl _vm_actor_set_anim_set
	.globl b_vm_actor_set_spritesheet_by_ref
	.globl _vm_actor_set_spritesheet_by_ref
	.globl b_vm_actor_set_flags
	.globl _vm_actor_set_flags
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
Lvm_actor.vm_actor_move_to$new_dir$1_0$319==.
_vm_actor_move_to_new_dir_10000_319:
	.ds 1
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
	G$vm_actor_move_to$0$0	= .
	.globl	G$vm_actor_move_to$0$0
	C$vm_actor.c$55$1_1$319	= .
	.globl	C$vm_actor.c$55$1_1$319
;src\core\vm_actor.c:55: static direction_e new_dir = DIR_DOWN;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vm_actor_move_to_new_dir_10000_319
	ld	(hl), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$__func_VM_ACTOR$0$0	= .
	.globl	G$__func_VM_ACTOR$0$0
	C$vm_actor.c$14$0_0$317	= .
	.globl	C$vm_actor.c$14$0_0$317
;src\core\vm_actor.c:14: BANKREF(VM_ACTOR)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_ACTOR
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_ACTOR	= 255
___func_VM_ACTOR::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_ACTOR 
	___bank_VM_ACTOR = b___func_VM_ACTOR 
	.globl ___bank_VM_ACTOR 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_actor_move_to$0$0	= .
	.globl	G$vm_actor_move_to$0$0
	C$vm_actor.c$53$1_0$319	= .
	.globl	C$vm_actor.c$53$1_0$319
;src\core\vm_actor.c:53: void vm_actor_move_to(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_move_to
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 15 bytes.
	b_vm_actor_move_to	= 255
_vm_actor_move_to::
;	adjustStack by -15
	add	sp, #-15
	C$vm_actor.c$58$1_0$319	= .
	.globl	C$vm_actor.c$58$1_0$319
;src\core\vm_actor.c:58: THIS->waitable = 1;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x01
	C$vm_actor.c$60$1_1$320	= .
	.globl	C$vm_actor.c$60$1_1$320
;src\core\vm_actor.c:60: act_move_to_t * params = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#24
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00173$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
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
	ldhl	sp,	#23
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
	jr	00174$
;	genLabel
00173$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#23
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
00174$:
;	genCast
;	genMove_o size 2
	ld	a, l
	ld	c, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
	C$vm_actor.c$61$1_1$320	= .
	.globl	C$vm_actor.c$61$1_1$320
;src\core\vm_actor.c:61: actor = actors + (UBYTE)(params->ID);
;	genAddrOf
	ld	bc, #_actors+0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm_actor.c$63$1_1$320	= .
	.globl	C$vm_actor.c$63$1_1$320
;src\core\vm_actor.c:63: if (THIS->flags == 0) {
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genIfx
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (hl)
	or	a, a
	jp	NZ, 00130$
	C$vm_actor.c$64$2_1$321	= .
	.globl	C$vm_actor.c$64$2_1$321
;src\core\vm_actor.c:64: actor->movement_interrupt = FALSE;
;	genAssign
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genAssign (pointer)
;	genPackBits
	C$vm_actor.c$67$2_1$321	= .
	.globl	C$vm_actor.c$67$2_1$321
;src\core\vm_actor.c:67: actor_set_anim_moving(actor);
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
; common peephole 96b move dec hl before ld (bc), a
; common peephole 96b move dec hl before and a, #0xbf
; common peephole 96b move dec hl before ld a, (bc)
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	a, (bc)
	and	a, #0xbf
	ld	(bc), a
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_actor_set_anim_moving
	ld	hl, #_actor_set_anim_moving
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
	C$vm_actor.c$70$2_1$321	= .
	.globl	C$vm_actor.c$70$2_1$321
;src\core\vm_actor.c:70: actor->pos.x = actor->pos.x & 0xFFF0;
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	genMove_o size 2
; common peephole 9 loaded a from a directly instead of going through l.
; common peephole 0a removed redundant load from a into a.
; common peephole 9 loaded d from (hl) directly instead of going through h.
	ld	d, (hl)
;	genMove_o size 0
;	genAnd
	and	a, #0xf0
;	genMove_o size 1
;	genMove_o size 1
;	genCast
;	genMove_o size 2
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
; common peephole 9 loaded a from a directly instead of going through e.
; common peephole 9a loaded (bc) from a directly instead of going through a.
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_actor.c$71$2_1$321	= .
	.globl	C$vm_actor.c$71$2_1$321
;src\core\vm_actor.c:71: actor->pos.y = actor->pos.y & 0xFFF0;
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genAnd
; common peephole 9 loaded a from a directly instead of going through l.
; common peephole 0a removed redundant load from a into a.
	and	a, #0xf0
;	genMove_o size 1
;	genMove_o size 1
	ld	d, h
;	genMove_o size 0
;	genCast
;	genMove_o size 2
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
; common peephole 9 loaded a from a directly instead of going through e.
; common peephole 9a loaded (bc) from a directly instead of going through a.
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_actor.c$73$2_1$321	= .
	.globl	C$vm_actor.c$73$2_1$321
;src\core\vm_actor.c:73: if (CHK_FLAG(params->ATTR, ACTOR_ATTR_DIAGONAL)) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAnd
	bit	2, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00417$.
;	skipping generated iCode
	C$vm_actor.c$74$3_1$322	= .
	.globl	C$vm_actor.c$74$3_1$322
;src\core\vm_actor.c:74: SET_FLAG(THIS->flags, MOVE_ALLOW_H | MOVE_ALLOW_V);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genOr
	or	a, #0x03
;	genMove_o size 1
;	genAssign (pointer)
	ld	(hl), a
;	genLabel
00102$:
	C$vm_actor.c$75$2_1$321	= .
	.globl	C$vm_actor.c$75$2_1$321
;src\core\vm_actor.c:75: } if (CHK_FLAG(params->ATTR, ACTOR_ATTR_H_FIRST)) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00104$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00418$.
;	skipping generated iCode
	C$vm_actor.c$76$3_1$323	= .
	.globl	C$vm_actor.c$76$3_1$323
;src\core\vm_actor.c:76: SET_FLAG(THIS->flags, MOVE_ALLOW_H);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genOr
;	genAssign (pointer)
; common peephole 75 set bit 0 of (hl) directly instead of going through a.
	set	0, (hl)
; common peephole 1 removed dead load from (hl) into a.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00104$:
	C$vm_actor.c$78$3_1$324	= .
	.globl	C$vm_actor.c$78$3_1$324
;src\core\vm_actor.c:78: SET_FLAG(THIS->flags, MOVE_ALLOW_V);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genOr
;	genAssign (pointer)
; common peephole 75 set bit 1 of (hl) directly instead of going through a.
	set	1, (hl)
; common peephole 1 removed dead load from (hl) into a.
;	genLabel
00105$:
	C$vm_actor.c$82$2_1$321	= .
	.globl	C$vm_actor.c$82$2_1$321
;src\core\vm_actor.c:82: if (CHK_FLAG(params->ATTR, ACTOR_ATTR_CHECK_COLL)) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAnd
	bit	1, a
	jp	Z,00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00419$.
;	skipping generated iCode
	C$vm_actor.c$83$3_1$325	= .
	.globl	C$vm_actor.c$83$3_1$325
;src\core\vm_actor.c:83: if (CHK_FLAG(params->ATTR, ACTOR_ATTR_H_FIRST)) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAnd
	rrca
	jp	NC,00115$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00420$.
;	skipping generated iCode
	C$vm_actor.c$85$4_1$326	= .
	.globl	C$vm_actor.c$85$4_1$326
;src\core\vm_actor.c:85: if (actor->pos.x != params->X) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpEq
; common peephole 9 loaded a from a directly instead of going through l.
; common peephole 0a removed redundant load from a into a.
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00421$
	ld	a, h
	sub	a, b
	jp	Z,00107$
; common peephole 81 removed jp by using inverse jump logic
00421$:
;	skipping generated iCode
	C$vm_actor.c$86$5_1$327	= .
	.globl	C$vm_actor.c$86$5_1$327
;src\core\vm_actor.c:86: UBYTE check_dir = (actor->pos.x > params->X) ? CHECK_DIR_LEFT : CHECK_DIR_RIGHT;
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	AOP_STK for _vm_actor_move_to_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
; common peephole 39 replaced 16-bit addition by 8-bit loads and 16-bit increment.
	ld	l, e
	ld	h, d
	inc	hl
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#15
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#14
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc2_1_0
;	AOP_STK for _vm_actor_move_to_sloc3_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move dec hl before ld a, (de)
	ld	a, (hl-)
	ld	d, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc3_1_0
;	AOP_STK for _vm_actor_move_to_sloc4_1_0
;	(locations are the same)
;	genCmpGt
;	AOP_STK for _vm_actor_move_to_sloc4_1_0
	ldhl	sp,	#13
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00422$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00423$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00423$
00422$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00423$
	scf
00423$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00175$
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	a, #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00176$
;	genLabel
00175$:
;	genAssign
;	genMove_o size 1
	ld	a, #0x02
;	genLabel
00176$:
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	(hl), a
;	genMove_o size 0
	C$vm_actor.c$87$5_1$327	= .
	.globl	C$vm_actor.c$87$5_1$327
;src\core\vm_actor.c:87: params->X = check_collision_in_direction(actor->pos.x, actor->pos.y, &actor->bounds, params->X, check_dir);
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	AOP_STK for _vm_actor_move_to_sloc6_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0002
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc6_1_0
;	AOP_STK for _vm_actor_move_to_sloc7_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld a, (de)
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	AOP_STK for _vm_actor_move_to_sloc8_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	AOP_STK for _vm_actor_move_to_sloc9_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
; common peephole 39 replaced 16-bit addition by 8-bit loads and 16-bit increment.
	ld	l, e
	ld	h, d
	inc	hl
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#15
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#14
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc9_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
	inc	bc
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc10_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc10_1_0
;	AOP_STK for _vm_actor_move_to_sloc11_1_0
;	(locations are the same)
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc9_1_0
;	AOP_STK for _vm_actor_move_to_sloc12_1_0
;fetchPairLong
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move dec hl before ld a, (de)
	ld	a, (hl-)
	ld	d, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc12_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc7_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc8_1_0
;	genMove_o size 2
; common peephole 96d move inc hl before push (de)
	inc	hl
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc11_1_0
;	genMove_o size 2
; common peephole 96d move inc hl before push (de)
	inc	hl
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
	push	bc
;	genCall
	ld	e, #b_check_collision_in_direction
	ld	hl, #_check_collision_in_direction
	call	___sdcc_bcall_ehl
;	adjustStack by 9
	add	sp, #9
;	genMove_o size 2
;	genAssign (pointer)
;	AOP_STK for _vm_actor_move_to_sloc6_1_0
;fetchPairLong
	ldhl	sp,	#5
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00107$:
	C$vm_actor.c$90$4_1$326	= .
	.globl	C$vm_actor.c$90$4_1$326
;src\core\vm_actor.c:90: if (actor->pos.y != params->Y) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc13_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
; common peephole 1 removed dead load from l into c.
; common peephole 1 removed dead load from h into b.
; common peephole 104 removed redundant load from bc into hl
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc13_1_0
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCmpEq
	ld	a, e
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00424$
	ld	a, d
	sub	a, b
	jp	Z,00118$
; common peephole 81 removed jp by using inverse jump logic
00424$:
;	skipping generated iCode
	C$vm_actor.c$91$5_1$328	= .
	.globl	C$vm_actor.c$91$5_1$328
;src\core\vm_actor.c:91: UBYTE check_dir = (actor->pos.y > params->Y) ? CHECK_DIR_UP : CHECK_DIR_DOWN;
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPlus
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	AOP_STK for _vm_actor_move_to_sloc14_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#15
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#14
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc14_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from h directly instead of going through a.
	ld	d, h
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00425$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00426$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00426$
00425$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00426$
	scf
00426$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00177$
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	c, #0x03
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00178$
;	genLabel
00177$:
;	genAssign
;	genMove_o size 1
	ld	c, #0x04
;	genLabel
00178$:
;	genAssign
;	(locations are the same)
	C$vm_actor.c$92$5_1$328	= .
	.globl	C$vm_actor.c$92$5_1$328
;src\core\vm_actor.c:92: params->Y = check_collision_in_direction(params->X, actor->pos.y, &actor->bounds, params->Y, check_dir);
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	AOP_STK for _vm_actor_move_to_sloc15_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc15_1_0
;	AOP_STK for _vm_actor_move_to_sloc16_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld a, (de)
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	AOP_STK for _vm_actor_move_to_sloc17_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPlus
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc18_1_0
;	genMove_o size 2
	ldhl	sp,	#13
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genIpush
;	genMove_o size 1
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc16_1_0
;	genMove_o size 2
	ldhl	sp,	#10
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc17_1_0
;	genMove_o size 2
; common peephole 96d move inc hl before push (de)
	inc	hl
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc18_1_0
;	genMove_o size 2
; common peephole 96d move inc hl before push (de)
	inc	hl
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
;	genMove_o size 2
	ld	c, a
;	genMove_o size 0
	push	bc
;	genCall
	ld	e, #b_check_collision_in_direction
	ld	hl, #_check_collision_in_direction
	call	___sdcc_bcall_ehl
;	adjustStack by 9
	add	sp, #9
;	genMove_o size 2
;	genAssign (pointer)
;	AOP_STK for _vm_actor_move_to_sloc15_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00118$
;	genLabel
00115$:
	C$vm_actor.c$96$4_1$329	= .
	.globl	C$vm_actor.c$96$4_1$329
;src\core\vm_actor.c:96: if (actor->pos.y != params->Y) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc19_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
; common peephole 1 removed dead load from l into c.
; common peephole 1 removed dead load from h into b.
; common peephole 104 removed redundant load from bc into hl
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc19_1_0
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCmpEq
	ld	a, e
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00427$
	ld	a, d
	sub	a, b
	jp	Z,00111$
; common peephole 81 removed jp by using inverse jump logic
00427$:
;	skipping generated iCode
	C$vm_actor.c$97$5_1$330	= .
	.globl	C$vm_actor.c$97$5_1$330
;src\core\vm_actor.c:97: UBYTE check_dir = (actor->pos.y > params->Y) ? CHECK_DIR_UP : CHECK_DIR_DOWN;
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	AOP_STK for _vm_actor_move_to_sloc20_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
; common peephole 39 replaced 16-bit addition by 8-bit loads and 16-bit increment.
	ld	l, e
	ld	h, d
	inc	hl
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc20_1_0
;	AOP_STK for _vm_actor_move_to_sloc21_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0002
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#15
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#14
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc21_1_0
;	AOP_STK for _vm_actor_move_to_sloc22_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move dec hl before ld a, (de)
	ld	a, (hl-)
	ld	d, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
; common peephole 1 removed dead load from l into c.
; common peephole 1 removed dead load from h into b.
; common peephole 104 removed redundant load from bc into hl
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc22_1_0
;	AOP_STK for _vm_actor_move_to_sloc23_1_0
;	(locations are the same)
;	genCmpGt
;	AOP_STK for _vm_actor_move_to_sloc23_1_0
	ldhl	sp,	#13
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00428$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00429$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00429$
00428$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00429$
	scf
00429$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00179$
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	a, #0x03
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00180$
;	genLabel
00179$:
;	genAssign
;	genMove_o size 1
	ld	a, #0x04
;	genLabel
00180$:
;	genAssign
;	AOP_STK for _vm_actor_move_to_sloc24_1_0
;	genMove_o size 1
	ldhl	sp,	#6
	ld	(hl), a
;	genMove_o size 0
	C$vm_actor.c$98$5_1$330	= .
	.globl	C$vm_actor.c$98$5_1$330
;src\core\vm_actor.c:98: params->Y = check_collision_in_direction(actor->pos.x, actor->pos.y, &actor->bounds, params->Y, check_dir);
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	AOP_STK for _vm_actor_move_to_sloc25_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc25_1_0
;	AOP_STK for _vm_actor_move_to_sloc26_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld a, (de)
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	AOP_STK for _vm_actor_move_to_sloc27_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPlus
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc28_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc28_1_0
;	AOP_STK for _vm_actor_move_to_sloc29_1_0
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc24_1_0
;	genMove_o size 1
	ldhl	sp,	#6
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc26_1_0
;	genMove_o size 2
	ldhl	sp,	#10
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc27_1_0
;	genMove_o size 2
; common peephole 96d move inc hl before push (de)
	inc	hl
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc29_1_0
;	genMove_o size 2
; common peephole 96d move inc hl before push (de)
	inc	hl
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
	push	bc
;	genCall
	ld	e, #b_check_collision_in_direction
	ld	hl, #_check_collision_in_direction
	call	___sdcc_bcall_ehl
;	adjustStack by 9
	add	sp, #9
;	genMove_o size 2
;	genAssign (pointer)
;	AOP_STK for _vm_actor_move_to_sloc25_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00111$:
	C$vm_actor.c$101$4_1$329	= .
	.globl	C$vm_actor.c$101$4_1$329
;src\core\vm_actor.c:101: if (actor->pos.x != params->X) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpEq
; common peephole 9 loaded a from a directly instead of going through l.
; common peephole 0a removed redundant load from a into a.
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00430$
	ld	a, h
	sub	a, b
	jp	Z,00118$
; common peephole 81 removed jp by using inverse jump logic
00430$:
;	skipping generated iCode
	C$vm_actor.c$102$5_1$331	= .
	.globl	C$vm_actor.c$102$5_1$331
;src\core\vm_actor.c:102: UBYTE check_dir = (actor->pos.x > params->X) ? CHECK_DIR_LEFT : CHECK_DIR_RIGHT;
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from h directly instead of going through a.
	ld	d, h
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00431$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00432$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00432$
00431$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00432$
	scf
00432$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00181$
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	a, #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00182$
;	genLabel
00181$:
;	genAssign
;	genMove_o size 1
	ld	a, #0x02
;	genLabel
00182$:
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc30_1_0
;	genMove_o size 1
	ldhl	sp,	#8
	ld	(hl), a
;	genMove_o size 0
	C$vm_actor.c$103$5_1$331	= .
	.globl	C$vm_actor.c$103$5_1$331
;src\core\vm_actor.c:103: params->X = check_collision_in_direction(actor->pos.x, params->Y, &actor->bounds, params->X, check_dir);
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	AOP_STK for _vm_actor_move_to_sloc31_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0002
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc31_1_0
;	AOP_STK for _vm_actor_move_to_sloc32_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld a, (de)
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	AOP_STK for _vm_actor_move_to_sloc33_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#15
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#14
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
; common peephole 1 removed dead load from l into c.
; common peephole 1 removed dead load from h into b.
; common peephole 104 removed redundant load from bc into hl
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 2
	ld	e, a
	ld	d, l
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc30_1_0
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc32_1_0
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc33_1_0
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
;	genIpush
	push	bc
;	genIpush
	push	de
;	genCall
	ld	e, #b_check_collision_in_direction
	ld	hl, #_check_collision_in_direction
	call	___sdcc_bcall_ehl
;	adjustStack by 9
	add	sp, #9
;	genMove_o size 2
;	genAssign (pointer)
;	AOP_STK for _vm_actor_move_to_sloc31_1_0
;fetchPairLong
	ldhl	sp,	#9
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00118$:
	C$vm_actor.c$109$2_1$321	= .
	.globl	C$vm_actor.c$109$2_1$321
;src\core\vm_actor.c:109: if ((actor->pos.x != params->X)) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpEq
; common peephole 9 loaded a from a directly instead of going through l.
; common peephole 0a removed redundant load from a into a.
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00433$
	ld	a, h
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00120$
; common peephole 81 removed jp by using inverse jump logic
00433$:
;	skipping generated iCode
	C$vm_actor.c$110$3_1$332	= .
	.globl	C$vm_actor.c$110$3_1$332
;src\core\vm_actor.c:110: SET_FLAG(THIS->flags, MOVE_NEEDED_H);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genOr
;	genAssign (pointer)
; common peephole 75 set bit 6 of (hl) directly instead of going through a.
	set	6, (hl)
; common peephole 1 removed dead load from (hl) into a.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00121$
;	genLabel
00120$:
	C$vm_actor.c$112$3_1$333	= .
	.globl	C$vm_actor.c$112$3_1$333
;src\core\vm_actor.c:112: SET_FLAG(THIS->flags, MOVE_ALLOW_V);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genOr
;	genAssign (pointer)
; common peephole 75 set bit 1 of (hl) directly instead of going through a.
	set	1, (hl)
; common peephole 1 removed dead load from (hl) into a.
;	genLabel
00121$:
	C$vm_actor.c$114$2_1$321	= .
	.globl	C$vm_actor.c$114$2_1$321
;src\core\vm_actor.c:114: if (actor->pos.y != params->Y) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc34_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
; common peephole 1 removed dead load from l into c.
; common peephole 1 removed dead load from h into b.
; common peephole 104 removed redundant load from bc into hl
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc34_1_0
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCmpEq
	ld	a, c
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00434$
	ld	a, b
	sub	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00123$
; common peephole 81 removed jp by using inverse jump logic
00434$:
;	skipping generated iCode
	C$vm_actor.c$115$3_1$334	= .
	.globl	C$vm_actor.c$115$3_1$334
;src\core\vm_actor.c:115: SET_FLAG(THIS->flags, MOVE_NEEDED_V);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genOr
;	genAssign (pointer)
; common peephole 75 set bit 7 of (hl) directly instead of going through a.
	set	7, (hl)
; common peephole 1 removed dead load from (hl) into a.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00124$
;	genLabel
00123$:
	C$vm_actor.c$117$3_1$335	= .
	.globl	C$vm_actor.c$117$3_1$335
;src\core\vm_actor.c:117: SET_FLAG(THIS->flags, MOVE_ALLOW_H);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genOr
;	genAssign (pointer)
; common peephole 75 set bit 0 of (hl) directly instead of going through a.
	set	0, (hl)
; common peephole 1 removed dead load from (hl) into a.
;	genLabel
00124$:
	C$vm_actor.c$121$2_1$321	= .
	.globl	C$vm_actor.c$121$2_1$321
;src\core\vm_actor.c:121: if (actor->pos.x > params->X) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from h directly instead of going through a.
	ld	d, h
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00435$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00436$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00436$
00435$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00436$
	scf
00436$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00126$
;	skipping generated iCode
	C$vm_actor.c$123$3_1$336	= .
	.globl	C$vm_actor.c$123$3_1$336
;src\core\vm_actor.c:123: SET_FLAG(THIS->flags, MOVE_DIR_H);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genOr
;	genAssign (pointer)
; common peephole 75 set bit 2 of (hl) directly instead of going through a.
	set	2, (hl)
; common peephole 1 removed dead load from (hl) into a.
;	genLabel
00126$:
	C$vm_actor.c$125$2_1$321	= .
	.globl	C$vm_actor.c$125$2_1$321
;src\core\vm_actor.c:125: if (actor->pos.y > params->Y) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPlus
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	AOP_STK for _vm_actor_move_to_sloc35_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#15
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#14
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc35_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from h directly instead of going through a.
	ld	d, h
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00437$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00438$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00438$
00437$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00438$
	scf
00438$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00130$
;	skipping generated iCode
	C$vm_actor.c$127$3_1$337	= .
	.globl	C$vm_actor.c$127$3_1$337
;src\core\vm_actor.c:127: SET_FLAG(THIS->flags, MOVE_DIR_V);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genOr
;	genAssign (pointer)
; common peephole 75 set bit 3 of (hl) directly instead of going through a.
	set	3, (hl)
; common peephole 1 removed dead load from (hl) into a.
;	genLabel
00130$:
	C$vm_actor.c$132$1_1$320	= .
	.globl	C$vm_actor.c$132$1_1$320
;src\core\vm_actor.c:132: if (actor->movement_interrupt) {
;	genAssign
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	l, a
	ld	h, c
;	genUnpackBits
	ld	a, (hl)
	rlca
;	genIfx
; common peephole 100 removed redundant or after and.
	rlca
; common peephole 90a removed and by changing jump condition.
	jp	NC, 00140$
	C$vm_actor.c$134$2_1$338	= .
	.globl	C$vm_actor.c$134$2_1$338
;src\core\vm_actor.c:134: if ((actor->pos.x < params->X) && (actor->pos.x & TILE_FRACTION_MASK)) {   // Bitmask to check for non-grid-aligned position
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpLt
; common peephole 9 loaded e from h directly instead of going through a.
	ld	e, h
; common peephole 9 loaded d from b directly instead of going through a.
	ld	d, b
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00439$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00440$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00440$
00439$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00440$
	scf
00440$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00132$
;	skipping generated iCode
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into c.
;	genAnd
	and	a, #0x7f
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00132$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00441$.
;	skipping generated iCode
	C$vm_actor.c$135$3_1$339	= .
	.globl	C$vm_actor.c$135$3_1$339
;src\core\vm_actor.c:135: params->X = (actor->pos.x & ~TILE_FRACTION_MASK) + ONE_TILE_DISTANCE;  // If moving in positive direction, round up to next tile
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
	inc	bc
	inc	bc
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genAnd
	and	a, #0x80
;	genMove_o size 1
;	genMove_o size 1
;	genPlus
	add	a, #0x80
	ld	e, a
	ld	a, l
	adc	a, #0x00
	ld	d, a
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00133$
;	genLabel
00132$:
	C$vm_actor.c$137$3_1$340	= .
	.globl	C$vm_actor.c$137$3_1$340
;src\core\vm_actor.c:137: params->X = actor->pos.x  & ~TILE_FRACTION_MASK;                       // Otherwise, round down
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
	inc	bc
	inc	bc
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
;	spillPairReg hl
;	genCast
;	genMove_o size 2
; common peephole 9 loaded d from (hl) directly instead of going through l.
	ld	d, (hl)
;	genMove_o size 0
;	genAnd
	and	a, #0x80
;	genMove_o size 1
;	genMove_o size 0
;	genMove_o size 1
;	genAssign (pointer)
;fetchPairLong
; common peephole 9 loaded a from a directly instead of going through e.
; common peephole 9a loaded (bc) from a directly instead of going through a.
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
00133$:
	C$vm_actor.c$140$2_1$338	= .
	.globl	C$vm_actor.c$140$2_1$338
;src\core\vm_actor.c:140: if ((actor->pos.y < params->Y) && (actor->pos.y & TILE_FRACTION_MASK)) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPlus
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	AOP_STK for _vm_actor_move_to_sloc36_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#15
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#14
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc36_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpLt
; common peephole 9 loaded e from h directly instead of going through a.
	ld	e, h
; common peephole 9 loaded d from b directly instead of going through a.
	ld	d, b
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00442$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00443$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00443$
00442$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00443$
	scf
00443$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00136$
;	skipping generated iCode
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPlus
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into c.
;	genAnd
	and	a, #0x7f
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00136$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00444$.
;	skipping generated iCode
	C$vm_actor.c$141$3_1$341	= .
	.globl	C$vm_actor.c$141$3_1$341
;src\core\vm_actor.c:141: params->Y = (actor->pos.y & ~TILE_FRACTION_MASK) + ONE_TILE_DISTANCE;
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPlus
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genAnd
	and	a, #0x80
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genMove_o size 1
	ld	d, l
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0080
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00137$
;	genLabel
00136$:
	C$vm_actor.c$143$3_1$342	= .
	.globl	C$vm_actor.c$143$3_1$342
;src\core\vm_actor.c:143: params->Y = actor->pos.y  & ~TILE_FRACTION_MASK;
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPlus
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genAnd
	and	a, #0x80
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genMove_o size 1
	ld	d, l
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
00137$:
	C$vm_actor.c$145$2_1$338	= .
	.globl	C$vm_actor.c$145$2_1$338
;src\core\vm_actor.c:145: actor->movement_interrupt = FALSE;
;	genAssign
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;	genPackBits
	ld	a, (bc)
	and	a, #0xbf
	ld	(bc), a
;	genLabel
00140$:
	C$vm_actor.c$149$1_1$320	= .
	.globl	C$vm_actor.c$149$1_1$320
;src\core\vm_actor.c:149: if (CHK_FLAG(THIS->flags, MOVE_H) == MOVE_H) {
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genAnd
	and	a, #0x41
;	genMove_o size 1
;	genCmpEq
	sub	a, #0x41
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00445$.
	jp	NZ,00152$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00446$.
;	skipping generated iCode
	C$vm_actor.c$151$2_1$343	= .
	.globl	C$vm_actor.c$151$2_1$343
;src\core\vm_actor.c:151: new_dir = CHK_FLAG(THIS->flags, MOVE_DIR_H) ? DIR_LEFT : DIR_RIGHT;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genAnd
; common peephole 73 tested bit 2 of (hl) directly instead of going through a.
	bit	2, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00447$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00184$
; common peephole 158 removed unused label 00183$.
	ld	a, #0x01
; common peephole 168z used double assignment in case of Z condition.
00184$:
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_vm_actor_move_to_new_dir_10000_319),a
; common peephole 19 loaded (#_vm_actor_move_to_new_dir_10000_319) from a directly instead of using hl.
;src\core\vm_actor.c:154: point_translate_dir(&actor->pos, new_dir, actor->move_speed);
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000f
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc37_1_0
	ld	a, (bc)
;	genMove_o size 1
	ldhl	sp,	#10
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	AOP_STK for _vm_actor_move_to_sloc38_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vm_actor_move_to_new_dir_10000_319)
; common peephole 17 loaded a from (#_vm_actor_move_to_new_dir_10000_319) directly instead of using hl.
	ldhl	sp,	#11
	ld	(hl), a
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genAssign
;	AOP_STK for _vm_actor_move_to_sloc38_1_0
;	AOP_STK for _vm_actor_move_to_sloc39_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	genMove_o size 0
;include/math.h:99: point->x += (int16_t)(dir_lookup[dir].x * speed);
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc40_1_0
;fetchPairLong
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96b move inc hl before ld d, b
; common peephole 96b move inc hl before ld e, c
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	e, c
	ld	d, b
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc38_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_dir_lookup
	add	hl, de
;	genPointerGet
	ld	d, (hl)
;	genSend
;	AOP_STK for _vm_actor_move_to_sloc37_1_0
	push	bc
;	genMove_o size 1
	ldhl	sp,	#12
	ld	e, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genCall
	call	__muluschar
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	pop	bc
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc40_1_0
;fetchPairLong
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;include/math.h:100: point->y += (int16_t)(dir_lookup[dir].y * speed);
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc41_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc39_1_0
;	genMove_o size 1
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_dir_lookup
	add	hl, de
;	genPlus
	inc	hl
;	genPointerGet
	ld	d, (hl)
;	genSend
;	AOP_STK for _vm_actor_move_to_sloc37_1_0
	push	bc
;	genMove_o size 1
	ldhl	sp,	#12
	ld	e, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genCall
	call	__muluschar
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	pop	bc
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc41_1_0
;fetchPairLong
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_actor.c$157$2_1$343	= .
	.globl	C$vm_actor.c$157$2_1$343
;src\core\vm_actor.c:157: if (CHK_FLAG(params->ATTR, ACTOR_ATTR_CHECK_COLL) && actor_overlapping_bb(&actor->bounds, &actor->pos, actor, FALSE)) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAnd
	bit	1, a
	jp	Z,00142$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00448$.
;	skipping generated iCode
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;fetchPairLong
; common peephole 96c move dec hl before inc bc
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
	inc	bc
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#3
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
;	genIpush
	push	bc
;	genIpush
	push	de
;	genCall
	ld	e, #b_actor_overlapping_bb
	ld	hl, #_actor_overlapping_bb
	call	___sdcc_bcall_ehl
;	adjustStack by 7
	add	sp, #7
;	genMove_o size 2
;	genIfx
	ld	a, b
	or	a, c
	jp	Z, 00142$
;src\core\vm_actor.c:158: point_translate_dir(&actor->pos, FLIPPED_DIR(new_dir), actor->move_speed);
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000f
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc42_1_0
	ld	a, (bc)
;	genMove_o size 1
	ldhl	sp,	#10
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vm_actor_move_to_new_dir_10000_319)
; common peephole 17 loaded a from (#_vm_actor_move_to_new_dir_10000_319) directly instead of using hl.
;	genPlus
	add	a, #0x02
;	genCast
;	(locations are the same)
;	genAnd
;	AOP_STK for _vm_actor_move_to_sloc43_1_0
	and	a, #0x03
;	genMove_o size 1
	ldhl	sp,	#11
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genAssign
;	AOP_STK for _vm_actor_move_to_sloc43_1_0
;	AOP_STK for _vm_actor_move_to_sloc44_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	genMove_o size 0
;include/math.h:99: point->x += (int16_t)(dir_lookup[dir].x * speed);
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc45_1_0
;fetchPairLong
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96b move inc hl before ld d, b
; common peephole 96b move inc hl before ld e, c
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	e, c
	ld	d, b
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc43_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_dir_lookup
	add	hl, de
;	genPointerGet
	ld	d, (hl)
;	genSend
;	AOP_STK for _vm_actor_move_to_sloc42_1_0
	push	bc
;	genMove_o size 1
	ldhl	sp,	#12
	ld	e, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genCall
	call	__muluschar
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	pop	bc
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc45_1_0
;fetchPairLong
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;include/math.h:100: point->y += (int16_t)(dir_lookup[dir].y * speed);
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc46_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc44_1_0
;	genMove_o size 1
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_dir_lookup
	add	hl, de
;	genPlus
	inc	hl
;	genPointerGet
	ld	d, (hl)
;	genSend
;	AOP_STK for _vm_actor_move_to_sloc42_1_0
	push	bc
;	genMove_o size 1
	ldhl	sp,	#12
	ld	e, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genCall
	call	__muluschar
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	pop	bc
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc46_1_0
;fetchPairLong
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_actor.c$159$3_1$344	= .
	.globl	C$vm_actor.c$159$3_1$344
;src\core\vm_actor.c:159: THIS->flags = 0;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x00
	C$vm_actor.c$160$3_1$344	= .
	.globl	C$vm_actor.c$160$3_1$344
;src\core\vm_actor.c:160: actor_set_anim_idle(actor);
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_actor_set_anim_idle
	ld	hl, #_actor_set_anim_idle
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
	C$vm_actor.c$161$3_1$344	= .
	.globl	C$vm_actor.c$161$3_1$344
;src\core\vm_actor.c:161: return;
;	genRet
	jp	00171$
;	genLabel
00142$:
	C$vm_actor.c$165$2_1$343	= .
	.globl	C$vm_actor.c$165$2_1$343
;src\core\vm_actor.c:165: if (!CHK_FLAG(THIS->flags, MOVE_ACTIVE_H)) {
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genAnd
; common peephole 73 tested bit 4 of (hl) directly instead of going through a.
	bit	4, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00449$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00145$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00450$.
;	skipping generated iCode
	C$vm_actor.c$166$3_1$345	= .
	.globl	C$vm_actor.c$166$3_1$345
;src\core\vm_actor.c:166: SET_FLAG(THIS->flags, MOVE_ACTIVE_H);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genOr
;	genAssign (pointer)
; common peephole 75 set bit 4 of (hl) directly instead of going through a.
	set	4, (hl)
; common peephole 1 removed dead load from (hl) into a.
	C$vm_actor.c$167$3_1$345	= .
	.globl	C$vm_actor.c$167$3_1$345
;src\core\vm_actor.c:167: actor_set_dir(actor, new_dir, TRUE);
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vm_actor_move_to_new_dir_10000_319)
; common peephole 17 loaded a from (#_vm_actor_move_to_new_dir_10000_319) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_actor_set_dir
	ld	hl, #_actor_set_dir
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genLabel
00145$:
	C$vm_actor.c$172$2_1$343	= .
	.globl	C$vm_actor.c$172$2_1$343
;src\core\vm_actor.c:172: (new_dir == DIR_LEFT && (actor->pos.x <= params->X)) || // Overshot left
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_vm_actor_move_to_new_dir_10000_319)
; common peephole 17 loaded a from (#_vm_actor_move_to_new_dir_10000_319) directly instead of using hl.
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00451$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00150$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00452$.
;	skipping generated iCode
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from h directly instead of going through a.
	ld	d, h
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00453$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00454$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00454$
00453$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00454$
	scf
00454$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00146$
;	skipping generated iCode
;	genLabel
00150$:
	C$vm_actor.c$173$2_1$343	= .
	.globl	C$vm_actor.c$173$2_1$343
;src\core\vm_actor.c:173: (new_dir == DIR_RIGHT && (actor->pos.x >= params->X))   // Overshot right
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_vm_actor_move_to_new_dir_10000_319)
; common peephole 17 loaded a from (#_vm_actor_move_to_new_dir_10000_319) directly instead of using hl.
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00455$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00152$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00456$.
;	skipping generated iCode
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpLt
; common peephole 9 loaded e from h directly instead of going through a.
	ld	e, h
; common peephole 9 loaded d from b directly instead of going through a.
	ld	d, b
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00457$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00458$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00458$
00457$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00458$
	scf
00458$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00152$
;	skipping generated iCode
;	genLabel
00146$:
	C$vm_actor.c$176$3_1$346	= .
	.globl	C$vm_actor.c$176$3_1$346
;src\core\vm_actor.c:176: actor->pos.x = params->X;
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 2
	ld	e, a
	ld	d, l
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_actor.c$177$3_1$346	= .
	.globl	C$vm_actor.c$177$3_1$346
;src\core\vm_actor.c:177: SET_FLAG(THIS->flags, MOVE_ALLOW_V);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genOr
;	genAssign (pointer)
; common peephole 75 set bit 1 of (hl) directly instead of going through a.
	set	1, (hl)
	ld	a, (hl)
	C$vm_actor.c$178$3_1$346	= .
	.globl	C$vm_actor.c$178$3_1$346
;src\core\vm_actor.c:178: CLR_FLAG(THIS->flags, MOVE_H);
;	genAnd
	and	a, #0xbe
;	genMove_o size 1
;	genAssign (pointer)
	ld	(hl), a
;	genLabel
00152$:
	C$vm_actor.c$183$1_1$320	= .
	.globl	C$vm_actor.c$183$1_1$320
;src\core\vm_actor.c:183: if (CHK_FLAG(THIS->flags, MOVE_V) == MOVE_V) {
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genAnd
	and	a, #0x82
;	genMove_o size 1
;	genCmpEq
	sub	a, #0x82
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00459$.
	jp	NZ,00164$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00460$.
;	skipping generated iCode
	C$vm_actor.c$185$2_1$347	= .
	.globl	C$vm_actor.c$185$2_1$347
;src\core\vm_actor.c:185: new_dir = CHK_FLAG(THIS->flags, MOVE_DIR_V) ? DIR_UP : DIR_DOWN;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genAnd
; common peephole 73 tested bit 3 of (hl) directly instead of going through a.
	bit	3, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00461$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00186$
; common peephole 169xz used double assignment in case of Z condition.
; common peephole 158 removed unused label 00185$.
	xor	a, a
00186$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_vm_actor_move_to_new_dir_10000_319),a
; common peephole 19 loaded (#_vm_actor_move_to_new_dir_10000_319) from a directly instead of using hl.
;src\core\vm_actor.c:188: point_translate_dir(&actor->pos, new_dir, actor->move_speed);
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000f
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc47_1_0
	ld	a, (bc)
;	genMove_o size 1
	ldhl	sp,	#10
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	AOP_STK for _vm_actor_move_to_sloc48_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vm_actor_move_to_new_dir_10000_319)
; common peephole 17 loaded a from (#_vm_actor_move_to_new_dir_10000_319) directly instead of using hl.
	ldhl	sp,	#11
	ld	(hl), a
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genAssign
;	AOP_STK for _vm_actor_move_to_sloc48_1_0
;	AOP_STK for _vm_actor_move_to_sloc49_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	genMove_o size 0
;include/math.h:99: point->x += (int16_t)(dir_lookup[dir].x * speed);
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc50_1_0
;fetchPairLong
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96b move inc hl before ld d, b
; common peephole 96b move inc hl before ld e, c
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	e, c
	ld	d, b
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc48_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_dir_lookup
	add	hl, de
;	genPointerGet
	ld	d, (hl)
;	genSend
;	AOP_STK for _vm_actor_move_to_sloc47_1_0
	push	bc
;	genMove_o size 1
	ldhl	sp,	#12
	ld	e, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genCall
	call	__muluschar
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	pop	bc
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc50_1_0
;fetchPairLong
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;include/math.h:100: point->y += (int16_t)(dir_lookup[dir].y * speed);
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc51_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc49_1_0
;	genMove_o size 1
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_dir_lookup
	add	hl, de
;	genPlus
	inc	hl
;	genPointerGet
	ld	d, (hl)
;	genSend
;	AOP_STK for _vm_actor_move_to_sloc47_1_0
	push	bc
;	genMove_o size 1
	ldhl	sp,	#12
	ld	e, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genCall
	call	__muluschar
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	pop	bc
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc51_1_0
;fetchPairLong
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_actor.c$191$2_1$347	= .
	.globl	C$vm_actor.c$191$2_1$347
;src\core\vm_actor.c:191: if (CHK_FLAG(params->ATTR, ACTOR_ATTR_CHECK_COLL) && actor_overlapping_bb(&actor->bounds, &actor->pos, actor, FALSE)) {
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAnd
	bit	1, a
	jp	Z,00154$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00462$.
;	skipping generated iCode
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;fetchPairLong
; common peephole 96c move dec hl before inc bc
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
	inc	bc
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#3
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
;	genIpush
	push	bc
;	genIpush
	push	de
;	genCall
	ld	e, #b_actor_overlapping_bb
	ld	hl, #_actor_overlapping_bb
	call	___sdcc_bcall_ehl
;	adjustStack by 7
	add	sp, #7
;	genMove_o size 2
;	genIfx
	ld	a, b
	or	a, c
	jp	Z, 00154$
;src\core\vm_actor.c:192: point_translate_dir(&actor->pos, FLIPPED_DIR(new_dir), actor->move_speed);
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000f
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc52_1_0
	ld	a, (bc)
;	genMove_o size 1
	ldhl	sp,	#10
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vm_actor_move_to_new_dir_10000_319)
; common peephole 17 loaded a from (#_vm_actor_move_to_new_dir_10000_319) directly instead of using hl.
;	genPlus
	add	a, #0x02
;	genCast
;	(locations are the same)
;	genAnd
;	AOP_STK for _vm_actor_move_to_sloc53_1_0
	and	a, #0x03
;	genMove_o size 1
	ldhl	sp,	#11
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genAssign
;	AOP_STK for _vm_actor_move_to_sloc53_1_0
;	AOP_STK for _vm_actor_move_to_sloc54_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	genMove_o size 0
;include/math.h:99: point->x += (int16_t)(dir_lookup[dir].x * speed);
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc55_1_0
;fetchPairLong
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96b move inc hl before ld d, b
; common peephole 96b move inc hl before ld e, c
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	e, c
	ld	d, b
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc53_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_dir_lookup
	add	hl, de
;	genPointerGet
	ld	d, (hl)
;	genSend
;	AOP_STK for _vm_actor_move_to_sloc52_1_0
	push	bc
;	genMove_o size 1
	ldhl	sp,	#12
	ld	e, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genCall
	call	__muluschar
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	pop	bc
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc55_1_0
;fetchPairLong
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;include/math.h:100: point->y += (int16_t)(dir_lookup[dir].y * speed);
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc56_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genCast
;	AOP_STK for _vm_actor_move_to_sloc54_1_0
;	genMove_o size 1
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_dir_lookup
	add	hl, de
;	genPlus
	inc	hl
;	genPointerGet
	ld	d, (hl)
;	genSend
;	AOP_STK for _vm_actor_move_to_sloc52_1_0
	push	bc
;	genMove_o size 1
	ldhl	sp,	#12
	ld	e, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genCall
	call	__muluschar
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	pop	bc
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc56_1_0
;fetchPairLong
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_actor.c$193$3_1$348	= .
	.globl	C$vm_actor.c$193$3_1$348
;src\core\vm_actor.c:193: THIS->flags = 0;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x00
	C$vm_actor.c$194$3_1$348	= .
	.globl	C$vm_actor.c$194$3_1$348
;src\core\vm_actor.c:194: actor_set_anim_idle(actor);
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_actor_set_anim_idle
	ld	hl, #_actor_set_anim_idle
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
	C$vm_actor.c$195$3_1$348	= .
	.globl	C$vm_actor.c$195$3_1$348
;src\core\vm_actor.c:195: return;
;	genRet
	jp	00171$
;	genLabel
00154$:
	C$vm_actor.c$199$2_1$347	= .
	.globl	C$vm_actor.c$199$2_1$347
;src\core\vm_actor.c:199: if (!CHK_FLAG(THIS->flags, MOVE_ACTIVE_V)) {
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genAnd
; common peephole 73 tested bit 5 of (hl) directly instead of going through a.
	bit	5, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00463$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00157$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00464$.
;	skipping generated iCode
	C$vm_actor.c$200$3_1$349	= .
	.globl	C$vm_actor.c$200$3_1$349
;src\core\vm_actor.c:200: SET_FLAG(THIS->flags, MOVE_ACTIVE_V);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genOr
;	genAssign (pointer)
; common peephole 75 set bit 5 of (hl) directly instead of going through a.
	set	5, (hl)
; common peephole 1 removed dead load from (hl) into a.
	C$vm_actor.c$201$3_1$349	= .
	.globl	C$vm_actor.c$201$3_1$349
;src\core\vm_actor.c:201: actor_set_dir(actor, new_dir, TRUE);
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vm_actor_move_to_new_dir_10000_319)
; common peephole 17 loaded a from (#_vm_actor_move_to_new_dir_10000_319) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_actor_set_dir
	ld	hl, #_actor_set_dir
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genLabel
00157$:
	C$vm_actor.c$206$2_1$347	= .
	.globl	C$vm_actor.c$206$2_1$347
;src\core\vm_actor.c:206: (new_dir == DIR_UP && (actor->pos.y <= params->Y)) || // Overshot above
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_vm_actor_move_to_new_dir_10000_319)
; common peephole 17 loaded a from (#_vm_actor_move_to_new_dir_10000_319) directly instead of using hl.
	sub	a, #0x02
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00465$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00162$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00466$.
;	skipping generated iCode
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPlus
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	AOP_STK for _vm_actor_move_to_sloc57_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#15
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#14
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc57_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from h directly instead of going through a.
	ld	d, h
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00467$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00468$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00468$
00467$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00468$
	scf
00468$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00158$
;	skipping generated iCode
;	genLabel
00162$:
	C$vm_actor.c$207$2_1$347	= .
	.globl	C$vm_actor.c$207$2_1$347
;src\core\vm_actor.c:207: (new_dir == DIR_DOWN &&  (actor->pos.y >= params->Y)) // Overshot below
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vm_actor_move_to_new_dir_10000_319)
; common peephole 17 loaded a from (#_vm_actor_move_to_new_dir_10000_319) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00164$
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPlus
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;	AOP_STK for _vm_actor_move_to_sloc58_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#15
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#14
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_actor_move_to_sloc58_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genCmpLt
; common peephole 9 loaded e from h directly instead of going through a.
	ld	e, h
; common peephole 9 loaded d from b directly instead of going through a.
	ld	d, b
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00469$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00470$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00470$
00469$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00470$
	scf
00470$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00164$
;	skipping generated iCode
;	genLabel
00158$:
	C$vm_actor.c$209$3_1$350	= .
	.globl	C$vm_actor.c$209$3_1$350
;src\core\vm_actor.c:209: actor->pos.y = params->Y;
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc59_1_0
	inc	bc
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
; common peephole 1 removed dead load from l into c.
; common peephole 1 removed dead load from h into b.
; common peephole 104 removed redundant load from bc into hl
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	AOP_STK for _vm_actor_move_to_sloc59_1_0
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm_actor.c$210$3_1$350	= .
	.globl	C$vm_actor.c$210$3_1$350
;src\core\vm_actor.c:210: SET_FLAG(THIS->flags, MOVE_ALLOW_H);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
;	genOr
;	genAssign (pointer)
; common peephole 75 set bit 0 of (hl) directly instead of going through a.
	set	0, (hl)
	ld	a, (hl)
	C$vm_actor.c$211$3_1$350	= .
	.globl	C$vm_actor.c$211$3_1$350
;src\core\vm_actor.c:211: CLR_FLAG(THIS->flags, MOVE_V);
;	genAnd
	and	a, #0x7d
;	genMove_o size 1
;	genAssign (pointer)
	ld	(hl), a
;	genLabel
00164$:
	C$vm_actor.c$216$1_1$320	= .
	.globl	C$vm_actor.c$216$1_1$320
;src\core\vm_actor.c:216: if (!CHK_FLAG(THIS->flags, MOVE_NEEDED_H | MOVE_NEEDED_V)) {
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genAnd
	and	a, #0xc0
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00471$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00166$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00472$.
;	skipping generated iCode
	C$vm_actor.c$217$2_1$351	= .
	.globl	C$vm_actor.c$217$2_1$351
;src\core\vm_actor.c:217: THIS->flags = MOVE_INACTIVE;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x00
	C$vm_actor.c$218$2_1$351	= .
	.globl	C$vm_actor.c$218$2_1$351
;src\core\vm_actor.c:218: actor_set_anim_idle(actor);
;	genIpush
;	AOP_STK for _vm_actor_move_to_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_actor_set_anim_idle
	ld	hl, #_actor_set_anim_idle
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
	C$vm_actor.c$219$2_1$351	= .
	.globl	C$vm_actor.c$219$2_1$351
;src\core\vm_actor.c:219: return;
;	genRet
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00171$
;	genLabel
00166$:
	C$vm_actor.c$222$1_1$320	= .
	.globl	C$vm_actor.c$222$1_1$320
;src\core\vm_actor.c:222: THIS->PC -= (INSTRUCTION_SIZE + sizeof(idx));
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMinus
; common peephole 9 loaded a from a directly instead of going through l.
; common peephole 0a removed redundant load from a into a.
	add	a, #0xfd
	ld	e, a
	ld	a, h
	adc	a, #0xff
	ld	d, a
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_actor.c$223$1_1$320	= .
	.globl	C$vm_actor.c$223$1_1$320
;src\core\vm_actor.c:223: return;
;	genRet
;	genLabel
00171$:
	C$vm_actor.c$224$1_1$319	= .
	.globl	C$vm_actor.c$224$1_1$319
;src\core\vm_actor.c:224: }
;	genEndFunction
;	adjustStack by 15
	add	sp, #15
	C$vm_actor.c$224$1_1$319	= .
	.globl	C$vm_actor.c$224$1_1$319
	XG$vm_actor_move_to$0$0	= .
	.globl	XG$vm_actor_move_to$0$0
	ret
	G$vm_actor_move_cancel$0$0	= .
	.globl	G$vm_actor_move_cancel$0$0
	C$vm_actor.c$226$1_1$365	= .
	.globl	C$vm_actor.c$226$1_1$365
;src\core\vm_actor.c:226: void vm_actor_move_cancel(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_move_cancel
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_actor_move_cancel	= 255
_vm_actor_move_cancel::
	C$vm_actor.c$227$1_0$365	= .
	.globl	C$vm_actor.c$227$1_0$365
;src\core\vm_actor.c:227: UBYTE * n_actor = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
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
	ldhl	sp,	#8
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
	ldhl	sp,#8
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
	C$vm_actor.c$228$1_0$365	= .
	.globl	C$vm_actor.c$228$1_0$365
;src\core\vm_actor.c:228: actor_t * actor = actors + *n_actor;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	(locations are the same)
	C$vm_actor.c$230$1_0$365	= .
	.globl	C$vm_actor.c$230$1_0$365
;src\core\vm_actor.c:230: actor->movement_interrupt = TRUE;
;	genAssign (pointer)
;	genPackBits
	set	6, (hl)
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_actor.c$231$1_0$365	= .
	.globl	C$vm_actor.c$231$1_0$365
;src\core\vm_actor.c:231: }
;	genEndFunction
	C$vm_actor.c$231$1_0$365	= .
	.globl	C$vm_actor.c$231$1_0$365
	XG$vm_actor_move_cancel$0$0	= .
	.globl	XG$vm_actor_move_cancel$0$0
	ret
	G$vm_actor_activate$0$0	= .
	.globl	G$vm_actor_activate$0$0
	C$vm_actor.c$233$1_0$367	= .
	.globl	C$vm_actor.c$233$1_0$367
;src\core\vm_actor.c:233: void vm_actor_activate(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_activate
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_actor_activate	= 255
_vm_actor_activate::
	C$vm_actor.c$234$1_0$367	= .
	.globl	C$vm_actor.c$234$1_0$367
;src\core\vm_actor.c:234: UBYTE * n_actor = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
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
	ldhl	sp,	#8
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
	jr	00107$
;	genLabel
00106$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
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
00107$:
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$235$1_0$367	= .
	.globl	C$vm_actor.c$235$1_0$367
;src\core\vm_actor.c:235: actor_t * actor = actors + *n_actor;
;	genAddrOf
	ld	bc, #_actors+0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$236$1_0$367	= .
	.globl	C$vm_actor.c$236$1_0$367
;src\core\vm_actor.c:236: if (actor == &PLAYER) {
;	genAssign
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genCmpEq
	ld	a, c
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 84 jumped to 00102$ directly instead of via 00122$.
	ld	a, b
	sub	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00122$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00123$.
;	skipping generated iCode
	C$vm_actor.c$237$2_0$368	= .
	.globl	C$vm_actor.c$237$2_0$368
;src\core\vm_actor.c:237: actor->hidden = FALSE;
;	genAssign
;	(locations are the same)
;	genAssign (pointer)
;	genPackBits
	ld	a, (de)
	and	a, #0xfb
	ld	(de), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
	C$vm_actor.c$239$2_0$369	= .
	.globl	C$vm_actor.c$239$2_0$369
;src\core\vm_actor.c:239: actor->disabled = FALSE;
;	genAssign
;	genMove_o size 2
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genAssign (pointer)
;	genPackBits
	res	3, (hl)
	C$vm_actor.c$240$2_0$369	= .
	.globl	C$vm_actor.c$240$2_0$369
;src\core\vm_actor.c:240: activate_actor(actor);
;	genIpush
	push	de
;	genCall
	ld	e, #b_activate_actor
	ld	hl, #_activate_actor
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm_actor.c$242$1_0$367	= .
	.globl	C$vm_actor.c$242$1_0$367
;src\core\vm_actor.c:242: }
;	genEndFunction
	C$vm_actor.c$242$1_0$367	= .
	.globl	C$vm_actor.c$242$1_0$367
	XG$vm_actor_activate$0$0	= .
	.globl	XG$vm_actor_activate$0$0
	ret
	G$vm_actor_deactivate$0$0	= .
	.globl	G$vm_actor_deactivate$0$0
	C$vm_actor.c$244$1_0$371	= .
	.globl	C$vm_actor.c$244$1_0$371
;src\core\vm_actor.c:244: void vm_actor_deactivate(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_deactivate
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_actor_deactivate	= 255
_vm_actor_deactivate::
	C$vm_actor.c$245$1_0$371	= .
	.globl	C$vm_actor.c$245$1_0$371
;src\core\vm_actor.c:245: UBYTE * n_actor = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
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
	ldhl	sp,	#8
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
	jr	00107$
;	genLabel
00106$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
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
00107$:
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$246$1_0$371	= .
	.globl	C$vm_actor.c$246$1_0$371
;src\core\vm_actor.c:246: actor_t * actor = actors + *n_actor;
;	genAddrOf
	ld	bc, #_actors+0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$247$1_0$371	= .
	.globl	C$vm_actor.c$247$1_0$371
;src\core\vm_actor.c:247: if (actor == &PLAYER) {
;	genAssign
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genCmpEq
	ld	a, c
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 84 jumped to 00102$ directly instead of via 00122$.
	ld	a, b
	sub	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00122$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00123$.
;	skipping generated iCode
	C$vm_actor.c$248$2_0$372	= .
	.globl	C$vm_actor.c$248$2_0$372
;src\core\vm_actor.c:248: actor->hidden = TRUE;
;	genAssign
;	(locations are the same)
;	genAssign (pointer)
;	genPackBits
	ld	a, (de)
	or	a, #0x04
	ld	(de), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
	C$vm_actor.c$250$2_0$373	= .
	.globl	C$vm_actor.c$250$2_0$373
;src\core\vm_actor.c:250: actor->disabled = TRUE;
;	genAssign
;	genMove_o size 2
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genAssign (pointer)
;	genPackBits
	set	3, (hl)
	C$vm_actor.c$251$2_0$373	= .
	.globl	C$vm_actor.c$251$2_0$373
;src\core\vm_actor.c:251: deactivate_actor(actor);
;	genIpush
	push	de
;	genCall
	ld	e, #b_deactivate_actor
	ld	hl, #_deactivate_actor
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm_actor.c$253$1_0$371	= .
	.globl	C$vm_actor.c$253$1_0$371
;src\core\vm_actor.c:253: }
;	genEndFunction
	C$vm_actor.c$253$1_0$371	= .
	.globl	C$vm_actor.c$253$1_0$371
	XG$vm_actor_deactivate$0$0	= .
	.globl	XG$vm_actor_deactivate$0$0
	ret
	G$vm_actor_begin_update$0$0	= .
	.globl	G$vm_actor_begin_update$0$0
	C$vm_actor.c$255$1_0$375	= .
	.globl	C$vm_actor.c$255$1_0$375
;src\core\vm_actor.c:255: void vm_actor_begin_update(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_begin_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_actor_begin_update	= 255
_vm_actor_begin_update::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm_actor.c$258$1_0$375	= .
	.globl	C$vm_actor.c$258$1_0$375
;src\core\vm_actor.c:258: act_set_pos_t * params = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
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
	jr	00107$
;	genLabel
00106$:
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
00107$:
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$259$1_0$375	= .
	.globl	C$vm_actor.c$259$1_0$375
;src\core\vm_actor.c:259: actor = actors + (UBYTE)(params->ID);
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	C$vm_actor.c$261$1_0$375	= .
	.globl	C$vm_actor.c$261$1_0$375
;src\core\vm_actor.c:261: if ((actor->script_update.bank) && (actor->hscript_update & SCRIPT_TERMINATED)) {
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0028
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002b
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	h, (hl)
;	spillPairReg hl
;	genAnd
	add	hl, hl
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00104$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00128$.
;	skipping generated iCode
	C$vm_actor.c$262$2_0$376	= .
	.globl	C$vm_actor.c$262$2_0$376
;src\core\vm_actor.c:262: script_execute(actor->script_update.bank, actor->script_update.ptr, &(actor->hscript_update), 0);
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x002b
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_actor_begin_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), e
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0028
	add	hl, bc
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;	spillPairReg hl
;	spillPairReg hl
	ld	c,l
	ld	b,h
; common peephole 104 removed redundant load from bc into hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genIpush
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
;	AOP_STK for _vm_actor_begin_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#1
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
	push	bc
;	genIpush
	push	de
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 6
	add	sp, #6
;	genLabel
00104$:
	C$vm_actor.c$264$1_0$375	= .
	.globl	C$vm_actor.c$264$1_0$375
;src\core\vm_actor.c:264: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm_actor.c$264$1_0$375	= .
	.globl	C$vm_actor.c$264$1_0$375
	XG$vm_actor_begin_update$0$0	= .
	.globl	XG$vm_actor_begin_update$0$0
	ret
	G$vm_actor_terminate_update$0$0	= .
	.globl	G$vm_actor_terminate_update$0$0
	C$vm_actor.c$266$1_0$378	= .
	.globl	C$vm_actor.c$266$1_0$378
;src\core\vm_actor.c:266: void vm_actor_terminate_update(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_terminate_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_actor_terminate_update	= 255
_vm_actor_terminate_update::
	C$vm_actor.c$269$1_0$378	= .
	.globl	C$vm_actor.c$269$1_0$378
;src\core\vm_actor.c:269: act_set_pos_t * params = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
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
	ldhl	sp,	#8
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
	ldhl	sp,#8
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
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$270$1_0$378	= .
	.globl	C$vm_actor.c$270$1_0$378
;src\core\vm_actor.c:270: actor = actors + (UBYTE)(params->ID);
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	C$vm_actor.c$272$1_0$378	= .
	.globl	C$vm_actor.c$272$1_0$378
;src\core\vm_actor.c:272: if ((actor->hscript_update & SCRIPT_TERMINATED) == 0) {
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002b
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	h, (hl)
;	spillPairReg hl
;	genAnd
	add	hl, hl
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00121$.
	ret	C
; common peephole 161 replaced jump by return.
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00122$.
;	skipping generated iCode
	C$vm_actor.c$273$2_0$379	= .
	.globl	C$vm_actor.c$273$2_0$379
;src\core\vm_actor.c:273: script_terminate(actor->hscript_update);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002b
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_terminate
	ld	hl, #_script_terminate
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$vm_actor.c$275$1_0$378	= .
	.globl	C$vm_actor.c$275$1_0$378
;src\core\vm_actor.c:275: }
;	genEndFunction
	C$vm_actor.c$275$1_0$378	= .
	.globl	C$vm_actor.c$275$1_0$378
	XG$vm_actor_terminate_update$0$0	= .
	.globl	XG$vm_actor_terminate_update$0$0
	ret
	G$vm_actor_set_dir$0$0	= .
	.globl	G$vm_actor_set_dir$0$0
	C$vm_actor.c$277$1_0$381	= .
	.globl	C$vm_actor.c$277$1_0$381
;src\core\vm_actor.c:277: void vm_actor_set_dir(SCRIPT_CTX * THIS, INT16 idx, direction_e dir) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_set_dir
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_actor_set_dir	= 255
_vm_actor_set_dir::
	C$vm_actor.c$278$1_0$381	= .
	.globl	C$vm_actor.c$278$1_0$381
;src\core\vm_actor.c:278: UBYTE * n_actor = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
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
	ldhl	sp,	#8
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
	ldhl	sp,#8
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
	C$vm_actor.c$279$1_0$381	= .
	.globl	C$vm_actor.c$279$1_0$381
;src\core\vm_actor.c:279: actor_set_dir(actors + *n_actor, dir, FALSE);
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#11
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
	push	bc
;	genCall
	ld	e, #b_actor_set_dir
	ld	hl, #_actor_set_dir
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_actor.c$280$1_0$381	= .
	.globl	C$vm_actor.c$280$1_0$381
;src\core\vm_actor.c:280: }
;	genEndFunction
	C$vm_actor.c$280$1_0$381	= .
	.globl	C$vm_actor.c$280$1_0$381
	XG$vm_actor_set_dir$0$0	= .
	.globl	XG$vm_actor_set_dir$0$0
	ret
	G$vm_actor_set_anim$0$0	= .
	.globl	G$vm_actor_set_anim$0$0
	C$vm_actor.c$282$1_0$383	= .
	.globl	C$vm_actor.c$282$1_0$383
;src\core\vm_actor.c:282: void vm_actor_set_anim(SCRIPT_CTX * THIS, INT16 idx, INT16 idx_anim) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_set_anim
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_actor_set_anim	= 255
_vm_actor_set_anim::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm_actor.c$283$1_0$383	= .
	.globl	C$vm_actor.c$283$1_0$383
;src\core\vm_actor.c:283: UBYTE * n_actor = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
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
	jr	00105$
;	genLabel
00104$:
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
00105$:
;	genCast
;	genMove_o size 2
	ld	a, l
	ld	c, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_actor_set_anim_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
	C$vm_actor.c$284$1_0$383	= .
	.globl	C$vm_actor.c$284$1_0$383
;src\core\vm_actor.c:284: UBYTE * n_anim = VM_REF_TO_PTR(idx_anim);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
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
	ld	b, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
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
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genLabel
00107$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;src\core\vm_actor.c:285: actor_set_anim(actors + *n_actor, *n_anim);
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _vm_actor_set_anim_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/actor.h:62: actor->animation = anim;
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, de
;	genAssign (pointer)
	ld	(hl), b
;include/actor.h:63: actor_set_frames(actor, actor->animations[anim].start, actor->animations[anim].end + 1);
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, de
;	genMove_o size 2
	ld	c, l
;	genMove_o size 0
;	genLeftShift
	ld	a, b
	add	a, a
;	genPlus
	ld	b, h
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
;	genPlus
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genPointerGet
	ld	b, (hl)
;	genIpush
	push	af
	inc	sp
;	genIpush
	push	bc
	inc	sp
;	genIpush
	push	de
;	genCall
	ld	e, #b_actor_set_frames
	ld	hl, #_actor_set_frames
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	C$vm_actor.c$285$3_0$383	= .
	.globl	C$vm_actor.c$285$3_0$383
;src\core\vm_actor.c:285: actor_set_anim(actors + *n_actor, *n_anim);
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$vm_actor.c$286$3_0$383	= .
	.globl	C$vm_actor.c$286$3_0$383
;src\core\vm_actor.c:286: }
;	genEndFunction
;	adjustStack by 2
; peephole sp8a increased SP by addition
; peephole sp8a increased SP by addition
	add	sp, #6
	C$vm_actor.c$286$3_0$383	= .
	.globl	C$vm_actor.c$286$3_0$383
	XG$vm_actor_set_anim$0$0	= .
	.globl	XG$vm_actor_set_anim$0$0
	ret
	G$vm_actor_set_pos$0$0	= .
	.globl	G$vm_actor_set_pos$0$0
	C$vm_actor.c$288$3_0$388	= .
	.globl	C$vm_actor.c$288$3_0$388
;src\core\vm_actor.c:288: void vm_actor_set_pos(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_set_pos
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
	b_vm_actor_set_pos	= 255
_vm_actor_set_pos::
;	adjustStack by -6
	add	sp, #-6
	C$vm_actor.c$291$1_0$388	= .
	.globl	C$vm_actor.c$291$1_0$388
;src\core\vm_actor.c:291: act_set_pos_t * params = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#15
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
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
	ldhl	sp,#14
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
;	AOP_STK for _vm_actor_set_pos_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
	C$vm_actor.c$292$1_0$388	= .
	.globl	C$vm_actor.c$292$1_0$388
;src\core\vm_actor.c:292: actor = actors + (UBYTE)(params->ID);
;	genAddrOf
	ld	bc, #_actors+0
;	genPointerGet
;	AOP_STK for _vm_actor_set_pos_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_actor_set_pos_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	(hl), c
	inc	hl
;	genMove_o size 0
	C$vm_actor.c$294$1_0$388	= .
	.globl	C$vm_actor.c$294$1_0$388
;src\core\vm_actor.c:294: actor->pos.x = params->X;
;	genPlus
;	AOP_STK for _vm_actor_set_pos_sloc1_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPlus
;	AOP_STK for _vm_actor_set_pos_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 2
	ld	e, a
	ld	d, l
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_actor.c$295$1_0$388	= .
	.globl	C$vm_actor.c$295$1_0$388
;src\core\vm_actor.c:295: actor->pos.y = params->Y;
;	genPlus
;	AOP_STK for _vm_actor_set_pos_sloc1_1_0
;	AOP_STK for _vm_actor_set_pos_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0003
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_set_pos_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
; common peephole 1 removed dead load from l into c.
; common peephole 1 removed dead load from h into b.
; common peephole 104 removed redundant load from bc into hl
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	AOP_STK for _vm_actor_set_pos_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_actor.c$296$1_0$388	= .
	.globl	C$vm_actor.c$296$1_0$388
;src\core\vm_actor.c:296: }
;	genEndFunction
;	adjustStack by 6
	add	sp, #6
	C$vm_actor.c$296$1_0$388	= .
	.globl	C$vm_actor.c$296$1_0$388
	XG$vm_actor_set_pos$0$0	= .
	.globl	XG$vm_actor_set_pos$0$0
	ret
	G$vm_actor_get_pos$0$0	= .
	.globl	G$vm_actor_get_pos$0$0
	C$vm_actor.c$298$1_0$390	= .
	.globl	C$vm_actor.c$298$1_0$390
;src\core\vm_actor.c:298: void vm_actor_get_pos(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_get_pos
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_actor_get_pos	= 255
_vm_actor_get_pos::
;	adjustStack by -4
	add	sp, #-4
	C$vm_actor.c$301$1_0$390	= .
	.globl	C$vm_actor.c$301$1_0$390
;src\core\vm_actor.c:301: act_set_pos_t * params = VM_REF_TO_PTR(idx);
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
;	AOP_STK for _vm_actor_get_pos_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
	C$vm_actor.c$302$1_0$390	= .
	.globl	C$vm_actor.c$302$1_0$390
;src\core\vm_actor.c:302: actor = actors + (UBYTE)(params->ID);
;	genAddrOf
	ld	bc, #_actors+0
;	genPointerGet
;	AOP_STK for _vm_actor_get_pos_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_actor_get_pos_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm_actor.c$304$1_0$390	= .
	.globl	C$vm_actor.c$304$1_0$390
;src\core\vm_actor.c:304: params->X = actor->pos.x;
;	genPlus
;	AOP_STK for _vm_actor_get_pos_sloc0_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
	inc	bc
	inc	bc
;	genPlus
;	AOP_STK for _vm_actor_get_pos_sloc1_1_0
;	genMove_o size 2
; sm83 peephole 2 used ldi to increment hl after load
;	spillPairReg hl
;	spillPairReg hl
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 2
	ld	e, a
	ld	d, l
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm_actor.c$305$1_0$390	= .
	.globl	C$vm_actor.c$305$1_0$390
;src\core\vm_actor.c:305: params->Y = actor->pos.y;
;	genPlus
;	AOP_STK for _vm_actor_get_pos_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_get_pos_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 2
	ld	e, a
	ld	d, l
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_actor.c$306$1_0$390	= .
	.globl	C$vm_actor.c$306$1_0$390
;src\core\vm_actor.c:306: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm_actor.c$306$1_0$390	= .
	.globl	C$vm_actor.c$306$1_0$390
	XG$vm_actor_get_pos$0$0	= .
	.globl	XG$vm_actor_get_pos$0$0
	ret
	G$vm_actor_get_dir$0$0	= .
	.globl	G$vm_actor_get_dir$0$0
	C$vm_actor.c$308$1_0$392	= .
	.globl	C$vm_actor.c$308$1_0$392
;src\core\vm_actor.c:308: void vm_actor_get_dir(SCRIPT_CTX * THIS, INT16 idx, INT16 dest) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_get_dir
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_actor_get_dir	= 255
_vm_actor_get_dir::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm_actor.c$312$1_0$392	= .
	.globl	C$vm_actor.c$312$1_0$392
;src\core\vm_actor.c:312: act_set_pos_t * params = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
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
	jr	00107$
;	genLabel
00106$:
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
00107$:
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$313$1_0$392	= .
	.globl	C$vm_actor.c$313$1_0$392
;src\core\vm_actor.c:313: actor = actors + (UBYTE)(params->ID);
;	genAddrOf
	ld	bc, #_actors+0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_actor_get_dir_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm_actor.c$315$1_0$392	= .
	.globl	C$vm_actor.c$315$1_0$392
;src\core\vm_actor.c:315: if (dest < 0) A = THIS->stack_ptr + dest; else A = script_memory + dest;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
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
	ld	b, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
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
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genLabel
00103$:
	C$vm_actor.c$316$1_0$392	= .
	.globl	C$vm_actor.c$316$1_0$392
;src\core\vm_actor.c:316: *A = actor->dir;
;	genPlus
;	AOP_STK for _vm_actor_get_dir_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0005
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
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
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm_actor.c$317$1_0$392	= .
	.globl	C$vm_actor.c$317$1_0$392
;src\core\vm_actor.c:317: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm_actor.c$317$1_0$392	= .
	.globl	C$vm_actor.c$317$1_0$392
	XG$vm_actor_get_dir$0$0	= .
	.globl	XG$vm_actor_get_dir$0$0
	ret
	G$vm_actor_get_angle$0$0	= .
	.globl	G$vm_actor_get_angle$0$0
	C$vm_actor.c$319$1_0$394	= .
	.globl	C$vm_actor.c$319$1_0$394
;src\core\vm_actor.c:319: void vm_actor_get_angle(SCRIPT_CTX * THIS, INT16 idx, INT16 dest) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_get_angle
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_actor_get_angle	= 255
_vm_actor_get_angle::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm_actor.c$323$1_0$394	= .
	.globl	C$vm_actor.c$323$1_0$394
;src\core\vm_actor.c:323: act_set_pos_t * params = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
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
	jr	00107$
;	genLabel
00106$:
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
00107$:
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$324$1_0$394	= .
	.globl	C$vm_actor.c$324$1_0$394
;src\core\vm_actor.c:324: actor = actors + (UBYTE)(params->ID);
;	genAddrOf
	ld	bc, #_actors+0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_actor_get_angle_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm_actor.c$326$1_0$394	= .
	.globl	C$vm_actor.c$326$1_0$394
;src\core\vm_actor.c:326: if (dest < 0) A = THIS->stack_ptr + dest; else A = script_memory + dest;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
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
	ld	b, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
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
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genLabel
00103$:
	C$vm_actor.c$327$1_0$394	= .
	.globl	C$vm_actor.c$327$1_0$394
;src\core\vm_actor.c:327: *A = dir_angle_lookup[actor->dir];
;	skipping iCode since result will be rematerialized
;	genPlus
;	AOP_STK for _vm_actor_get_angle_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0005
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_dir_angle_lookup
	ld	d, #0x00
	add	hl, de
;	genPointerGet
	ld	e, (hl)
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	d, #0x00
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm_actor.c$328$1_0$394	= .
	.globl	C$vm_actor.c$328$1_0$394
;src\core\vm_actor.c:328: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm_actor.c$328$1_0$394	= .
	.globl	C$vm_actor.c$328$1_0$394
	XG$vm_actor_get_angle$0$0	= .
	.globl	XG$vm_actor_get_angle$0$0
	ret
	G$vm_actor_emote$0$0	= .
	.globl	G$vm_actor_emote$0$0
	C$vm_actor.c$330$1_0$396	= .
	.globl	C$vm_actor.c$330$1_0$396
;src\core\vm_actor.c:330: void vm_actor_emote(SCRIPT_CTX * THIS, INT16 idx, UBYTE emote_tiles_bank, const unsigned char *emote_tiles) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_emote
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_actor_emote	= 255
_vm_actor_emote::
	C$vm_actor.c$333$1_0$396	= .
	.globl	C$vm_actor.c$333$1_0$396
;src\core\vm_actor.c:333: if (THIS->flags == 0) {
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
	ld	hl, #0x0012
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
	C$vm_actor.c$334$2_0$397	= .
	.globl	C$vm_actor.c$334$2_0$397
;src\core\vm_actor.c:334: UBYTE * n_actor = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
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
	ldhl	sp,	#8
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
	jr	00109$
;	genLabel
00108$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
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
00109$:
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$335$2_0$397	= .
	.globl	C$vm_actor.c$335$2_0$397
;src\core\vm_actor.c:335: THIS->flags = 1;
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
	ld	hl, #0x0012
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x01
	C$vm_actor.c$336$2_0$397	= .
	.globl	C$vm_actor.c$336$2_0$397
;src\core\vm_actor.c:336: emote_actor = actors + *n_actor;
;	genAddrOf
	ld	bc, #_actors+0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_emote_actor
	ld	(hl), c
;fetchLitPair	hl
	inc	hl
	ld	(hl), a
	C$vm_actor.c$337$2_0$397	= .
	.globl	C$vm_actor.c$337$2_0$397
;src\core\vm_actor.c:337: emote_timer = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_emote_timer
	ld	(hl), #0x01
	C$vm_actor.c$338$2_0$397	= .
	.globl	C$vm_actor.c$338$2_0$397
;src\core\vm_actor.c:338: load_emote(emote_tiles, emote_tiles_bank);
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#10
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push (af)
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	push	af
	inc	sp
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_load_emote
	ld	hl, #_load_emote
	call	___sdcc_bcall_ehl
;	adjustStack by 3
	add	sp, #3
;	genLabel
00102$:
	C$vm_actor.c$341$1_0$396	= .
	.globl	C$vm_actor.c$341$1_0$396
;src\core\vm_actor.c:341: if (emote_timer == EMOTE_TOTAL_FRAMES) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_emote_timer)
; common peephole 17 loaded a from (#_emote_timer) directly instead of using hl.
	sub	a, #0x3c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00130$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00131$.
;	skipping generated iCode
	C$vm_actor.c$343$2_0$398	= .
	.globl	C$vm_actor.c$343$2_0$398
;src\core\vm_actor.c:343: THIS->flags = 0;
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
	ld	hl, #0x0012
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x00
	C$vm_actor.c$344$2_0$398	= .
	.globl	C$vm_actor.c$344$2_0$398
;src\core\vm_actor.c:344: emote_actor = NULL;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_emote_actor
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00104$:
	C$vm_actor.c$346$2_0$399	= .
	.globl	C$vm_actor.c$346$2_0$399
;src\core\vm_actor.c:346: THIS->waitable = 1;
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
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x01
	C$vm_actor.c$347$2_0$399	= .
	.globl	C$vm_actor.c$347$2_0$399
;src\core\vm_actor.c:347: emote_timer++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_emote_timer
	inc	(hl)
	C$vm_actor.c$348$2_0$399	= .
	.globl	C$vm_actor.c$348$2_0$399
;src\core\vm_actor.c:348: THIS->PC -= (INSTRUCTION_SIZE + sizeof(idx) + sizeof(emote_tiles_bank) + sizeof(emote_tiles));
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMinus
; common peephole 9 loaded a from a directly instead of going through l.
; common peephole 0a removed redundant load from a into a.
	add	a, #0xfa
	ld	e, a
	ld	a, h
	adc	a, #0xff
	ld	d, a
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00106$.
	C$vm_actor.c$350$1_0$396	= .
	.globl	C$vm_actor.c$350$1_0$396
;src\core\vm_actor.c:350: }
;	genEndFunction
	C$vm_actor.c$350$1_0$396	= .
	.globl	C$vm_actor.c$350$1_0$396
	XG$vm_actor_emote$0$0	= .
	.globl	XG$vm_actor_emote$0$0
	ret
	G$vm_actor_set_bounds$0$0	= .
	.globl	G$vm_actor_set_bounds$0$0
	C$vm_actor.c$352$1_0$401	= .
	.globl	C$vm_actor.c$352$1_0$401
;src\core\vm_actor.c:352: void vm_actor_set_bounds(SCRIPT_CTX * THIS, INT16 idx, BYTE left, BYTE right, BYTE top, BYTE bottom) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_set_bounds
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_actor_set_bounds	= 255
_vm_actor_set_bounds::
	C$vm_actor.c$353$1_0$401	= .
	.globl	C$vm_actor.c$353$1_0$401
;src\core\vm_actor.c:353: UBYTE * n_actor = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
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
	ldhl	sp,	#8
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
	ldhl	sp,#8
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
	C$vm_actor.c$354$1_0$401	= .
	.globl	C$vm_actor.c$354$1_0$401
;src\core\vm_actor.c:354: actor_t * actor = actors + *n_actor;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	C$vm_actor.c$355$1_0$401	= .
	.globl	C$vm_actor.c$355$1_0$401
;src\core\vm_actor.c:355: actor->bounds.left = left;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(de), a
	C$vm_actor.c$356$1_0$401	= .
	.globl	C$vm_actor.c$356$1_0$401
;src\core\vm_actor.c:356: actor->bounds.right = right;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0007
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#11
	ld	a, (hl)
	ld	(de), a
	C$vm_actor.c$357$1_0$401	= .
	.globl	C$vm_actor.c$357$1_0$401
;src\core\vm_actor.c:357: actor->bounds.top = top;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#12
	ld	a, (hl)
	ld	(de), a
	C$vm_actor.c$358$1_0$401	= .
	.globl	C$vm_actor.c$358$1_0$401
;src\core\vm_actor.c:358: actor->bounds.bottom = bottom;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0009
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#13
	ld	a, (hl)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_actor.c$359$1_0$401	= .
	.globl	C$vm_actor.c$359$1_0$401
;src\core\vm_actor.c:359: }
;	genEndFunction
	C$vm_actor.c$359$1_0$401	= .
	.globl	C$vm_actor.c$359$1_0$401
	XG$vm_actor_set_bounds$0$0	= .
	.globl	XG$vm_actor_set_bounds$0$0
	ret
	G$vm_actor_set_spritesheet$0$0	= .
	.globl	G$vm_actor_set_spritesheet$0$0
	C$vm_actor.c$361$1_0$403	= .
	.globl	C$vm_actor.c$361$1_0$403
;src\core\vm_actor.c:361: void vm_actor_set_spritesheet(SCRIPT_CTX * THIS, INT16 idx, UBYTE spritesheet_bank, const spritesheet_t *spritesheet) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_set_spritesheet
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_actor_set_spritesheet	= 255
_vm_actor_set_spritesheet::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm_actor.c$362$1_0$403	= .
	.globl	C$vm_actor.c$362$1_0$403
;src\core\vm_actor.c:362: UBYTE * n_actor = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
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
	jr	00105$
;	genLabel
00104$:
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
00105$:
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$363$1_0$403	= .
	.globl	C$vm_actor.c$363$1_0$403
;src\core\vm_actor.c:363: actor_t * actor = actors + *n_actor;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	C$vm_actor.c$364$1_0$403	= .
	.globl	C$vm_actor.c$364$1_0$403
;src\core\vm_actor.c:364: load_sprite(actor->base_tile, spritesheet, spritesheet_bank);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIpush
	push	bc
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#16
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_load_sprite
	ld	hl, #_load_sprite
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
	pop	bc
	C$vm_actor.c$365$1_0$403	= .
	.globl	C$vm_actor.c$365$1_0$403
;src\core\vm_actor.c:365: actor->sprite.bank = spritesheet_bank;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0022
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#12
	ld	a, (hl)
	ld	(de), a
	C$vm_actor.c$366$1_0$403	= .
	.globl	C$vm_actor.c$366$1_0$403
;src\core\vm_actor.c:366: actor->sprite.ptr = (void *)spritesheet;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	AOP_STK for 
;	AOP_STK for _vm_actor_set_spritesheet_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#14
	ld	a, (hl)
	ldhl	sp,	#1
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_actor_set_spritesheet_sloc0_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
	C$vm_actor.c$367$1_0$403	= .
	.globl	C$vm_actor.c$367$1_0$403
;src\core\vm_actor.c:367: load_animations(spritesheet, spritesheet_bank, ANIM_SET_DEFAULT, actor->animations);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genIpush
	push	bc
	push	hl
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genSend
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#18
;	genMove_o size 0
;	genSend
;	AOP_STK for 
;	genMove_o size 2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	_load_animations
	pop	bc
	C$vm_actor.c$368$1_0$403	= .
	.globl	C$vm_actor.c$368$1_0$403
;src\core\vm_actor.c:368: load_bounds(spritesheet, spritesheet_bank, &actor->bounds);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, bc
;	genIpush
	push	bc
	push	hl
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#16
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push (af)
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	push	af
	inc	sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_load_bounds
	ld	hl, #_load_bounds
	call	___sdcc_bcall_ehl
;	adjustStack by 5
	add	sp, #5
	pop	bc
;include/actor.h:66: actor_set_frames(actor, actor->animations[actor->animation].start, actor->animations[actor->animation].end + 1);
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genLeftShift
	add	a, a
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
;	genPlus
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genPointerGet
	ld	d, (hl)
;	genIpush
	push	af
	inc	sp
;	genIpush
	push	de
	inc	sp
;	genIpush
	push	bc
;	genCall
	ld	e, #b_actor_set_frames
	ld	hl, #_actor_set_frames
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	C$vm_actor.c$369$3_0$403	= .
	.globl	C$vm_actor.c$369$3_0$403
;src\core\vm_actor.c:369: actor_reset_anim(actor);
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$vm_actor.c$370$3_0$403	= .
	.globl	C$vm_actor.c$370$3_0$403
;src\core\vm_actor.c:370: }
;	genEndFunction
;	adjustStack by 2
; peephole sp8a increased SP by addition
; peephole sp8a increased SP by addition
	add	sp, #6
	C$vm_actor.c$370$3_0$403	= .
	.globl	C$vm_actor.c$370$3_0$403
	XG$vm_actor_set_spritesheet$0$0	= .
	.globl	XG$vm_actor_set_spritesheet$0$0
	ret
	G$vm_actor_replace_tile$0$0	= .
	.globl	G$vm_actor_replace_tile$0$0
	C$vm_actor.c$372$3_0$408	= .
	.globl	C$vm_actor.c$372$3_0$408
;src\core\vm_actor.c:372: void vm_actor_replace_tile(SCRIPT_CTX * THIS, INT16 idx, UBYTE target_tile, UBYTE tileset_bank, const tileset_t * tileset, UBYTE start_tile, UBYTE length) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_replace_tile
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_actor_replace_tile	= 255
_vm_actor_replace_tile::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm_actor.c$373$1_0$408	= .
	.globl	C$vm_actor.c$373$1_0$408
;src\core\vm_actor.c:373: UBYTE * n_actor = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
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
	jr	00104$
;	genLabel
00103$:
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
00104$:
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$374$1_0$408	= .
	.globl	C$vm_actor.c$374$1_0$408
;src\core\vm_actor.c:374: actor_t * actor = actors + *n_actor;
;	genAddrOf
	ld	bc, #_actors+0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_actor_replace_tile_sloc0_1_0
;	genMove_o size 2
	inc	sp
	inc	sp
	push	bc
;	genMove_o size 0
	C$vm_actor.c$375$1_0$408	= .
	.globl	C$vm_actor.c$375$1_0$408
;src\core\vm_actor.c:375: SetBankedSpriteData(actor->base_tile + target_tile, length, tileset->tiles + (start_tile << 4), tileset_bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genPlus
;	genCast
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	inc	bc
	inc	bc
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_replace_tile_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genPlus
;	AOP_STK for 
	ldhl	sp,	#12
	add	a, (hl)
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
	push	bc
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#20
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
	push	af
	inc	sp
;	genCall
	call	_SetBankedSpriteData
;	adjustStack by 5
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_actor.c$376$1_0$408	= .
	.globl	C$vm_actor.c$376$1_0$408
;src\core\vm_actor.c:376: }
;	genEndFunction
;	adjustStack by 2
; peephole sp8a increased SP by addition
; peephole sp8a increased SP by addition
	add	sp, #7
	C$vm_actor.c$376$1_0$408	= .
	.globl	C$vm_actor.c$376$1_0$408
	XG$vm_actor_replace_tile$0$0	= .
	.globl	XG$vm_actor_replace_tile$0$0
	ret
	G$vm_actor_set_anim_tick$0$0	= .
	.globl	G$vm_actor_set_anim_tick$0$0
	C$vm_actor.c$378$1_0$410	= .
	.globl	C$vm_actor.c$378$1_0$410
;src\core\vm_actor.c:378: void vm_actor_set_anim_tick(SCRIPT_CTX * THIS, INT16 idx, UBYTE tick) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_set_anim_tick
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_actor_set_anim_tick	= 255
_vm_actor_set_anim_tick::
	C$vm_actor.c$380$1_0$410	= .
	.globl	C$vm_actor.c$380$1_0$410
;src\core\vm_actor.c:380: UBYTE * n_actor = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
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
	ldhl	sp,	#8
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
	ldhl	sp,#8
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
	C$vm_actor.c$381$1_0$410	= .
	.globl	C$vm_actor.c$381$1_0$410
;src\core\vm_actor.c:381: actor = actors + *n_actor;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	(locations are the same)
	C$vm_actor.c$382$1_0$410	= .
	.globl	C$vm_actor.c$382$1_0$410
;src\core\vm_actor.c:382: actor->anim_tick = tick;
;	genPlus
	ld	bc, #0xe
	add	hl,bc
; common peephole 113 used 16-bit addition.
	ld	c, l
	ld	b, h
; common peephole 1 removed dead load from h into a.
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_actor.c$383$1_0$410	= .
	.globl	C$vm_actor.c$383$1_0$410
;src\core\vm_actor.c:383: }
;	genEndFunction
	C$vm_actor.c$383$1_0$410	= .
	.globl	C$vm_actor.c$383$1_0$410
	XG$vm_actor_set_anim_tick$0$0	= .
	.globl	XG$vm_actor_set_anim_tick$0$0
	ret
	G$vm_actor_set_move_speed$0$0	= .
	.globl	G$vm_actor_set_move_speed$0$0
	C$vm_actor.c$385$1_0$412	= .
	.globl	C$vm_actor.c$385$1_0$412
;src\core\vm_actor.c:385: void vm_actor_set_move_speed(SCRIPT_CTX * THIS, INT16 idx, UBYTE speed) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_set_move_speed
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_actor_set_move_speed	= 255
_vm_actor_set_move_speed::
	C$vm_actor.c$387$1_0$412	= .
	.globl	C$vm_actor.c$387$1_0$412
;src\core\vm_actor.c:387: UBYTE * n_actor = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
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
	ldhl	sp,	#8
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
	ldhl	sp,#8
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
	C$vm_actor.c$388$1_0$412	= .
	.globl	C$vm_actor.c$388$1_0$412
;src\core\vm_actor.c:388: actor = actors + *n_actor;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	(locations are the same)
	C$vm_actor.c$389$1_0$412	= .
	.globl	C$vm_actor.c$389$1_0$412
;src\core\vm_actor.c:389: actor->move_speed = speed;
;	genPlus
	ld	bc, #0xf
	add	hl,bc
; common peephole 113 used 16-bit addition.
	ld	c, l
	ld	b, h
; common peephole 1 removed dead load from h into a.
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#10
	ld	a, (hl)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_actor.c$390$1_0$412	= .
	.globl	C$vm_actor.c$390$1_0$412
;src\core\vm_actor.c:390: }
;	genEndFunction
	C$vm_actor.c$390$1_0$412	= .
	.globl	C$vm_actor.c$390$1_0$412
	XG$vm_actor_set_move_speed$0$0	= .
	.globl	XG$vm_actor_set_move_speed$0$0
	ret
	G$vm_actor_set_anim_frame$0$0	= .
	.globl	G$vm_actor_set_anim_frame$0$0
	C$vm_actor.c$392$1_0$414	= .
	.globl	C$vm_actor.c$392$1_0$414
;src\core\vm_actor.c:392: void vm_actor_set_anim_frame(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_set_anim_frame
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_actor_set_anim_frame	= 255
_vm_actor_set_anim_frame::
	C$vm_actor.c$395$1_0$414	= .
	.globl	C$vm_actor.c$395$1_0$414
;src\core\vm_actor.c:395: act_set_frame_t * params = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
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
	ldhl	sp,	#8
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
	ldhl	sp,#8
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
	C$vm_actor.c$396$1_0$414	= .
	.globl	C$vm_actor.c$396$1_0$414
;src\core\vm_actor.c:396: actor = actors + (UBYTE)(params->ID);
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	(locations are the same)
	C$vm_actor.c$398$1_0$414	= .
	.globl	C$vm_actor.c$398$1_0$414
;src\core\vm_actor.c:398: actor_set_frame_offset(actor, params->FRAME);
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genIpush
	push	af
	inc	sp
;	genIpush
	push	hl
;	genCall
	ld	e, #b_actor_set_frame_offset
	ld	hl, #_actor_set_frame_offset
	call	___sdcc_bcall_ehl
;	adjustStack by 3
	add	sp, #3
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_actor.c$399$1_0$414	= .
	.globl	C$vm_actor.c$399$1_0$414
;src\core\vm_actor.c:399: }
;	genEndFunction
	C$vm_actor.c$399$1_0$414	= .
	.globl	C$vm_actor.c$399$1_0$414
	XG$vm_actor_set_anim_frame$0$0	= .
	.globl	XG$vm_actor_set_anim_frame$0$0
	ret
	G$vm_actor_get_anim_frame$0$0	= .
	.globl	G$vm_actor_get_anim_frame$0$0
	C$vm_actor.c$401$1_0$416	= .
	.globl	C$vm_actor.c$401$1_0$416
;src\core\vm_actor.c:401: void vm_actor_get_anim_frame(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_get_anim_frame
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_actor_get_anim_frame	= 255
_vm_actor_get_anim_frame::
	C$vm_actor.c$404$1_0$416	= .
	.globl	C$vm_actor.c$404$1_0$416
;src\core\vm_actor.c:404: act_set_frame_t * params = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
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
	ldhl	sp,	#8
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
	ldhl	sp,#8
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
	C$vm_actor.c$405$1_0$416	= .
	.globl	C$vm_actor.c$405$1_0$416
;src\core\vm_actor.c:405: actor = actors + (UBYTE)(params->ID);
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	(locations are the same)
	C$vm_actor.c$407$1_0$416	= .
	.globl	C$vm_actor.c$407$1_0$416
;src\core\vm_actor.c:407: params->FRAME = actor_get_frame_offset(actor);
;	genPlus
	inc	bc
	inc	bc
;	genIpush
	push	bc
	push	hl
;	genCall
	ld	e, #b_actor_get_frame_offset
	ld	hl, #_actor_get_frame_offset
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
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
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_actor.c$408$1_0$416	= .
	.globl	C$vm_actor.c$408$1_0$416
;src\core\vm_actor.c:408: }
;	genEndFunction
	C$vm_actor.c$408$1_0$416	= .
	.globl	C$vm_actor.c$408$1_0$416
	XG$vm_actor_get_anim_frame$0$0	= .
	.globl	XG$vm_actor_get_anim_frame$0$0
	ret
	G$vm_actor_set_anim_set$0$0	= .
	.globl	G$vm_actor_set_anim_set$0$0
	C$vm_actor.c$410$1_0$418	= .
	.globl	C$vm_actor.c$410$1_0$418
;src\core\vm_actor.c:410: void vm_actor_set_anim_set(SCRIPT_CTX * THIS, INT16 idx, UWORD offset) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_set_anim_set
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
	b_vm_actor_set_anim_set	= 255
_vm_actor_set_anim_set::
;	adjustStack by -3
	add	sp, #-3
	C$vm_actor.c$412$1_0$418	= .
	.globl	C$vm_actor.c$412$1_0$418
;src\core\vm_actor.c:412: UBYTE * n_actor = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#12
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#9
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
	ldhl	sp,	#11
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
	jr	00105$
;	genLabel
00104$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
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
00105$:
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$413$1_0$418	= .
	.globl	C$vm_actor.c$413$1_0$418
;src\core\vm_actor.c:413: actor = actors + *n_actor;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	C$vm_actor.c$414$1_0$418	= .
	.globl	C$vm_actor.c$414$1_0$418
;src\core\vm_actor.c:414: load_animations(actor->sprite.ptr, actor->sprite.bank, offset, actor->animations);
;	genPlus
;	AOP_STK for _vm_actor_set_anim_set_sloc0_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0022
	add	hl, bc
;	genPointerGet
;	AOP_STK for _vm_actor_set_anim_set_sloc1_1_0
	ld	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#2
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 2
	ld	e, a
	ld	d, l
;	genMove_o size 0
;	genIpush
	push	bc
;	AOP_STK for _vm_actor_set_anim_set_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#17
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
;	genSend
;	AOP_STK for _vm_actor_set_anim_set_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_load_animations
	pop	bc
;include/actor.h:66: actor_set_frames(actor, actor->animations[actor->animation].start, actor->animations[actor->animation].end + 1);
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genLeftShift
	add	a, a
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
;	genPlus
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genPointerGet
	ld	d, (hl)
;	genIpush
	push	af
	inc	sp
;	genIpush
	push	de
	inc	sp
;	genIpush
	push	bc
;	genCall
	ld	e, #b_actor_set_frames
	ld	hl, #_actor_set_frames
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	C$vm_actor.c$415$3_0$418	= .
	.globl	C$vm_actor.c$415$3_0$418
;src\core\vm_actor.c:415: actor_reset_anim(actor);
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$vm_actor.c$416$3_0$418	= .
	.globl	C$vm_actor.c$416$3_0$418
;src\core\vm_actor.c:416: }
;	genEndFunction
;	adjustStack by 3
; peephole sp9 combined SP additions
	add	sp, #7
	C$vm_actor.c$416$3_0$418	= .
	.globl	C$vm_actor.c$416$3_0$418
	XG$vm_actor_set_anim_set$0$0	= .
	.globl	XG$vm_actor_set_anim_set$0$0
	ret
	G$vm_actor_set_spritesheet_by_ref$0$0	= .
	.globl	G$vm_actor_set_spritesheet_by_ref$0$0
	C$vm_actor.c$418$3_0$423	= .
	.globl	C$vm_actor.c$418$3_0$423
;src\core\vm_actor.c:418: void vm_actor_set_spritesheet_by_ref(SCRIPT_CTX * THIS, INT16 idxA, INT16 idxB) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_set_spritesheet_by_ref
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
	b_vm_actor_set_spritesheet_by_ref	= 255
_vm_actor_set_spritesheet_by_ref::
;	adjustStack by -3
	add	sp, #-3
	C$vm_actor.c$420$1_0$423	= .
	.globl	C$vm_actor.c$420$1_0$423
;src\core\vm_actor.c:420: UBYTE * n_actor = VM_REF_TO_PTR(idxA);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#12
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#9
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
	ldhl	sp,	#11
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
	jr	00105$
;	genLabel
00104$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
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
00105$:
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_actor.c$421$1_0$423	= .
	.globl	C$vm_actor.c$421$1_0$423
;src\core\vm_actor.c:421: actor = actors + *n_actor;
;	genAddrOf
	ld	bc, #_actors+0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genMult
;fetchPairLong
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm_actor.c$423$1_1$424	= .
	.globl	C$vm_actor.c$423$1_1$424
;src\core\vm_actor.c:423: gbs_farptr_t * params = VM_REF_TO_PTR(idxB);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#14
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#9
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
	ldhl	sp,	#13
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
	jr	00107$
;	genLabel
00106$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#13
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
00107$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
	C$vm_actor.c$424$1_1$424	= .
	.globl	C$vm_actor.c$424$1_1$424
;src\core\vm_actor.c:424: UBYTE spritesheet_bank = (UBYTE)(params->BANK);
;	genPointerGet
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc1_1_0
	ld	a, (hl)
;	genMove_o size 1
	push	hl
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
;	genMove_o size 0
	C$vm_actor.c$425$1_1$424	= .
	.globl	C$vm_actor.c$425$1_1$424
;src\core\vm_actor.c:425: const spritesheet_t *spritesheet = params->DATA;
;	genPlus
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
	C$vm_actor.c$427$1_1$424	= .
	.globl	C$vm_actor.c$427$1_1$424
;src\core\vm_actor.c:427: load_sprite(actor->base_tile, spritesheet, spritesheet_bank);
;	genPlus
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genIpush
	push	bc
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
	push	bc
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_load_sprite
	ld	hl, #_load_sprite
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
	pop	bc
	C$vm_actor.c$428$1_1$424	= .
	.globl	C$vm_actor.c$428$1_1$424
;src\core\vm_actor.c:428: actor->sprite.bank = spritesheet_bank;
;	genPlus
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0022
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc1_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(de), a
	C$vm_actor.c$429$1_1$424	= .
	.globl	C$vm_actor.c$429$1_1$424
;src\core\vm_actor.c:429: actor->sprite.ptr = (void *)spritesheet;
;	genPlus
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
; common peephole 1 removed dead load from l into e.
; common peephole 0b removed redundant load from e back into l.
;	spillPairReg hl
;	spillPairReg hl
; common peephole 9 loaded h from h directly instead of going through a.
; common peephole 0a removed redundant load from h into h.
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	ld	hl,#0x23
	add	hl,de
; common peephole 129a moved increment of hl to constant.
;	genCast
;	genMove_o size 2
	ld	a, c
	ld	e, b
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), e
	C$vm_actor.c$430$1_1$424	= .
	.globl	C$vm_actor.c$430$1_1$424
;src\core\vm_actor.c:430: load_animations(spritesheet, spritesheet_bank, ANIM_SET_DEFAULT, actor->animations);
;	genPlus
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genIpush
	push	bc
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genSend
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genCall
	call	_load_animations
	pop	bc
	C$vm_actor.c$431$1_1$424	= .
	.globl	C$vm_actor.c$431$1_1$424
;src\core\vm_actor.c:431: load_bounds(spritesheet, spritesheet_bank, &actor->bounds);
;	genPlus
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genIpush
	push	de
;	genIpush
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
	push	bc
;	genCall
	ld	e, #b_load_bounds
	ld	hl, #_load_bounds
	call	___sdcc_bcall_ehl
;	adjustStack by 5
	add	sp, #5
;include/actor.h:66: actor_set_frames(actor, actor->animations[actor->animation].start, actor->animations[actor->animation].end + 1);
;	genPlus
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genLeftShift
	add	a, a
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
;	genPlus
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genPointerGet
	ld	b, (hl)
;	genIpush
	push	af
	inc	sp
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	AOP_STK for _vm_actor_set_spritesheet_by_ref_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_actor_set_frames
	ld	hl, #_actor_set_frames
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	C$vm_actor.c$432$3_1$423	= .
	.globl	C$vm_actor.c$432$3_1$423
;src\core\vm_actor.c:432: actor_reset_anim(actor);
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$vm_actor.c$433$3_1$423	= .
	.globl	C$vm_actor.c$433$3_1$423
;src\core\vm_actor.c:433: }
;	genEndFunction
;	adjustStack by 3
; peephole sp9 combined SP additions
	add	sp, #7
	C$vm_actor.c$433$3_1$423	= .
	.globl	C$vm_actor.c$433$3_1$423
	XG$vm_actor_set_spritesheet_by_ref$0$0	= .
	.globl	XG$vm_actor_set_spritesheet_by_ref$0$0
	ret
	G$vm_actor_set_flags$0$0	= .
	.globl	G$vm_actor_set_flags$0$0
	C$vm_actor.c$435$3_1$429	= .
	.globl	C$vm_actor.c$435$3_1$429
;src\core\vm_actor.c:435: void vm_actor_set_flags(SCRIPT_CTX * THIS, INT16 idx, UBYTE flags, UBYTE mask) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_actor_set_flags
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
	b_vm_actor_set_flags	= 255
_vm_actor_set_flags::
;	adjustStack by -1
	dec	sp
	C$vm_actor.c$436$1_0$429	= .
	.globl	C$vm_actor.c$436$1_0$429
;src\core\vm_actor.c:436: actor_t * actor = actors + *(UBYTE *)VM_REF_TO_PTR(idx);
;	skipping iCode since result will be rematerialized
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#10
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
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
	jr	00114$
;	genLabel
00113$:
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
00114$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genPointerGet
	ld	c, (hl)
;	genMult
;fetchPairLong
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	add	hl, de
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	C$vm_actor.c$438$1_0$429	= .
	.globl	C$vm_actor.c$438$1_0$429
;src\core\vm_actor.c:438: if (mask & ACTOR_FLAG_PINNED)      actor->pinned            = (flags & ACTOR_FLAG_PINNED);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00102$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00153$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genGetAbit
;	AOP_STK for 
;	AOP_STK for _vm_actor_set_flags_sloc0_1_0
	ldhl	sp,	#11
	ld	a, (hl)
	and	a, #0x01
	ldhl	sp,	#0
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_actor_set_flags_sloc0_1_0
;	genPackBits
	ld	(hl), a
; common peephole 98 removed redundant load from (hl) into a.
	rlca
	and	a, #0x02
	ld	l, a
	ld	a, (de)
	and	a, #0xfd
	or	a, l
	ld	(de), a
;	genLabel
00102$:
	C$vm_actor.c$439$1_0$429	= .
	.globl	C$vm_actor.c$439$1_0$429
;src\core\vm_actor.c:439: if (mask & ACTOR_FLAG_HIDDEN)      actor->hidden            = (flags & ACTOR_FLAG_HIDDEN);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
;	genMove_o size 0
;	genAnd
; common peephole 73 tested bit 1 of (hl) directly instead of going through a.
	bit	1, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00154$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genGetAbit
;	AOP_STK for 
;	AOP_STK for _vm_actor_set_flags_sloc1_1_0
	ldhl	sp,	#11
	ld	a, (hl)
	rrca
	and	a, #0x01
	ldhl	sp,	#0
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_actor_set_flags_sloc1_1_0
;	genPackBits
	ld	(hl), a
; common peephole 98 removed redundant load from (hl) into a.
	rlca
	rlca
	and	a, #0x04
	ld	l, a
	ld	a, (de)
	and	a, #0xfb
	or	a, l
	ld	(de), a
;	genLabel
00104$:
	C$vm_actor.c$440$1_0$429	= .
	.globl	C$vm_actor.c$440$1_0$429
;src\core\vm_actor.c:440: if (mask & ACTOR_FLAG_ANIM_NOLOOP) actor->anim_noloop       = (flags & ACTOR_FLAG_ANIM_NOLOOP);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
;	genMove_o size 0
;	genAnd
; common peephole 73 tested bit 2 of (hl) directly instead of going through a.
	bit	2, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00155$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genGetAbit
;	AOP_STK for 
;	AOP_STK for _vm_actor_set_flags_sloc2_1_0
	ldhl	sp,	#11
	ld	a, (hl)
	rrca
	rrca
	and	a, #0x01
	ldhl	sp,	#0
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_actor_set_flags_sloc2_1_0
;	genPackBits
	ld	(hl), a
; common peephole 98 removed redundant load from (hl) into a.
	swap	a
	and	a, #0x10
	ld	l, a
	ld	a, (de)
	and	a, #0xef
	or	a, l
	ld	(de), a
;	genLabel
00106$:
	C$vm_actor.c$441$1_0$429	= .
	.globl	C$vm_actor.c$441$1_0$429
;src\core\vm_actor.c:441: if (mask & ACTOR_FLAG_COLLISION)   actor->collision_enabled = (flags & ACTOR_FLAG_COLLISION);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
;	genMove_o size 0
;	genAnd
; common peephole 73 tested bit 3 of (hl) directly instead of going through a.
	bit	3, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00156$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genGetAbit
;	AOP_STK for 
;	AOP_STK for _vm_actor_set_flags_sloc3_1_0
	ldhl	sp,	#11
	ld	a, (hl)
	rrca
	rrca
	rrca
	and	a, #0x01
	ldhl	sp,	#0
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_actor_set_flags_sloc3_1_0
;	genPackBits
	ld	(hl), a
; common peephole 98 removed redundant load from (hl) into a.
	swap	a
	rlca
	and	a, #0x20
	ld	l, a
	ld	a, (de)
	and	a, #0xdf
	or	a, l
	ld	(de), a
;	genLabel
00108$:
	C$vm_actor.c$442$1_0$429	= .
	.globl	C$vm_actor.c$442$1_0$429
;src\core\vm_actor.c:442: if (mask & ACTOR_FLAG_PERSISTENT)  actor->persistent        = (flags & ACTOR_FLAG_PERSISTENT);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
;	genMove_o size 0
;	genAnd
; common peephole 73 tested bit 4 of (hl) directly instead of going through a.
	bit	4, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00157$.
;	skipping generated iCode
;	genAssign
;	(locations are the same)
;	genGetAbit
;	AOP_STK for 
	ldhl	sp,	#11
	ld	a, (hl)
	swap	a
	and	a, #0x01
;	genMove_o size 0
;	genAssign (pointer)
;	genPackBits
; common peephole 9 loaded a from a directly instead of going through e.
; common peephole 0a removed redundant load from a into a.
	rrca
	and	a, #0x80
	ld	l, a
	ld	a, (bc)
	and	a, #0x7f
	or	a, l
	ld	(bc), a
;	genLabel
00111$:
	C$vm_actor.c$443$1_0$429	= .
	.globl	C$vm_actor.c$443$1_0$429
;src\core\vm_actor.c:443: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	C$vm_actor.c$443$1_0$429	= .
	.globl	C$vm_actor.c$443$1_0$429
	XG$vm_actor_set_flags$0$0	= .
	.globl	XG$vm_actor_set_flags$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
