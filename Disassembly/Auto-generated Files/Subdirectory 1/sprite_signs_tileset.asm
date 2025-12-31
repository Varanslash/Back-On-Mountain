;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_signs_tileset
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_signs_tileset
	.globl b___func_sprite_signs_tileset
	.globl ___func_sprite_signs_tileset
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
	G$__func_sprite_signs_tileset$0$0	= .
	.globl	G$__func_sprite_signs_tileset$0$0
	C$sprite_signs_tileset.c$7$0_0$195	= .
	.globl	C$sprite_signs_tileset.c$7$0_0$195
;src\data\sprite_signs_tileset.c:7: BANKREF(sprite_signs_tileset)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_signs_tileset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_signs_tileset	= 255
___func_sprite_signs_tileset::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_signs_tileset 
	___bank_sprite_signs_tileset = b___func_sprite_signs_tileset 
	.globl ___bank_sprite_signs_tileset 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_signs_tileset$0_0$0 == .
_sprite_signs_tileset:
	.dw #0x0002
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x47	; 71	'G'
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x4f	; 79	'O'
	.db #0xb3	; 179
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x17	; 23
	.db #0xeb	; 235
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xa0	; 160
	.area _INITIALIZER
	.area _CABS (ABS)
