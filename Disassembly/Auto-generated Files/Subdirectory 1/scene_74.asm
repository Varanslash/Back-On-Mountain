;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_74
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_74
	.globl b___func_scene_74
	.globl ___func_scene_74
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
	G$__func_scene_74$0$0	= .
	.globl	G$__func_scene_74$0$0
	C$scene_74.c$14$0_0$195	= .
	.globl	C$scene_74.c$14$0_0$195
;src\data\scene_74.c:14: BANKREF(scene_74)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_74
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_74	= 255
___func_scene_74::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_74 
	___bank_scene_74 = b___func_scene_74 
	.globl ___bank_scene_74 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_74$0_0$0 == .
_scene_74:
	.db #0x42	; 66	'B'
	.db #0x12	; 18
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_map_89_
	.dw _bg_map_89_
	.byte ___bank_scene_74_collisions
	.dw _scene_74_collisions
	.byte ___bank_palette_6
	.dw _palette_6
	.byte ___bank_palette_19
	.dw _palette_19
	.byte ___bank_scene_74_init
	.dw _scene_74_init
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_74_triggers
	.dw _scene_74_triggers
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
