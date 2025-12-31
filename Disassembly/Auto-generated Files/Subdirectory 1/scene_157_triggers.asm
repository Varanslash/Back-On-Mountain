;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_157_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_157_triggers
	.globl b___func_scene_157_triggers
	.globl ___func_scene_157_triggers
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
	G$__func_scene_157_triggers$0$0	= .
	.globl	G$__func_scene_157_triggers$0$0
	C$scene_157_triggers.c$16$0_0$195	= .
	.globl	C$scene_157_triggers.c$16$0_0$195
;src\data\scene_157_triggers.c:16: BANKREF(scene_157_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_157_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_157_triggers	= 255
___func_scene_157_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_157_triggers 
	___bank_scene_157_triggers = b___func_scene_157_triggers 
	.globl ___bank_scene_157_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_157_triggers$0_0$0 == .
_scene_157_triggers:
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_675_interact
	.dw _trigger_675_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_676_interact
	.dw _trigger_676_interact
	.db #0x01	; 1
	.db #0x14	; 20
	.db #0x1d	; 29
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_677_interact
	.dw _trigger_677_interact
	.db #0x01	; 1
	.db #0x1a	; 26
	.db #0x1d	; 29
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_678_interact
	.dw _trigger_678_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x01	; 1
	.byte ___bank_trigger_679_interact
	.dw _trigger_679_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_680_interact
	.dw _trigger_680_interact
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_681_interact
	.dw _trigger_681_interact
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_682_interact
	.dw _trigger_682_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
