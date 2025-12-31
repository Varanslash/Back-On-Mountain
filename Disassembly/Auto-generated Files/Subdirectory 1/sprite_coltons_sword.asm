;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_coltons_sword
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_coltons_sword
	.globl _sprite_coltons_sword_animations_lookup
	.globl _sprite_coltons_sword_animations
	.globl _sprite_coltons_sword_metasprites
	.globl _sprite_coltons_sword_metasprite_3
	.globl _sprite_coltons_sword_metasprite_2
	.globl _sprite_coltons_sword_metasprite_1
	.globl _sprite_coltons_sword_metasprite_0
	.globl b___func_sprite_coltons_sword
	.globl ___func_sprite_coltons_sword
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
	G$__func_sprite_coltons_sword$0$0	= .
	.globl	G$__func_sprite_coltons_sword$0$0
	C$sprite_coltons_sword.c$8$0_0$195	= .
	.globl	C$sprite_coltons_sword.c$8$0_0$195
;src\data\sprite_coltons_sword.c:8: BANKREF(sprite_coltons_sword)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_coltons_sword
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_coltons_sword	= 255
___func_sprite_coltons_sword::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_coltons_sword 
	___bank_sprite_coltons_sword = b___func_sprite_coltons_sword 
	.globl ___bank_sprite_coltons_sword 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_coltons_sword_metasprite_0$0_0$0 == .
_sprite_coltons_sword_metasprite_0:
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_coltons_sword_metasprite_1$0_0$0 == .
_sprite_coltons_sword_metasprite_1:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	;  0
	.db #0xf8	; -8
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_coltons_sword_metasprite_2$0_0$0 == .
_sprite_coltons_sword_metasprite_2:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x00	;  0
	.db #0xf8	; -8
	.db #0x02	; 2
	.db #0x0e	; 14
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_coltons_sword_metasprite_3$0_0$0 == .
_sprite_coltons_sword_metasprite_3:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x26	; 38
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_coltons_sword_metasprites$0_0$0 == .
_sprite_coltons_sword_metasprites:
	.dw _sprite_coltons_sword_metasprite_0
	.dw _sprite_coltons_sword_metasprite_1
	.dw _sprite_coltons_sword_metasprite_2
	.dw _sprite_coltons_sword_metasprite_3
G$sprite_coltons_sword_animations$0_0$0 == .
_sprite_coltons_sword_animations:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
G$sprite_coltons_sword_animations_lookup$0_0$0 == .
_sprite_coltons_sword_animations_lookup:
	.dw #0x0000
G$sprite_coltons_sword$0_0$0 == .
_sprite_coltons_sword:
	.db #0x04	; 4
	.db #0x00	;  0
	.db #0xf0	; -16
	.dw _sprite_coltons_sword_metasprites
	.dw _sprite_coltons_sword_animations
	.dw _sprite_coltons_sword_animations_lookup
	.db #0x00	;  0
	.db #0x0f	;  15
	.db #0xf8	; -8
	.db #0x07	;  7
	.byte ___bank_sprite_coltons_sword_tileset
	.dw _sprite_coltons_sword_tileset
	.byte ___bank_sprite_coltons_sword_bank2_tileset
	.dw _sprite_coltons_sword_bank2_tileset
	.area _INITIALIZER
	.area _CABS (ABS)
