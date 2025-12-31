;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_18
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_18
	.globl b___func_scene_18
	.globl ___func_scene_18
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
	G$__func_scene_18$0$0	= .
	.globl	G$__func_scene_18$0$0
	C$scene_18.c$16$0_0$195	= .
	.globl	C$scene_18.c$16$0_0$195
;src\data\scene_18.c:16: BANKREF(scene_18)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_18
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_18	= 255
___func_scene_18::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_18 
	___bank_scene_18 = b___func_scene_18 
	.globl ___bank_scene_18 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_18$0_0$0 == .
_scene_18:
	.db #0x14	; 20
	.db #0x1e	; 30
	.db #0x00	;  0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_map_23_
	.dw _bg_map_23_
	.byte ___bank_scene_18_collisions
	.dw _scene_18_collisions
	.byte ___bank_palette_1
	.dw _palette_1
	.byte ___bank_palette_19
	.dw _palette_19
	.byte ___bank_scene_18_init
	.dw _scene_18_init
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_18_sprites
	.dw _scene_18_sprites
	.byte ___bank_scene_18_actors
	.dw _scene_18_actors
	.byte ___bank_scene_18_triggers
	.dw _scene_18_triggers
	.byte #0x00
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)
