;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_npc_ssmol_6_bank2_tileset
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_npc_ssmol_6_bank2_tileset
	.globl b___func_sprite_npc_ssmol_6_bank2_tileset
	.globl ___func_sprite_npc_ssmol_6_bank2_tileset
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
	G$__func_sprite_npc_ssmol_6_bank2_tileset$0$0	= .
	.globl	G$__func_sprite_npc_ssmol_6_bank2_tileset$0$0
	C$sprite_npc_ssmol_6_bank2_tileset.c$7$0_0$195	= .
	.globl	C$sprite_npc_ssmol_6_bank2_tileset.c$7$0_0$195
;src\data\sprite_npc_ssmol_6_bank2_tileset.c:7: BANKREF(sprite_npc_ssmol_6_bank2_tileset)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_npc_ssmol_6_bank2_tileset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_npc_ssmol_6_bank2_tileset	= 255
___func_sprite_npc_ssmol_6_bank2_tileset::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_npc_ssmol_6_bank2_tileset 
	___bank_sprite_npc_ssmol_6_bank2_tileset = b___func_sprite_npc_ssmol_6_bank2_tileset 
	.globl ___bank_sprite_npc_ssmol_6_bank2_tileset 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_npc_ssmol_6_bank2_tileset$0_0$0 == .
_sprite_npc_ssmol_6_bank2_tileset:
	.dw #0x0002
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0xfc	; 252
	.db #0xf5	; 245
	.db #0xf8	; 248
	.db #0xed	; 237
	.db #0xf8	; 248
	.db #0x3d	; 61
	.db #0xd8	; 216
	.db #0x3d	; 61
	.db #0x98	; 152
	.db #0x7d	; 125
	.db #0x20	; 32
	.db #0xe5	; 229
	.db #0x40	; 64
	.db #0xc4	; 196
	.db #0x80	; 128
	.db #0x84	; 132
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
	.area _INITIALIZER
	.area _CABS (ABS)
