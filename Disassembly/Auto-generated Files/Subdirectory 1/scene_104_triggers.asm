;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_104_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_104_triggers
	.globl b___func_scene_104_triggers
	.globl ___func_scene_104_triggers
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
	G$__func_scene_104_triggers$0$0	= .
	.globl	G$__func_scene_104_triggers$0$0
	C$scene_104_triggers.c$17$0_0$195	= .
	.globl	C$scene_104_triggers.c$17$0_0$195
;src\data\scene_104_triggers.c:17: BANKREF(scene_104_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_104_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_104_triggers	= 255
___func_scene_104_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_104_triggers 
	___bank_scene_104_triggers = b___func_scene_104_triggers 
	.globl ___bank_scene_104_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_104_triggers$0_0$0 == .
_scene_104_triggers:
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_430_interact
	.dw _trigger_430_interact
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_432_interact
	.dw _trigger_432_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x19	; 25
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_433_interact
	.dw _trigger_433_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x23	; 35
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_434_interact
	.dw _trigger_434_interact
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x2c	; 44
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_435_interact
	.dw _trigger_435_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x2c	; 44
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_436_interact
	.dw _trigger_436_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x2b	; 43
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_437_interact
	.dw _trigger_437_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_439_interact
	.dw _trigger_439_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x4a	; 74	'J'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_441_interact
	.dw _trigger_441_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
