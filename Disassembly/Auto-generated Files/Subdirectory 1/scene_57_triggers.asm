;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_57_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_57_triggers
	.globl b___func_scene_57_triggers
	.globl ___func_scene_57_triggers
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
	G$__func_scene_57_triggers$0$0	= .
	.globl	G$__func_scene_57_triggers$0$0
	C$scene_57_triggers.c$14$0_0$195	= .
	.globl	C$scene_57_triggers.c$14$0_0$195
;src\data\scene_57_triggers.c:14: BANKREF(scene_57_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_57_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_57_triggers	= 255
___func_scene_57_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_57_triggers 
	___bank_scene_57_triggers = b___func_scene_57_triggers 
	.globl ___bank_scene_57_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_57_triggers$0_0$0 == .
_scene_57_triggers:
	.db #0x04	; 4
	.db #0x1f	; 31
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_246_interact
	.dw _trigger_246_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_247_interact
	.dw _trigger_247_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x3d	; 61
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_248_interact
	.dw _trigger_248_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_250_interact
	.dw _trigger_250_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x3a	; 58
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_253_interact
	.dw _trigger_253_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_265_interact
	.dw _trigger_265_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
