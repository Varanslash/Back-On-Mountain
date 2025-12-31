;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_164
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_164
	.globl b___func_scene_164
	.globl ___func_scene_164
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
	G$__func_scene_164$0$0	= .
	.globl	G$__func_scene_164$0$0
	C$scene_164.c$16$0_0$195	= .
	.globl	C$scene_164.c$16$0_0$195
;src\data\scene_164.c:16: BANKREF(scene_164)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_164
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_164	= 255
___func_scene_164::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_164 
	___bank_scene_164 = b___func_scene_164 
	.globl ___bank_scene_164 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_164$0_0$0 == .
_scene_164:
	.db #0x36	; 54	'6'
	.db #0x12	; 18
	.db #0x00	;  0
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_map_2025_10_15t193912_98
	.dw _bg_map_2025_10_15t193912_98
	.byte ___bank_scene_164_collisions
	.dw _scene_164_collisions
	.byte ___bank_palette_15
	.dw _palette_15
	.byte ___bank_palette_19
	.dw _palette_19
	.byte ___bank_scene_164_init
	.dw _scene_164_init
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_164_sprites
	.dw _scene_164_sprites
	.byte ___bank_scene_164_actors
	.dw _scene_164_actors
	.byte ___bank_scene_164_triggers
	.dw _scene_164_triggers
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
