;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_map_2025_10_05t160406_02
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_map_2025_10_05t160406_02
	.globl b___func_bg_map_2025_10_05t160406_02
	.globl ___func_bg_map_2025_10_05t160406_02
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
	G$__func_bg_map_2025_10_05t160406_02$0$0	= .
	.globl	G$__func_bg_map_2025_10_05t160406_02$0$0
	C$bg_map_2025_10_05t160406_02.c$11$0_0$195	= .
	.globl	C$bg_map_2025_10_05t160406_02.c$11$0_0$195
;src\data\bg_map_2025_10_05t160406_02.c:11: BANKREF(bg_map_2025_10_05t160406_02)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_map_2025_10_05t160406_02
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_map_2025_10_05t160406_02	= 255
___func_bg_map_2025_10_05t160406_02::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_map_2025_10_05t160406_02 
	___bank_bg_map_2025_10_05t160406_02 = b___func_bg_map_2025_10_05t160406_02 
	.globl ___bank_bg_map_2025_10_05t160406_02 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_map_2025_10_05t160406_02$0_0$0 == .
_bg_map_2025_10_05t160406_02:
	.db #0x14	; 20
	.db #0x24	; 36
	.byte ___bank_bg_map_2025_10_05t160406_02_tileset
	.dw _bg_map_2025_10_05t160406_02_tileset
	.byte ___bank_bg_map_2025_10_05t160406_02_cgb_tileset
	.dw _bg_map_2025_10_05t160406_02_cgb_tileset
	.byte ___bank_bg_map_2025_10_05t160406_02_tilemap
	.dw _bg_map_2025_10_05t160406_02_tilemap
	.byte ___bank_bg_map_2025_10_05t160406_02_tilemap_attr
	.dw _bg_map_2025_10_05t160406_02_tilemap_attr
	.area _INITIALIZER
	.area _CABS (ABS)
