;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_203_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_203_triggers
	.globl b___func_scene_203_triggers
	.globl ___func_scene_203_triggers
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
	G$__func_scene_203_triggers$0$0	= .
	.globl	G$__func_scene_203_triggers$0$0
	C$scene_203_triggers.c$29$0_0$195	= .
	.globl	C$scene_203_triggers.c$29$0_0$195
;src\data\scene_203_triggers.c:29: BANKREF(scene_203_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_203_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_203_triggers	= 255
___func_scene_203_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_203_triggers 
	___bank_scene_203_triggers = b___func_scene_203_triggers 
	.globl ___bank_scene_203_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_203_triggers$0_0$0 == .
_scene_203_triggers:
	.db #0x27	; 39
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x26	; 38
	.byte ___bank_trigger_946_interact
	.dw _trigger_946_interact
	.db #0x01	; 1
	.db #0x2c	; 44
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x22	; 34
	.byte ___bank_trigger_947_interact
	.dw _trigger_947_interact
	.db #0x01	; 1
	.db #0x31	; 49	'1'
	.db #0x1c	; 28
	.db #0x01	; 1
	.db #0x1c	; 28
	.byte ___bank_trigger_948_interact
	.dw _trigger_948_interact
	.db #0x01	; 1
	.db #0x2e	; 46
	.db #0x3c	; 60
	.db #0x01	; 1
	.db #0x10	; 16
	.byte ___bank_trigger_949_interact
	.dw _trigger_949_interact
	.db #0x01	; 1
	.db #0x33	; 51	'3'
	.db #0x38	; 56	'8'
	.db #0x01	; 1
	.db #0x10	; 16
	.byte ___bank_trigger_950_interact
	.dw _trigger_950_interact
	.db #0x01	; 1
	.db #0x43	; 67	'C'
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x1a	; 26
	.byte ___bank_trigger_951_interact
	.dw _trigger_951_interact
	.db #0x01	; 1
	.db #0x34	; 52	'4'
	.db #0x1d	; 29
	.db #0x0e	; 14
	.db #0x01	; 1
	.byte ___bank_trigger_952_interact
	.dw _trigger_952_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x12	; 18
	.byte ___bank_trigger_953_interact
	.dw _trigger_953_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x1c	; 28
	.byte ___bank_trigger_954_interact
	.dw _trigger_954_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x3d	; 61
	.db #0x10	; 16
	.db #0x08	; 8
	.byte ___bank_trigger_955_interact
	.dw _trigger_955_interact
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x3e	; 62
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_956_interact
	.dw _trigger_956_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x4b	; 75	'K'
	.db #0x0a	; 10
	.db #0x01	; 1
	.byte ___bank_trigger_957_interact
	.dw _trigger_957_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x2e	; 46
	.db #0x0c	; 12
	.db #0x01	; 1
	.byte ___bank_trigger_958_interact
	.dw _trigger_958_interact
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0x2c	; 44
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_959_interact
	.dw _trigger_959_interact
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_960_interact
	.dw _trigger_960_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x1a	; 26
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_961_interact
	.dw _trigger_961_interact
	.db #0x01	; 1
	.db #0x15	; 21
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_962_interact
	.dw _trigger_962_interact
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0x11	; 17
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_963_interact
	.dw _trigger_963_interact
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_964_interact
	.dw _trigger_964_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_966_interact
	.dw _trigger_966_interact
	.db #0x01	; 1
	.db #0x83	; 131
	.db #0x48	; 72	'H'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_973_interact
	.dw _trigger_973_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
