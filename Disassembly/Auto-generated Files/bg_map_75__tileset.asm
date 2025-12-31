;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_map_75__tileset
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_map_75__tileset
	.globl b___func_bg_map_75__tileset
	.globl ___func_bg_map_75__tileset
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
	G$__func_bg_map_75__tileset$0$0	= .
	.globl	G$__func_bg_map_75__tileset$0$0
	C$bg_map_75__tileset.c$7$0_0$195	= .
	.globl	C$bg_map_75__tileset.c$7$0_0$195
;src\data\bg_map_75__tileset.c:7: BANKREF(bg_map_75__tileset)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_map_75__tileset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_map_75__tileset	= 255
___func_bg_map_75__tileset::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_map_75__tileset 
	___bank_bg_map_75__tileset = b___func_bg_map_75__tileset 
	.globl ___bank_bg_map_75__tileset 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_map_75__tileset$0_0$0 == .
_bg_map_75__tileset:
	.dw #0x001b
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xfd	; 253
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xef	; 239
	.db #0xe0	; 224
	.db #0xdf	; 223
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xe3	; 227
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0xc7	; 199
	.db #0x3f	; 63
	.db #0x86	; 134
	.db #0x7e	; 126
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x06	; 6
	.db #0xfe	; 254
	.db #0x1f	; 31
	.db #0xfe	; 254
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfc	; 252
	.db #0x03	; 3
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x3e	; 62
	.db #0x7e	; 126
	.db #0x9d	; 157
	.db #0x7c	; 124
	.db #0x1b	; 27
	.db #0xf8	; 248
	.db #0x1f	; 31
	.db #0xf8	; 248
	.db #0x3f	; 63
	.db #0xfc	; 252
	.db #0x3e	; 62
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x09	; 9
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x7f	; 127
	.db #0x83	; 131
	.db #0x7f	; 127
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xcf	; 207
	.db #0xc0	; 192
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xfe	; 254
	.db #0x81	; 129
	.db #0xfc	; 252
	.db #0x83	; 131
	.db #0xf8	; 248
	.db #0xc7	; 199
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0xe1	; 225
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0xf0	; 240
	.db #0xee	; 238
	.db #0xe1	; 225
	.db #0xfe	; 254
	.db #0xe1	; 225
	.db #0xfc	; 252
	.db #0xf3	; 243
	.db #0xf8	; 248
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xfb	; 251
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0xdf	; 223
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbe	; 190
	.db #0xbf	; 191
	.db #0xbe	; 190
	.db #0xbf	; 191
	.db #0xfe	; 254
	.db #0xdf	; 223
	.db #0xfd	; 253
	.db #0xdf	; 223
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0x7d	; 125
	.db #0x7f	; 127
	.db #0xbd	; 189
	.db #0xbf	; 191
	.db #0xbb	; 187
	.db #0xbf	; 191
	.db #0xbb	; 187
	.db #0xbf	; 191
	.db #0xbb	; 187
	.db #0xbf	; 191
	.db #0xfd	; 253
	.db #0xdf	; 223
	.db #0xfd	; 253
	.db #0xdf	; 223
	.db #0xed	; 237
	.db #0xff	; 255
	.db #0xeb	; 235
	.db #0xff	; 255
	.db #0xeb	; 235
	.db #0xff	; 255
	.db #0xeb	; 235
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xbf	; 191
	.db #0xf7	; 247
	.db #0xbf	; 191
	.db #0xf7	; 247
	.db #0xbf	; 191
	.db #0xe7	; 231
	.db #0xbf	; 191
	.db #0xcf	; 207
	.db #0xff	; 255
	.db #0xcf	; 207
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xdf	; 223
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xf3	; 243
	.db #0xf7	; 247
	.db #0xf3	; 243
	.db #0xf7	; 247
	.db #0xf5	; 245
	.db #0xf7	; 247
	.db #0xfd	; 253
	.db #0xef	; 239
	.db #0xfd	; 253
	.db #0xef	; 239
	.db #0xfd	; 253
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xd7	; 215
	.db #0xdf	; 223
	.db #0xd7	; 215
	.db #0xdf	; 223
	.db #0xd7	; 215
	.db #0xdf	; 223
	.db #0xdb	; 219
	.db #0xdf	; 223
	.db #0xfb	; 251
	.db #0xbf	; 191
	.db #0xfb	; 251
	.db #0xbf	; 191
	.db #0xfd	; 253
	.db #0xdf	; 223
	.db #0xfd	; 253
	.db #0xdf	; 223
	.db #0xfd	; 253
	.db #0xdf	; 223
	.db #0xbd	; 189
	.db #0xff	; 255
	.db #0xbe	; 190
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xbf	; 191
	.db #0xfb	; 251
	.db #0xbf	; 191
	.db #0x7d	; 125
	.db #0xff	; 255
	.db #0x7d	; 125
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfd	; 253
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfb	; 251
	.db #0xfb	; 251
	.db #0xe4	; 228
	.db #0xe4	; 228
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.area _INITIALIZER
	.area _CABS (ABS)
