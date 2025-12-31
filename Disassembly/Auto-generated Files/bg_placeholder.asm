;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_placeholder
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_placeholder
	.globl b___func_bg_placeholder
	.globl ___func_bg_placeholder
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
	G$__func_bg_placeholder$0$0	= .
	.globl	G$__func_bg_placeholder$0$0
	C$bg_placeholder.c$10$0_0$195	= .
	.globl	C$bg_placeholder.c$10$0_0$195
;src\data\bg_placeholder.c:10: BANKREF(bg_placeholder)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_placeholder
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_placeholder	= 255
___func_bg_placeholder::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_placeholder 
	___bank_bg_placeholder = b___func_bg_placeholder 
	.globl ___bank_bg_placeholder 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_placeholder$0_0$0 == .
_bg_placeholder:
	.db #0x14	; 20
	.db #0x12	; 18
	.byte ___bank_bg_placeholder_tileset
	.dw _bg_placeholder_tileset
	.db #0x00	; 0
	.dw #0x0000
	.byte ___bank_bg_placeholder_tilemap
	.dw _bg_placeholder_tilemap
	.byte ___bank_bg_placeholder_tilemap_attr
	.dw _bg_placeholder_tilemap_attr
	.area _INITIALIZER
	.area _CABS (ABS)
