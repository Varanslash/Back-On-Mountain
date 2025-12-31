;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sprite_gbutton_bank2_tileset
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sprite_gbutton_bank2_tileset
	.globl b___func_sprite_gbutton_bank2_tileset
	.globl ___func_sprite_gbutton_bank2_tileset
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
	G$__func_sprite_gbutton_bank2_tileset$0$0	= .
	.globl	G$__func_sprite_gbutton_bank2_tileset$0$0
	C$sprite_gbutton_bank2_tileset.c$7$0_0$195	= .
	.globl	C$sprite_gbutton_bank2_tileset.c$7$0_0$195
;src\data\sprite_gbutton_bank2_tileset.c:7: BANKREF(sprite_gbutton_bank2_tileset)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_sprite_gbutton_bank2_tileset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_sprite_gbutton_bank2_tileset	= 255
___func_sprite_gbutton_bank2_tileset::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_sprite_gbutton_bank2_tileset 
	___bank_sprite_gbutton_bank2_tileset = b___func_sprite_gbutton_bank2_tileset 
	.globl ___bank_sprite_gbutton_bank2_tileset 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$sprite_gbutton_bank2_tileset$0_0$0 == .
_sprite_gbutton_bank2_tileset:
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
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x15	; 21
	.db #0x1a	; 26
	.db #0x2a	; 42
	.db #0x35	; 53	'5'
	.db #0x35	; 53	'5'
	.db #0x2a	; 42
	.db #0x28	; 40
	.db #0x37	; 55	'7'
	.db #0x34	; 52	'4'
	.db #0x2b	; 43
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.area _INITIALIZER
	.area _CABS (ABS)
