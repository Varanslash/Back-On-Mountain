;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_map_24_
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_map_24_
	.globl b___func_bg_map_24_
	.globl ___func_bg_map_24_
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
	G$__func_bg_map_24_$0$0	= .
	.globl	G$__func_bg_map_24_$0$0
	C$bg_map_24_.c$10$0_0$195	= .
	.globl	C$bg_map_24_.c$10$0_0$195
;src\data\bg_map_24_.c:10: BANKREF(bg_map_24_)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_map_24_
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_map_24_	= 255
___func_bg_map_24_::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_map_24_ 
	___bank_bg_map_24_ = b___func_bg_map_24_ 
	.globl ___bank_bg_map_24_ 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_map_24_$0_0$0 == .
_bg_map_24_:
	.db #0x14	; 20
	.db #0x22	; 34
	.byte ___bank_bg_map_24__tileset
	.dw _bg_map_24__tileset
	.db #0x00	; 0
	.dw #0x0000
	.byte ___bank_bg_map_24__tilemap
	.dw _bg_map_24__tilemap
	.byte ___bank_bg_map_24__tilemap_attr
	.dw _bg_map_24__tilemap_attr
	.area _INITIALIZER
	.area _CABS (ABS)
