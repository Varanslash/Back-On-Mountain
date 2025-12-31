;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_gbutton
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_gbutton
	.globl _sprite_gbutton_animations_lookup
	.globl _sprite_gbutton_animations
	.globl _sprite_gbutton_metasprites
	.globl _sprite_gbutton_metasprite_0
	.globl b___func_sprite_gbutton
	.globl ___func_sprite_gbutton
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
	G$__func_sprite_gbutton$0$0	= .
	.globl	G$__func_sprite_gbutton$0$0
	C$sprite_gbutton.c$8$0_0$195	= .
	.globl	C$sprite_gbutton.c$8$0_0$195
;src\data\sprite_gbutton.c:8: BANKREF(sprite_gbutton)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_gbutton
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_gbutton	= 255
___func_sprite_gbutton::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_gbutton 
	___bank_sprite_gbutton = b___func_sprite_gbutton 
	.globl ___bank_sprite_gbutton 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_gbutton_metasprite_0$0_0$0 == .
_sprite_gbutton_metasprite_0:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_gbutton_metasprites$0_0$0 == .
_sprite_gbutton_metasprites:
	.dw _sprite_gbutton_metasprite_0
G$sprite_gbutton_animations$0_0$0 == .
_sprite_gbutton_animations:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_gbutton_animations_lookup$0_0$0 == .
_sprite_gbutton_animations_lookup:
	.dw #0x0000
G$sprite_gbutton$0_0$0 == .
_sprite_gbutton:
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0xf0	; -16
	.dw _sprite_gbutton_metasprites
	.dw _sprite_gbutton_animations
	.dw _sprite_gbutton_animations_lookup
	.db #0x00	;  0
	.db #0x0f	;  15
	.db #0xf8	; -8
	.db #0x07	;  7
	.byte ___bank_sprite_gbutton_tileset
	.dw _sprite_gbutton_tileset
	.byte ___bank_sprite_gbutton_bank2_tileset
	.dw _sprite_gbutton_bank2_tileset
	.area _INITIALIZER
	.area _CABS (ABS)
