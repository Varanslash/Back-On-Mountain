;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_71_actors
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_71_actors
	.globl b___func_scene_71_actors
	.globl ___func_scene_71_actors
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
	G$__func_scene_71_actors$0$0	= .
	.globl	G$__func_scene_71_actors$0$0
	C$scene_71_actors.c$16$0_0$195	= .
	.globl	C$scene_71_actors.c$16$0_0$195
;src\data\scene_71_actors.c:16: BANKREF(scene_71_actors)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_71_actors
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_71_actors	= 255
___func_scene_71_actors::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_71_actors 
	___bank_scene_71_actors = b___func_scene_71_actors 
	.globl ___bank_scene_71_actors 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_71_actors$0_0$0 == .
_scene_71_actors:
	.db 0x20
	.dw #0x2a00
	.dw #0x0680
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
	.byte ___bank_actor_41_interact
	.dw _actor_41_interact
	.byte #0x00
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.db 0x20
	.dw #0x0a80
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
	.byte ___bank_actor_42_interact
	.dw _actor_42_interact
	.byte #0x00
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.db 0x20
	.dw #0x3b00
	.dw #0x0600
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
	.byte ___bank_sprite_npc_ssmol_8
	.dw _sprite_npc_ssmol_8
	.byte ___bank_actor_44_interact
	.dw _actor_44_interact
	.byte #0x00
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.db 0x20
	.dw #0x3600
	.dw #0x0600
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
	.byte ___bank_sprite_npc_ssmol_0
	.dw _sprite_npc_ssmol_0
	.byte ___bank_actor_45_interact
	.dw _actor_45_interact
	.byte #0x00
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0000
	.area _INITIALIZER
	.area _CABS (ABS)
