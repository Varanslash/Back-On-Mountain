;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_map_13_
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_map_13_
	.globl b___func_bg_map_13_
	.globl ___func_bg_map_13_
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
	G$__func_bg_map_13_$0$0	= .
	.globl	G$__func_bg_map_13_$0$0
	C$bg_map_13_.c$10$0_0$195	= .
	.globl	C$bg_map_13_.c$10$0_0$195
;src\data\bg_map_13_.c:10: BANKREF(bg_map_13_)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_map_13_
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_map_13_	= 255
___func_bg_map_13_::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_map_13_ 
	___bank_bg_map_13_ = b___func_bg_map_13_ 
	.globl ___bank_bg_map_13_ 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_map_13_$0_0$0 == .
_bg_map_13_:
	.db #0x1c	; 28
	.db #0x24	; 36
	.byte ___bank_bg_map_13__tileset
	.dw _bg_map_13__tileset
	.db #0x00	; 0
	.dw #0x0000
	.byte ___bank_bg_map_13__tilemap
	.dw _bg_map_13__tilemap
	.byte ___bank_bg_map_13__tilemap_attr
	.dw _bg_map_13__tilemap_attr
	.area _INITIALIZER
	.area _CABS (ABS)
