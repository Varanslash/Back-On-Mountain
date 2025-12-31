;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_26_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_26_triggers
	.globl b___func_scene_26_triggers
	.globl ___func_scene_26_triggers
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
	G$__func_scene_26_triggers$0$0	= .
	.globl	G$__func_scene_26_triggers$0$0
	C$scene_26_triggers.c$14$0_0$195	= .
	.globl	C$scene_26_triggers.c$14$0_0$195
;src\data\scene_26_triggers.c:14: BANKREF(scene_26_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_26_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_26_triggers	= 255
___func_scene_26_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_26_triggers 
	___bank_scene_26_triggers = b___func_scene_26_triggers 
	.globl ___bank_scene_26_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_26_triggers$0_0$0 == .
_scene_26_triggers:
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x01	; 1
	.byte ___bank_trigger_108_interact
	.dw _trigger_108_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x31	; 49	'1'
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_109_interact
	.dw _trigger_109_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_110_interact
	.dw _trigger_110_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_115_interact
	.dw _trigger_115_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_122_interact
	.dw _trigger_122_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x2e	; 46
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_124_interact
	.dw _trigger_124_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
