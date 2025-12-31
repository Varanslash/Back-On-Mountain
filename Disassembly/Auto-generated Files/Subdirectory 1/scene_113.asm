;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_113
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_113
	.globl b___func_scene_113
	.globl ___func_scene_113
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
	G$__func_scene_113$0$0	= .
	.globl	G$__func_scene_113$0$0
	C$scene_113.c$14$0_0$195	= .
	.globl	C$scene_113.c$14$0_0$195
;src\data\scene_113.c:14: BANKREF(scene_113)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_113
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_113	= 255
___func_scene_113::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_113 
	___bank_scene_113 = b___func_scene_113 
	.globl ___bank_scene_113 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_113$0_0$0 == .
_scene_113:
	.db #0x24	; 36
	.db #0x1e	; 30
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_map_2025_10_07t192459_34
	.dw _bg_map_2025_10_07t192459_34
	.byte ___bank_scene_113_collisions
	.dw _scene_113_collisions
	.byte ___bank_palette_7
	.dw _palette_7
	.byte ___bank_palette_19
	.dw _palette_19
	.byte ___bank_scene_113_init
	.dw _scene_113_init
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_113_triggers
	.dw _scene_113_triggers
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
