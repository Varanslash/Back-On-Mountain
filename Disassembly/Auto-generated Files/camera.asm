;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module camera
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _camera_settings
	.globl _camera_deadzone_y
	.globl _camera_deadzone_x
	.globl _camera_offset_y
	.globl _camera_offset_x
	.globl _camera_y
	.globl _camera_x
	.globl b_camera_init
	.globl _camera_init
	.globl _camera_update
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$camera_x$0_0$0==.
_camera_x::
	.ds 2
G$camera_y$0_0$0==.
_camera_y::
	.ds 2
G$camera_offset_x$0_0$0==.
_camera_offset_x::
	.ds 1
G$camera_offset_y$0_0$0==.
_camera_offset_y::
	.ds 1
G$camera_deadzone_x$0_0$0==.
_camera_deadzone_x::
	.ds 1
G$camera_deadzone_y$0_0$0==.
_camera_deadzone_y::
	.ds 1
G$camera_settings$0_0$0==.
_camera_settings::
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	G$camera_update$0$0	= .
	.globl	G$camera_update$0$0
	C$camera.c$25$3_0$231	= .
	.globl	C$camera.c$25$3_0$231
;src\core\camera.c:25: void camera_update(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function camera_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_camera_update::
	C$camera.c$26$1_0$231	= .
	.globl	C$camera.c$26$1_0$231
;src\core\camera.c:26: if ((camera_settings & CAMERA_LOCK_X_FLAG)) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_settings)
; common peephole 17 loaded a from (#_camera_settings) directly instead of using hl.
;	genAnd
	rrca
	jp	NC,00107$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00153$.
;	skipping generated iCode
	C$camera.c$27$2_0$232	= .
	.globl	C$camera.c$27$2_0$232
;src\core\camera.c:27: UWORD a_x = PLAYER.pos.x + CAMERA_FIXED_OFFSET_X;
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0080
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	C$camera.c$29$2_0$232	= .
	.globl	C$camera.c$29$2_0$232
;src\core\camera.c:29: if (camera_x < a_x - (camera_deadzone_x << 4) - (camera_offset_x << 4)) { 
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_deadzone_x)
; common peephole 17 loaded a from (#_camera_deadzone_x) directly instead of using hl.
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, c
	sub	a, l
	ld	e, a
	ld	a, b
	sbc	a, h
	ld	d, a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_offset_x)
; common peephole 17 loaded a from (#_camera_offset_x) directly instead of using hl.
	push	af
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	pop	af
;	genLeftShift
;fetchPairLong
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_camera_x
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_camera_x + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCmpLt
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00104$
;	skipping generated iCode
	C$camera.c$30$3_0$233	= .
	.globl	C$camera.c$30$3_0$233
;src\core\camera.c:30: camera_x = a_x - (camera_deadzone_x << 4) - (camera_offset_x << 4);
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_deadzone_x)
; common peephole 17 loaded a from (#_camera_deadzone_x) directly instead of using hl.
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_offset_x)
; common peephole 17 loaded a from (#_camera_offset_x) directly instead of using hl.
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genMinus
	ld	a, c
	sub	a, e
;fetchLitPair	hl
	ld	hl, #_camera_x
;fetchLitPair	hl
; common peephole 96b move inc hl before sbc a, d
; common peephole 96b move inc hl before ld a, b
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, b
	sbc	a, d
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00104$:
	C$camera.c$31$2_0$232	= .
	.globl	C$camera.c$31$2_0$232
;src\core\camera.c:31: } else if (camera_x > a_x + (camera_deadzone_x << 4) - (camera_offset_x << 4)) { 
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_deadzone_x)
; common peephole 17 loaded a from (#_camera_deadzone_x) directly instead of using hl.
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_offset_x)
; common peephole 17 loaded a from (#_camera_offset_x) directly instead of using hl.
	push	af
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	pop	af
;	genLeftShift
;fetchPairLong
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_camera_x
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_camera_x + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCmpGt
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00107$
;	skipping generated iCode
	C$camera.c$32$3_0$234	= .
	.globl	C$camera.c$32$3_0$234
;src\core\camera.c:32: camera_x = a_x + (camera_deadzone_x << 4) - (camera_offset_x << 4);
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_deadzone_x)
; common peephole 17 loaded a from (#_camera_deadzone_x) directly instead of using hl.
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_offset_x)
; common peephole 17 loaded a from (#_camera_offset_x) directly instead of using hl.
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genMinus
	ld	a, c
	sub	a, e
;fetchLitPair	hl
	ld	hl, #_camera_x
;fetchLitPair	hl
; common peephole 96b move inc hl before sbc a, d
; common peephole 96b move inc hl before ld a, b
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, b
	sbc	a, d
	ld	(hl), a
;	genLabel
00107$:
	C$camera.c$36$1_0$231	= .
	.globl	C$camera.c$36$1_0$231
;src\core\camera.c:36: if ((camera_settings & CAMERA_LOCK_Y_FLAG)) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_settings)
; common peephole 17 loaded a from (#_camera_settings) directly instead of using hl.
;	genAnd
	bit	1, a
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00154$.
;	skipping generated iCode
	C$camera.c$37$2_0$235	= .
	.globl	C$camera.c$37$2_0$235
;src\core\camera.c:37: UWORD a_y = PLAYER.pos.y + CAMERA_FIXED_OFFSET_Y;
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0080
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	C$camera.c$39$2_0$235	= .
	.globl	C$camera.c$39$2_0$235
;src\core\camera.c:39: if (camera_y < a_y - (camera_deadzone_y << 4) - (camera_offset_y << 4)) { 
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_deadzone_y)
; common peephole 17 loaded a from (#_camera_deadzone_y) directly instead of using hl.
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, c
	sub	a, l
	ld	e, a
	ld	a, b
	sbc	a, h
	ld	d, a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_offset_y)
; common peephole 17 loaded a from (#_camera_offset_y) directly instead of using hl.
	push	af
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	pop	af
;	genLeftShift
;fetchPairLong
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_camera_y
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_camera_y + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCmpLt
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00111$
;	skipping generated iCode
	C$camera.c$40$3_0$236	= .
	.globl	C$camera.c$40$3_0$236
;src\core\camera.c:40: camera_y = a_y - (camera_deadzone_y << 4) - (camera_offset_y << 4);
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_deadzone_y)
; common peephole 17 loaded a from (#_camera_deadzone_y) directly instead of using hl.
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_offset_y)
; common peephole 17 loaded a from (#_camera_offset_y) directly instead of using hl.
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genMinus
	ld	a, c
	sub	a, e
;fetchLitPair	hl
	ld	hl, #_camera_y
;fetchLitPair	hl
; common peephole 96b move inc hl before sbc a, d
; common peephole 96b move inc hl before ld a, b
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, b
	sbc	a, d
	ld	(hl), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00111$:
	C$camera.c$41$2_0$235	= .
	.globl	C$camera.c$41$2_0$235
;src\core\camera.c:41: } else if (camera_y > a_y + (camera_deadzone_y << 4) - (camera_offset_y << 4)) { 
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_deadzone_y)
; common peephole 17 loaded a from (#_camera_deadzone_y) directly instead of using hl.
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_offset_y)
; common peephole 17 loaded a from (#_camera_offset_y) directly instead of using hl.
	push	af
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	pop	af
;	genLeftShift
;fetchPairLong
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_camera_y
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_camera_y + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCmpGt
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	ret	NC
; common peephole 161 replaced jump by return.
;	skipping generated iCode
	C$camera.c$42$3_0$237	= .
	.globl	C$camera.c$42$3_0$237
;src\core\camera.c:42: camera_y = a_y + (camera_deadzone_y << 4) - (camera_offset_y << 4);
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_deadzone_y)
; common peephole 17 loaded a from (#_camera_deadzone_y) directly instead of using hl.
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_offset_y)
; common peephole 17 loaded a from (#_camera_offset_y) directly instead of using hl.
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genMinus
	ld	a, c
	sub	a, e
;fetchLitPair	hl
	ld	hl, #_camera_y
;fetchLitPair	hl
; common peephole 96b move inc hl before sbc a, d
; common peephole 96b move inc hl before ld a, b
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, b
	sbc	a, d
	ld	(hl), a
;	genLabel
; common peephole 158 removed unused label 00115$.
	C$camera.c$45$1_0$231	= .
	.globl	C$camera.c$45$1_0$231
;src\core\camera.c:45: }
;	genEndFunction
	C$camera.c$45$1_0$231	= .
	.globl	C$camera.c$45$1_0$231
	XG$camera_update$0$0	= .
	.globl	XG$camera_update$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$camera_init$0$0	= .
	.globl	G$camera_init$0$0
	C$camera.c$18$0_0$226	= .
	.globl	C$camera.c$18$0_0$226
;src\core\camera.c:18: void camera_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function camera_init
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_camera_init	= 255
_camera_init::
	C$camera.c$19$1_0$226	= .
	.globl	C$camera.c$19$1_0$226
;src\core\camera.c:19: camera_settings = CAMERA_LOCK_FLAG;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_camera_settings
	ld	(hl), #0x03
	C$camera.c$20$1_0$226	= .
	.globl	C$camera.c$20$1_0$226
;src\core\camera.c:20: camera_x = camera_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_camera_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_camera_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$camera.c$21$1_0$226	= .
	.globl	C$camera.c$21$1_0$226
;src\core\camera.c:21: camera_offset_x = camera_offset_y = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_camera_offset_y
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_camera_offset_x
	ld	(hl), #0x00
;include/camera.h:27: camera_deadzone_x = camera_deadzone_y = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_camera_deadzone_y
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_camera_deadzone_x
	ld	(hl), #0x00
	C$camera.c$22$3_0$226	= .
	.globl	C$camera.c$22$3_0$226
;src\core\camera.c:22: camera_reset();
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$camera.c$23$3_0$226	= .
	.globl	C$camera.c$23$3_0$226
;src\core\camera.c:23: }
;	genEndFunction
	C$camera.c$23$3_0$226	= .
	.globl	C$camera.c$23$3_0$226
	XG$camera_init$0$0	= .
	.globl	XG$camera_init$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
