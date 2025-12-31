;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_67_sprites
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_67_sprites
	.globl b___func_scene_67_sprites
	.globl ___func_scene_67_sprites
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
	G$__func_scene_67_sprites$0$0	= .
	.globl	G$__func_scene_67_sprites$0$0
	C$scene_67_sprites.c$13$0_0$195	= .
	.globl	C$scene_67_sprites.c$13$0_0$195
;src\data\scene_67_sprites.c:13: BANKREF(scene_67_sprites)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_67_sprites
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_67_sprites	= 255
___func_scene_67_sprites::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_67_sprites 
	___bank_scene_67_sprites = b___func_scene_67_sprites 
	.globl ___bank_scene_67_sprites 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_67_sprites$0_0$0 == .
_scene_67_sprites:
	.byte ___bank_sprite_npc_ssmol_1
	.dw _sprite_npc_ssmol_1
	.byte ___bank_sprite_npc_ssmol_5
	.dw _sprite_npc_ssmol_5
	.byte ___bank_sprite_npc_ssmol_9
	.dw _sprite_npc_ssmol_9
	.byte ___bank_sprite_actor_animated
	.dw _sprite_actor_animated
	.byte ___bank_sprite_npc_ssmol_11
	.dw _sprite_npc_ssmol_11
	.area _INITIALIZER
	.area _CABS (ABS)
