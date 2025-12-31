;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_17_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_17_triggers
	.globl b___func_scene_17_triggers
	.globl ___func_scene_17_triggers
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
	G$__func_scene_17_triggers$0$0	= .
	.globl	G$__func_scene_17_triggers$0$0
	C$scene_17_triggers.c$18$0_0$195	= .
	.globl	C$scene_17_triggers.c$18$0_0$195
;src\data\scene_17_triggers.c:18: BANKREF(scene_17_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_17_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_17_triggers	= 255
___func_scene_17_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_17_triggers 
	___bank_scene_17_triggers = b___func_scene_17_triggers 
	.globl ___bank_scene_17_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_17_triggers$0_0$0 == .
_scene_17_triggers:
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_65_interact
	.dw _trigger_65_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x0d	; 13
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_66_interact
	.dw _trigger_66_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_67_interact
	.dw _trigger_67_interact
	.db #0x01	; 1
	.db #0x24	; 36
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x01	; 1
	.byte ___bank_trigger_68_interact
	.dw _trigger_68_interact
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x01	; 1
	.byte ___bank_trigger_69_interact
	.dw _trigger_69_interact
	.db #0x01	; 1
	.db #0x32	; 50	'2'
	.db #0x04	; 4
	.db #0x0e	; 14
	.db #0x01	; 1
	.byte ___bank_trigger_70_interact
	.dw _trigger_70_interact
	.db #0x01	; 1
	.db #0x3a	; 58
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_71_interact
	.dw _trigger_71_interact
	.db #0x01	; 1
	.db #0x48	; 72	'H'
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_72_interact
	.dw _trigger_72_interact
	.db #0x01	; 1
	.db #0x53	; 83	'S'
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_79_interact
	.dw _trigger_79_interact
	.db #0x01	; 1
	.db #0x44	; 68	'D'
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_171_interact
	.dw _trigger_171_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
