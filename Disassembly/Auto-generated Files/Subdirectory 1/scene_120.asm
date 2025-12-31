;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_120
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_120
	.globl b___func_scene_120
	.globl ___func_scene_120
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
	G$__func_scene_120$0$0	= .
	.globl	G$__func_scene_120$0$0
	C$scene_120.c$14$0_0$195	= .
	.globl	C$scene_120.c$14$0_0$195
;src\data\scene_120.c:14: BANKREF(scene_120)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_120
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_120	= 255
___func_scene_120::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_120 
	___bank_scene_120 = b___func_scene_120 
	.globl ___bank_scene_120 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_120$0_0$0 == .
_scene_120:
	.db #0x40	; 64
	.db #0x2c	; 44
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_map_2025_10_08t192759_67
	.dw _bg_map_2025_10_08t192759_67
	.byte ___bank_scene_120_collisions
	.dw _scene_120_collisions
	.byte ___bank_palette_10
	.dw _palette_10
	.byte ___bank_palette_20
	.dw _palette_20
	.byte ___bank_scene_120_init
	.dw _scene_120_init
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_120_triggers
	.dw _scene_120_triggers
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
