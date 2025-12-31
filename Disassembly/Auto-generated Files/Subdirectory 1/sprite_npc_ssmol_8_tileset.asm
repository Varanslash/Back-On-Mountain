;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_npc_ssmol_8_tileset
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_npc_ssmol_8_tileset
	.globl b___func_sprite_npc_ssmol_8_tileset
	.globl ___func_sprite_npc_ssmol_8_tileset
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
	G$__func_sprite_npc_ssmol_8_tileset$0$0	= .
	.globl	G$__func_sprite_npc_ssmol_8_tileset$0$0
	C$sprite_npc_ssmol_8_tileset.c$7$0_0$195	= .
	.globl	C$sprite_npc_ssmol_8_tileset.c$7$0_0$195
;src\data\sprite_npc_ssmol_8_tileset.c:7: BANKREF(sprite_npc_ssmol_8_tileset)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_npc_ssmol_8_tileset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_npc_ssmol_8_tileset	= 255
___func_sprite_npc_ssmol_8_tileset::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_npc_ssmol_8_tileset 
	___bank_sprite_npc_ssmol_8_tileset = b___func_sprite_npc_ssmol_8_tileset 
	.globl ___bank_sprite_npc_ssmol_8_tileset 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_npc_ssmol_8_tileset$0_0$0 == .
_sprite_npc_ssmol_8_tileset:
	.dw #0x0002
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x6f	; 111	'o'
	.db #0x90	; 144
	.db #0x6f	; 111	'o'
	.db #0x90	; 144
	.db #0x6f	; 111	'o'
	.db #0x90	; 144
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
