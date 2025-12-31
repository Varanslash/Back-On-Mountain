;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_169_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_169_triggers
	.globl b___func_scene_169_triggers
	.globl ___func_scene_169_triggers
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
	G$__func_scene_169_triggers$0$0	= .
	.globl	G$__func_scene_169_triggers$0$0
	C$scene_169_triggers.c$17$0_0$195	= .
	.globl	C$scene_169_triggers.c$17$0_0$195
;src\data\scene_169_triggers.c:17: BANKREF(scene_169_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_169_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_169_triggers	= 255
___func_scene_169_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_169_triggers 
	___bank_scene_169_triggers = b___func_scene_169_triggers 
	.globl ___bank_scene_169_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_169_triggers$0_0$0 == .
_scene_169_triggers:
	.db #0x0f	; 15
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x0c	; 12
	.byte ___bank_trigger_737_interact
	.dw _trigger_737_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x19	; 25
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_738_interact
	.dw _trigger_738_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_739_interact
	.dw _trigger_739_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_740_interact
	.dw _trigger_740_interact
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_741_interact
	.dw _trigger_741_interact
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x2a	; 42
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_742_interact
	.dw _trigger_742_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x2c	; 44
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_744_interact
	.dw _trigger_744_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_745_interact
	.dw _trigger_745_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_747_interact
	.dw _trigger_747_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
