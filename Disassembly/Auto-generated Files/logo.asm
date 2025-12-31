;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module logo
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_logo_init
	.globl _logo_init
	.globl b_logo_update
	.globl _logo_update
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
	G$logo_init$0$0	= .
	.globl	G$logo_init$0$0
	C$logo.c$9$0_0$142	= .
	.globl	C$logo.c$9$0_0$142
;src\states\logo.c:9: void logo_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function logo_init
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_logo_init	= 255
_logo_init::
	C$logo.c$10$1_0$142	= .
	.globl	C$logo.c$10$1_0$142
;src\states\logo.c:10: camera_offset_x = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_camera_offset_x
	ld	(hl), #0x00
	C$logo.c$11$1_0$142	= .
	.globl	C$logo.c$11$1_0$142
;src\states\logo.c:11: camera_offset_y = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_camera_offset_y
	ld	(hl), #0x00
	C$logo.c$13$1_0$142	= .
	.globl	C$logo.c$13$1_0$142
;src\states\logo.c:13: game_time = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_game_time
	ld	(hl), #0x00
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$logo.c$14$1_0$142	= .
	.globl	C$logo.c$14$1_0$142
;src\states\logo.c:14: }
;	genEndFunction
	C$logo.c$14$1_0$142	= .
	.globl	C$logo.c$14$1_0$142
	XG$logo_init$0$0	= .
	.globl	XG$logo_init$0$0
	ret
	G$logo_update$0$0	= .
	.globl	G$logo_update$0$0
	C$logo.c$16$1_0$144	= .
	.globl	C$logo.c$16$1_0$144
;src\states\logo.c:16: void logo_update(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function logo_update
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_logo_update	= 255
_logo_update::
	C$logo.c$17$1_0$144	= .
	.globl	C$logo.c$17$1_0$144
;src\states\logo.c:17: return;
;	genRet
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$logo.c$18$1_0$144	= .
	.globl	C$logo.c$18$1_0$144
;src\states\logo.c:18: }
;	genEndFunction
	C$logo.c$18$1_0$144	= .
	.globl	C$logo.c$18$1_0$144
	XG$logo_update$0$0	= .
	.globl	XG$logo_update$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
