;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_4
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_4
	.globl b___func_scene_4
	.globl ___func_scene_4
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
	G$__func_scene_4$0$0	= .
	.globl	G$__func_scene_4$0$0
	C$scene_4.c$16$0_0$195	= .
	.globl	C$scene_4.c$16$0_0$195
;src\data\scene_4.c:16: BANKREF(scene_4)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_4
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_4	= 255
___func_scene_4::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_4 
	___bank_scene_4 = b___func_scene_4 
	.globl ___bank_scene_4 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_4$0_0$0 == .
_scene_4:
	.db #0x3a	; 58
	.db #0x40	; 64
	.db #0x00	;  0
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_map_4_
	.dw _bg_map_4_
	.byte ___bank_scene_4_collisions
	.dw _scene_4_collisions
	.byte ___bank_palette_0
	.dw _palette_0
	.byte ___bank_palette_19
	.dw _palette_19
	.byte ___bank_scene_4_init
	.dw _scene_4_init
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_4_sprites
	.dw _scene_4_sprites
	.byte ___bank_scene_4_actors
	.dw _scene_4_actors
	.byte ___bank_scene_4_triggers
	.dw _scene_4_triggers
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
