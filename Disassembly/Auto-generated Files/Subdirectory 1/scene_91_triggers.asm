;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_91_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_91_triggers
	.globl b___func_scene_91_triggers
	.globl ___func_scene_91_triggers
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
	G$__func_scene_91_triggers$0$0	= .
	.globl	G$__func_scene_91_triggers$0$0
	C$scene_91_triggers.c$24$0_0$195	= .
	.globl	C$scene_91_triggers.c$24$0_0$195
;src\data\scene_91_triggers.c:24: BANKREF(scene_91_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_91_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_91_triggers	= 255
___func_scene_91_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_91_triggers 
	___bank_scene_91_triggers = b___func_scene_91_triggers 
	.globl ___bank_scene_91_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_91_triggers$0_0$0 == .
_scene_91_triggers:
	.db #0x20	; 32
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_325_interact
	.dw _trigger_325_interact
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_326_interact
	.dw _trigger_326_interact
	.db #0x01	; 1
	.db #0x30	; 48	'0'
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_327_interact
	.dw _trigger_327_interact
	.db #0x01	; 1
	.db #0x3a	; 58
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_328_interact
	.dw _trigger_328_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_329_interact
	.dw _trigger_329_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x21	; 33
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_330_interact
	.dw _trigger_330_interact
	.db #0x01	; 1
	.db #0x1a	; 26
	.db #0x23	; 35
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_331_interact
	.dw _trigger_331_interact
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_332_interact
	.dw _trigger_332_interact
	.db #0x01	; 1
	.db #0x34	; 52	'4'
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_333_interact
	.dw _trigger_333_interact
	.db #0x01	; 1
	.db #0x2c	; 44
	.db #0x25	; 37
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_334_interact
	.dw _trigger_334_interact
	.db #0x01	; 1
	.db #0x34	; 52	'4'
	.db #0x25	; 37
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_335_interact
	.dw _trigger_335_interact
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_337_interact
	.dw _trigger_337_interact
	.db #0x01	; 1
	.db #0x3d	; 61
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_338_interact
	.dw _trigger_338_interact
	.db #0x01	; 1
	.db #0x3d	; 61
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_346_interact
	.dw _trigger_346_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x1a	; 26
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_348_interact
	.dw _trigger_348_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_359_interact
	.dw _trigger_359_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
