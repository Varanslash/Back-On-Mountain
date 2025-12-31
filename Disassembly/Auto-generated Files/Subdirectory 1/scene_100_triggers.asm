;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_100_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_100_triggers
	.globl b___func_scene_100_triggers
	.globl ___func_scene_100_triggers
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
	G$__func_scene_100_triggers$0$0	= .
	.globl	G$__func_scene_100_triggers$0$0
	C$scene_100_triggers.c$34$0_0$195	= .
	.globl	C$scene_100_triggers.c$34$0_0$195
;src\data\scene_100_triggers.c:34: BANKREF(scene_100_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_100_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_100_triggers	= 255
___func_scene_100_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_100_triggers 
	___bank_scene_100_triggers = b___func_scene_100_triggers 
	.globl ___bank_scene_100_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_100_triggers$0_0$0 == .
_scene_100_triggers:
	.db #0x08	; 8
	.db #0x11	; 17
	.db #0x0c	; 12
	.db #0x01	; 1
	.byte ___bank_trigger_379_interact
	.dw _trigger_379_interact
	.db #0x01	; 1
	.db #0x14	; 20
	.db #0x0a	; 10
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_380_interact
	.dw _trigger_380_interact
	.db #0x01	; 1
	.db #0x1c	; 28
	.db #0x11	; 17
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_381_interact
	.dw _trigger_381_interact
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_382_interact
	.dw _trigger_382_interact
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x11	; 17
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_383_interact
	.dw _trigger_383_interact
	.db #0x01	; 1
	.db #0x2a	; 42
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_384_interact
	.dw _trigger_384_interact
	.db #0x01	; 1
	.db #0x2a	; 42
	.db #0x11	; 17
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_385_interact
	.dw _trigger_385_interact
	.db #0x01	; 1
	.db #0x42	; 66	'B'
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_386_interact
	.dw _trigger_386_interact
	.db #0x01	; 1
	.db #0x48	; 72	'H'
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_387_interact
	.dw _trigger_387_interact
	.db #0x01	; 1
	.db #0x4e	; 78	'N'
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_388_interact
	.dw _trigger_388_interact
	.db #0x01	; 1
	.db #0x54	; 84	'T'
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_389_interact
	.dw _trigger_389_interact
	.db #0x01	; 1
	.db #0x5a	; 90	'Z'
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_390_interact
	.dw _trigger_390_interact
	.db #0x01	; 1
	.db #0x60	; 96
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_391_interact
	.dw _trigger_391_interact
	.db #0x01	; 1
	.db #0x66	; 102	'f'
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_392_interact
	.dw _trigger_392_interact
	.db #0x01	; 1
	.db #0x6a	; 106	'j'
	.db #0x11	; 17
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_393_interact
	.dw _trigger_393_interact
	.db #0x01	; 1
	.db #0x64	; 100	'd'
	.db #0x11	; 17
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_394_interact
	.dw _trigger_394_interact
	.db #0x01	; 1
	.db #0x4c	; 76	'L'
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_395_interact
	.dw _trigger_395_interact
	.db #0x01	; 1
	.db #0x46	; 70	'F'
	.db #0x11	; 17
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_396_interact
	.dw _trigger_396_interact
	.db #0x01	; 1
	.db #0x52	; 82	'R'
	.db #0x0d	; 13
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_397_interact
	.dw _trigger_397_interact
	.db #0x01	; 1
	.db #0x58	; 88	'X'
	.db #0x0d	; 13
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_398_interact
	.dw _trigger_398_interact
	.db #0x01	; 1
	.db #0x5e	; 94
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_399_interact
	.dw _trigger_399_interact
	.db #0x01	; 1
	.db #0x32	; 50	'2'
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x0e	; 14
	.byte ___bank_trigger_400_interact
	.dw _trigger_400_interact
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x0e	; 14
	.byte ___bank_trigger_401_interact
	.dw _trigger_401_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_402_interact
	.dw _trigger_402_interact
	.db #0x01	; 1
	.db #0x73	; 115	's'
	.db #0x0e	; 14
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_404_interact
	.dw _trigger_404_interact
	.db #0x01	; 1
	.db #0x47	; 71	'G'
	.db #0x3e	; 62
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_451_interact
	.dw _trigger_451_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
