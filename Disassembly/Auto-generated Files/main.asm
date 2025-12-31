;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _core_reset_hook
	.globl b_core_run
	.globl _core_run
	.globl b_core_reset
	.globl _core_reset
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
	.area _CODE
	G$core_reset_hook$0$0	= .
	.globl	G$core_reset_hook$0$0
	C$main.c$3$0_0$138	= .
	.globl	C$main.c$3$0_0$138
;src\main.c:3: void core_reset_hook(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function core_reset_hook
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_core_reset_hook::
	C$main.c$4$1_0$138	= .
	.globl	C$main.c$4$1_0$138
;src\main.c:4: core_reset();
;	genCall
	ld	e, #b_core_reset
	ld	hl, #_core_reset
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$main.c$5$1_0$138	= .
	.globl	C$main.c$5$1_0$138
;src\main.c:5: }
;	genEndFunction
	C$main.c$5$1_0$138	= .
	.globl	C$main.c$5$1_0$138
	XG$core_reset_hook$0$0	= .
	.globl	XG$core_reset_hook$0$0
	jp  ___sdcc_bcall_ehl
; common peephole 135 replaced call at end of function by jump (tail call optimization).
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$7$1_0$140	= .
	.globl	C$main.c$7$1_0$140
;src\main.c:7: void main(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function main
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_main::
	C$main.c$8$1_0$140	= .
	.globl	C$main.c$8$1_0$140
;src\main.c:8: core_run();
;	genCall
	ld	e, #b_core_run
	ld	hl, #_core_run
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$main.c$9$1_0$140	= .
	.globl	C$main.c$9$1_0$140
;src\main.c:9: }
;	genEndFunction
	C$main.c$9$1_0$140	= .
	.globl	C$main.c$9$1_0$140
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jp  ___sdcc_bcall_ehl
; common peephole 135 replaced call at end of function by jump (tail call optimization).
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
