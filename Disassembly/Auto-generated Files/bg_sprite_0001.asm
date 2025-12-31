;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_sprite_0001
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_sprite_0001
	.globl b___func_bg_sprite_0001
	.globl ___func_bg_sprite_0001
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
	G$__func_bg_sprite_0001$0$0	= .
	.globl	G$__func_bg_sprite_0001$0$0
	C$bg_sprite_0001.c$11$0_0$195	= .
	.globl	C$bg_sprite_0001.c$11$0_0$195
;src\data\bg_sprite_0001.c:11: BANKREF(bg_sprite_0001)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_sprite_0001
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_sprite_0001	= 255
___func_bg_sprite_0001::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_sprite_0001 
	___bank_bg_sprite_0001 = b___func_bg_sprite_0001 
	.globl ___bank_bg_sprite_0001 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_sprite_0001$0_0$0 == .
_bg_sprite_0001:
	.db #0x14	; 20
	.db #0x12	; 18
	.byte ___bank_bg_sprite_0001_tileset
	.dw _bg_sprite_0001_tileset
	.byte ___bank_bg_sprite_0001_cgb_tileset
	.dw _bg_sprite_0001_cgb_tileset
	.byte ___bank_bg_sprite_0001_tilemap
	.dw _bg_sprite_0001_tilemap
	.byte ___bank_bg_sprite_0001_tilemap_attr
	.dw _bg_sprite_0001_tilemap_attr
	.area _INITIALIZER
	.area _CABS (ABS)
