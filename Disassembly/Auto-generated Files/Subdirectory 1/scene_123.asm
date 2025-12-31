;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_123
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_123
	.globl b___func_scene_123
	.globl ___func_scene_123
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
	G$__func_scene_123$0$0	= .
	.globl	G$__func_scene_123$0$0
	C$scene_123.c$16$0_0$195	= .
	.globl	C$scene_123.c$16$0_0$195
;src\data\scene_123.c:16: BANKREF(scene_123)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_123
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_123	= 255
___func_scene_123::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_123 
	___bank_scene_123 = b___func_scene_123 
	.globl ___bank_scene_123 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_123$0_0$0 == .
_scene_123:
	.db #0x3c	; 60
	.db #0x12	; 18
	.db #0x00	;  0
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_arthur
	.dw _bg_arthur
	.byte ___bank_scene_123_collisions
	.dw _scene_123_collisions
	.byte ___bank_palette_7
	.dw _palette_7
	.byte ___bank_palette_19
	.dw _palette_19
	.byte ___bank_scene_123_init
	.dw _scene_123_init
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_123_sprites
	.dw _scene_123_sprites
	.byte ___bank_scene_123_actors
	.dw _scene_123_actors
	.byte ___bank_scene_123_triggers
	.dw _scene_123_triggers
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
