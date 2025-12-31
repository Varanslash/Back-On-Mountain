;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module spritesheet_none
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _spritesheet_none
	.globl _spritesheet_none_metasprites
	.globl _spritesheet_none_metasprite
	.globl ___bank_spritesheet_none
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
	.area _CODE_255
G$__bank_spritesheet_none$0_0$0 == 0x00ff
___bank_spritesheet_none	=	0x00ff
G$spritesheet_none_metasprite$0_0$0 == .
_spritesheet_none_metasprite:
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$spritesheet_none_metasprites$0_0$0 == .
_spritesheet_none_metasprites:
	.dw _spritesheet_none_metasprite
G$spritesheet_none$0_0$0 == .
_spritesheet_none:
	.db #0x01	; 1
	.byte #0x00
	.byte #0x00
	.dw _spritesheet_none_metasprites
	.dw #0x0000
	.dw #0x0000
	.byte #0x00
	.byte #0x00
	.byte #0x00
	.byte #0x00
	.byte #0x00
	.dw #0x0000
	.byte #0x00
	.dw #0x0000
	.area _INITIALIZER
	.area _CABS (ABS)
