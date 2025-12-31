;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_big_of_room_of_big
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_big_of_room_of_big
	.globl b___func_bg_big_of_room_of_big
	.globl ___func_bg_big_of_room_of_big
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
	G$__func_bg_big_of_room_of_big$0$0	= .
	.globl	G$__func_bg_big_of_room_of_big$0$0
	C$bg_big_of_room_of_big.c$10$0_0$195	= .
	.globl	C$bg_big_of_room_of_big.c$10$0_0$195
;src\data\bg_big_of_room_of_big.c:10: BANKREF(bg_big_of_room_of_big)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_big_of_room_of_big
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_big_of_room_of_big	= 255
___func_bg_big_of_room_of_big::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_big_of_room_of_big 
	___bank_bg_big_of_room_of_big = b___func_bg_big_of_room_of_big 
	.globl ___bank_bg_big_of_room_of_big 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_big_of_room_of_big$0_0$0 == .
_bg_big_of_room_of_big:
	.db #0x26	; 38
	.db #0x3a	; 58
	.byte ___bank_bg_big_of_room_of_big_tileset
	.dw _bg_big_of_room_of_big_tileset
	.db #0x00	; 0
	.dw #0x0000
	.byte ___bank_bg_big_of_room_of_big_tilemap
	.dw _bg_big_of_room_of_big_tilemap
	.byte ___bank_bg_big_of_room_of_big_tilemap_attr
	.dw _bg_big_of_room_of_big_tilemap_attr
	.area _INITIALIZER
	.area _CABS (ABS)
