;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_186
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_186
	.globl b___func_scene_186
	.globl ___func_scene_186
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
	G$__func_scene_186$0$0	= .
	.globl	G$__func_scene_186$0$0
	C$scene_186.c$16$0_0$195	= .
	.globl	C$scene_186.c$16$0_0$195
;src\data\scene_186.c:16: BANKREF(scene_186)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_186
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_186	= 255
___func_scene_186::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_186 
	___bank_scene_186 = b___func_scene_186 
	.globl ___bank_scene_186 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_186$0_0$0 == .
_scene_186:
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x00	;  0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_map_2025_10_20t172531_10
	.dw _bg_map_2025_10_20t172531_10
	.byte ___bank_scene_186_collisions
	.dw _scene_186_collisions
	.byte ___bank_palette_11
	.dw _palette_11
	.byte ___bank_palette_19
	.dw _palette_19
	.byte ___bank_scene_186_init
	.dw _scene_186_init
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_186_sprites
	.dw _scene_186_sprites
	.byte ___bank_scene_186_actors
	.dw _scene_186_actors
	.byte ___bank_scene_186_triggers
	.dw _scene_186_triggers
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
