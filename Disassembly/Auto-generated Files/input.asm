;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module input
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _joypad
	.globl _memset
	.globl _recent_joy
	.globl _last_joy
	.globl _frame_joy
	.globl _joypads
	.globl b_input_init
	.globl _input_init
	.globl _input_update
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$joypads$0_0$0==.
_joypads::
	.ds 5
G$frame_joy$0_0$0==.
_frame_joy::
	.ds 1
G$last_joy$0_0$0==.
_last_joy::
	.ds 1
G$recent_joy$0_0$0==.
_recent_joy::
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
	G$input_update$0$0	= .
	.globl	G$input_update$0$0
	C$input.c$23$1_0$152	= .
	.globl	C$input.c$23$1_0$152
;src\core\input.c:23: void input_update(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function input_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_input_update::
	C$input.c$24$1_0$152	= .
	.globl	C$input.c$24$1_0$152
;src\core\input.c:24: last_joy = joypads.joy0;
;	genAddrOf
	ld	bc, #_joypads+1
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_last_joy),a
; common peephole 19 loaded (#_last_joy) from a directly instead of using hl.
	C$input.c$29$1_0$152	= .
	.globl	C$input.c$29$1_0$152
;src\core\input.c:29: joypads.joy0 = joy = joypad();
;	genCall
	call	_joypad
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
;	genAssign (pointer)
	C$input.c$31$1_0$152	= .
	.globl	C$input.c$31$1_0$152
;src\core\input.c:31: if ((joy ^ last_joy) & INPUT_DPAD)
;	genXor
;fetchLitPair	hl
	ld	(#_frame_joy),a
; common peephole 19 loaded (#_frame_joy) from a directly instead of using hl.
	ld	(bc), a
; common peephole 0b removed redundant load from (hl) back into a.
;fetchLitPair	hl
	ld	hl, #_last_joy
	xor	a, (hl)
;	genMove_o size 1
;	genAnd
	and	a, #0x0f
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00111$.
;	skipping generated iCode
	C$input.c$32$1_0$152	= .
	.globl	C$input.c$32$1_0$152
;src\core\input.c:32: recent_joy = ((joy & ~last_joy) & INPUT_DPAD);
;	genCpl
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
	cpl
;	genMove_o size 1
;	genAnd
;fetchLitPair	hl
	ld	hl, #_frame_joy
	and	a, (hl)
;	genMove_o size 1
;	genAnd
	and	a, #0x0f
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_recent_joy),a
; common peephole 19 loaded (#_recent_joy) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$input.c$33$1_0$152	= .
	.globl	C$input.c$33$1_0$152
;src\core\input.c:33: }
;	genEndFunction
	C$input.c$33$1_0$152	= .
	.globl	C$input.c$33$1_0$152
	XG$input_update$0$0	= .
	.globl	XG$input_update$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$input_init$0$0	= .
	.globl	G$input_init$0$0
	C$input.c$11$0_0$150	= .
	.globl	C$input.c$11$0_0$150
;src\core\input.c:11: void input_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function input_init
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_input_init	= 255
_input_init::
	C$input.c$12$1_0$150	= .
	.globl	C$input.c$12$1_0$150
;src\core\input.c:12: memset(&joypads, 0, sizeof(joypads));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0005
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_joypads
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
	C$input.c$13$1_0$150	= .
	.globl	C$input.c$13$1_0$150
;src\core\input.c:13: last_joy = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_joy
	ld	(hl), #0x00
	C$input.c$14$1_0$150	= .
	.globl	C$input.c$14$1_0$150
;src\core\input.c:14: frame_joy = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_frame_joy
	ld	(hl), #0x00
	C$input.c$15$1_0$150	= .
	.globl	C$input.c$15$1_0$150
;src\core\input.c:15: recent_joy = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_recent_joy
	ld	(hl), #0x00
	C$input.c$19$1_0$150	= .
	.globl	C$input.c$19$1_0$150
;src\core\input.c:19: joypads.npads = 1;
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_joypads
	ld	(hl), #0x01
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$input.c$21$1_0$150	= .
	.globl	C$input.c$21$1_0$150
;src\core\input.c:21: }
;	genEndFunction
	C$input.c$21$1_0$150	= .
	.globl	C$input.c$21$1_0$150
	XG$input_init$0$0	= .
	.globl	XG$input_init$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
