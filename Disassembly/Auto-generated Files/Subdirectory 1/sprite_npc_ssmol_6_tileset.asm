;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_npc_ssmol_6_tileset
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_npc_ssmol_6_tileset
	.globl b___func_sprite_npc_ssmol_6_tileset
	.globl ___func_sprite_npc_ssmol_6_tileset
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
	G$__func_sprite_npc_ssmol_6_tileset$0$0	= .
	.globl	G$__func_sprite_npc_ssmol_6_tileset$0$0
	C$sprite_npc_ssmol_6_tileset.c$7$0_0$195	= .
	.globl	C$sprite_npc_ssmol_6_tileset.c$7$0_0$195
;src\data\sprite_npc_ssmol_6_tileset.c:7: BANKREF(sprite_npc_ssmol_6_tileset)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_npc_ssmol_6_tileset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_npc_ssmol_6_tileset	= 255
___func_sprite_npc_ssmol_6_tileset::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_npc_ssmol_6_tileset 
	___bank_sprite_npc_ssmol_6_tileset = b___func_sprite_npc_ssmol_6_tileset 
	.globl ___bank_sprite_npc_ssmol_6_tileset 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_npc_ssmol_6_tileset$0_0$0 == .
_sprite_npc_ssmol_6_tileset:
	.dw #0x0002
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
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1e	; 30
	.db #0x11	; 17
	.db #0x3c	; 60
	.db #0x23	; 35
	.db #0x79	; 121	'y'
	.db #0x47	; 71	'G'
	.db #0xf2	; 242
	.db #0x8e	; 142
	.db #0xe4	; 228
	.db #0x9c	; 156
	.db #0xc8	; 200
	.db #0xb8	; 184
	.db #0xf0	; 240
	.db #0xf0	; 240
	.area _INITIALIZER
	.area _CABS (ABS)
