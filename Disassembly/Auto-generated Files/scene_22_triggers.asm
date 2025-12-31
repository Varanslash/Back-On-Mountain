;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_22_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_22_triggers
	.globl b___func_scene_22_triggers
	.globl ___func_scene_22_triggers
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
	G$__func_scene_22_triggers$0$0	= .
	.globl	G$__func_scene_22_triggers$0$0
	C$scene_22_triggers.c$17$0_0$195	= .
	.globl	C$scene_22_triggers.c$17$0_0$195
;src\data\scene_22_triggers.c:17: BANKREF(scene_22_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_22_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_22_triggers	= 255
___func_scene_22_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_22_triggers 
	___bank_scene_22_triggers = b___func_scene_22_triggers 
	.globl ___bank_scene_22_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_22_triggers$0_0$0 == .
_scene_22_triggers:
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x26	; 38
	.db #0x01	; 1
	.byte ___bank_trigger_83_interact
	.dw _trigger_83_interact
	.db #0x01	; 1
	.db #0x16	; 22
	.db #0x30	; 48	'0'
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_84_interact
	.dw _trigger_84_interact
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_85_interact
	.dw _trigger_85_interact
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x2e	; 46
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_86_interact
	.dw _trigger_86_interact
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_88_interact
	.dw _trigger_88_interact
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_92_interact
	.dw _trigger_92_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_95_interact
	.dw _trigger_95_interact
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_111_interact
	.dw _trigger_111_interact
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x17	; 23
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_30_interact
	.dw _trigger_30_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
