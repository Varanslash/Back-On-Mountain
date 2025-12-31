;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_camera
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_camera_shake_frames
	.globl _camera_shake_frames
	.globl b___func_VM_CAMERA
	.globl ___func_VM_CAMERA
	.globl b_scroll_update
	.globl _scroll_update
	.globl _rand
	.globl b_vm_camera_move_to
	.globl _vm_camera_move_to
	.globl b_vm_camera_set_pos
	.globl _vm_camera_set_pos
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
	G$__func_VM_CAMERA$0$0	= .
	.globl	G$__func_VM_CAMERA$0$0
	C$vm_camera.c$12$0_0$213	= .
	.globl	C$vm_camera.c$12$0_0$213
;src\core\vm_camera.c:12: BANKREF(VM_CAMERA)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_CAMERA
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_CAMERA	= 255
___func_VM_CAMERA::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_CAMERA 
	___bank_VM_CAMERA = b___func_VM_CAMERA 
	.globl ___bank_VM_CAMERA 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_camera_move_to$0$0	= .
	.globl	G$vm_camera_move_to$0$0
	C$vm_camera.c$18$1_0$215	= .
	.globl	C$vm_camera.c$18$1_0$215
;src\core\vm_camera.c:18: void vm_camera_move_to(SCRIPT_CTX * THIS, INT16 idx, UBYTE speed, UBYTE after_lock_camera) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_camera_move_to
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
	b_vm_camera_move_to	= 255
_vm_camera_move_to::
;	adjustStack by -3
	add	sp, #-3
	C$vm_camera.c$21$1_0$215	= .
	.globl	C$vm_camera.c$21$1_0$215
;src\core\vm_camera.c:21: THIS->waitable = 1;
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
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x01
	C$vm_camera.c$23$1_1$216	= .
	.globl	C$vm_camera.c$23$1_1$216
;src\core\vm_camera.c:23: camera_position_t * params = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#12
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00128$
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
	jr	00129$
;	genLabel
00128$:
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
00129$:
;	genCast
;	genMove_o size 2
	ld	a, l
	ld	c, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
	C$vm_camera.c$26$1_1$216	= .
	.globl	C$vm_camera.c$26$1_1$216
;src\core\vm_camera.c:26: camera_settings &= ~(CAMERA_LOCK_FLAG);
;	genAnd
;fetchLitPair	hl
	ld	hl, #_camera_settings
	ld	a, (hl)
	and	a, #0xfc
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
	C$vm_camera.c$29$1_1$216	= .
	.globl	C$vm_camera.c$29$1_1$216
;src\core\vm_camera.c:29: if ((camera_x == params->X) && (camera_y == params->Y)) {
;	genPointerGet
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genCmpEq
;fetchLitPair	hl
	ld	hl, #_camera_x
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 84 jumped to 00102$ directly instead of via 00210$.
;fetchLitPair	hl
	inc	hl
	ld	a, (hl)
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00210$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00211$.
;	skipping generated iCode
;	genPlus
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
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
;	genCmpEq
;fetchLitPair	hl
	ld	hl, #_camera_y
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 84 jumped to 00102$ directly instead of via 00212$.
;fetchLitPair	hl
	inc	hl
	ld	a, (hl)
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00212$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00213$.
;	skipping generated iCode
	C$vm_camera.c$30$2_1$217	= .
	.globl	C$vm_camera.c$30$2_1$217
;src\core\vm_camera.c:30: camera_settings |= (after_lock_camera & CAMERA_LOCK_FLAG);
;	genAnd
;	AOP_STK for 
	ldhl	sp,	#14
	ld	a, (hl)
	and	a, #0x03
;	genMove_o size 1
;	genOr
;fetchLitPair	hl
	ld	hl, #_camera_settings
	or	a, (hl)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
	C$vm_camera.c$31$2_1$217	= .
	.globl	C$vm_camera.c$31$2_1$217
;src\core\vm_camera.c:31: return;
;	genRet
	jp	00126$
;	genLabel
00102$:
	C$vm_camera.c$35$2_1$218	= .
	.globl	C$vm_camera.c$35$2_1$218
;src\core\vm_camera.c:35: UBYTE x_dest = FALSE;
;	genAssign
;	AOP_STK for _vm_camera_move_to_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	(hl), #0x00
	C$vm_camera.c$36$1_2$218	= .
	.globl	C$vm_camera.c$36$1_2$218
;src\core\vm_camera.c:36: if (camera_x > params->X) {
;	genPointerGet
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_camera_x
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
	jr	Z, 00214$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00215$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00215$
00214$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00215$
	scf
00215$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00111$
;	skipping generated iCode
	C$vm_camera.c$38$2_2$219	= .
	.globl	C$vm_camera.c$38$2_2$219
;src\core\vm_camera.c:38: camera_x -= speed;
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genMinus
;fetchLitPair	hl
	ld	hl, #_camera_x
	ld	a, (hl)
	sub	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	sbc	a, b
;fetchLitPair	hl
	C$vm_camera.c$39$2_2$219	= .
	.globl	C$vm_camera.c$39$2_2$219
;src\core\vm_camera.c:39: if (camera_x <= params->X) {
;	genPointerGet
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
;fetchPairLong
;	genCmpGt
;fetchLitPair	hl
; common peephole 96b move dec hl before ld b, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96d move dec hl before push (de)
; common peephole 96d move dec hl before pop (de)
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
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
	jr	Z, 00216$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00217$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00217$
00216$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00217$
	scf
00217$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00112$
;	skipping generated iCode
	C$vm_camera.c$40$3_2$220	= .
	.globl	C$vm_camera.c$40$3_2$220
;src\core\vm_camera.c:40: camera_x = params->X;
;	genPointerGet
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_camera_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$vm_camera.c$41$3_2$220	= .
	.globl	C$vm_camera.c$41$3_2$220
;src\core\vm_camera.c:41: x_dest = TRUE;
;	genAssign
;	AOP_STK for _vm_camera_move_to_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	(hl), #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00111$:
	C$vm_camera.c$43$1_2$218	= .
	.globl	C$vm_camera.c$43$1_2$218
;src\core\vm_camera.c:43: } else if (camera_x < params->X) {
;	genPointerGet
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_camera_x
; common peephole 96b move inc hl before sub a, c
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through e.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00218$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00219$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00219$
00218$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00219$
	scf
00219$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00112$
;	skipping generated iCode
	C$vm_camera.c$45$2_2$221	= .
	.globl	C$vm_camera.c$45$2_2$221
;src\core\vm_camera.c:45: camera_x += speed;
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genPlus
;fetchLitPair	hl
	ld	hl, #_camera_x
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	C$vm_camera.c$46$2_2$221	= .
	.globl	C$vm_camera.c$46$2_2$221
;src\core\vm_camera.c:46: if (camera_x >= params->X) {
;	genPointerGet
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
;fetchPairLong
;	genCmpLt
;fetchLitPair	hl
; common peephole 96b move dec hl before ld b, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96d move dec hl before push (de)
; common peephole 96d move dec hl before pop (de)
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
; common peephole 96b move inc hl before sub a, c
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through e.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00220$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00221$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00221$
00220$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00221$
	scf
00221$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00112$
;	skipping generated iCode
	C$vm_camera.c$47$3_2$222	= .
	.globl	C$vm_camera.c$47$3_2$222
;src\core\vm_camera.c:47: camera_x = params->X;
;	genPointerGet
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_camera_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$vm_camera.c$48$3_2$222	= .
	.globl	C$vm_camera.c$48$3_2$222
;src\core\vm_camera.c:48: x_dest = TRUE;
;	genAssign
;	AOP_STK for _vm_camera_move_to_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	(hl), #0x01
;	genLabel
00112$:
	C$vm_camera.c$52$1_2$218	= .
	.globl	C$vm_camera.c$52$1_2$218
;src\core\vm_camera.c:52: if (camera_y > params->Y) {
;	genPlus
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
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
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_camera_y
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
	jr	Z, 00222$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00223$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00223$
00222$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00223$
	scf
00223$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00124$
;	skipping generated iCode
	C$vm_camera.c$54$2_2$223	= .
	.globl	C$vm_camera.c$54$2_2$223
;src\core\vm_camera.c:54: camera_y -= speed;
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genMinus
;fetchLitPair	hl
	ld	hl, #_camera_y
	ld	a, (hl)
	sub	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	sbc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$vm_camera.c$55$2_2$223	= .
	.globl	C$vm_camera.c$55$2_2$223
;src\core\vm_camera.c:55: if (camera_y <= params->Y) {
;	genPlus
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
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
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_camera_y
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
	jr	Z, 00224$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00225$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00225$
00224$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00225$
	scf
00225$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00125$
;	skipping generated iCode
	C$vm_camera.c$56$3_2$224	= .
	.globl	C$vm_camera.c$56$3_2$224
;src\core\vm_camera.c:56: camera_y = params->Y;
;	genPlus
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
	inc	bc
	inc	bc
;	genPointerGet
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_camera_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$vm_camera.c$57$3_2$224	= .
	.globl	C$vm_camera.c$57$3_2$224
;src\core\vm_camera.c:57: if (x_dest) {
;	genIfx
;	AOP_STK for _vm_camera_move_to_sloc1_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00125$
	C$vm_camera.c$58$4_2$225	= .
	.globl	C$vm_camera.c$58$4_2$225
;src\core\vm_camera.c:58: return;
;	genRet
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00126$
;	genLabel
00124$:
	C$vm_camera.c$61$1_2$218	= .
	.globl	C$vm_camera.c$61$1_2$218
;src\core\vm_camera.c:61: } else if (camera_y < params->Y) {
;	genPlus
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
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
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_camera_y
; common peephole 96b move inc hl before sub a, c
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through e.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00226$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00227$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00227$
00226$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00227$
	scf
00227$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00125$
;	skipping generated iCode
	C$vm_camera.c$63$2_2$226	= .
	.globl	C$vm_camera.c$63$2_2$226
;src\core\vm_camera.c:63: camera_y += speed;
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genPlus
;fetchLitPair	hl
	ld	hl, #_camera_y
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$vm_camera.c$64$2_2$226	= .
	.globl	C$vm_camera.c$64$2_2$226
;src\core\vm_camera.c:64: if (camera_y >= params->Y) {
;	genPlus
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
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
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_camera_y
; common peephole 96b move inc hl before sub a, c
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through e.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00228$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00229$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00229$
00228$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00229$
	scf
00229$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00125$
;	skipping generated iCode
	C$vm_camera.c$65$3_2$227	= .
	.globl	C$vm_camera.c$65$3_2$227
;src\core\vm_camera.c:65: camera_y = params->Y;
;	genPlus
;	AOP_STK for _vm_camera_move_to_sloc0_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
	inc	bc
	inc	bc
;	genPointerGet
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_camera_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$vm_camera.c$66$3_2$227	= .
	.globl	C$vm_camera.c$66$3_2$227
;src\core\vm_camera.c:66: if (x_dest) {
;	genIfx
;	AOP_STK for _vm_camera_move_to_sloc1_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	C$vm_camera.c$67$4_2$228	= .
	.globl	C$vm_camera.c$67$4_2$228
;src\core\vm_camera.c:67: return;
;	genRet
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00126$
; common peephole 82 removed jp by using inverse jump logic
00125$:
	C$vm_camera.c$72$1_2$218	= .
	.globl	C$vm_camera.c$72$1_2$218
;src\core\vm_camera.c:72: THIS->PC -= (INSTRUCTION_SIZE + sizeof(idx) + sizeof(speed) + sizeof(after_lock_camera));
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#9
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
	add	a, #0xfb
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
	C$vm_camera.c$73$1_2$218	= .
	.globl	C$vm_camera.c$73$1_2$218
;src\core\vm_camera.c:73: return;
;	genRet
;	genLabel
00126$:
	C$vm_camera.c$74$1_2$215	= .
	.globl	C$vm_camera.c$74$1_2$215
;src\core\vm_camera.c:74: }
;	genEndFunction
;	adjustStack by 3
	add	sp, #3
	C$vm_camera.c$74$1_2$215	= .
	.globl	C$vm_camera.c$74$1_2$215
	XG$vm_camera_move_to$0$0	= .
	.globl	XG$vm_camera_move_to$0$0
	ret
	G$vm_camera_set_pos$0$0	= .
	.globl	G$vm_camera_set_pos$0$0
	C$vm_camera.c$76$1_2$230	= .
	.globl	C$vm_camera.c$76$1_2$230
;src\core\vm_camera.c:76: void vm_camera_set_pos(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_camera_set_pos
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_camera_set_pos	= 255
_vm_camera_set_pos::
	C$vm_camera.c$77$1_0$230	= .
	.globl	C$vm_camera.c$77$1_0$230
;src\core\vm_camera.c:77: camera_position_t * params = VM_REF_TO_PTR(idx);
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
	C$vm_camera.c$78$1_0$230	= .
	.globl	C$vm_camera.c$78$1_0$230
;src\core\vm_camera.c:78: camera_x = params->X;
;	genPointerGet
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_camera_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$vm_camera.c$79$1_0$230	= .
	.globl	C$vm_camera.c$79$1_0$230
;src\core\vm_camera.c:79: camera_y = params->Y;
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_camera_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$vm_camera.c$82$1_0$230	= .
	.globl	C$vm_camera.c$82$1_0$230
;src\core\vm_camera.c:82: camera_settings &= ~(CAMERA_LOCK_FLAG);
;	genAnd
;fetchLitPair	hl
	ld	hl, #_camera_settings
	ld	a, (hl)
	and	a, #0xfc
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
	C$vm_camera.c$84$1_0$230	= .
	.globl	C$vm_camera.c$84$1_0$230
;src\core\vm_camera.c:84: scroll_update();
;	genCall
	ld	e, #b_scroll_update
	ld	hl, #_scroll_update
	C$vm_camera.c$85$1_0$230	= .
	.globl	C$vm_camera.c$85$1_0$230
;src\core\vm_camera.c:85: return;
;	genRet
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_camera.c$86$1_0$230	= .
	.globl	C$vm_camera.c$86$1_0$230
;src\core\vm_camera.c:86: }
;	genEndFunction
	C$vm_camera.c$86$1_0$230	= .
	.globl	C$vm_camera.c$86$1_0$230
	XG$vm_camera_set_pos$0$0	= .
	.globl	XG$vm_camera_set_pos$0$0
	jp  ___sdcc_bcall_ehl
; common peephole 135 replaced call at end of function by jump (tail call optimization).
	G$camera_shake_frames$0$0	= .
	.globl	G$camera_shake_frames$0$0
	C$vm_camera.c$89$1_0$232	= .
	.globl	C$vm_camera.c$89$1_0$232
;src\core\vm_camera.c:89: UBYTE camera_shake_frames(void * THIS, UBYTE start, UWORD * stack_frame) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function camera_shake_frames
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
	b_camera_shake_frames	= 255
_camera_shake_frames::
;	adjustStack by -3
	add	sp, #-3
	C$vm_camera.c$90$1_0$232	= .
	.globl	C$vm_camera.c$90$1_0$232
;src\core\vm_camera.c:90: if (start) *((SCRIPT_CTX *)THIS)->stack_ptr = sys_time;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#11
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	dec	hl
	dec	hl
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
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_sys_time
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
00102$:
	C$vm_camera.c$91$1_0$232	= .
	.globl	C$vm_camera.c$91$1_0$232
;src\core\vm_camera.c:91: if (((UWORD)sys_time - *((SCRIPT_CTX *)THIS)->stack_ptr) < stack_frame[0]) {
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_sys_time
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
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
;	genAssign
;	AOP_STK for 
;	AOP_STK for _camera_shake_frames_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#2
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _camera_shake_frames_sloc0_1_0
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
;	genCmpLt
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	NC, 00108$
;	skipping generated iCode
	C$vm_camera.c$92$2_0$233	= .
	.globl	C$vm_camera.c$92$2_0$233
;src\core\vm_camera.c:92: if (stack_frame[1] & CAMERA_SHAKE_X) {
;	genPlus
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
; common peephole 24 incremented in hl instead of bc.
	inc	hl
; common peephole 24 incremented in hl instead of bc.
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genAnd
	bit	0, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00135$.
;	skipping generated iCode
	C$vm_camera.c$93$3_0$234	= .
	.globl	C$vm_camera.c$93$3_0$234
;src\core\vm_camera.c:93: scroll_offset_x = ((rand() * ((stack_frame[2] << 1) + 1)) >> 8) - stack_frame[2];
;	genCall
;	AOP_STK for _camera_shake_frames_sloc1_1_0
	call	_rand
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), e
;	genMove_o size 0
;	genPlus
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#12
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
;	AOP_STK for _camera_shake_frames_sloc2_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#1
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genLeftShift
;	AOP_STK for _camera_shake_frames_sloc2_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;	genMove_o size 0
;	genCast
;	AOP_STK for _camera_shake_frames_sloc1_1_0
;	genMove_o size 1
; common peephole 96c move dec hl before inc bc
; common peephole 96b move dec hl before ld c, a
; common peephole 96c move dec hl before rl b
; common peephole 96b move dec hl before add a, a
	dec	hl
; common peephole 96c move dec hl before inc bc
; common peephole 96b move dec hl before ld c, a
; common peephole 96c move dec hl before rl b
; common peephole 96b move dec hl before add a, a
	dec	hl
	add	a, a
	rl	b
	ld	c, a
	inc	bc
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	__mulint
;	genMove_o size 2
;	genGetByte
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genCast
;	AOP_STK for _camera_shake_frames_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	c, (hl)
;	genMove_o size 0
;	genMinus
	sub	a, c
;fetchLitPair	hl
	ld	(#_scroll_offset_x),a
; common peephole 19 loaded (#_scroll_offset_x) from a directly instead of using hl.
;	genLabel
00104$:
	C$vm_camera.c$95$2_0$233	= .
	.globl	C$vm_camera.c$95$2_0$233
;src\core\vm_camera.c:95: if (stack_frame[1] & CAMERA_SHAKE_Y) {
;	genPlus
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
; common peephole 24 incremented in hl instead of bc.
	inc	hl
; common peephole 24 incremented in hl instead of bc.
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genAnd
	bit	1, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00137$.
;	skipping generated iCode
	C$vm_camera.c$96$3_0$235	= .
	.globl	C$vm_camera.c$96$3_0$235
;src\core\vm_camera.c:96: scroll_offset_y = ((rand() * ((stack_frame[2] << 1) + 1)) >> 8) - stack_frame[2];
;	genCall
;	AOP_STK for _camera_shake_frames_sloc3_1_0
	call	_rand
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), e
;	genMove_o size 0
;	genPlus
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#12
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
;	AOP_STK for _camera_shake_frames_sloc4_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#1
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genLeftShift
;	AOP_STK for _camera_shake_frames_sloc4_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;	genMove_o size 0
;	genCast
;	AOP_STK for _camera_shake_frames_sloc3_1_0
;	genMove_o size 1
; common peephole 96c move dec hl before inc bc
; common peephole 96b move dec hl before ld c, a
; common peephole 96c move dec hl before rl b
; common peephole 96b move dec hl before add a, a
	dec	hl
; common peephole 96c move dec hl before inc bc
; common peephole 96b move dec hl before ld c, a
; common peephole 96c move dec hl before rl b
; common peephole 96b move dec hl before add a, a
	dec	hl
	add	a, a
	rl	b
	ld	c, a
	inc	bc
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	__mulint
;	genMove_o size 2
;	genGetByte
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genCast
;	AOP_STK for _camera_shake_frames_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	c, (hl)
;	genMove_o size 0
;	genMinus
	sub	a, c
;fetchLitPair	hl
	ld	(#_scroll_offset_y),a
; common peephole 19 loaded (#_scroll_offset_y) from a directly instead of using hl.
;	genLabel
00106$:
	C$vm_camera.c$98$2_0$233	= .
	.globl	C$vm_camera.c$98$2_0$233
;src\core\vm_camera.c:98: ((SCRIPT_CTX *)THIS)->waitable = TRUE;
;	genCast
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
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x01
	C$vm_camera.c$99$2_0$233	= .
	.globl	C$vm_camera.c$99$2_0$233
;src\core\vm_camera.c:99: return FALSE;
;	genRet
;	genMove_o size 1
	ld	e, #0x00
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00108$:
	C$vm_camera.c$101$1_0$232	= .
	.globl	C$vm_camera.c$101$1_0$232
;src\core\vm_camera.c:101: scroll_offset_x = scroll_offset_y = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_scroll_offset_y
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_scroll_offset_x
	ld	(hl), #0x00
	C$vm_camera.c$102$1_0$232	= .
	.globl	C$vm_camera.c$102$1_0$232
;src\core\vm_camera.c:102: return TRUE;
;	genRet
;	genMove_o size 1
	ld	e, #0x01
;	genLabel
00109$:
	C$vm_camera.c$103$1_0$232	= .
	.globl	C$vm_camera.c$103$1_0$232
;src\core\vm_camera.c:103: }
;	genEndFunction
;	adjustStack by 3
	add	sp, #3
	C$vm_camera.c$103$1_0$232	= .
	.globl	C$vm_camera.c$103$1_0$232
	XG$camera_shake_frames$0$0	= .
	.globl	XG$camera_shake_frames$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
