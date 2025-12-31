;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module trigger
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_script_execute
	.globl _script_execute
	.globl _triggers_len
	.globl _last_trigger
	.globl _last_trigger_ty
	.globl _last_trigger_tx
	.globl _triggers
	.globl b_trigger_reset
	.globl _trigger_reset
	.globl b_trigger_interact
	.globl _trigger_interact
	.globl b_trigger_activate_at
	.globl _trigger_activate_at
	.globl b_trigger_at_intersection
	.globl _trigger_at_intersection
	.globl b_trigger_activate_at_intersection
	.globl _trigger_activate_at_intersection
	.globl b_trigger_at_tile
	.globl _trigger_at_tile
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$triggers$0_0$0==.
_triggers::
	.ds 248
G$last_trigger_tx$0_0$0==.
_last_trigger_tx::
	.ds 1
G$last_trigger_ty$0_0$0==.
_last_trigger_ty::
	.ds 1
G$last_trigger$0_0$0==.
_last_trigger::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$triggers_len$0_0$0==.
_triggers_len::
	.ds 1
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
	G$trigger_reset$0$0	= .
	.globl	G$trigger_reset$0$0
	C$trigger.c$12$0_0$256	= .
	.globl	C$trigger.c$12$0_0$256
;src\core\trigger.c:12: void trigger_reset(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function trigger_reset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_trigger_reset	= 255
_trigger_reset::
	C$trigger.c$13$1_0$256	= .
	.globl	C$trigger.c$13$1_0$256
;src\core\trigger.c:13: last_trigger_tx = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_trigger_tx
	ld	(hl), #0x00
	C$trigger.c$14$1_0$256	= .
	.globl	C$trigger.c$14$1_0$256
;src\core\trigger.c:14: last_trigger_ty = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_trigger_ty
	ld	(hl), #0x00
	C$trigger.c$15$1_0$256	= .
	.globl	C$trigger.c$15$1_0$256
;src\core\trigger.c:15: last_trigger = NO_TRIGGER_COLLISON;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_trigger
	ld	(hl), #0xff
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$trigger.c$16$1_0$256	= .
	.globl	C$trigger.c$16$1_0$256
;src\core\trigger.c:16: }
;	genEndFunction
	C$trigger.c$16$1_0$256	= .
	.globl	C$trigger.c$16$1_0$256
	XG$trigger_reset$0$0	= .
	.globl	XG$trigger_reset$0$0
	ret
	G$trigger_interact$0$0	= .
	.globl	G$trigger_interact$0$0
	C$trigger.c$18$1_0$258	= .
	.globl	C$trigger.c$18$1_0$258
;src\core\trigger.c:18: void trigger_interact(UBYTE i) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function trigger_interact
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_trigger_interact	= 255
_trigger_interact::
	C$trigger.c$19$1_0$258	= .
	.globl	C$trigger.c$19$1_0$258
;src\core\trigger.c:19: if (triggers[i].script_flags & TRIGGER_HAS_ENTER_SCRIPT) {
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#6
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, c
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_triggers
	add	hl, de
;	genPlus
;fetchPairLong
;fetchLitPair	bc
	ld	bc, #0x0007
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genAnd
	rrca
	ret	NC
; common peephole 161 replaced jump by return.
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00111$.
;	skipping generated iCode
	C$trigger.c$20$2_0$259	= .
	.globl	C$trigger.c$20$2_0$259
;src\core\trigger.c:20: script_execute(triggers[i].script.bank, triggers[i].script.ptr, 0, 1, 1);
;	genAddrOf
	ld	bc, #_triggers+0
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#6
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
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
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
;	genCast
;	(locations are the same)
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0001
	push	de
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
	push	hl
;	genIpush
	push	bc
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 8
	add	sp, #8
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$trigger.c$22$1_0$258	= .
	.globl	C$trigger.c$22$1_0$258
;src\core\trigger.c:22: }
;	genEndFunction
	C$trigger.c$22$1_0$258	= .
	.globl	C$trigger.c$22$1_0$258
	XG$trigger_interact$0$0	= .
	.globl	XG$trigger_interact$0$0
	ret
	G$trigger_activate_at$0$0	= .
	.globl	G$trigger_activate_at$0$0
	C$trigger.c$24$1_0$261	= .
	.globl	C$trigger.c$24$1_0$261
;src\core\trigger.c:24: UBYTE trigger_activate_at(UBYTE tx, UBYTE ty, UBYTE force) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function trigger_activate_at
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_trigger_activate_at	= 255
_trigger_activate_at::
	C$trigger.c$28$1_0$261	= .
	.globl	C$trigger.c$28$1_0$261
;src\core\trigger.c:28: if (!force && ((tx == last_trigger_tx) && (ty == last_trigger_ty))) {
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#8
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
;	genCmpEq
;	AOP_STK for 
	dec	hl
	dec	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_last_trigger_tx
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00133$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00134$.
;	skipping generated iCode
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#7
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_last_trigger_ty
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00135$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00136$.
;	skipping generated iCode
	C$trigger.c$29$2_0$262	= .
	.globl	C$trigger.c$29$2_0$262
;src\core\trigger.c:29: return FALSE;
;	genRet
;	genMove_o size 1
	xor	a, a
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
	C$trigger.c$32$1_0$261	= .
	.globl	C$trigger.c$32$1_0$261
;src\core\trigger.c:32: hit_trigger = trigger_at_tile(tx, ty);
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#7
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96c move dec hl before inc sp
; common peephole 96d move dec hl before push (af)
; sm83 peephole 3b used ldd to decrement hl after load
;	genMove_o size 0
; common peephole 47c pushed (hl-), (hl) through de instead of af.
	ld	a, (hl-)
	ld	d, a
	ld	a, (hl)
	ld	e, a
	push	de
;	genCall
	ld	e, #b_trigger_at_tile
	ld	hl, #_trigger_at_tile
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
	C$trigger.c$33$1_0$261	= .
	.globl	C$trigger.c$33$1_0$261
;src\core\trigger.c:33: last_trigger_tx = tx;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#6
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_last_trigger_tx),a
; common peephole 19 loaded (#_last_trigger_tx) from a directly instead of using hl.
	C$trigger.c$34$1_0$261	= .
	.globl	C$trigger.c$34$1_0$261
;src\core\trigger.c:34: last_trigger_ty = ty;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#7
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_last_trigger_ty),a
; common peephole 19 loaded (#_last_trigger_ty) from a directly instead of using hl.
	C$trigger.c$36$1_0$261	= .
	.globl	C$trigger.c$36$1_0$261
;src\core\trigger.c:36: if (hit_trigger != NO_TRIGGER_COLLISON) {
;	genCmpEq
	ld	a, b
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00137$.
;	skipping generated iCode
	C$trigger.c$37$2_0$263	= .
	.globl	C$trigger.c$37$2_0$263
;src\core\trigger.c:37: trigger_interact(hit_trigger);
;	genIpush
	push	bc
	inc	sp
;	genCall
	ld	e, #b_trigger_interact
	ld	hl, #_trigger_interact
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	C$trigger.c$38$2_0$263	= .
	.globl	C$trigger.c$38$2_0$263
;src\core\trigger.c:38: return TRUE;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00106$:
	C$trigger.c$41$1_0$261	= .
	.globl	C$trigger.c$41$1_0$261
;src\core\trigger.c:41: return FALSE;
;	genRet
;	genMove_o size 1
	xor	a, a
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$trigger.c$42$1_0$261	= .
	.globl	C$trigger.c$42$1_0$261
;src\core\trigger.c:42: }
;	genEndFunction
	C$trigger.c$42$1_0$261	= .
	.globl	C$trigger.c$42$1_0$261
	XG$trigger_activate_at$0$0	= .
	.globl	XG$trigger_activate_at$0$0
	ret
	G$trigger_at_intersection$0$0	= .
	.globl	G$trigger_at_intersection$0$0
	C$trigger.c$44$1_0$265	= .
	.globl	C$trigger.c$44$1_0$265
;src\core\trigger.c:44: UBYTE trigger_at_intersection(bounding_box_t *bb, point16_t *offset) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function trigger_at_intersection
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 15 bytes.
	b_trigger_at_intersection	= 255
_trigger_at_intersection::
;	adjustStack by -15
	add	sp, #-15
	C$trigger.c$45$1_0$265	= .
	.globl	C$trigger.c$45$1_0$265
;src\core\trigger.c:45: UBYTE tile_left   = ((offset->x >> 4) + bb->left)   >> 3;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _trigger_at_intersection_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#13
	ld	(hl), a
	ldhl	sp,	#24
	ld	a, (hl)
	ldhl	sp,	#14
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _trigger_at_intersection_sloc0_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genRightShift
;fetchPairLong
	ld	e, c
	ld	d, b
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
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
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, de
;	genRightShift
;fetchPairLong
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;	genCast
;	AOP_STK for _trigger_at_intersection_sloc1_1_0
;	genMove_o size 1
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
;	genMove_o size 0
	C$trigger.c$46$1_0$265	= .
	.globl	C$trigger.c$46$1_0$265
;src\core\trigger.c:46: UBYTE tile_right  = ((offset->x >> 4) + bb->right)  >> 3;
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
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	AOP_STK for _trigger_at_intersection_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), e
;	genMove_o size 0
	C$trigger.c$47$1_0$265	= .
	.globl	C$trigger.c$47$1_0$265
;src\core\trigger.c:47: UBYTE tile_top    = ((offset->y >> 4) + bb->top)    >> 3;
;	genPlus
;	AOP_STK for _trigger_at_intersection_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#13
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
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genRightShift
;fetchPairLong
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
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
	ld	a, (hl)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, de
;	genRightShift
;fetchPairLong
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;	genCast
;	AOP_STK for _trigger_at_intersection_sloc3_1_0
;	genMove_o size 1
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
;	genMove_o size 0
	C$trigger.c$48$1_0$265	= .
	.globl	C$trigger.c$48$1_0$265
;src\core\trigger.c:48: UBYTE tile_bottom = ((offset->y >> 4) + bb->bottom) >> 3;
;	genPlus
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	add	hl, de
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
;	genCast
;	AOP_STK for _trigger_at_intersection_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#5
;	genMove_o size 0
	C$trigger.c$51$2_0$266	= .
	.globl	C$trigger.c$51$2_0$266
;src\core\trigger.c:51: for (i = 0; i != triggers_len; i++) {
;	genAssign
;	AOP_STK for _trigger_at_intersection_sloc5_1_0
;	genMove_o size 1
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x00
;	skipping iCode since result will be rematerialized
;	genAssign
;	AOP_STK for _trigger_at_intersection_sloc6_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	(hl), #0x00
;	genLabel
00108$:
;	genCmpEq
;	AOP_STK for _trigger_at_intersection_sloc6_1_0
;fetchLitPair	hl
	ld	a, (#_triggers_len)
; common peephole 17 loaded a from (#_triggers_len) directly instead of using hl.
	ldhl	sp,	#14
	sub	a, (hl)
	jp	Z,00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00148$.
;	skipping generated iCode
	C$trigger.c$52$3_0$267	= .
	.globl	C$trigger.c$52$3_0$267
;src\core\trigger.c:52: UBYTE trigger_left   = triggers[i].x;
;	genCast
;	AOP_STK for _trigger_at_intersection_sloc6_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	b, a
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_triggers
	add	hl, bc
;	genPointerGet
;	AOP_STK for _trigger_at_intersection_sloc7_1_0
	ld	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#7
	ld	(hl), a
;	genMove_o size 0
	C$trigger.c$53$3_0$267	= .
	.globl	C$trigger.c$53$3_0$267
;src\core\trigger.c:53: UBYTE trigger_top    = triggers[i].y;
;	genPlus
;	AOP_STK for _trigger_at_intersection_sloc8_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_triggers
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
;	genMove_o size 0
;	genPlus
;	AOP_STK for _trigger_at_intersection_sloc8_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _trigger_at_intersection_sloc9_1_0
;	genMove_o size 1
; common peephole 96b move inc hl before ld a, (bc)
; common peephole 96c move inc hl before inc bc
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	inc	bc
	ld	a, (bc)
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	AOP_STK for _trigger_at_intersection_sloc9_1_0
;	AOP_STK for _trigger_at_intersection_sloc10_1_0
;	genMove_o size 1
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$trigger.c$54$3_0$267	= .
	.globl	C$trigger.c$54$3_0$267
;src\core\trigger.c:54: UBYTE trigger_right  = triggers[i].x + triggers[i].width  - 1;
;	genPointerGet
;	AOP_STK for _trigger_at_intersection_sloc8_1_0
;	AOP_STK for _trigger_at_intersection_sloc11_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld a, (de)
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96b move inc hl before ld d, a
	inc	hl
	ld	d, a
	ld	a, (de)
;	genPlus
;	AOP_STK for _trigger_at_intersection_sloc8_1_0
;	AOP_STK for _trigger_at_intersection_sloc12_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0002
	add	hl, de
;	genMove_o size 2
	inc	sp
	inc	sp
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _trigger_at_intersection_sloc12_1_0
;	AOP_STK for _trigger_at_intersection_sloc13_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
; common peephole 52a replaced push/pop pair by loads.
	push	de
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl), a
;	genPlus
;	AOP_STK for _trigger_at_intersection_sloc13_1_0
;	AOP_STK for _trigger_at_intersection_sloc11_1_0
;	AOP_STK for _trigger_at_intersection_sloc14_1_0
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	add	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
;	genCast
;	AOP_STK for _trigger_at_intersection_sloc14_1_0
;	AOP_STK for _trigger_at_intersection_sloc15_1_0
;	(locations are the same)
;	genMinus
;	AOP_STK for _trigger_at_intersection_sloc15_1_0
;	AOP_STK for _trigger_at_intersection_sloc16_1_0
	dec	(hl)
	C$trigger.c$55$3_0$267	= .
	.globl	C$trigger.c$55$3_0$267
;src\core\trigger.c:55: UBYTE trigger_bottom = triggers[i].y + triggers[i].height - 1;
;	genPlus
;	AOP_STK for _trigger_at_intersection_sloc8_1_0
;	AOP_STK for _trigger_at_intersection_sloc17_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0003
	add	hl, de
;	genMove_o size 2
	inc	sp
	inc	sp
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _trigger_at_intersection_sloc17_1_0
;	AOP_STK for _trigger_at_intersection_sloc18_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
; common peephole 52a replaced push/pop pair by loads.
	push	de
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl), a
;	genPlus
;	AOP_STK for _trigger_at_intersection_sloc18_1_0
;	AOP_STK for _trigger_at_intersection_sloc9_1_0
;	AOP_STK for _trigger_at_intersection_sloc19_1_0
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	add	a, (hl)
	inc	hl
	ld	(hl), a
;	genCast
;	AOP_STK for _trigger_at_intersection_sloc19_1_0
;	AOP_STK for _trigger_at_intersection_sloc20_1_0
;	(locations are the same)
;	genMinus
;	AOP_STK for _trigger_at_intersection_sloc20_1_0
;	AOP_STK for _trigger_at_intersection_sloc21_1_0
	dec	(hl)
	C$trigger.c$57$3_0$267	= .
	.globl	C$trigger.c$57$3_0$267
;src\core\trigger.c:57: if ((tile_left <= trigger_right)
;	genCmpGt
;	AOP_STK for _trigger_at_intersection_sloc1_1_0
;	AOP_STK for _trigger_at_intersection_sloc16_1_0
	inc	hl
	inc	hl
	ld	a, (hl)
	ldhl	sp,	#2
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00109$
;	skipping generated iCode
	C$trigger.c$58$3_0$267	= .
	.globl	C$trigger.c$58$3_0$267
;src\core\trigger.c:58: && (tile_right >= trigger_left)
;	genCmpLt
;	AOP_STK for _trigger_at_intersection_sloc2_1_0
;	AOP_STK for _trigger_at_intersection_sloc7_1_0
	inc	hl
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00109$
;	skipping generated iCode
	C$trigger.c$59$3_0$267	= .
	.globl	C$trigger.c$59$3_0$267
;src\core\trigger.c:59: && (tile_top <= trigger_bottom)
;	genCmpGt
;	AOP_STK for _trigger_at_intersection_sloc3_1_0
;	AOP_STK for _trigger_at_intersection_sloc21_1_0
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#4
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00109$
;	skipping generated iCode
	C$trigger.c$60$3_0$267	= .
	.globl	C$trigger.c$60$3_0$267
;src\core\trigger.c:60: && (tile_bottom >= trigger_top)) {
;	genCmpLt
;	AOP_STK for _trigger_at_intersection_sloc4_1_0
;	AOP_STK for _trigger_at_intersection_sloc10_1_0
	inc	hl
	ld	a, (hl)
	ldhl	sp,	#12
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00109$
;	skipping generated iCode
	C$trigger.c$61$4_0$268	= .
	.globl	C$trigger.c$61$4_0$268
;src\core\trigger.c:61: return i;
;	genRet
;	AOP_STK for _trigger_at_intersection_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#6
	ld	a, (hl)
;	genMove_o size 0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00109$:
	C$trigger.c$51$2_0$266	= .
	.globl	C$trigger.c$51$2_0$266
;src\core\trigger.c:51: for (i = 0; i != triggers_len; i++) {
;	genPlus
;	AOP_STK for _trigger_at_intersection_sloc6_1_0
	ldhl	sp,	#14
	inc	(hl)
;	genAssign
;	AOP_STK for _trigger_at_intersection_sloc6_1_0
;	AOP_STK for _trigger_at_intersection_sloc5_1_0
;	genMove_o size 1
	ld	a, (hl)
	ldhl	sp,	#6
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00108$
;	genLabel
00106$:
	C$trigger.c$65$1_0$265	= .
	.globl	C$trigger.c$65$1_0$265
;src\core\trigger.c:65: return NO_TRIGGER_COLLISON;
;	genRet
;	genMove_o size 1
	ld	a, #0xff
;	genLabel
00110$:
	C$trigger.c$66$1_0$265	= .
	.globl	C$trigger.c$66$1_0$265
;src\core\trigger.c:66: }
;	genEndFunction
;	adjustStack by 15
	add	sp, #15
	C$trigger.c$66$1_0$265	= .
	.globl	C$trigger.c$66$1_0$265
	XG$trigger_at_intersection$0$0	= .
	.globl	XG$trigger_at_intersection$0$0
	ret
	G$trigger_activate_at_intersection$0$0	= .
	.globl	G$trigger_activate_at_intersection$0$0
	C$trigger.c$69$1_0$270	= .
	.globl	C$trigger.c$69$1_0$270
;src\core\trigger.c:69: UBYTE trigger_activate_at_intersection(bounding_box_t *bb, point16_t *offset, UBYTE force) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function trigger_activate_at_intersection
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
	b_trigger_activate_at_intersection	= 255
_trigger_activate_at_intersection::
;	adjustStack by -1
	dec	sp
	C$trigger.c$70$1_0$270	= .
	.globl	C$trigger.c$70$1_0$270
;src\core\trigger.c:70: UBYTE hit_trigger = trigger_at_intersection(bb, offset);
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#9
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#9
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
;	AOP_STK for _trigger_activate_at_intersection_sloc0_1_0
	ld	e, #b_trigger_at_intersection
	ld	hl, #_trigger_at_intersection
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), a
;	genMove_o size 0
	C$trigger.c$71$1_0$270	= .
	.globl	C$trigger.c$71$1_0$270
;src\core\trigger.c:71: UBYTE trigger_script_called = FALSE;
;	genAssign
;	genMove_o size 1
	ld	c, #0x00
	C$trigger.c$74$1_0$270	= .
	.globl	C$trigger.c$74$1_0$270
;src\core\trigger.c:74: if (!force && (last_trigger == hit_trigger)) {
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#11
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
;	genCmpEq
;	AOP_STK for _trigger_activate_at_intersection_sloc0_1_0
;fetchLitPair	hl
	ld	a, (#_last_trigger)
; common peephole 17 loaded a from (#_last_trigger) directly instead of using hl.
	ldhl	sp,	#0
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00172$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00173$.
;	skipping generated iCode
	C$trigger.c$75$2_0$271	= .
	.globl	C$trigger.c$75$2_0$271
;src\core\trigger.c:75: return FALSE;
;	genRet
;	genMove_o size 1
	xor	a, a
	jp	00116$
;	genLabel
00102$:
	C$trigger.c$78$1_0$270	= .
	.globl	C$trigger.c$78$1_0$270
;src\core\trigger.c:78: if (last_trigger != NO_TRIGGER_COLLISON && 
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_last_trigger)
; common peephole 17 loaded a from (#_last_trigger) directly instead of using hl.
	inc	a
	jp	Z,00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00174$.
;	skipping generated iCode
	C$trigger.c$79$1_0$270	= .
	.globl	C$trigger.c$79$1_0$270
;src\core\trigger.c:79: (hit_trigger == NO_TRIGGER_COLLISON || hit_trigger != last_trigger)) {
;	genCmpEq
;	AOP_STK for _trigger_activate_at_intersection_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00175$.
;	skipping generated iCode
;	genCmpEq
;	AOP_STK for _trigger_activate_at_intersection_sloc0_1_0
;fetchLitPair	hl
	ld	a, (#_last_trigger)
; common peephole 17 loaded a from (#_last_trigger) directly instead of using hl.
	ldhl	sp,	#0
	sub	a, (hl)
	jp	Z,00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00176$.
;	skipping generated iCode
;	genLabel
00109$:
	C$trigger.c$81$2_0$272	= .
	.globl	C$trigger.c$81$2_0$272
;src\core\trigger.c:81: if (hit_trigger != NO_TRIGGER_COLLISON && triggers[hit_trigger].script_flags & TRIGGER_HAS_ENTER_SCRIPT) {
;	genCmpEq
;	AOP_STK for _trigger_activate_at_intersection_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00177$.
;	skipping generated iCode
;	genAddrOf
	ld	de, #_triggers+0
;	genCast
;	AOP_STK for _trigger_activate_at_intersection_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	b, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, b
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
	add	hl, de
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0007
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00105$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00178$.
;	skipping generated iCode
	C$trigger.c$82$3_0$273	= .
	.globl	C$trigger.c$82$3_0$273
;src\core\trigger.c:82: script_execute(triggers[hit_trigger].script.bank, triggers[hit_trigger].script.ptr, 0, 1, 1);
;	genAddrOf
	ld	bc, #_triggers+0
;	genCast
;	AOP_STK for _trigger_activate_at_intersection_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
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
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
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
;	genCast
;	(locations are the same)
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0001
	push	de
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
	push	hl
;	genIpush
	push	bc
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 8
	add	sp, #8
	C$trigger.c$83$3_0$273	= .
	.globl	C$trigger.c$83$3_0$273
;src\core\trigger.c:83: trigger_script_called = TRUE;
;	genAssign
;	genMove_o size 1
	ld	c, #0x01
;	genLabel
00105$:
	C$trigger.c$86$2_0$272	= .
	.globl	C$trigger.c$86$2_0$272
;src\core\trigger.c:86: if (triggers[last_trigger].script_flags & TRIGGER_HAS_LEAVE_SCRIPT) {
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_trigger
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_triggers
	add	hl, de
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0007
	add	hl, de
;	genPointerGet
;	genAnd
; common peephole 73 tested bit 1 of (hl) directly instead of going through a.
	bit	1, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00179$.
;	skipping generated iCode
	C$trigger.c$89$3_0$274	= .
	.globl	C$trigger.c$89$3_0$274
;src\core\trigger.c:89: triggers[last_trigger].script.ptr, 0, 1, 2);
;	genAddrOf
	ld	bc, #_triggers+0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_trigger
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
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
;	genCast
;	(locations are the same)
	C$trigger.c$88$3_0$274	= .
	.globl	C$trigger.c$88$3_0$274
;src\core\trigger.c:88: triggers[last_trigger].script.bank, 
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0002
	push	de
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
	push	hl
;	genIpush
	push	bc
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 8
	add	sp, #8
	C$trigger.c$90$3_0$274	= .
	.globl	C$trigger.c$90$3_0$274
;src\core\trigger.c:90: trigger_script_called = TRUE;
;	genAssign
;	genMove_o size 1
	ld	c, #0x01
;	genLabel
00108$:
	C$trigger.c$93$2_0$272	= .
	.globl	C$trigger.c$93$2_0$272
;src\core\trigger.c:93: last_trigger = hit_trigger;
;	genAssign
;	AOP_STK for _trigger_activate_at_intersection_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_last_trigger),a
; common peephole 19 loaded (#_last_trigger) from a directly instead of using hl.
	C$trigger.c$95$2_0$272	= .
	.globl	C$trigger.c$95$2_0$272
;src\core\trigger.c:95: return trigger_script_called;
;	genRet
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;	genLabel
00110$:
	C$trigger.c$98$1_0$270	= .
	.globl	C$trigger.c$98$1_0$270
;src\core\trigger.c:98: last_trigger = hit_trigger;
;	genAssign
;	AOP_STK for _trigger_activate_at_intersection_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_last_trigger),a
; common peephole 19 loaded (#_last_trigger) from a directly instead of using hl.
	C$trigger.c$100$1_0$270	= .
	.globl	C$trigger.c$100$1_0$270
;src\core\trigger.c:100: if (hit_trigger != NO_TRIGGER_COLLISON && triggers[hit_trigger].script_flags & TRIGGER_HAS_ENTER_SCRIPT) {
;	genCmpEq
;	AOP_STK for _trigger_activate_at_intersection_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00180$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _trigger_activate_at_intersection_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, c
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_triggers
	add	hl, de
;	genPlus
;fetchPairLong
;fetchLitPair	bc
	ld	bc, #0x0007
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00114$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00181$.
;	skipping generated iCode
	C$trigger.c$101$2_0$275	= .
	.globl	C$trigger.c$101$2_0$275
;src\core\trigger.c:101: script_execute(triggers[hit_trigger].script.bank, triggers[hit_trigger].script.ptr, 0, 1, 1);
;	genAddrOf
	ld	bc, #_triggers+0
;	genCast
;	AOP_STK for _trigger_activate_at_intersection_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
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
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
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
;	genCast
;	(locations are the same)
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0001
	push	de
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
	push	hl
;	genIpush
	push	bc
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 8
	add	sp, #8
	C$trigger.c$102$2_0$275	= .
	.globl	C$trigger.c$102$2_0$275
;src\core\trigger.c:102: return TRUE;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;	genLabel
00114$:
	C$trigger.c$105$1_0$270	= .
	.globl	C$trigger.c$105$1_0$270
;src\core\trigger.c:105: return FALSE;
;	genRet
;	genMove_o size 1
	xor	a, a
;	genLabel
00116$:
	C$trigger.c$106$1_0$270	= .
	.globl	C$trigger.c$106$1_0$270
;src\core\trigger.c:106: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	C$trigger.c$106$1_0$270	= .
	.globl	C$trigger.c$106$1_0$270
	XG$trigger_activate_at_intersection$0$0	= .
	.globl	XG$trigger_activate_at_intersection$0$0
	ret
	G$trigger_at_tile$0$0	= .
	.globl	G$trigger_at_tile$0$0
	C$trigger.c$108$1_0$277	= .
	.globl	C$trigger.c$108$1_0$277
;src\core\trigger.c:108: UBYTE trigger_at_tile(UBYTE tx_a, UBYTE ty_a) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function trigger_at_tile
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
	b_trigger_at_tile	= 255
_trigger_at_tile::
;	adjustStack by -8
	add	sp, #-8
	C$trigger.c$111$2_0$278	= .
	.globl	C$trigger.c$111$2_0$278
;src\core\trigger.c:111: for (i = 0; i != triggers_len; i++) {
;	genAssign
;	AOP_STK for _trigger_at_tile_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), #0x00
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1
	ld	c, #0x00
;	genLabel
00108$:
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_triggers_len)
; common peephole 17 loaded a from (#_triggers_len) directly instead of using hl.
	sub	a, c
	jp	Z,00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00148$.
;	skipping generated iCode
	C$trigger.c$112$3_0$279	= .
	.globl	C$trigger.c$112$3_0$279
;src\core\trigger.c:112: tx_b = triggers[i].x;
;	genCast
;	genMove_o size 1
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	e, l
	ld	d, h
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_triggers
	add	hl, de
;	genPointerGet
	ld	b, (hl)
	C$trigger.c$113$3_0$279	= .
	.globl	C$trigger.c$113$3_0$279
;src\core\trigger.c:113: ty_b = triggers[i].y;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_triggers
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;	spillPairReg hl
;	spillPairReg hl
	ld	e,l
	ld	d,h
; common peephole 104 removed redundant load from de into hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;	AOP_STK for _trigger_at_tile_sloc1_1_0
	ld	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
	C$trigger.c$114$3_0$279	= .
	.globl	C$trigger.c$114$3_0$279
;src\core\trigger.c:114: tx_c = tx_b + triggers[i].width - 1;
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
;	genPointerGet
	ld	a, (hl)
;	genPlus
	add	a, b
;	genCast
;	(locations are the same)
;	genMinus
;	AOP_STK for _trigger_at_tile_sloc2_1_0
; common peephole 155c turned add into dec.
	dec	a
	ldhl	sp,	#2
	C$trigger.c$115$3_0$279	= .
	.globl	C$trigger.c$115$3_0$279
;src\core\trigger.c:115: ty_c = ty_b + triggers[i].height - 1;
;	genPlus
;	genPointerGet
;	genMove_o size 1
;	genPlus
;	AOP_STK for _trigger_at_tile_sloc1_1_0
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96c move dec hl before inc de
; common peephole 96c move dec hl before inc de
; common peephole 96c move dec hl before inc de
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	inc	de
	inc	de
	inc	de
	ld	a, (de)
	add	a, (hl)
;	genCast
;	(locations are the same)
;	genMinus
;	AOP_STK for _trigger_at_tile_sloc3_1_0
; common peephole 96b move inc hl before add a, #0xff
	inc	hl
; common peephole 96b move inc hl before add a, #0xff
	inc	hl
; common peephole 155c turned add into dec.
	dec	a
	ld	(hl), a
	C$trigger.c$117$3_0$279	= .
	.globl	C$trigger.c$117$3_0$279
;src\core\trigger.c:117: if ((tx_a + 1) >= tx_b && tx_a <= tx_c && ty_a >= ty_b && ty_a <= ty_c) {
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genPlus
;	AOP_STK for _trigger_at_tile_sloc4_1_0
	inc	de
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genMove_o size 0
;	genCast
;	AOP_STK for _trigger_at_tile_sloc5_1_0
;	genMove_o size 1
	ld	a, d
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genMove_o size 0
;	genMove_o size 1
	ld	a, b
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x00
;	genCmpLt
;	AOP_STK for _trigger_at_tile_sloc4_1_0
;	AOP_STK for _trigger_at_tile_sloc5_1_0
	ldhl	sp,	#4
	ld	e, l
	ld	d, h
	ldhl	sp,	#6
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00149$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00150$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00150$
00149$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00150$
	scf
00150$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00109$
;	skipping generated iCode
;	genCmpGt
;	AOP_STK for 
;	AOP_STK for _trigger_at_tile_sloc2_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	ldhl	sp,	#14
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00109$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for _trigger_at_tile_sloc1_1_0
	inc	hl
	ld	a, (hl)
	ldhl	sp,	#1
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00109$
;	skipping generated iCode
;	genCmpGt
;	AOP_STK for 
;	AOP_STK for _trigger_at_tile_sloc3_1_0
	inc	hl
	inc	hl
	ld	a, (hl)
	ldhl	sp,	#15
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00109$
;	skipping generated iCode
	C$trigger.c$118$4_0$280	= .
	.globl	C$trigger.c$118$4_0$280
;src\core\trigger.c:118: return i;
;	genRet
;	AOP_STK for _trigger_at_tile_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00109$:
	C$trigger.c$111$2_0$278	= .
	.globl	C$trigger.c$111$2_0$278
;src\core\trigger.c:111: for (i = 0; i != triggers_len; i++) {
;	genPlus
	inc	c
;	genAssign
;	AOP_STK for _trigger_at_tile_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), c
;	genMove_o size 0
;	genGoto
	jp	00108$
;	genLabel
00106$:
	C$trigger.c$122$1_0$277	= .
	.globl	C$trigger.c$122$1_0$277
;src\core\trigger.c:122: return NO_TRIGGER_COLLISON;
;	genRet
;	genMove_o size 1
	ld	a, #0xff
;	genLabel
00110$:
	C$trigger.c$123$1_0$277	= .
	.globl	C$trigger.c$123$1_0$277
;src\core\trigger.c:123: }
;	genEndFunction
;	adjustStack by 8
	add	sp, #8
	C$trigger.c$123$1_0$277	= .
	.globl	C$trigger.c$123$1_0$277
	XG$trigger_at_tile$0$0	= .
	.globl	XG$trigger_at_tile$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
Ftrigger$__xinit_triggers_len$0_0$0 == .
__xinit__triggers_len:
	.db #0x00	; 0
	.area _CABS (ABS)
