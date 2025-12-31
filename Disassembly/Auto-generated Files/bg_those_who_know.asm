;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_those_who_know
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_those_who_know
	.globl b___func_bg_those_who_know
	.globl ___func_bg_those_who_know
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
	G$__func_bg_those_who_know$0$0	= .
	.globl	G$__func_bg_those_who_know$0$0
	C$bg_those_who_know.c$10$0_0$195	= .
	.globl	C$bg_those_who_know.c$10$0_0$195
;src\data\bg_those_who_know.c:10: BANKREF(bg_those_who_know)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_those_who_know
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_those_who_know	= 255
___func_bg_those_who_know::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_those_who_know 
	___bank_bg_those_who_know = b___func_bg_those_who_know 
	.globl ___bank_bg_those_who_know 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_those_who_know$0_0$0 == .
_bg_those_who_know:
	.db #0x22	; 34
	.db #0x12	; 18
	.byte ___bank_bg_those_who_know_tileset
	.dw _bg_those_who_know_tileset
	.db #0x00	; 0
	.dw #0x0000
	.byte ___bank_bg_those_who_know_tilemap
	.dw _bg_those_who_know_tilemap
	.byte ___bank_bg_those_who_know_tilemap_attr
	.dw _bg_those_who_know_tilemap_attr
	.area _INITIALIZER
	.area _CABS (ABS)
