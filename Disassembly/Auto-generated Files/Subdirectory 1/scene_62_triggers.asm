;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_62_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_62_triggers
	.globl b___func_scene_62_triggers
	.globl ___func_scene_62_triggers
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
	G$__func_scene_62_triggers$0$0	= .
	.globl	G$__func_scene_62_triggers$0$0
	C$scene_62_triggers.c$15$0_0$195	= .
	.globl	C$scene_62_triggers.c$15$0_0$195
;src\data\scene_62_triggers.c:15: BANKREF(scene_62_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_62_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_62_triggers	= 255
___func_scene_62_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_62_triggers 
	___bank_scene_62_triggers = b___func_scene_62_triggers 
	.globl ___bank_scene_62_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_62_triggers$0_0$0 == .
_scene_62_triggers:
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x1e	; 30
	.db #0x01	; 1
	.byte ___bank_trigger_268_interact
	.dw _trigger_268_interact
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x01	; 1
	.byte ___bank_trigger_269_interact
	.dw _trigger_269_interact
	.db #0x01	; 1
	.db #0x24	; 36
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_270_interact
	.dw _trigger_270_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_271_interact
	.dw _trigger_271_interact
	.db #0x01	; 1
	.db #0x39	; 57	'9'
	.db #0x11	; 17
	.db #0x0d	; 13
	.db #0x01	; 1
	.byte ___bank_trigger_272_interact
	.dw _trigger_272_interact
	.db #0x01	; 1
	.db #0x4d	; 77	'M'
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_274_interact
	.dw _trigger_274_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_286_interact
	.dw _trigger_286_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
