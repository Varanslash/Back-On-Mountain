;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_100
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_100
	.globl b___func_scene_100
	.globl ___func_scene_100
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
	G$__func_scene_100$0$0	= .
	.globl	G$__func_scene_100$0$0
	C$scene_100.c$16$0_0$195	= .
	.globl	C$scene_100.c$16$0_0$195
;src\data\scene_100.c:16: BANKREF(scene_100)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_100
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_100	= 255
___func_scene_100::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_100 
	___bank_scene_100 = b___func_scene_100 
	.globl ___bank_scene_100 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_100$0_0$0 == .
_scene_100:
	.db #0x74	; 116	't'
	.db #0x48	; 72	'H'
	.db #0x00	;  0
	.db #0x02	; 2
	.db #0x1a	; 26
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_map_2025_10_05t170242_39
	.dw _bg_map_2025_10_05t170242_39
	.byte ___bank_scene_100_collisions
	.dw _scene_100_collisions
	.byte ___bank_palette_8
	.dw _palette_8
	.byte ___bank_palette_19
	.dw _palette_19
	.byte ___bank_scene_100_init
	.dw _scene_100_init
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_100_sprites
	.dw _scene_100_sprites
	.byte ___bank_scene_100_actors
	.dw _scene_100_actors
	.byte ___bank_scene_100_triggers
	.dw _scene_100_triggers
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
