;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_6_sprites
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_6_sprites
	.globl b___func_scene_6_sprites
	.globl ___func_scene_6_sprites
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
	G$__func_scene_6_sprites$0$0	= .
	.globl	G$__func_scene_6_sprites$0$0
	C$scene_6_sprites.c$10$0_0$195	= .
	.globl	C$scene_6_sprites.c$10$0_0$195
;src\data\scene_6_sprites.c:10: BANKREF(scene_6_sprites)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_6_sprites
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_6_sprites	= 255
___func_scene_6_sprites::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_6_sprites 
	___bank_scene_6_sprites = b___func_scene_6_sprites 
	.globl ___bank_scene_6_sprites 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_6_sprites$0_0$0 == .
_scene_6_sprites:
	.byte ___bank_sprite_npc_ssmol_10
	.dw _sprite_npc_ssmol_10
	.byte ___bank_sprite_npc_ssmol_4
	.dw _sprite_npc_ssmol_4
	.area _INITIALIZER
	.area _CABS (ABS)
