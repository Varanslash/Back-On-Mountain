;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_173
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_173
	.globl b___func_scene_173
	.globl ___func_scene_173
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
	G$__func_scene_173$0$0	= .
	.globl	G$__func_scene_173$0$0
	C$scene_173.c$14$0_0$195	= .
	.globl	C$scene_173.c$14$0_0$195
;src\data\scene_173.c:14: BANKREF(scene_173)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_173
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_173	= 255
___func_scene_173::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_173 
	___bank_scene_173 = b___func_scene_173 
	.globl ___bank_scene_173 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_173$0_0$0 == .
_scene_173:
	.db #0x4c	; 76	'L'
	.db #0x12	; 18
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x13	; 19
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_map_2025_10_18t140135_65
	.dw _bg_map_2025_10_18t140135_65
	.byte ___bank_scene_173_collisions
	.dw _scene_173_collisions
	.byte ___bank_palette_15
	.dw _palette_15
	.byte ___bank_palette_19
	.dw _palette_19
	.byte ___bank_scene_173_init
	.dw _scene_173_init
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_173_triggers
	.dw _scene_173_triggers
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
