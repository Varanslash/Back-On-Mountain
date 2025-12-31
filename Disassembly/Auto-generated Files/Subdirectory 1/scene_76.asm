;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_76
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_76
	.globl b___func_scene_76
	.globl ___func_scene_76
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
	G$__func_scene_76$0$0	= .
	.globl	G$__func_scene_76$0$0
	C$scene_76.c$14$0_0$195	= .
	.globl	C$scene_76.c$14$0_0$195
;src\data\scene_76.c:14: BANKREF(scene_76)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_76
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_76	= 255
___func_scene_76::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_76 
	___bank_scene_76 = b___func_scene_76 
	.globl ___bank_scene_76 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_76$0_0$0 == .
_scene_76:
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.byte ___bank_sprite_sprite_0001_sheet
	.dw _sprite_sprite_0001_sheet
	.byte ___bank_bg_map_90_
	.dw _bg_map_90_
	.byte ___bank_scene_76_collisions
	.dw _scene_76_collisions
	.byte ___bank_palette_7
	.dw _palette_7
	.byte ___bank_palette_19
	.dw _palette_19
	.byte ___bank_scene_76_init
	.dw _scene_76_init
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.byte ___bank_scene_76_triggers
	.dw _scene_76_triggers
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
