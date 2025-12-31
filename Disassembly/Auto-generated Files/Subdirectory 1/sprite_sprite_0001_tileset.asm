;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_sprite_0001_tileset
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_sprite_0001_tileset
	.globl b___func_sprite_sprite_0001_tileset
	.globl ___func_sprite_sprite_0001_tileset
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
	G$__func_sprite_sprite_0001_tileset$0$0	= .
	.globl	G$__func_sprite_sprite_0001_tileset$0$0
	C$sprite_sprite_0001_tileset.c$7$0_0$195	= .
	.globl	C$sprite_sprite_0001_tileset.c$7$0_0$195
;src\data\sprite_sprite_0001_tileset.c:7: BANKREF(sprite_sprite_0001_tileset)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_sprite_0001_tileset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_sprite_0001_tileset	= 255
___func_sprite_sprite_0001_tileset::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_sprite_0001_tileset 
	___bank_sprite_sprite_0001_tileset = b___func_sprite_sprite_0001_tileset 
	.globl ___bank_sprite_sprite_0001_tileset 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_sprite_0001_tileset$0_0$0 == .
_sprite_sprite_0001_tileset:
	.dw #0x0002
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x39	; 57	'9'
	.db #0x3f	; 63
	.db #0xd9	; 217
	.db #0xe7	; 231
	.db #0x67	; 103	'g'
	.db #0x99	; 153
	.db #0x67	; 103	'g'
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x67	; 103	'g'
	.db #0x99	; 153
	.db #0x67	; 103	'g'
	.db #0xe7	; 231
	.db #0x99	; 153
	.db #0x7f	; 127
	.db #0x79	; 121	'y'
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
