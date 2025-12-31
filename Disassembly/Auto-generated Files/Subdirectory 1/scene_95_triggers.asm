;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_95_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_95_triggers
	.globl b___func_scene_95_triggers
	.globl ___func_scene_95_triggers
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
	G$__func_scene_95_triggers$0$0	= .
	.globl	G$__func_scene_95_triggers$0$0
	C$scene_95_triggers.c$15$0_0$195	= .
	.globl	C$scene_95_triggers.c$15$0_0$195
;src\data\scene_95_triggers.c:15: BANKREF(scene_95_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_95_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_95_triggers	= 255
___func_scene_95_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_95_triggers 
	___bank_scene_95_triggers = b___func_scene_95_triggers 
	.globl ___bank_scene_95_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_95_triggers$0_0$0 == .
_scene_95_triggers:
	.db #0x04	; 4
	.db #0x2b	; 43
	.db #0x07	; 7
	.db #0x01	; 1
	.byte ___bank_trigger_354_interact
	.dw _trigger_354_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x24	; 36
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_355_interact
	.dw _trigger_355_interact
	.db #0x01	; 1
	.db #0x0b	; 11
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_356_interact
	.dw _trigger_356_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x0d	; 13
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_357_interact
	.dw _trigger_357_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_358_interact
	.dw _trigger_358_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_360_interact
	.dw _trigger_360_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_426_interact
	.dw _trigger_426_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
