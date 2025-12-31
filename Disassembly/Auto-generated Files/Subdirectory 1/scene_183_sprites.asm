;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_183_sprites
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_183_sprites
	.globl b___func_scene_183_sprites
	.globl ___func_scene_183_sprites
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
	G$__func_scene_183_sprites$0$0	= .
	.globl	G$__func_scene_183_sprites$0$0
	C$scene_183_sprites.c$9$0_0$195	= .
	.globl	C$scene_183_sprites.c$9$0_0$195
;src\data\scene_183_sprites.c:9: BANKREF(scene_183_sprites)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_183_sprites
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_183_sprites	= 255
___func_scene_183_sprites::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_183_sprites 
	___bank_scene_183_sprites = b___func_scene_183_sprites 
	.globl ___bank_scene_183_sprites 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_183_sprites$0_0$0 == .
_scene_183_sprites:
	.byte ___bank_sprite_sprite_0001
	.dw _sprite_sprite_0001
	.area _INITIALIZER
	.area _CABS (ABS)
