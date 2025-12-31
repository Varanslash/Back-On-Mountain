;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_signs
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_signs
	.globl _sprite_signs_animations_lookup
	.globl _sprite_signs_animations
	.globl _sprite_signs_metasprites
	.globl _sprite_signs_metasprite_0
	.globl b___func_sprite_signs
	.globl ___func_sprite_signs
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
	G$__func_sprite_signs$0$0	= .
	.globl	G$__func_sprite_signs$0$0
	C$sprite_signs.c$8$0_0$195	= .
	.globl	C$sprite_signs.c$8$0_0$195
;src\data\sprite_signs.c:8: BANKREF(sprite_signs)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_signs
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_signs	= 255
___func_sprite_signs::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_signs 
	___bank_sprite_signs = b___func_sprite_signs 
	.globl ___bank_sprite_signs 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_signs_metasprite_0$0_0$0 == .
_sprite_signs_metasprite_0:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	;  0
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_signs_metasprites$0_0$0 == .
_sprite_signs_metasprites:
	.dw _sprite_signs_metasprite_0
G$sprite_signs_animations$0_0$0 == .
_sprite_signs_animations:
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
G$sprite_signs_animations_lookup$0_0$0 == .
_sprite_signs_animations_lookup:
	.dw #0x0000
G$sprite_signs$0_0$0 == .
_sprite_signs:
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0xf0	; -16
	.dw _sprite_signs_metasprites
	.dw _sprite_signs_animations
	.dw _sprite_signs_animations_lookup
	.db #0x00	;  0
	.db #0x0f	;  15
	.db #0xf8	; -8
	.db #0x07	;  7
	.byte ___bank_sprite_signs_tileset
	.dw _sprite_signs_tileset
	.byte ___bank_sprite_signs_bank2_tileset
	.dw _sprite_signs_bank2_tileset
	.area _INITIALIZER
	.area _CABS (ABS)
