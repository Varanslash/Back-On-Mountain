;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_map_2025_10_17t193635_09
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_map_2025_10_17t193635_09
	.globl b___func_bg_map_2025_10_17t193635_09
	.globl ___func_bg_map_2025_10_17t193635_09
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
	G$__func_bg_map_2025_10_17t193635_09$0$0	= .
	.globl	G$__func_bg_map_2025_10_17t193635_09$0$0
	C$bg_map_2025_10_17t193635_09.c$10$0_0$195	= .
	.globl	C$bg_map_2025_10_17t193635_09.c$10$0_0$195
;src\data\bg_map_2025_10_17t193635_09.c:10: BANKREF(bg_map_2025_10_17t193635_09)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_map_2025_10_17t193635_09
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_map_2025_10_17t193635_09	= 255
___func_bg_map_2025_10_17t193635_09::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_map_2025_10_17t193635_09 
	___bank_bg_map_2025_10_17t193635_09 = b___func_bg_map_2025_10_17t193635_09 
	.globl ___bank_bg_map_2025_10_17t193635_09 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_map_2025_10_17t193635_09$0_0$0 == .
_bg_map_2025_10_17t193635_09:
	.db #0x62	; 98	'b'
	.db #0x14	; 20
	.byte ___bank_bg_map_2025_10_17t193635_09_tileset
	.dw _bg_map_2025_10_17t193635_09_tileset
	.db #0x00	; 0
	.dw #0x0000
	.byte ___bank_bg_map_2025_10_17t193635_09_tilemap
	.dw _bg_map_2025_10_17t193635_09_tilemap
	.byte ___bank_bg_map_2025_10_17t193635_09_tilemap_attr
	.dw _bg_map_2025_10_17t193635_09_tilemap_attr
	.area _INITIALIZER
	.area _CABS (ABS)
