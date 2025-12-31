;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_gravity_suit
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_gravity_suit
	.globl _sprite_gravity_suit_animations_lookup
	.globl _sprite_gravity_suit_animations
	.globl _sprite_gravity_suit_metasprites
	.globl _sprite_gravity_suit_metasprite_9
	.globl _sprite_gravity_suit_metasprite_8
	.globl _sprite_gravity_suit_metasprite_7
	.globl _sprite_gravity_suit_metasprite_6
	.globl _sprite_gravity_suit_metasprite_5
	.globl _sprite_gravity_suit_metasprite_4
	.globl _sprite_gravity_suit_metasprite_3
	.globl _sprite_gravity_suit_metasprite_2
	.globl _sprite_gravity_suit_metasprite_1
	.globl _sprite_gravity_suit_metasprite_0
	.globl b___func_sprite_gravity_suit
	.globl ___func_sprite_gravity_suit
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
	G$__func_sprite_gravity_suit$0$0	= .
	.globl	G$__func_sprite_gravity_suit$0$0
	C$sprite_gravity_suit.c$8$0_0$195	= .
	.globl	C$sprite_gravity_suit.c$8$0_0$195
;src\data\sprite_gravity_suit.c:8: BANKREF(sprite_gravity_suit)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_gravity_suit
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_gravity_suit	= 255
___func_sprite_gravity_suit::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_gravity_suit 
	___bank_sprite_gravity_suit = b___func_sprite_gravity_suit 
	.globl ___bank_sprite_gravity_suit 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_gravity_suit_metasprite_0$0_0$0 == .
_sprite_gravity_suit_metasprite_0:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x27	; 39
	.db #0x00	;  0
	.db #0xf8	; -8
	.db #0x04	; 4
	.db #0x27	; 39
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_gravity_suit_metasprite_1$0_0$0 == .
_sprite_gravity_suit_metasprite_1:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	;  0
	.db #0xf8	; -8
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_gravity_suit_metasprite_2$0_0$0 == .
_sprite_gravity_suit_metasprite_2:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_gravity_suit_metasprite_3$0_0$0 == .
_sprite_gravity_suit_metasprite_3:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x27	; 39
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_gravity_suit_metasprite_4$0_0$0 == .
_sprite_gravity_suit_metasprite_4:
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_gravity_suit_metasprite_5$0_0$0 == .
_sprite_gravity_suit_metasprite_5:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_gravity_suit_metasprite_6$0_0$0 == .
_sprite_gravity_suit_metasprite_6:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_gravity_suit_metasprite_7$0_0$0 == .
_sprite_gravity_suit_metasprite_7:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x02	; 2
	.db #0x0f	; 15
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_gravity_suit_metasprite_8$0_0$0 == .
_sprite_gravity_suit_metasprite_8:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x27	; 39
	.db #0x00	;  0
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_gravity_suit_metasprite_9$0_0$0 == .
_sprite_gravity_suit_metasprite_9:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x27	; 39
	.db #0x00	;  0
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_gravity_suit_metasprites$0_0$0 == .
_sprite_gravity_suit_metasprites:
	.dw _sprite_gravity_suit_metasprite_0
	.dw _sprite_gravity_suit_metasprite_1
	.dw _sprite_gravity_suit_metasprite_2
	.dw _sprite_gravity_suit_metasprite_3
	.dw _sprite_gravity_suit_metasprite_4
	.dw _sprite_gravity_suit_metasprite_5
	.dw _sprite_gravity_suit_metasprite_6
	.dw _sprite_gravity_suit_metasprite_7
	.dw _sprite_gravity_suit_metasprite_8
	.dw _sprite_gravity_suit_metasprite_9
G$sprite_gravity_suit_animations$0_0$0 == .
_sprite_gravity_suit_animations:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
G$sprite_gravity_suit_animations_lookup$0_0$0 == .
_sprite_gravity_suit_animations_lookup:
	.dw #0x0000
G$sprite_gravity_suit$0_0$0 == .
_sprite_gravity_suit:
	.db #0x0a	; 10
	.db #0x00	;  0
	.db #0xf0	; -16
	.dw _sprite_gravity_suit_metasprites
	.dw _sprite_gravity_suit_animations
	.dw _sprite_gravity_suit_animations_lookup
	.db #0x00	;  0
	.db #0x0f	;  15
	.db #0x00	;  0
	.db #0x07	;  7
	.byte ___bank_sprite_gravity_suit_tileset
	.dw _sprite_gravity_suit_tileset
	.byte ___bank_sprite_gravity_suit_bank2_tileset
	.dw _sprite_gravity_suit_bank2_tileset
	.area _INITIALIZER
	.area _CABS (ABS)
