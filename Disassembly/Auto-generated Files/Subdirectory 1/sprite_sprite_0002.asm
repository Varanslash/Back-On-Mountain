;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_sprite_0002
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_sprite_0002
	.globl _sprite_sprite_0002_animations_lookup
	.globl _sprite_sprite_0002_animations
	.globl _sprite_sprite_0002_metasprites
	.globl _sprite_sprite_0002_metasprite_0
	.globl b___func_sprite_sprite_0002
	.globl ___func_sprite_sprite_0002
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
	G$__func_sprite_sprite_0002$0$0	= .
	.globl	G$__func_sprite_sprite_0002$0$0
	C$sprite_sprite_0002.c$8$0_0$195	= .
	.globl	C$sprite_sprite_0002.c$8$0_0$195
;src\data\sprite_sprite_0002.c:8: BANKREF(sprite_sprite_0002)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_sprite_0002
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_sprite_0002	= 255
___func_sprite_sprite_0002::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_sprite_0002 
	___bank_sprite_sprite_0002 = b___func_sprite_sprite_0002 
	.globl ___bank_sprite_sprite_0002 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_sprite_0002_metasprite_0$0_0$0 == .
_sprite_sprite_0002_metasprite_0:
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
G$sprite_sprite_0002_metasprites$0_0$0 == .
_sprite_sprite_0002_metasprites:
	.dw _sprite_sprite_0002_metasprite_0
G$sprite_sprite_0002_animations$0_0$0 == .
_sprite_sprite_0002_animations:
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
G$sprite_sprite_0002_animations_lookup$0_0$0 == .
_sprite_sprite_0002_animations_lookup:
	.dw #0x0000
G$sprite_sprite_0002$0_0$0 == .
_sprite_sprite_0002:
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0xf0	; -16
	.dw _sprite_sprite_0002_metasprites
	.dw _sprite_sprite_0002_animations
	.dw _sprite_sprite_0002_animations_lookup
	.db #0x00	;  0
	.db #0x0f	;  15
	.db #0xf8	; -8
	.db #0x07	;  7
	.byte ___bank_sprite_sprite_0002_tileset
	.dw _sprite_sprite_0002_tileset
	.byte ___bank_sprite_sprite_0002_bank2_tileset
	.dw _sprite_sprite_0002_bank2_tileset
	.area _INITIALIZER
	.area _CABS (ABS)
