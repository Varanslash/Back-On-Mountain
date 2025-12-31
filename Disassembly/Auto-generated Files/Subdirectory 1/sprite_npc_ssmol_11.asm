;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_npc_ssmol_11
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_npc_ssmol_11
	.globl _sprite_npc_ssmol_11_animations_lookup
	.globl _sprite_npc_ssmol_11_animations
	.globl _sprite_npc_ssmol_11_metasprites
	.globl _sprite_npc_ssmol_11_metasprite_2
	.globl _sprite_npc_ssmol_11_metasprite_1
	.globl _sprite_npc_ssmol_11_metasprite_0
	.globl b___func_sprite_npc_ssmol_11
	.globl ___func_sprite_npc_ssmol_11
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
	G$__func_sprite_npc_ssmol_11$0$0	= .
	.globl	G$__func_sprite_npc_ssmol_11$0$0
	C$sprite_npc_ssmol_11.c$8$0_0$195	= .
	.globl	C$sprite_npc_ssmol_11.c$8$0_0$195
;src\data\sprite_npc_ssmol_11.c:8: BANKREF(sprite_npc_ssmol_11)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_npc_ssmol_11
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_npc_ssmol_11	= 255
___func_sprite_npc_ssmol_11::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_npc_ssmol_11 
	___bank_sprite_npc_ssmol_11 = b___func_sprite_npc_ssmol_11 
	.globl ___bank_sprite_npc_ssmol_11 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_npc_ssmol_11_metasprite_0$0_0$0 == .
_sprite_npc_ssmol_11_metasprite_0:
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_npc_ssmol_11_metasprite_1$0_0$0 == .
_sprite_npc_ssmol_11_metasprite_1:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_npc_ssmol_11_metasprite_2$0_0$0 == .
_sprite_npc_ssmol_11_metasprite_2:
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	;  0
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$sprite_npc_ssmol_11_metasprites$0_0$0 == .
_sprite_npc_ssmol_11_metasprites:
	.dw _sprite_npc_ssmol_11_metasprite_0
	.dw _sprite_npc_ssmol_11_metasprite_1
	.dw _sprite_npc_ssmol_11_metasprite_2
G$sprite_npc_ssmol_11_animations$0_0$0 == .
_sprite_npc_ssmol_11_animations:
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
G$sprite_npc_ssmol_11_animations_lookup$0_0$0 == .
_sprite_npc_ssmol_11_animations_lookup:
	.dw #0x0000
G$sprite_npc_ssmol_11$0_0$0 == .
_sprite_npc_ssmol_11:
	.db #0x03	; 3
	.db #0x00	;  0
	.db #0xf0	; -16
	.dw _sprite_npc_ssmol_11_metasprites
	.dw _sprite_npc_ssmol_11_animations
	.dw _sprite_npc_ssmol_11_animations_lookup
	.db #0x00	;  0
	.db #0x0f	;  15
	.db #0xf8	; -8
	.db #0x07	;  7
	.byte ___bank_sprite_npc_ssmol_11_tileset
	.dw _sprite_npc_ssmol_11_tileset
	.byte ___bank_sprite_npc_ssmol_11_bank2_tileset
	.dw _sprite_npc_ssmol_11_bank2_tileset
	.area _INITIALIZER
	.area _CABS (ABS)
