;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_npc_ssmol_4
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_npc_ssmol_4
	.globl _sprite_npc_ssmol_4_animations_lookup
	.globl _sprite_npc_ssmol_4_animations
	.globl _sprite_npc_ssmol_4_metasprites
	.globl _sprite_npc_ssmol_4_metasprite_2
	.globl _sprite_npc_ssmol_4_metasprite_1
	.globl _sprite_npc_ssmol_4_metasprite_0
	.globl b___func_sprite_npc_ssmol_4
	.globl ___func_sprite_npc_ssmol_4
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
	G$__func_sprite_npc_ssmol_4$0$0	= .
	.globl	G$__func_sprite_npc_ssmol_4$0$0
	C$sprite_npc_ssmol_4.c$8$0_0$195	= .
	.globl	C$sprite_npc_ssmol_4.c$8$0_0$195
;src\data\sprite_npc_ssmol_4.c:8: BANKREF(sprite_npc_ssmol_4)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_npc_ssmol_4
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_npc_ssmol_4	= 255
___func_sprite_npc_ssmol_4::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_npc_ssmol_4 
	___bank_sprite_npc_ssmol_4 = b___func_sprite_npc_ssmol_4 
	.globl ___bank_sprite_npc_ssmol_4 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_npc_ssmol_4_metasprite_0$0_0$0 == .
_sprite_npc_ssmol_4_metasprite_0:
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_npc_ssmol_4_metasprite_1$0_0$0 == .
_sprite_npc_ssmol_4_metasprite_1:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	;  0
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_npc_ssmol_4_metasprite_2$0_0$0 == .
_sprite_npc_ssmol_4_metasprite_2:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_npc_ssmol_4_metasprites$0_0$0 == .
_sprite_npc_ssmol_4_metasprites:
	.dw _sprite_npc_ssmol_4_metasprite_0
	.dw _sprite_npc_ssmol_4_metasprite_1
	.dw _sprite_npc_ssmol_4_metasprite_2
G$sprite_npc_ssmol_4_animations$0_0$0 == .
_sprite_npc_ssmol_4_animations:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_npc_ssmol_4_animations_lookup$0_0$0 == .
_sprite_npc_ssmol_4_animations_lookup:
	.dw #0x0000
G$sprite_npc_ssmol_4$0_0$0 == .
_sprite_npc_ssmol_4:
	.db #0x03	; 3
	.db #0x00	;  0
	.db #0xf0	; -16
	.dw _sprite_npc_ssmol_4_metasprites
	.dw _sprite_npc_ssmol_4_animations
	.dw _sprite_npc_ssmol_4_animations_lookup
	.db #0x00	;  0
	.db #0x0f	;  15
	.db #0x00	;  0
	.db #0x07	;  7
	.byte ___bank_sprite_npc_ssmol_4_tileset
	.dw _sprite_npc_ssmol_4_tileset
	.byte ___bank_sprite_npc_ssmol_4_bank2_tileset
	.dw _sprite_npc_ssmol_4_bank2_tileset
	.area _INITIALIZER
	.area _CABS (ABS)
