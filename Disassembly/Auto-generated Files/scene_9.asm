;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_9
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_9
	.globl b___func_scene_9
	.globl ___func_scene_9
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
	G$__func_scene_9$0$0	= .
	.globl	G$__func_scene_9$0$0
	C$scene_9.c$16$0_0$195	= .
	.globl	C$scene_9.c$16$0_0$195
;src\data\scene_9.c:16: BANKREF(scene_9)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_9
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_9	= 255
___func_scene_9::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_9 
	___bank_scene_9 = b___func_scene_9 
	.globl ___bank_scene_9 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_9$0_0$0 == .
_scene_9:
	.db #0x14	; 20
	.db #0x38	; 56	'8'
	.db #0x00	;  0
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_map_14_
	.dw _bg_map_14_
	.byte ___bank_scene_9_collisions
	.dw _scene_9_collisions
	.byte ___bank_palette_1
	.dw _palette_1
	.byte ___bank_palette_19
	.dw _palette_19
	.byte ___bank_scene_9_init
	.dw _scene_9_init
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_9_sprites
	.dw _scene_9_sprites
	.byte ___bank_scene_9_actors
	.dw _scene_9_actors
	.byte ___bank_scene_9_triggers
	.dw _scene_9_triggers
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
