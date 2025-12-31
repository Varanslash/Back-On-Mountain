;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_147_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_147_triggers
	.globl b___func_scene_147_triggers
	.globl ___func_scene_147_triggers
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
	G$__func_scene_147_triggers$0$0	= .
	.globl	G$__func_scene_147_triggers$0$0
	C$scene_147_triggers.c$17$0_0$195	= .
	.globl	C$scene_147_triggers.c$17$0_0$195
;src\data\scene_147_triggers.c:17: BANKREF(scene_147_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_147_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_147_triggers	= 255
___func_scene_147_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_147_triggers 
	___bank_scene_147_triggers = b___func_scene_147_triggers 
	.globl ___bank_scene_147_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_147_triggers$0_0$0 == .
_scene_147_triggers:
	.db #0x0c	; 12
	.db #0x2d	; 45
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_590_interact
	.dw _trigger_590_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_591_interact
	.dw _trigger_591_interact
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_592_interact
	.dw _trigger_592_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_593_interact
	.dw _trigger_593_interact
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_594_interact
	.dw _trigger_594_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x02	; 2
	.db #0x04	; 4
	.byte ___bank_trigger_595_interact
	.dw _trigger_595_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_614_interact
	.dw _trigger_614_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_616_interact
	.dw _trigger_616_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_672_interact
	.dw _trigger_672_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
