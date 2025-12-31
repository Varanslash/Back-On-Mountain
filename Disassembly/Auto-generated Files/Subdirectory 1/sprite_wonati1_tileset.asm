;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_wonati1_tileset
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_wonati1_tileset
	.globl b___func_sprite_wonati1_tileset
	.globl ___func_sprite_wonati1_tileset
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
	G$__func_sprite_wonati1_tileset$0$0	= .
	.globl	G$__func_sprite_wonati1_tileset$0$0
	C$sprite_wonati1_tileset.c$7$0_0$195	= .
	.globl	C$sprite_wonati1_tileset.c$7$0_0$195
;src\data\sprite_wonati1_tileset.c:7: BANKREF(sprite_wonati1_tileset)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_wonati1_tileset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_wonati1_tileset	= 255
___func_sprite_wonati1_tileset::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_wonati1_tileset 
	___bank_sprite_wonati1_tileset = b___func_sprite_wonati1_tileset 
	.globl ___bank_sprite_wonati1_tileset 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_wonati1_tileset$0_0$0 == .
_sprite_wonati1_tileset:
	.dw #0x0002
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x80	; 128
	.db #0x78	; 120	'x'
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x0c	; 12
	.db #0xfc	; 252
	.db #0x3e	; 62
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x38	; 56	'8'
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)
