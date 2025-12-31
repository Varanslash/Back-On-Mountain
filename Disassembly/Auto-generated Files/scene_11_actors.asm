;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_11_actors
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_11_actors
	.globl b___func_scene_11_actors
	.globl ___func_scene_11_actors
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
	G$__func_scene_11_actors$0$0	= .
	.globl	G$__func_scene_11_actors$0$0
	C$scene_11_actors.c$10$0_0$195	= .
	.globl	C$scene_11_actors.c$10$0_0$195
;src\data\scene_11_actors.c:10: BANKREF(scene_11_actors)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_11_actors
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_11_actors	= 255
___func_scene_11_actors::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_11_actors 
	___bank_scene_11_actors = b___func_scene_11_actors 
	.globl ___bank_scene_11_actors 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_11_actors$0_0$0 == .
_scene_11_actors:
	.db 0x20
	.dw #0x0080
	.dw #0x0680
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x0f	;  15
	.db #0xf8	; -8
	.db #0x07	;  7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x00	; 0
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
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.byte ___bank_sprite_sprite_0001
	.dw _sprite_sprite_0001
	.byte ___bank_actor_13_interact
	.dw _actor_13_interact
	.byte #0x00
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.area _INITIALIZER
	.area _CABS (ABS)
