;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_154_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_154_triggers
	.globl b___func_scene_154_triggers
	.globl ___func_scene_154_triggers
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
	G$__func_scene_154_triggers$0$0	= .
	.globl	G$__func_scene_154_triggers$0$0
	C$scene_154_triggers.c$16$0_0$195	= .
	.globl	C$scene_154_triggers.c$16$0_0$195
;src\data\scene_154_triggers.c:16: BANKREF(scene_154_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_154_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_154_triggers	= 255
___func_scene_154_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_154_triggers 
	___bank_scene_154_triggers = b___func_scene_154_triggers 
	.globl ___bank_scene_154_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_154_triggers$0_0$0 == .
_scene_154_triggers:
	.db #0x04	; 4
	.db #0x11	; 17
	.db #0x0c	; 12
	.db #0x02	; 2
	.byte ___bank_trigger_661_interact
	.dw _trigger_661_interact
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x18	; 24
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_662_interact
	.dw _trigger_662_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_663_interact
	.dw _trigger_663_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x2a	; 42
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_664_interact
	.dw _trigger_664_interact
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x0e	; 14
	.byte ___bank_trigger_665_interact
	.dw _trigger_665_interact
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_666_interact
	.dw _trigger_666_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_668_interact
	.dw _trigger_668_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_670_interact
	.dw _trigger_670_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
