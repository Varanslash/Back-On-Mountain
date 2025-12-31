;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_npc_ssmol_7_tileset
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_npc_ssmol_7_tileset
	.globl b___func_sprite_npc_ssmol_7_tileset
	.globl ___func_sprite_npc_ssmol_7_tileset
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
	G$__func_sprite_npc_ssmol_7_tileset$0$0	= .
	.globl	G$__func_sprite_npc_ssmol_7_tileset$0$0
	C$sprite_npc_ssmol_7_tileset.c$7$0_0$195	= .
	.globl	C$sprite_npc_ssmol_7_tileset.c$7$0_0$195
;src\data\sprite_npc_ssmol_7_tileset.c:7: BANKREF(sprite_npc_ssmol_7_tileset)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_npc_ssmol_7_tileset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_npc_ssmol_7_tileset	= 255
___func_sprite_npc_ssmol_7_tileset::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_npc_ssmol_7_tileset 
	___bank_sprite_npc_ssmol_7_tileset = b___func_sprite_npc_ssmol_7_tileset 
	.globl ___bank_sprite_npc_ssmol_7_tileset 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_npc_ssmol_7_tileset$0_0$0 == .
_sprite_npc_ssmol_7_tileset:
	.dw #0x0002
	.db #0x35	; 53	'5'
	.db #0x1e	; 30
	.db #0x0e	; 14
	.db #0x35	; 53	'5'
	.db #0x3c	; 60
	.db #0x1b	; 27
	.db #0x37	; 55	'7'
	.db #0x39	; 57	'9'
	.db #0x0a	; 10
	.db #0x35	; 53	'5'
	.db #0x3d	; 61
	.db #0x17	; 23
	.db #0x1d	; 29
	.db #0x32	; 50	'2'
	.db #0x3f	; 63
	.db #0x2b	; 43
	.db #0x3f	; 63
	.db #0x0d	; 13
	.db #0x57	; 87	'W'
	.db #0xfa	; 250
	.db #0xb2	; 178
	.db #0xcd	; 205
	.db #0xfe	; 254
	.db #0x75	; 117	'u'
	.db #0xbb	; 187
	.db #0x57	; 87	'W'
	.db #0xf7	; 247
	.db #0xf9	; 249
	.db #0xdf	; 223
	.db #0x33	; 51	'3'
	.db #0x7a	; 122	'z'
	.db #0xf7	; 247
	.area _INITIALIZER
	.area _CABS (ABS)
