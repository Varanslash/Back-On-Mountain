;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module projectiles
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_script_execute
	.globl _script_execute
	.globl b_actor_overlapping_bb
	.globl _actor_overlapping_bb
	.globl _memcpy
	.globl _projectiles_inactive_head
	.globl _projectiles_active_head
	.globl _projectile_defs
	.globl _projectiles
	.globl b_projectiles_init
	.globl _projectiles_init
	.globl _projectiles_update
	.globl _projectiles_render
	.globl b_projectile_launch
	.globl _projectile_launch
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$projectiles$0_0$0==.
_projectiles::
	.ds 185
G$projectile_defs$0_0$0==.
_projectile_defs::
	.ds 115
G$projectiles_active_head$0_0$0==.
_projectiles_active_head::
	.ds 2
G$projectiles_inactive_head$0_0$0==.
_projectiles_inactive_head::
	.ds 2
Fprojectiles$_save_bank$0_0$0==.
__save_bank:
	.ds 1
Fprojectiles$projectile$0_0$0==.
_projectile:
	.ds 2
Fprojectiles$prev_projectile$0_0$0==.
_prev_projectile:
	.ds 2
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
	G$projectiles_update$0$0	= .
	.globl	G$projectiles_update$0$0
	C$projectiles.c$31$2_0$306	= .
	.globl	C$projectiles.c$31$2_0$306
;src\core\projectiles.c:31: void projectiles_update(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function projectiles_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_projectiles_update::
;	adjustStack by -4
	add	sp, #-4
	C$projectiles.c$34$1_0$306	= .
	.globl	C$projectiles.c$34$1_0$306
;src\core\projectiles.c:34: projectile = projectiles_active_head;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_projectiles_active_head)
; common peephole 17 loaded a from (#_projectiles_active_head) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_projectile),a
; common peephole 19 loaded (#_projectile) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_projectiles_active_head + 1)
;fetchLitPair	hl
	ld	(#_projectile + 1),a
; common peephole 20 loaded (#_projectile) from a directly instead of using hl.
	C$projectiles.c$35$1_0$306	= .
	.globl	C$projectiles.c$35$1_0$306
;src\core\projectiles.c:35: prev_projectile = NULL;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_prev_projectile
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$projectiles.c$37$1_0$306	= .
	.globl	C$projectiles.c$37$1_0$306
;src\core\projectiles.c:37: _save_bank = CURRENT_BANK;
;	genAssign
	ldh	a, (__current_bank + 0)
;fetchLitPair	hl
	ld	(#__save_bank),a
; common peephole 19 loaded (#__save_bank) from a directly instead of using hl.
	C$projectiles.c$39$1_0$306	= .
	.globl	C$projectiles.c$39$1_0$306
;src\core\projectiles.c:39: while (projectile) {
;	genLabel
00132$:
;	genIfx
;fetchLitPair	hl
	ld	hl, #_projectile + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00134$
	C$projectiles.c$40$2_0$307	= .
	.globl	C$projectiles.c$40$2_0$307
;src\core\projectiles.c:40: if (projectile->def.life_time == 0) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0013
	add	hl, bc
;	genPointerGet
;	genIfx
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (hl)
	or	a, a
	jp	NZ, 00105$
	C$projectiles.c$42$3_0$308	= .
	.globl	C$projectiles.c$42$3_0$308
;src\core\projectiles.c:42: next = projectile->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;	AOP_STK for _projectiles_update_sloc0_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$projectiles.c$43$3_0$308	= .
	.globl	C$projectiles.c$43$3_0$308
;src\core\projectiles.c:43: LL_REMOVE_ITEM(projectiles_active_head, projectile, prev_projectile);
;	genIfx
;fetchLitPair	hl
	ld	hl, #_prev_projectile + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	AOP_STK for _projectiles_update_sloc1_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign (pointer)
;	AOP_STK for _projectiles_update_sloc1_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_projectiles_active_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genLabel
00103$:
	C$projectiles.c$44$3_0$308	= .
	.globl	C$projectiles.c$44$3_0$308
;src\core\projectiles.c:44: LL_PUSH_HEAD(projectiles_inactive_head, projectile);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_projectiles_inactive_head
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_projectile)
; common peephole 17 loaded a from (#_projectile) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_projectiles_inactive_head),a
; common peephole 19 loaded (#_projectiles_inactive_head) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_projectile + 1)
;fetchLitPair	hl
	ld	(#_projectiles_inactive_head + 1),a
; common peephole 20 loaded (#_projectiles_inactive_head) from a directly instead of using hl.
	C$projectiles.c$45$3_0$308	= .
	.globl	C$projectiles.c$45$3_0$308
;src\core\projectiles.c:45: projectile = next;
;	genAssign
;	AOP_STK for _projectiles_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_projectile),a
; common peephole 19 loaded (#_projectile) from a directly instead of using hl.
	ldhl	sp,	#1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_projectile + 1),a
; common peephole 20 loaded (#_projectile) from a directly instead of using hl.
	C$projectiles.c$46$3_0$308	= .
	.globl	C$projectiles.c$46$3_0$308
;src\core\projectiles.c:46: continue;
;	genGoto
	jp	00132$
;	genLabel
00105$:
	C$projectiles.c$48$2_0$307	= .
	.globl	C$projectiles.c$48$2_0$307
;src\core\projectiles.c:48: projectile->def.life_time--;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0013
	add	hl, bc
;	genPointerGet
;	genMinus
;	genAssign (pointer)
	dec	(hl)
	ld	a, (hl)
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
	C$projectiles.c$51$2_0$307	= .
	.globl	C$projectiles.c$51$2_0$307
;src\core\projectiles.c:51: if ((game_time & projectile->def.anim_tick) == 0) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x001d
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genAnd
;fetchLitPair	hl
	ld	hl, #_game_time
;	genMove_o size 1
;	genMove_o size 0
;	genIfx
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 0a removed redundant load from a into a.
	and	a,(hl)
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00112$
	C$projectiles.c$52$3_0$311	= .
	.globl	C$projectiles.c$52$3_0$311
;src\core\projectiles.c:52: projectile->frame++;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0009
	add	hl, bc
;	genPointerGet
;	genPlus
;	genAssign (pointer)
	inc	(hl)
	ld	a, (hl)
; common peephole 104b inc (hl) directly to remove redundant load from a into (hl)
	C$projectiles.c$54$3_0$311	= .
	.globl	C$projectiles.c$54$3_0$311
;src\core\projectiles.c:54: if (projectile->frame == projectile->frame_end) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0009
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000b
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genCmpEq
	sub	a, c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00250$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00112$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00251$.
;	skipping generated iCode
	C$projectiles.c$55$4_0$312	= .
	.globl	C$projectiles.c$55$4_0$312
;src\core\projectiles.c:55: if (!projectile->anim_noloop) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_projectile + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
;	genUnpackBits
	ld	a, (hl)
;	genIfx
	and	a,#0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00107$
	C$projectiles.c$56$5_0$313	= .
	.globl	C$projectiles.c$56$5_0$313
;src\core\projectiles.c:56: projectile->frame = projectile->frame_start;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0009
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genAssign (pointer)
	ld	(bc), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00107$:
	C$projectiles.c$58$5_0$314	= .
	.globl	C$projectiles.c$58$5_0$314
;src\core\projectiles.c:58: projectile->frame--;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0009
	add	hl, bc
;	genPointerGet
;	genMinus
;	genAssign (pointer)
	dec	(hl)
	ld	a, (hl)
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;	genLabel
00112$:
	C$projectiles.c$64$2_0$307	= .
	.globl	C$projectiles.c$64$2_0$307
;src\core\projectiles.c:64: projectile->pos.x += projectile->delta_pos.x;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	AOP_STK for _projectiles_update_sloc2_1_0
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_projectile + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0005
	add	hl, de
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _projectiles_update_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$projectiles.c$65$2_0$307	= .
	.globl	C$projectiles.c$65$2_0$307
;src\core\projectiles.c:65: projectile->pos.y -= projectile->delta_pos.y;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	AOP_STK for _projectiles_update_sloc3_1_0
	inc	bc
	inc	bc
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_projectile + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
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
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0007
	add	hl, de
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genAssign (pointer)
;	AOP_STK for _projectiles_update_sloc3_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$projectiles.c$67$2_0$307	= .
	.globl	C$projectiles.c$67$2_0$307
;src\core\projectiles.c:67: if (IS_FRAME_EVEN) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_game_time)
; common peephole 17 loaded a from (#_game_time) directly instead of using hl.
;	genAnd
	rrca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00252$.
	jp	C,00125$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00253$.
;	skipping generated iCode
	C$projectiles.c$68$3_0$315	= .
	.globl	C$projectiles.c$68$3_0$315
;src\core\projectiles.c:68: actor_t *hit_actor = actor_overlapping_bb(&projectile->def.bounds, &projectile->pos, NULL, FALSE);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genPlus
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
; common peephole 96c move dec hl before inc bc
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
	inc	bc
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000c
	add	hl, de
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
	push	bc
;	genIpush
	push	hl
;	genCall
	ld	e, #b_actor_overlapping_bb
	ld	hl, #_actor_overlapping_bb
	call	___sdcc_bcall_ehl
;	adjustStack by 7
	add	sp, #7
;	genMove_o size 2
	C$projectiles.c$69$3_0$315	= .
	.globl	C$projectiles.c$69$3_0$315
;src\core\projectiles.c:69: if (hit_actor && (hit_actor->collision_group & projectile->def.collision_mask)) {
;	genIfx
	ld	a, b
	or	a, c
	jp	Z, 00125$
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002f
	add	hl, bc
;	genPointerGet
	ld	e, (hl)
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_projectile + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	push	de
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0022
	add	hl, de
	pop	de
;	genPointerGet
	ld	a, (hl)
;	genAnd
;	genMove_o size 1
;	genIfx
	and	a,e
; common peephole 100 removed redundant or after and.
	jp	Z, 00125$
	C$projectiles.c$71$4_0$316	= .
	.globl	C$projectiles.c$71$4_0$316
;src\core\projectiles.c:71: if ((hit_actor->script.bank) && (hit_actor->hscript_hit & SCRIPT_TERMINATED)) {
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0025
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002d
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
	jr	NC, 00114$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00254$.
;	skipping generated iCode
	C$projectiles.c$72$5_0$317	= .
	.globl	C$projectiles.c$72$5_0$317
;src\core\projectiles.c:72: script_execute(hit_actor->script.bank, hit_actor->script.ptr, &(hit_actor->hscript_hit), 1, (UWORD)(projectile->def.collision_group));
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0021
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genCast
;	AOP_STK for _projectiles_update_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#0
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x002d
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _projectiles_update_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0025
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
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genIpush
;	AOP_STK for _projectiles_update_sloc4_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
	push	bc
;	genIpush
;	genMove_o size 1
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
;	AOP_STK for _projectiles_update_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#5
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
;	adjustStack by 8
	add	sp, #8
;	genLabel
00114$:
	C$projectiles.c$74$4_0$316	= .
	.globl	C$projectiles.c$74$4_0$316
;src\core\projectiles.c:74: if (!projectile->strong) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_projectile + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
;	genUnpackBits
	ld	a, (hl)
	rrca
;	genIfx
	and	a,#0x01
; common peephole 100 removed redundant or after and.
	jp	NZ, 00125$
	C$projectiles.c$76$5_0$318	= .
	.globl	C$projectiles.c$76$5_0$318
;src\core\projectiles.c:76: next = projectile->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;	AOP_STK for _projectiles_update_sloc6_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$projectiles.c$77$5_0$318	= .
	.globl	C$projectiles.c$77$5_0$318
;src\core\projectiles.c:77: LL_REMOVE_ITEM(projectiles_active_head, projectile, prev_projectile);
;	genIfx
;fetchLitPair	hl
	ld	hl, #_prev_projectile + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00117$
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	AOP_STK for _projectiles_update_sloc7_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign (pointer)
;	AOP_STK for _projectiles_update_sloc7_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00118$
;	genLabel
00117$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_projectiles_active_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genLabel
00118$:
	C$projectiles.c$78$5_0$318	= .
	.globl	C$projectiles.c$78$5_0$318
;src\core\projectiles.c:78: LL_PUSH_HEAD(projectiles_inactive_head, projectile);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_projectiles_inactive_head
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_projectile)
; common peephole 17 loaded a from (#_projectile) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_projectiles_inactive_head),a
; common peephole 19 loaded (#_projectiles_inactive_head) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_projectile + 1)
;fetchLitPair	hl
	ld	(#_projectiles_inactive_head + 1),a
; common peephole 20 loaded (#_projectiles_inactive_head) from a directly instead of using hl.
	C$projectiles.c$79$5_0$318	= .
	.globl	C$projectiles.c$79$5_0$318
;src\core\projectiles.c:79: projectile = next;
;	genAssign
;	AOP_STK for _projectiles_update_sloc6_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_projectile),a
; common peephole 19 loaded (#_projectile) from a directly instead of using hl.
	ldhl	sp,	#1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_projectile + 1),a
; common peephole 20 loaded (#_projectile) from a directly instead of using hl.
	C$projectiles.c$80$5_0$318	= .
	.globl	C$projectiles.c$80$5_0$318
;src\core\projectiles.c:80: continue;
;	genGoto
	jp	00132$
;	genLabel
00125$:
	C$projectiles.c$85$2_1$321	= .
	.globl	C$projectiles.c$85$2_1$321
;src\core\projectiles.c:85: UBYTE screen_x = (projectile->pos.x >> 4) - draw_scroll_x + 8,
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_projectile + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_draw_scroll_x
	ld	c, (hl)
;	genMinus
	sub	a, c
;	genPlus
	add	a, #0x08
	ld	c, a
	C$projectiles.c$86$2_1$321	= .
	.globl	C$projectiles.c$86$2_1$321
;src\core\projectiles.c:86: screen_y = (projectile->pos.y >> 4) - draw_scroll_y + 8;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_projectile + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	b, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genRightShift
;	genMove_o size 2
	sra	b
	rr	l
	sra	b
	rr	l
	sra	b
	rr	l
	sra	b
	rr	l
;	genCast
;	genMove_o size 1
	ld	a, l
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_draw_scroll_y
	ld	b, (hl)
;	genMinus
	sub	a, b
;	genPlus
	add	a, #0x08
	ld	b, a
	C$projectiles.c$88$2_1$321	= .
	.globl	C$projectiles.c$88$2_1$321
;src\core\projectiles.c:88: if ((screen_x > DEVICE_SCREEN_PX_WIDTH) || (screen_y > DEVICE_SCREEN_PX_HEIGHT)) {
;	genCmpGt
	ld	a, #0xa0
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00129$
;	skipping generated iCode
;	genCmpGt
	ld	a, #0x90
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00130$
;	skipping generated iCode
;	genLabel
00129$:
	C$projectiles.c$90$3_1$322	= .
	.globl	C$projectiles.c$90$3_1$322
;src\core\projectiles.c:90: projectile_t *next = projectile->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
	C$projectiles.c$91$3_1$322	= .
	.globl	C$projectiles.c$91$3_1$322
;src\core\projectiles.c:91: LL_REMOVE_ITEM(projectiles_active_head, projectile, prev_projectile);
;	genIfx
;fetchLitPair	hl
	ld	hl, #_prev_projectile + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00127$
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;	AOP_STK for _projectiles_update_sloc8_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, de
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, de
;	genPointerGet
;	AOP_STK for _projectiles_update_sloc9_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genAssign (pointer)
;	AOP_STK for _projectiles_update_sloc8_1_0
;	AOP_STK for _projectiles_update_sloc9_1_0
;fetchPairLong
	pop	de
	push	de
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00128$
;	genLabel
00127$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, de
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_projectiles_active_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genLabel
00128$:
	C$projectiles.c$92$3_1$322	= .
	.globl	C$projectiles.c$92$3_1$322
;src\core\projectiles.c:92: LL_PUSH_HEAD(projectiles_inactive_head, projectile);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_projectiles_inactive_head
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_projectile)
; common peephole 17 loaded a from (#_projectile) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_projectiles_inactive_head),a
; common peephole 19 loaded (#_projectiles_inactive_head) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_projectile + 1)
;fetchLitPair	hl
	ld	(#_projectiles_inactive_head + 1),a
; common peephole 20 loaded (#_projectiles_inactive_head) from a directly instead of using hl.
	C$projectiles.c$93$3_1$322	= .
	.globl	C$projectiles.c$93$3_1$322
;src\core\projectiles.c:93: projectile = next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$projectiles.c$94$3_1$322	= .
	.globl	C$projectiles.c$94$3_1$322
;src\core\projectiles.c:94: continue;
;	genGoto
	jp	00132$
;	genLabel
00130$:
	C$projectiles.c$97$2_1$321	= .
	.globl	C$projectiles.c$97$2_1$321
;src\core\projectiles.c:97: SWITCH_ROM(projectile->def.sprite.bank);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$projectiles.c$98$2_2$325	= .
	.globl	C$projectiles.c$98$2_2$325
;src\core\projectiles.c:98: spritesheet_t *sprite = projectile->def.sprite.ptr;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0011
	add	hl, de
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
;src\core\projectiles.c:106: );
;	genAssign
;	AOP_STK for _projectiles_update_sloc10_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_allocated_hardware_sprites)
; common peephole 17 loaded a from (#_allocated_hardware_sprites) directly instead of using hl.
	ldhl	sp,	#3
	ld	(hl), a
;src\core\projectiles.c:102: projectile->def.base_tile,
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_projectile + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	push	de
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0014
	add	hl, de
	pop	de
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#___current_base_tile),a
; common peephole 19 loaded (#___current_base_tile) from a directly instead of using hl.
;src\core\projectiles.c:101: *(sprite->metasprites + projectile->frame),
;	genPlus
;	genMove_o size 2
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
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
;	genAssign
;	genMove_o size 2
	push	hl
;fetchLitPair	hl
	ld	a, (#_projectile)
; common peephole 17 loaded a from (#_projectile) directly instead of using hl.
; common peephole 50a eliminated dead pop/push hl pair.
;fetchLitPair	hl
	ld	hl, #_projectile + 1
	ld	d, (hl)
	pop	hl
;	genPlus
	add	a, #0x09
	ld	e, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00255$
	inc	d
00255$:
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	e, #0x00
;	genLeftShift
;	genMove_o size 2
	add	a, a
	rl	e
;	genPlus
	add	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, h
;	genPointerGet
;fetchPairLong
	ld	h, a
	inc	hl
	ld	a,	(hl-)
;	spillPairReg hl
;c:\users\odiae\downloads\asarm\_gbstools\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
;	genCast
;	genMove_o size 2
; common peephole 9 loaded e from (hl) directly instead of going through l.
	ld	e, (hl)
	ld	d, a
;fetchLitPair	hl
	ld	hl, #___current_metasprite
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;c:\users\odiae\downloads\asarm\_gbstools\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\users\odiae\downloads\asarm\_gbstools\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
;	genCast
;	genMove_o size 1
	ld	d, b
;	genMove_o size 0
;	genMove_o size 1
; common peephole 6b removed dead xor a, a
;	genLeftShift
; common peephole 1 removed dead load from #0x00 into e.
;	genCast
;	genMove_o size 1
;	genMove_o size 1
; common peephole 6b removed dead xor a, a
;	genOr
;	genMove_o size 1
	ld	e, c
;	genMove_o size 0
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 2
;	genSend
;	AOP_STK for _projectiles_update_sloc10_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	call	___move_metasprite
;	genMove_o size 1
	C$projectiles.c$106$4_2$327	= .
	.globl	C$projectiles.c$106$4_2$327
;src\core\projectiles.c:106: );
;	genPlus
;fetchLitPair	hl
	ld	hl, #_allocated_hardware_sprites
	add	a, (hl)
;fetchLitPair	hl
	ld	(hl), a
	C$projectiles.c$108$2_2$325	= .
	.globl	C$projectiles.c$108$2_2$325
;src\core\projectiles.c:108: prev_projectile = projectile;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_projectile)
; common peephole 17 loaded a from (#_projectile) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_prev_projectile),a
; common peephole 19 loaded (#_prev_projectile) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_projectile + 1)
;fetchLitPair	hl
	ld	(#_prev_projectile + 1),a
; common peephole 20 loaded (#_prev_projectile) from a directly instead of using hl.
	C$projectiles.c$109$2_2$325	= .
	.globl	C$projectiles.c$109$2_2$325
;src\core\projectiles.c:109: projectile = projectile->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
	jp	00132$
;	genLabel
00134$:
	C$projectiles.c$112$1_0$306	= .
	.globl	C$projectiles.c$112$1_0$306
;src\core\projectiles.c:112: SWITCH_ROM(_save_bank);
;	genAssign
;fetchLitPair	hl
	ld	hl, #__save_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00136$.
	C$projectiles.c$113$1_0$306	= .
	.globl	C$projectiles.c$113$1_0$306
;src\core\projectiles.c:113: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$projectiles.c$113$1_0$306	= .
	.globl	C$projectiles.c$113$1_0$306
	XG$projectiles_update$0$0	= .
	.globl	XG$projectiles_update$0$0
	ret
	G$projectiles_render$0$0	= .
	.globl	G$projectiles_render$0$0
	C$projectiles.c$115$1_0$330	= .
	.globl	C$projectiles.c$115$1_0$330
;src\core\projectiles.c:115: void projectiles_render(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function projectiles_render
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_projectiles_render::
;	adjustStack by -4
	add	sp, #-4
	C$projectiles.c$116$1_0$330	= .
	.globl	C$projectiles.c$116$1_0$330
;src\core\projectiles.c:116: projectile = projectiles_active_head;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_projectiles_active_head)
; common peephole 17 loaded a from (#_projectiles_active_head) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_projectile),a
; common peephole 19 loaded (#_projectile) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_projectiles_active_head + 1)
;fetchLitPair	hl
	ld	(#_projectile + 1),a
; common peephole 20 loaded (#_projectile) from a directly instead of using hl.
	C$projectiles.c$117$1_0$330	= .
	.globl	C$projectiles.c$117$1_0$330
;src\core\projectiles.c:117: prev_projectile = NULL;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_prev_projectile
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$projectiles.c$119$1_0$330	= .
	.globl	C$projectiles.c$119$1_0$330
;src\core\projectiles.c:119: _save_bank = _current_bank;
;	genAssign
	ldh	a, (__current_bank + 0)
;fetchLitPair	hl
	ld	(#__save_bank),a
; common peephole 19 loaded (#__save_bank) from a directly instead of using hl.
	C$projectiles.c$121$1_0$330	= .
	.globl	C$projectiles.c$121$1_0$330
;src\core\projectiles.c:121: while (projectile) {
;	genLabel
00107$:
;	genIfx
;fetchLitPair	hl
	ld	hl, #_projectile + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00109$
	C$projectiles.c$122$2_0$331	= .
	.globl	C$projectiles.c$122$2_0$331
;src\core\projectiles.c:122: UINT8 screen_x = ((projectile->pos.x >> 4) + 8) - draw_scroll_x,
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_projectile + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genPlus
	add	a, #0x08
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_draw_scroll_x
	ld	c, (hl)
;	genMinus
	sub	a, c
;	genAssign
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$projectiles.c$123$2_0$331	= .
	.globl	C$projectiles.c$123$2_0$331
;src\core\projectiles.c:123: screen_y = ((projectile->pos.y >> 4) + 8) - draw_scroll_y;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_projectile + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	b, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genRightShift
;	genMove_o size 2
	sra	b
	rr	l
	sra	b
	rr	l
	sra	b
	rr	l
	sra	b
	rr	l
;	genCast
;	genMove_o size 1
	ld	a, l
;	genMove_o size 0
;	genPlus
	add	a, #0x08
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_draw_scroll_y
	ld	b, (hl)
;	genMinus
	sub	a, b
;	genAssign
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
	C$projectiles.c$125$2_0$331	= .
	.globl	C$projectiles.c$125$2_0$331
;src\core\projectiles.c:125: if ((screen_x > DEVICE_SCREEN_PX_WIDTH) || (screen_y > DEVICE_SCREEN_PX_HEIGHT)) {
;	genCmpGt
	ld	a, #0xa0
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00104$
;	skipping generated iCode
;	genCmpGt
	ld	a, #0x90
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00105$
;	skipping generated iCode
;	genLabel
00104$:
	C$projectiles.c$127$3_0$332	= .
	.globl	C$projectiles.c$127$3_0$332
;src\core\projectiles.c:127: projectile_t *next = projectile->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
	C$projectiles.c$128$3_0$332	= .
	.globl	C$projectiles.c$128$3_0$332
;src\core\projectiles.c:128: LL_REMOVE_ITEM(projectiles_active_head, projectile, prev_projectile);
;	genIfx
;fetchLitPair	hl
	ld	hl, #_prev_projectile + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;	AOP_STK for _projectiles_render_sloc0_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, de
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, de
;	genPointerGet
;	AOP_STK for _projectiles_render_sloc1_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genAssign (pointer)
;	AOP_STK for _projectiles_render_sloc0_1_0
;	AOP_STK for _projectiles_render_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, de
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_projectiles_active_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genLabel
00103$:
	C$projectiles.c$129$3_0$332	= .
	.globl	C$projectiles.c$129$3_0$332
;src\core\projectiles.c:129: LL_PUSH_HEAD(projectiles_inactive_head, projectile);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_projectiles_inactive_head
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_projectile)
; common peephole 17 loaded a from (#_projectile) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_projectiles_inactive_head),a
; common peephole 19 loaded (#_projectiles_inactive_head) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_projectile + 1)
;fetchLitPair	hl
	ld	(#_projectiles_inactive_head + 1),a
; common peephole 20 loaded (#_projectiles_inactive_head) from a directly instead of using hl.
	C$projectiles.c$130$3_0$332	= .
	.globl	C$projectiles.c$130$3_0$332
;src\core\projectiles.c:130: projectile = next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$projectiles.c$131$3_0$332	= .
	.globl	C$projectiles.c$131$3_0$332
;src\core\projectiles.c:131: continue;
;	genGoto
	jp	00107$
;	genLabel
00105$:
	C$projectiles.c$134$2_0$331	= .
	.globl	C$projectiles.c$134$2_0$331
;src\core\projectiles.c:134: SWITCH_ROM(projectile->def.sprite.bank);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$projectiles.c$135$2_1$335	= .
	.globl	C$projectiles.c$135$2_1$335
;src\core\projectiles.c:135: spritesheet_t *sprite = projectile->def.sprite.ptr;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0011
	add	hl, de
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
;src\core\projectiles.c:143: );
;	genAssign
;	AOP_STK for _projectiles_render_sloc2_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_allocated_hardware_sprites)
; common peephole 17 loaded a from (#_allocated_hardware_sprites) directly instead of using hl.
	ldhl	sp,	#3
	ld	(hl), a
;src\core\projectiles.c:139: projectile->def.base_tile,
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_projectile + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	push	de
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0014
	add	hl, de
	pop	de
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#___current_base_tile),a
; common peephole 19 loaded (#___current_base_tile) from a directly instead of using hl.
;src\core\projectiles.c:138: *(sprite->metasprites + projectile->frame),
;	genPlus
;	genMove_o size 2
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
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
;	genAssign
;	genMove_o size 2
	push	hl
;fetchLitPair	hl
	ld	a, (#_projectile)
; common peephole 17 loaded a from (#_projectile) directly instead of using hl.
; common peephole 50a eliminated dead pop/push hl pair.
;fetchLitPair	hl
	ld	hl, #_projectile + 1
	ld	d, (hl)
	pop	hl
;	genPlus
	add	a, #0x09
	ld	e, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00137$
	inc	d
00137$:
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	e, #0x00
;	genLeftShift
;	genMove_o size 2
	add	a, a
	rl	e
;	genPlus
	add	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	adc	a, h
;	genPointerGet
;fetchPairLong
	ld	h, a
	inc	hl
	ld	a,	(hl-)
;	spillPairReg hl
;c:\users\odiae\downloads\asarm\_gbstools\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
;	genCast
;	genMove_o size 2
; common peephole 9 loaded e from (hl) directly instead of going through l.
	ld	e, (hl)
	ld	d, a
;fetchLitPair	hl
	ld	hl, #___current_metasprite
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;c:\users\odiae\downloads\asarm\_gbstools\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\users\odiae\downloads\asarm\_gbstools\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
;	genCast
;	genMove_o size 1
;	genMove_o size 1
; common peephole 6b removed dead xor a, a
;	genLeftShift
	ld	d, b
; common peephole 1 removed dead load from #0x00 into e.
;	genCast
;	genMove_o size 1
;	genMove_o size 1
; common peephole 6b removed dead xor a, a
;	genOr
;	genMove_o size 1
	ld	e, c
;	genMove_o size 0
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 2
;	genSend
;	AOP_STK for _projectiles_render_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	call	___move_metasprite
;	genMove_o size 1
	C$projectiles.c$143$4_1$337	= .
	.globl	C$projectiles.c$143$4_1$337
;src\core\projectiles.c:143: );
;	genPlus
;fetchLitPair	hl
	ld	hl, #_allocated_hardware_sprites
	add	a, (hl)
;fetchLitPair	hl
	ld	(hl), a
	C$projectiles.c$145$2_1$335	= .
	.globl	C$projectiles.c$145$2_1$335
;src\core\projectiles.c:145: prev_projectile = projectile;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_projectile)
; common peephole 17 loaded a from (#_projectile) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_prev_projectile),a
; common peephole 19 loaded (#_prev_projectile) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_projectile + 1)
;fetchLitPair	hl
	ld	(#_prev_projectile + 1),a
; common peephole 20 loaded (#_prev_projectile) from a directly instead of using hl.
	C$projectiles.c$146$2_1$335	= .
	.globl	C$projectiles.c$146$2_1$335
;src\core\projectiles.c:146: projectile = projectile->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_projectile
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
	jp	00107$
;	genLabel
00109$:
	C$projectiles.c$149$1_0$330	= .
	.globl	C$projectiles.c$149$1_0$330
;src\core\projectiles.c:149: SWITCH_ROM(_save_bank);
;	genAssign
;fetchLitPair	hl
	ld	hl, #__save_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00111$.
	C$projectiles.c$150$1_0$330	= .
	.globl	C$projectiles.c$150$1_0$330
;src\core\projectiles.c:150: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$projectiles.c$150$1_0$330	= .
	.globl	C$projectiles.c$150$1_0$330
	XG$projectiles_render$0$0	= .
	.globl	XG$projectiles_render$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$projectiles_init$0$0	= .
	.globl	G$projectiles_init$0$0
	C$projectiles.c$20$0_0$302	= .
	.globl	C$projectiles.c$20$0_0$302
;src\core\projectiles.c:20: void projectiles_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function projectiles_init
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_projectiles_init	= 255
_projectiles_init::
	C$projectiles.c$21$1_0$302	= .
	.globl	C$projectiles.c$21$1_0$302
;src\core\projectiles.c:21: projectiles_active_head = projectiles_inactive_head = NULL;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_projectiles_inactive_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_projectiles_active_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$projectiles.c$22$3_0$303	= .
	.globl	C$projectiles.c$22$3_0$303
;src\core\projectiles.c:22: for (projectile_t * proj = projectiles; proj < (projectiles + MAX_PROJECTILES); ++proj) {
;	genAddrOf
	ld	bc, #_projectiles+0
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	genLabel
00103$:
;	skipping iCode since result will be rematerialized
;	genCmpLt
	ld	a, c
	sub	a, #<((_projectiles + 185))
	ld	a, b
	sbc	a, #>((_projectiles + 185))
	ret	NC
; common peephole 161 replaced jump by return.
;	skipping generated iCode
	C$projectiles.c$23$3_0$304	= .
	.globl	C$projectiles.c$23$3_0$304
;src\core\projectiles.c:23: LL_PUSH_HEAD(projectiles_inactive_head, proj);
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_projectiles_inactive_head
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
; common peephole 96b move dec hl before ld (de), a
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	(de), a
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$projectiles.c$22$2_0$303	= .
	.globl	C$projectiles.c$22$2_0$303
;src\core\projectiles.c:22: for (projectile_t * proj = projectiles; proj < (projectiles + MAX_PROJECTILES); ++proj) {
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0025
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genGoto
;	genLabel
; common peephole 158 removed unused label 00105$.
	C$projectiles.c$25$2_0$302	= .
	.globl	C$projectiles.c$25$2_0$302
;src\core\projectiles.c:25: }
;	genEndFunction
	C$projectiles.c$25$2_0$302	= .
	.globl	C$projectiles.c$25$2_0$302
	XG$projectiles_init$0$0	= .
	.globl	XG$projectiles_init$0$0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
; common peephole 152 removed unused ret.
	G$projectile_launch$0$0	= .
	.globl	G$projectile_launch$0$0
	C$projectiles.c$152$1_0$340	= .
	.globl	C$projectiles.c$152$1_0$340
;src\core\projectiles.c:152: void projectile_launch(UBYTE index, point16_t *pos, UBYTE angle, UBYTE flags) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function projectile_launch
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 18 bytes.
	b_projectile_launch	= 255
_projectile_launch::
;	adjustStack by -18
	add	sp, #-18
	C$projectiles.c$153$2_0$340	= .
	.globl	C$projectiles.c$153$2_0$340
;src\core\projectiles.c:153: projectile_t *projectile = projectiles_inactive_head;
;	genAssign
;	AOP_STK for _projectile_launch_sloc0_1_0
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_projectiles_inactive_head)
; common peephole 17 loaded a from (#_projectiles_inactive_head) directly instead of using hl.
	ldhl	sp,	#2
	ld	(hl), a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_projectiles_inactive_head + 1)
	ldhl	sp,	#3
	ld	(hl), a
	C$projectiles.c$154$1_0$340	= .
	.globl	C$projectiles.c$154$1_0$340
;src\core\projectiles.c:154: if (projectile) {
;	genIfx
;	AOP_STK for _projectile_launch_sloc0_1_0
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00121$
	C$projectiles.c$155$2_0$341	= .
	.globl	C$projectiles.c$155$2_0$341
;src\core\projectiles.c:155: memcpy(&projectile->def, &projectile_defs[index], sizeof(projectile_def_t));
;	skipping iCode since result will be rematerialized
;	genMult
;	AOP_STK for 
;	AOP_STK for _projectile_launch_sloc1_1_0
;fetchPairLong
	ldhl	sp,	#24
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
	push	hl
	ld	a, l
	ldhl	sp,	#18
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#17
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _projectile_launch_sloc1_1_0
;fetchPairLong
;fetchLitPair	de
	ld	de, #_projectile_defs
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000c
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
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
	call	_memcpy
	C$projectiles.c$158$3_0$342	= .
	.globl	C$projectiles.c$158$3_0$342
;src\core\projectiles.c:158: UBYTE dir = DIR_UP;
;	genAssign
;	genMove_o size 1
	ld	c, #0x02
	C$projectiles.c$159$2_1$342	= .
	.globl	C$projectiles.c$159$2_1$342
;src\core\projectiles.c:159: if (angle <= 224) {
;	genCmpGt
;	AOP_STK for 
	ld	a, #0xe0
	ldhl	sp,	#27
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00110$
;	skipping generated iCode
	C$projectiles.c$160$3_1$343	= .
	.globl	C$projectiles.c$160$3_1$343
;src\core\projectiles.c:160: if (angle >= 160) {
;	genCmpLt
;	AOP_STK for 
	ld	a, (hl)
	sub	a, #0xa0
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00107$
;	skipping generated iCode
	C$projectiles.c$161$4_1$344	= .
	.globl	C$projectiles.c$161$4_1$344
;src\core\projectiles.c:161: dir = DIR_LEFT;
;	genAssign
;	genMove_o size 1
	ld	c, #0x03
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00107$:
	C$projectiles.c$162$3_1$343	= .
	.globl	C$projectiles.c$162$3_1$343
;src\core\projectiles.c:162: } else if (angle > 96) {
;	genCmpGt
;	AOP_STK for 
	ld	a, #0x60
	ldhl	sp,	#27
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00104$
;	skipping generated iCode
	C$projectiles.c$163$4_1$345	= .
	.globl	C$projectiles.c$163$4_1$345
;src\core\projectiles.c:163: dir = DIR_DOWN;
;	genAssign
;	genMove_o size 1
	ld	c, #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00104$:
	C$projectiles.c$164$3_1$343	= .
	.globl	C$projectiles.c$164$3_1$343
;src\core\projectiles.c:164: } else if (angle >= 32) {
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#27
	ld	a, (hl)
	sub	a, #0x20
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00110$
;	skipping generated iCode
	C$projectiles.c$165$4_1$346	= .
	.globl	C$projectiles.c$165$4_1$346
;src\core\projectiles.c:165: dir = DIR_RIGHT;
;	genAssign
;	genMove_o size 1
	ld	c, #0x01
;	genLabel
00110$:
	C$projectiles.c$170$2_1$342	= .
	.globl	C$projectiles.c$170$2_1$342
;src\core\projectiles.c:170: projectile->anim_noloop = (flags & PROJECTILE_ANIM_NOLOOP);
;	genAssign
;	AOP_STK for _projectile_launch_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genGetAbit
;	AOP_STK for 
	ldhl	sp,	#28
	ld	a, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;	genPackBits
; common peephole 9 loaded a from a directly instead of going through b.
; common peephole 0a removed redundant load from a into a.
; common peephole 40a combined redundant ANDs #0x01 and #0x01.
	and	a, #0x1
	ld	l, a
	ld	a, (de)
	and	a, #0xfe
	or	a, l
	ld	(de), a
	C$projectiles.c$171$2_1$342	= .
	.globl	C$projectiles.c$171$2_1$342
;src\core\projectiles.c:171: projectile->strong = (flags & PROJECTILE_STRONG);
;	genAssign
;	AOP_STK for _projectile_launch_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genGetAbit
;	AOP_STK for 
	ldhl	sp,	#28
	ld	a, (hl)
	rrca
	and	a, #0x01
;	genMove_o size 0
;	genAssign (pointer)
;	genPackBits
; common peephole 9 loaded a from a directly instead of going through b.
; common peephole 0a removed redundant load from a into a.
	rlca
	and	a, #0x02
	ld	l, a
	ld	a, (de)
	and	a, #0xfd
	or	a, l
	ld	(de), a
	C$projectiles.c$174$2_1$342	= .
	.globl	C$projectiles.c$174$2_1$342
;src\core\projectiles.c:174: projectile->frame = projectile->def.animations[dir].start;
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0009
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;	AOP_STK for _projectile_launch_sloc2_1_0
; common peephole 29 pushed hl directly instead of going through de.
	push	hl
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000c
	add	hl, de
	pop	de
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
;	AOP_STK for _projectile_launch_sloc2_1_0
;	AOP_STK for _projectile_launch_sloc3_1_0
;fetchPairLong
; common peephole 96d move dec hl before push (de)
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	push	de
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0009
	add	hl, de
	pop	de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#17
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#16
;	genMove_o size 0
;	genLeftShift
;	AOP_STK for _projectile_launch_sloc4_1_0
; common peephole 96b move inc hl before add a, a
; common peephole 96b move inc hl before ld a, c
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, c
	add	a, a
;	genPlus
;	AOP_STK for _projectile_launch_sloc3_1_0
;	AOP_STK for _projectile_launch_sloc4_1_0
;fetchPairLong
; common peephole 96d move dec hl before push (de)
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
; common peephole 96d move dec hl before push (de)
	dec	hl
	push	de
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;fetchPairLong
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	pop	de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAssign (pointer)
	ld	(de), a
	C$projectiles.c$175$2_1$342	= .
	.globl	C$projectiles.c$175$2_1$342
;src\core\projectiles.c:175: projectile->frame_start = projectile->def.animations[dir].start;
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAssign (pointer)
	ld	(de), a
	C$projectiles.c$176$2_1$342	= .
	.globl	C$projectiles.c$176$2_1$342
;src\core\projectiles.c:176: projectile->frame_end = projectile->def.animations[dir].end + 1;
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000b
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for _projectile_launch_sloc3_1_0
;	AOP_STK for _projectile_launch_sloc4_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#15
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;fetchPairLong
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
; common peephole 69 incremented in hl instead of de.
	inc	hl
	ld	e, l
	ld	d, h
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genAssign (pointer)
	ld	(bc), a
	C$projectiles.c$179$2_2$347	= .
	.globl	C$projectiles.c$179$2_2$347
;src\core\projectiles.c:179: UINT16 initial_offset = projectile->def.initial_offset;
;	genPlus
;	AOP_STK for _projectile_launch_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#13
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0013
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
; common peephole 1 removed dead load from l into c.
; common peephole 0b removed redundant load from c back into l.
; common peephole 9 loaded h from h directly instead of going through a.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _projectile_launch_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#16
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$projectiles.c$180$2_2$347	= .
	.globl	C$projectiles.c$180$2_2$347
;src\core\projectiles.c:180: projectile->pos.x = pos->x;
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genAssign
;	AOP_STK for 
;	AOP_STK for _projectile_launch_sloc6_1_0
;	genMove_o size 2
	ldhl	sp,	#25
	ld	a, (hl)
	ldhl	sp,	#12
	ld	(hl), a
	ldhl	sp,	#26
	ld	a, (hl)
	ldhl	sp,	#13
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _projectile_launch_sloc6_1_0
;	AOP_STK for _projectile_launch_sloc7_1_0
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
;	genAssign (pointer)
;	AOP_STK for _projectile_launch_sloc7_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$projectiles.c$181$2_2$347	= .
	.globl	C$projectiles.c$181$2_2$347
;src\core\projectiles.c:181: projectile->pos.y = pos->y;
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPlus
;	AOP_STK for _projectile_launch_sloc8_1_0
	inc	bc
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genPlus
;	AOP_STK for _projectile_launch_sloc6_1_0
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
;	genAssign (pointer)
;	AOP_STK for _projectile_launch_sloc8_1_0
;fetchPairLong
	ldhl	sp,	#14
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$projectiles.c$183$2_3$348	= .
	.globl	C$projectiles.c$183$2_3$348
;src\core\projectiles.c:183: INT8 sinv = SIN(angle), cosv = COS(angle);
;	genAddrOf
	ld	bc, #_sine_wave+0
;	genPlus
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#27
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _projectile_launch_sloc9_1_0
	ld	a, (de)
;	genMove_o size 1
	ldhl	sp,	#4
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for 
	ldhl	sp,	#27
	ld	a, (hl)
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
	add	hl, bc
;	genPointerGet
;	AOP_STK for _projectile_launch_sloc10_1_0
	ld	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
	C$projectiles.c$186$3_3$349	= .
	.globl	C$projectiles.c$186$3_3$349
;src\core\projectiles.c:186: while (initial_offset > 0xFFu) {
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;	AOP_STK for _projectile_launch_sloc11_1_0
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
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
;	genMove_o size 0
;	genMult
;	AOP_STK for _projectile_launch_sloc9_1_0
	ldhl	sp,	#4
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;	AOP_STK for _projectile_launch_sloc12_1_0
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
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl), a
;	genMove_o size 0
;	genMult
;	AOP_STK for _projectile_launch_sloc10_1_0
;	AOP_STK for _projectile_launch_sloc13_1_0
	ldhl	sp,	#5
	ld	e, (hl)
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#16
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#15
;	genMove_o size 0
;	genRightShift
;	AOP_STK for _projectile_launch_sloc13_1_0
;	AOP_STK for _projectile_launch_sloc14_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl)
	ldhl	sp,	#10
	ld	(hl), a
	ldhl	sp,	#15
	ld	a, (hl)
	ldhl	sp,	#11
	ld	(hl), a
;	genMove_o size 0
	sra	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	sra	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	sra	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	sra	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	sra	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	sra	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	sra	(hl)
	dec	hl
	rr	(hl)
;	genLabel
00111$:
;	genCmpGt
;	AOP_STK for _projectile_launch_sloc5_1_0
	ldhl	sp,	#16
	ld	a, #0xff
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00132$
;	skipping generated iCode
	C$projectiles.c$187$3_3$349	= .
	.globl	C$projectiles.c$187$3_3$349
;src\core\projectiles.c:187: projectile->pos.x += ((sinv * (UINT8)(0xFF)) >> 7);
;	genPointerGet
;	AOP_STK for _projectile_launch_sloc11_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#6
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
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _projectile_launch_sloc15_1_0
;	genMove_o size 2
	ldhl	sp,	#14
	ld	(hl), e
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _projectile_launch_sloc11_1_0
;	AOP_STK for _projectile_launch_sloc15_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ldhl	sp,	#14
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
	C$projectiles.c$188$3_3$349	= .
	.globl	C$projectiles.c$188$3_3$349
;src\core\projectiles.c:188: projectile->pos.y -= ((cosv * (UINT8)(0xFF)) >> 7);
;	genPlus
;	AOP_STK for _projectile_launch_sloc12_1_0
;	AOP_STK for _projectile_launch_sloc16_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
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
	ldhl	sp,	#14
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#13
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _projectile_launch_sloc16_1_0
;	AOP_STK for _projectile_launch_sloc17_1_0
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
;	genCast
;	AOP_STK for _projectile_launch_sloc17_1_0
;	AOP_STK for _projectile_launch_sloc18_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#15
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genMinus
;	AOP_STK for _projectile_launch_sloc18_1_0
;	AOP_STK for _projectile_launch_sloc14_1_0
;	AOP_STK for _projectile_launch_sloc19_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
	ldhl	sp,	#10
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#15
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
;	genCast
;	AOP_STK for _projectile_launch_sloc19_1_0
;	AOP_STK for _projectile_launch_sloc20_1_0
;	(locations are the same)
;	genAssign (pointer)
;	AOP_STK for _projectile_launch_sloc16_1_0
;	AOP_STK for _projectile_launch_sloc20_1_0
;fetchPairLong
	ld	a, e
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	C$projectiles.c$189$3_3$349	= .
	.globl	C$projectiles.c$189$3_3$349
;src\core\projectiles.c:189: initial_offset -= 0xFFu;
;	genMinus
;	AOP_STK for _projectile_launch_sloc5_1_0
;fetchPairLong
; common peephole 96b move inc hl before ld (de), a
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
; common peephole 96b move inc hl before ld (de), a
; common peephole 96b move dec hl before ld (de), a
; common peephole 156b removed inc hl / dec hl pair.
	ld	(de), a
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x00ff
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#17
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;	genLabel
00132$:
;	genAssign
;	AOP_STK for _projectile_launch_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#16
	ld	c, (hl)
;	genMove_o size 0
	C$projectiles.c$191$2_3$348	= .
	.globl	C$projectiles.c$191$2_3$348
;src\core\projectiles.c:191: if (initial_offset > 0) {
;	genIfx
; common peephole 9 loaded a from #0x00 directly instead of going through b.
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	or	a, c
	jp	Z, 00115$
	C$projectiles.c$192$3_3$350	= .
	.globl	C$projectiles.c$192$3_3$350
;src\core\projectiles.c:192: projectile->pos.x += ((sinv * (UINT8)(initial_offset)) >> 7);
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;	AOP_STK for _projectile_launch_sloc21_1_0
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
;	AOP_STK for _projectile_launch_sloc21_1_0
;	AOP_STK for _projectile_launch_sloc22_1_0
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
;	genCast
;	AOP_STK for _projectile_launch_sloc23_1_0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
;	genSend
;	AOP_STK for _projectile_launch_sloc23_1_0
;	genMove_o size 1
	ld	e, (hl)
;	genMove_o size 0
;	genSend
;	AOP_STK for _projectile_launch_sloc9_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	call	__muluschar
;	genMove_o size 2
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	AOP_STK for _projectile_launch_sloc22_1_0
;	genMove_o size 2
	ldhl	sp,	#15
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
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	AOP_STK for _projectile_launch_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$projectiles.c$193$3_3$350	= .
	.globl	C$projectiles.c$193$3_3$350
;src\core\projectiles.c:193: projectile->pos.y -= ((cosv * (UINT8)(initial_offset)) >> 7);
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
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
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genSend
;	AOP_STK for _projectile_launch_sloc23_1_0
	push	hl
	push	bc
;	genMove_o size 1
	push	hl
	ldhl	sp,	#23
	ld	e, (hl)
;	genMove_o size 0
;	genSend
;	AOP_STK for _projectile_launch_sloc10_1_0
;	genMove_o size 1
; common peephole 50a eliminated dead pop/push hl pair.
	ldhl	sp,	#11
	ld	a, (hl)
	pop	hl
;	genMove_o size 0
;	genCall
	call	__muluschar
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	pop	bc
	pop	hl
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, l
	sub	a, e
	ld	e, a
	ld	a, h
	sbc	a, d
;	genCast
;	genMove_o size 2
	ld	d, a
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
00115$:
;src\core\projectiles.c:196: point_translate_angle_to_delta(&projectile->delta_pos, angle, projectile->def.move_speed);
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
; common peephole 119 removed loads by exploiting commutativity of addition.
; common peephole 120 removed loads by exploiting commutativity of addition.
; common peephole 130b added +0x0012 to immediate 0x000c
	ld	hl, #0x1e
	add	hl,de
;	genPointerGet
;	AOP_STK for _projectile_launch_sloc24_1_0
	ld	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#14
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	AOP_STK for _projectile_launch_sloc25_1_0
;	genMove_o size 1
	ldhl	sp,	#27
	ld	a, (hl)
	ldhl	sp,	#15
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0005
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;include/math.h:114: point->x = ((SIN(angle) * (speed)) >> 7);
;	skipping iCode since result will be rematerialized
;	genPlus
;	AOP_STK for _projectile_launch_sloc25_1_0
;fetchPairLong
;fetchLitPair	de
	ld	de, #_sine_wave
;fetchPairLong
	ldhl	sp,	#15
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
;	genSend
;	AOP_STK for _projectile_launch_sloc24_1_0
	push	bc
;	genMove_o size 1
	ldhl	sp,	#16
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
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;include/math.h:115: point->y = ((COS(angle) * (speed)) >> 7);
;	genPlus
;	AOP_STK for _projectile_launch_sloc26_1_0
	inc	bc
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genMove_o size 0
;	genPlus
;	AOP_STK for _projectile_launch_sloc25_1_0
	ld	a, b
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	dec	hl
	ld	a, (hl)
	add	a, #0x40
	ld	e, a
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_sine_wave
	ld	d, #0x00
	add	hl, de
;	genPointerGet
	ld	c, (hl)
;	genSend
;	AOP_STK for _projectile_launch_sloc24_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	e, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	__muluschar
;	genMove_o size 2
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	AOP_STK for _projectile_launch_sloc26_1_0
;fetchPairLong
	ldhl	sp,	#16
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$projectiles.c$198$2_3$348	= .
	.globl	C$projectiles.c$198$2_3$348
;src\core\projectiles.c:198: LL_REMOVE_HEAD(projectiles_inactive_head);
;	genIfx
;fetchLitPair	hl
	ld	hl, #_projectiles_inactive_head + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00117$
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_projectiles_inactive_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genLabel
00117$:
	C$projectiles.c$199$2_3$348	= .
	.globl	C$projectiles.c$199$2_3$348
;src\core\projectiles.c:199: LL_PUSH_HEAD(projectiles_active_head, projectile);
;	genPlus
;	AOP_STK for _projectile_launch_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_projectiles_active_head
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genAssign
;	AOP_STK for _projectile_launch_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_projectiles_active_head),a
; common peephole 19 loaded (#_projectiles_active_head) from a directly instead of using hl.
	ldhl	sp,	#3
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_projectiles_active_head + 1),a
; common peephole 20 loaded (#_projectiles_active_head) from a directly instead of using hl.
;	genLabel
00121$:
	C$projectiles.c$201$1_0$340	= .
	.globl	C$projectiles.c$201$1_0$340
;src\core\projectiles.c:201: }
;	genEndFunction
;	adjustStack by 18
	add	sp, #18
	C$projectiles.c$201$1_0$340	= .
	.globl	C$projectiles.c$201$1_0$340
	XG$projectile_launch$0$0	= .
	.globl	XG$projectile_launch$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
