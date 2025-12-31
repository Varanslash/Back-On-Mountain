;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_wonatithrwee_tileset
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_wonatithrwee_tileset
	.globl b___func_sprite_wonatithrwee_tileset
	.globl ___func_sprite_wonatithrwee_tileset
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
	G$__func_sprite_wonatithrwee_tileset$0$0	= .
	.globl	G$__func_sprite_wonatithrwee_tileset$0$0
	C$sprite_wonatithrwee_tileset.c$7$0_0$195	= .
	.globl	C$sprite_wonatithrwee_tileset.c$7$0_0$195
;src\data\sprite_wonatithrwee_tileset.c:7: BANKREF(sprite_wonatithrwee_tileset)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_wonatithrwee_tileset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_wonatithrwee_tileset	= 255
___func_sprite_wonatithrwee_tileset::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_wonatithrwee_tileset 
	___bank_sprite_wonatithrwee_tileset = b___func_sprite_wonatithrwee_tileset 
	.globl ___bank_sprite_wonatithrwee_tileset 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_wonatithrwee_tileset$0_0$0 == .
_sprite_wonatithrwee_tileset:
	.dw #0x0002
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0x7e	; 126
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x0f	; 15
	.db #0xf8	; 248
	.db #0x40	; 64
	.db #0xf8	; 248
	.db #0xa0	; 160
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x38	; 56	'8'
	.db #0xc0	; 192
	.db #0x38	; 56	'8'
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.area _INITIALIZER
	.area _CABS (ABS)
