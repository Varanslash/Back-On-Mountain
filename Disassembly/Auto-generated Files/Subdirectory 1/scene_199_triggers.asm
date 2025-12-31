;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_199_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_199_triggers
	.globl b___func_scene_199_triggers
	.globl ___func_scene_199_triggers
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
	G$__func_scene_199_triggers$0$0	= .
	.globl	G$__func_scene_199_triggers$0$0
	C$scene_199_triggers.c$15$0_0$195	= .
	.globl	C$scene_199_triggers.c$15$0_0$195
;src\data\scene_199_triggers.c:15: BANKREF(scene_199_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_199_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_199_triggers	= 255
___func_scene_199_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_199_triggers 
	___bank_scene_199_triggers = b___func_scene_199_triggers 
	.globl ___bank_scene_199_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_199_triggers$0_0$0 == .
_scene_199_triggers:
	.db #0x06	; 6
	.db #0x11	; 17
	.db #0x3a	; 58
	.db #0x01	; 1
	.byte ___bank_trigger_916_interact
	.dw _trigger_916_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x3a	; 58
	.db #0x01	; 1
	.byte ___bank_trigger_917_interact
	.dw _trigger_917_interact
	.db #0x01	; 1
	.db #0x32	; 50	'2'
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_918_interact
	.dw _trigger_918_interact
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x0b	; 11
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_919_interact
	.dw _trigger_919_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_920_interact
	.dw _trigger_920_interact
	.db #0x01	; 1
	.db #0x45	; 69	'E'
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_922_interact
	.dw _trigger_922_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_938_interact
	.dw _trigger_938_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
