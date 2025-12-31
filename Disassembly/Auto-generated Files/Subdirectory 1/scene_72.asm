;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_72
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_72
	.globl b___func_scene_72
	.globl ___func_scene_72
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
	G$__func_scene_72$0$0	= .
	.globl	G$__func_scene_72$0$0
	C$scene_72.c$14$0_0$195	= .
	.globl	C$scene_72.c$14$0_0$195
;src\data\scene_72.c:14: BANKREF(scene_72)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_72
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_72	= 255
___func_scene_72::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_72 
	___bank_scene_72 = b___func_scene_72 
	.globl ___bank_scene_72 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_72$0_0$0 == .
_scene_72:
	.db #0x14	; 20
	.db #0x26	; 38
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_map_87_
	.dw _bg_map_87_
	.byte ___bank_scene_72_collisions
	.dw _scene_72_collisions
	.byte ___bank_palette_6
	.dw _palette_6
	.byte ___bank_palette_19
	.dw _palette_19
	.byte ___bank_scene_72_init
	.dw _scene_72_init
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_72_triggers
	.dw _scene_72_triggers
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
