;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_126_actors
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_126_actors
	.globl b___func_scene_126_actors
	.globl ___func_scene_126_actors
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
	G$__func_scene_126_actors$0$0	= .
	.globl	G$__func_scene_126_actors$0$0
	C$scene_126_actors.c$10$0_0$195	= .
	.globl	C$scene_126_actors.c$10$0_0$195
;src\data\scene_126_actors.c:10: BANKREF(scene_126_actors)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_126_actors
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_126_actors	= 255
___func_scene_126_actors::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_126_actors 
	___bank_scene_126_actors = b___func_scene_126_actors 
	.globl ___bank_scene_126_actors 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_126_actors$0_0$0 == .
_scene_126_actors:
	.db 0x20
	.dw #0x0500
	.dw #0x0780
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x0f	;  15
	.db #0x00	;  0
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
	.byte ___bank_sprite_actor_animated
	.dw _sprite_actor_animated
	.byte ___bank_actor_59_interact
	.dw _actor_59_interact
	.byte #0x00
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.area _INITIALIZER
	.area _CABS (ABS)
