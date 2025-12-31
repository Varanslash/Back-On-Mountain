;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_timmy
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_timmy
	.globl _sprite_timmy_animations_lookup
	.globl _sprite_timmy_animations
	.globl _sprite_timmy_metasprites
	.globl _sprite_timmy_metasprite_0
	.globl b___func_sprite_timmy
	.globl ___func_sprite_timmy
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
	G$__func_sprite_timmy$0$0	= .
	.globl	G$__func_sprite_timmy$0$0
	C$sprite_timmy.c$8$0_0$195	= .
	.globl	C$sprite_timmy.c$8$0_0$195
;src\data\sprite_timmy.c:8: BANKREF(sprite_timmy)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_timmy
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_timmy	= 255
___func_sprite_timmy::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_timmy 
	___bank_sprite_timmy = b___func_sprite_timmy 
	.globl ___bank_sprite_timmy 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_timmy_metasprite_0$0_0$0 == .
_sprite_timmy_metasprite_0:
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
G$sprite_timmy_metasprites$0_0$0 == .
_sprite_timmy_metasprites:
	.dw _sprite_timmy_metasprite_0
G$sprite_timmy_animations$0_0$0 == .
_sprite_timmy_animations:
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
G$sprite_timmy_animations_lookup$0_0$0 == .
_sprite_timmy_animations_lookup:
	.dw #0x0000
G$sprite_timmy$0_0$0 == .
_sprite_timmy:
	.db #0x01	; 1
	.db #0x00	;  0
	.db #0xf0	; -16
	.dw _sprite_timmy_metasprites
	.dw _sprite_timmy_animations
	.dw _sprite_timmy_animations_lookup
	.db #0x00	;  0
	.db #0x0f	;  15
	.db #0xf8	; -8
	.db #0x07	;  7
	.byte ___bank_sprite_timmy_tileset
	.dw _sprite_timmy_tileset
	.byte ___bank_sprite_timmy_bank2_tileset
	.dw _sprite_timmy_bank2_tileset
	.area _INITIALIZER
	.area _CABS (ABS)
