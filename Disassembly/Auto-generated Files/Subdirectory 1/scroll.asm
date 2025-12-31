;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scroll
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _set_bkg_submap
	.globl b_activate_actors_in_col
	.globl _activate_actors_in_col
	.globl b_activate_actors_in_row
	.globl _activate_actors_in_row
	.globl _new_col
	.globl _current_col
	.globl _new_row
	.globl _current_row
	.globl _pending_w_i
	.globl _pending_w_y
	.globl _pending_w_x
	.globl _pending_h_i
	.globl _pending_h_y
	.globl _pending_h_x
	.globl _scroll_offset_y
	.globl _scroll_offset_x
	.globl _scroll_y_max
	.globl _scroll_x_max
	.globl _draw_scroll_y
	.globl _draw_scroll_x
	.globl _scroll_y
	.globl _scroll_x
	.globl b_scroll_init
	.globl _scroll_init
	.globl b_scroll_reset
	.globl _scroll_reset
	.globl b_scroll_update
	.globl _scroll_update
	.globl _scroll_viewport
	.globl b_scroll_repaint
	.globl _scroll_repaint
	.globl _scroll_render_rows
	.globl _scroll_queue_row
	.globl _scroll_queue_col
	.globl _scroll_load_pending_row
	.globl _scroll_load_row
	.globl _scroll_load_col
	.globl _scroll_load_pending_col
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$scroll_x$0_0$0==.
_scroll_x::
	.ds 2
G$scroll_y$0_0$0==.
_scroll_y::
	.ds 2
G$draw_scroll_x$0_0$0==.
_draw_scroll_x::
	.ds 2
G$draw_scroll_y$0_0$0==.
_draw_scroll_y::
	.ds 2
G$scroll_x_max$0_0$0==.
_scroll_x_max::
	.ds 2
G$scroll_y_max$0_0$0==.
_scroll_y_max::
	.ds 2
G$scroll_offset_x$0_0$0==.
_scroll_offset_x::
	.ds 1
G$scroll_offset_y$0_0$0==.
_scroll_offset_y::
	.ds 1
G$pending_h_x$0_0$0==.
_pending_h_x::
	.ds 1
G$pending_h_y$0_0$0==.
_pending_h_y::
	.ds 1
G$pending_h_i$0_0$0==.
_pending_h_i::
	.ds 1
G$pending_w_x$0_0$0==.
_pending_w_x::
	.ds 1
G$pending_w_y$0_0$0==.
_pending_w_y::
	.ds 1
G$pending_w_i$0_0$0==.
_pending_w_i::
	.ds 1
G$current_row$0_0$0==.
_current_row::
	.ds 2
G$new_row$0_0$0==.
_new_row::
	.ds 2
G$current_col$0_0$0==.
_current_col::
	.ds 2
G$new_col$0_0$0==.
_new_col::
	.ds 2
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
	G$scroll_load_pending_row$0$0	= .
	.globl	G$scroll_load_pending_row$0$0
	C$scroll.c$227$1_0$319	= .
	.globl	C$scroll.c$227$1_0$319
;src\core\scroll.c:227: void scroll_load_pending_row(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function scroll_load_pending_row
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_scroll_load_pending_row::
	C$scroll.c$228$2_0$319	= .
	.globl	C$scroll.c$228$2_0$319
;src\core\scroll.c:228: UINT8 _save = CURRENT_BANK;
;	genAssign
	ldh	a, (__current_bank + 0)
	ld	c, a
	C$scroll.c$229$1_0$319	= .
	.globl	C$scroll.c$229$1_0$319
;src\core\scroll.c:229: UBYTE width = MIN(pending_w_i, PENDING_BATCH_SIZE);
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_pending_w_i
	ld	a, (hl)
	sub	a, #0x07
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00105$
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	b, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	genAssign
;	genMove_o size 1
	ld	b, #0x07
;	genLabel
00106$:
;	genCast
;	(locations are the same)
	C$scroll.c$232$1_0$319	= .
	.globl	C$scroll.c$232$1_0$319
;src\core\scroll.c:232: if (_is_CGB) {  // Color Row Load
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$scroll.c$233$2_0$320	= .
	.globl	C$scroll.c$233$2_0$320
;src\core\scroll.c:233: SWITCH_ROM(image_attr_bank);
;	genAssign
;fetchLitPair	hl
	ld	hl, #_image_attr_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$scroll.c$234$2_0$320	= .
	.globl	C$scroll.c$234$2_0$320
;src\core\scroll.c:234: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$scroll.c$235$2_0$320	= .
	.globl	C$scroll.c$235$2_0$320
;src\core\scroll.c:235: set_bkg_submap(pending_w_x, pending_w_y, width, 1, image_attr_ptr, image_tile_width);
;	genIpush
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_image_attr_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	push	de
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_pending_w_y) directly instead of using hl.
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_pending_w_x) directly instead of using hl.
	ld	a, (#_pending_w_y)
	ld	h, a
	ld	a, (#_pending_w_x)
	ld	l, a
; common peephole 44b combined pushing of (#_pending_w_y) and (#_pending_w_x).
	push	hl
;	genCall
	call	_set_bkg_submap
;	adjustStack by 7
	add	sp, #7
	pop	bc
	C$scroll.c$236$2_0$320	= .
	.globl	C$scroll.c$236$2_0$320
;src\core\scroll.c:236: VBK_REG = 0;
;	genAssign
	ld	a, #0x00
	ldh	(_VBK_REG + 0), a
;	genLabel
00102$:
	C$scroll.c$240$1_0$319	= .
	.globl	C$scroll.c$240$1_0$319
;src\core\scroll.c:240: SWITCH_ROM(image_bank);
;	genAssign
;fetchLitPair	hl
	ld	hl, #_image_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$scroll.c$241$1_0$319	= .
	.globl	C$scroll.c$241$1_0$319
;src\core\scroll.c:241: set_bkg_submap(pending_w_x, pending_w_y, width, 1, image_ptr, image_tile_width);
;	genIpush
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_image_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	push	de
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_pending_w_y) directly instead of using hl.
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_pending_w_x) directly instead of using hl.
	ld	a, (#_pending_w_y)
	ld	h, a
	ld	a, (#_pending_w_x)
	ld	l, a
; common peephole 44b combined pushing of (#_pending_w_y) and (#_pending_w_x).
	push	hl
;	genCall
	call	_set_bkg_submap
;	adjustStack by 7
	add	sp, #7
	pop	bc
	C$scroll.c$243$1_0$319	= .
	.globl	C$scroll.c$243$1_0$319
;src\core\scroll.c:243: pending_w_x += width;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_pending_w_x
	ld	a, (hl)
	add	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$scroll.c$244$1_0$319	= .
	.globl	C$scroll.c$244$1_0$319
;src\core\scroll.c:244: pending_w_i -= width;
;	genMinus
;fetchLitPair	hl
	ld	hl, #_pending_w_i
	ld	a, (hl)
	sub	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$scroll.c$246$1_0$319	= .
	.globl	C$scroll.c$246$1_0$319
;src\core\scroll.c:246: SWITCH_ROM(_save);
;	genAssign
	ld	a, c
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_rROMB0
	ld	(hl), c
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$scroll.c$247$1_0$319	= .
	.globl	C$scroll.c$247$1_0$319
;src\core\scroll.c:247: }
;	genEndFunction
	C$scroll.c$247$1_0$319	= .
	.globl	C$scroll.c$247$1_0$319
	XG$scroll_load_pending_row$0$0	= .
	.globl	XG$scroll_load_pending_row$0$0
	ret
	G$scroll_load_row$0$0	= .
	.globl	G$scroll_load_row$0$0
	C$scroll.c$250$1_0$322	= .
	.globl	C$scroll.c$250$1_0$322
;src\core\scroll.c:250: void scroll_load_row(UBYTE x, UBYTE y) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function scroll_load_row
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_scroll_load_row::
;	genReceive
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genReceive
;	genMove_o size 1
	C$scroll.c$251$2_0$322	= .
	.globl	C$scroll.c$251$2_0$322
;src\core\scroll.c:251: UINT8 _save = CURRENT_BANK;
;	genAssign
	ldh	a, (__current_bank + 0)
	ld	c, a
	C$scroll.c$254$1_0$322	= .
	.globl	C$scroll.c$254$1_0$322
;src\core\scroll.c:254: if (_is_CGB) {  // Color Column Load
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$scroll.c$255$2_0$323	= .
	.globl	C$scroll.c$255$2_0$323
;src\core\scroll.c:255: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$scroll.c$256$2_0$323	= .
	.globl	C$scroll.c$256$2_0$323
;src\core\scroll.c:256: SWITCH_ROM(image_attr_bank);
;	genAssign
;fetchLitPair	hl
	ld	hl, #_image_attr_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$scroll.c$257$2_0$323	= .
	.globl	C$scroll.c$257$2_0$323
;src\core\scroll.c:257: set_bkg_submap(x, y, SCREEN_TILE_REFRES_W, 1, image_attr_ptr, image_tile_width);
;	genIpush
	push	bc
	push	de
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_image_attr_ptr
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_image_attr_ptr + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
;	genIpush
;	genMove_o size 1
;	genMove_o size 0
; common peephole 35 pushed de instead of pushing a twice.
; common peephole 9 loaded d from #0x17 directly instead of going through a.
	ld	d, #0x17
	push	de
;	genIpush
	push	bc
	inc	sp
;	genCall
	call	_set_bkg_submap
;	adjustStack by 7
	add	sp, #7
	pop	de
	pop	bc
	C$scroll.c$258$2_0$323	= .
	.globl	C$scroll.c$258$2_0$323
;src\core\scroll.c:258: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00102$:
	C$scroll.c$262$1_0$322	= .
	.globl	C$scroll.c$262$1_0$322
;src\core\scroll.c:262: SWITCH_ROM(image_bank);
;	genAssign
;fetchLitPair	hl
	ld	hl, #_image_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$scroll.c$263$1_0$322	= .
	.globl	C$scroll.c$263$1_0$322
;src\core\scroll.c:263: set_bkg_submap(x, y, MIN(SCREEN_TILE_REFRES_W, image_tile_width), 1, image_ptr, image_tile_width);
;	genCmpLt
	ld	a, #0x17
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00105$
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	d, #0x17
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	d, (hl)
;	genLabel
00106$:
;	genIpush
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_image_ptr
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_image_ptr + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genIpush
;	genMove_o size 1
;	genMove_o size 0
; common peephole 0a removed redundant load from e into e.
; common peephole 43 combined pushing of d and e.
	push	de
;	genIpush
	push	bc
	inc	sp
;	genCall
	call	_set_bkg_submap
;	adjustStack by 7
	add	sp, #7
	pop	bc
	C$scroll.c$265$1_0$322	= .
	.globl	C$scroll.c$265$1_0$322
;src\core\scroll.c:265: SWITCH_ROM(_save);
;	genAssign
	ld	a, c
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_rROMB0
	ld	(hl), c
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$scroll.c$266$1_0$322	= .
	.globl	C$scroll.c$266$1_0$322
;src\core\scroll.c:266: }
;	genEndFunction
	C$scroll.c$266$1_0$322	= .
	.globl	C$scroll.c$266$1_0$322
	XG$scroll_load_row$0$0	= .
	.globl	XG$scroll_load_row$0$0
	ret
	G$scroll_load_col$0$0	= .
	.globl	G$scroll_load_col$0$0
	C$scroll.c$268$1_0$325	= .
	.globl	C$scroll.c$268$1_0$325
;src\core\scroll.c:268: void scroll_load_col(UBYTE x, UBYTE y, UBYTE height) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function scroll_load_col
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_scroll_load_col::
;	genReceive
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genReceive
;	genMove_o size 1
	ld	d, e
;	genMove_o size 0
	C$scroll.c$269$2_0$325	= .
	.globl	C$scroll.c$269$2_0$325
;src\core\scroll.c:269: UINT8 _save = CURRENT_BANK;
;	genAssign
	ldh	a, (__current_bank + 0)
	ld	c, a
	C$scroll.c$272$1_0$325	= .
	.globl	C$scroll.c$272$1_0$325
;src\core\scroll.c:272: if (_is_CGB) {  // Color Column Load
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$scroll.c$273$2_0$326	= .
	.globl	C$scroll.c$273$2_0$326
;src\core\scroll.c:273: SWITCH_ROM(image_attr_bank);
;	genAssign
;fetchLitPair	hl
	ld	hl, #_image_attr_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$scroll.c$274$2_0$326	= .
	.globl	C$scroll.c$274$2_0$326
;src\core\scroll.c:274: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$scroll.c$275$2_0$326	= .
	.globl	C$scroll.c$275$2_0$326
;src\core\scroll.c:275: set_bkg_submap(x, y, 1, height, image_attr_ptr, image_tile_width);
;	genIpush
	push	bc
	push	de
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_image_attr_ptr
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_image_attr_ptr + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#9
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
; common peephole 37a pushed hl instead of pushing a twice.
; common peephole 9 loaded h from (hl) directly instead of going through a.
	ld	h, (hl)
	ld	l, #0x01
	push	hl
;	genIpush
;	genIpush
	ld	e, b
; common peephole 38 combined pushing of d and b.
	push	de
;	genCall
	call	_set_bkg_submap
;	adjustStack by 7
	add	sp, #7
	pop	de
	pop	bc
	C$scroll.c$276$2_0$326	= .
	.globl	C$scroll.c$276$2_0$326
;src\core\scroll.c:276: VBK_REG = 0;
;	genAssign
	ld	a, #0x00
	ldh	(_VBK_REG + 0), a
;	genLabel
00102$:
	C$scroll.c$281$1_1$327	= .
	.globl	C$scroll.c$281$1_1$327
;src\core\scroll.c:281: SWITCH_ROM(image_bank);
;	genAssign
;fetchLitPair	hl
	ld	hl, #_image_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$scroll.c$282$1_1$327	= .
	.globl	C$scroll.c$282$1_1$327
;src\core\scroll.c:282: set_bkg_submap(x, y, 1, height, image_ptr, image_tile_width);
;	genIpush
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_image_ptr
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_image_ptr + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#7
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
; common peephole 37a pushed hl instead of pushing a twice.
; common peephole 9 loaded h from (hl) directly instead of going through a.
	ld	h, (hl)
	ld	l, #0x01
	push	hl
;	genIpush
;	genIpush
	ld	e, b
; common peephole 38 combined pushing of d and b.
	push	de
;	genCall
	call	_set_bkg_submap
;	adjustStack by 7
	add	sp, #7
	pop	bc
	C$scroll.c$283$1_1$327	= .
	.globl	C$scroll.c$283$1_1$327
;src\core\scroll.c:283: SWITCH_ROM(_save);
;	genAssign
	ld	a, c
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_rROMB0
	ld	(hl), c
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$scroll.c$284$1_1$325	= .
	.globl	C$scroll.c$284$1_1$325
;src\core\scroll.c:284: }
;	genEndFunction
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
	G$scroll_load_pending_col$0$0	= .
	.globl	G$scroll_load_pending_col$0$0
	C$scroll.c$286$1_1$329	= .
	.globl	C$scroll.c$286$1_1$329
;src\core\scroll.c:286: void scroll_load_pending_col(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function scroll_load_pending_col
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_scroll_load_pending_col::
	C$scroll.c$287$2_0$329	= .
	.globl	C$scroll.c$287$2_0$329
;src\core\scroll.c:287: UINT8 _save = CURRENT_BANK;
;	genAssign
	ldh	a, (__current_bank + 0)
	ld	c, a
	C$scroll.c$288$1_0$329	= .
	.globl	C$scroll.c$288$1_0$329
;src\core\scroll.c:288: UBYTE height = MIN(pending_h_i, PENDING_BATCH_SIZE);
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_pending_h_i
	ld	a, (hl)
	sub	a, #0x07
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00105$
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	b, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	genAssign
;	genMove_o size 1
	ld	b, #0x07
;	genLabel
00106$:
;	genCast
;	(locations are the same)
	C$scroll.c$290$1_0$329	= .
	.globl	C$scroll.c$290$1_0$329
;src\core\scroll.c:290: SWITCH_ROM(image_bank);
;	genAssign
;fetchLitPair	hl
	ld	hl, #_image_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$scroll.c$292$1_0$329	= .
	.globl	C$scroll.c$292$1_0$329
;src\core\scroll.c:292: if (_is_CGB) {  // Color Column Load
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$scroll.c$293$2_0$330	= .
	.globl	C$scroll.c$293$2_0$330
;src\core\scroll.c:293: SWITCH_ROM(image_attr_bank);
;	genAssign
;fetchLitPair	hl
	ld	hl, #_image_attr_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$scroll.c$294$2_0$330	= .
	.globl	C$scroll.c$294$2_0$330
;src\core\scroll.c:294: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$scroll.c$295$2_0$330	= .
	.globl	C$scroll.c$295$2_0$330
;src\core\scroll.c:295: set_bkg_submap(pending_h_x, pending_h_y, 1, height, image_attr_ptr, image_tile_width);
;	genIpush
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_image_attr_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	push	de
;	genIpush
;	genIpush
;	genMove_o size 1
	ld	c, #0x01
; common peephole 43 combined pushing of b and #0x01.
	push	bc
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_pending_h_y) directly instead of using hl.
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_pending_h_x) directly instead of using hl.
	ld	a, (#_pending_h_y)
	ld	h, a
	ld	a, (#_pending_h_x)
	ld	l, a
; common peephole 44b combined pushing of (#_pending_h_y) and (#_pending_h_x).
	push	hl
;	genCall
	call	_set_bkg_submap
;	adjustStack by 7
	add	sp, #7
	pop	bc
	C$scroll.c$296$2_0$330	= .
	.globl	C$scroll.c$296$2_0$330
;src\core\scroll.c:296: VBK_REG = 0;
;	genAssign
	ld	a, #0x00
	ldh	(_VBK_REG + 0), a
;	genLabel
00102$:
	C$scroll.c$300$1_0$329	= .
	.globl	C$scroll.c$300$1_0$329
;src\core\scroll.c:300: SWITCH_ROM(image_bank);
;	genAssign
;fetchLitPair	hl
	ld	hl, #_image_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$scroll.c$301$1_0$329	= .
	.globl	C$scroll.c$301$1_0$329
;src\core\scroll.c:301: set_bkg_submap(pending_h_x, pending_h_y, 1, height, image_ptr, image_tile_width);
;	genIpush
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_image_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	push	de
;	genIpush
;	genIpush
;	genMove_o size 1
	ld	c, #0x01
; common peephole 43 combined pushing of b and #0x01.
	push	bc
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_pending_h_y) directly instead of using hl.
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_pending_h_x) directly instead of using hl.
	ld	a, (#_pending_h_y)
	ld	h, a
	ld	a, (#_pending_h_x)
	ld	l, a
; common peephole 44b combined pushing of (#_pending_h_y) and (#_pending_h_x).
	push	hl
;	genCall
	call	_set_bkg_submap
;	adjustStack by 7
	add	sp, #7
	pop	bc
	C$scroll.c$303$1_0$329	= .
	.globl	C$scroll.c$303$1_0$329
;src\core\scroll.c:303: pending_h_y += height;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_pending_h_y
	ld	a, (hl)
	add	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$scroll.c$304$1_0$329	= .
	.globl	C$scroll.c$304$1_0$329
;src\core\scroll.c:304: pending_h_i -= height;
;	genMinus
;fetchLitPair	hl
	ld	hl, #_pending_h_i
	ld	a, (hl)
	sub	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$scroll.c$306$1_0$329	= .
	.globl	C$scroll.c$306$1_0$329
;src\core\scroll.c:306: SWITCH_ROM(_save);
;	genAssign
	ld	a, c
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_rROMB0
	ld	(hl), c
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$scroll.c$307$1_0$329	= .
	.globl	C$scroll.c$307$1_0$329
;src\core\scroll.c:307: }
;	genEndFunction
	C$scroll.c$307$1_0$329	= .
	.globl	C$scroll.c$307$1_0$329
	XG$scroll_load_pending_col$0$0	= .
	.globl	XG$scroll_load_pending_col$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$scroll_init$0$0	= .
	.globl	G$scroll_init$0$0
	C$scroll.c$44$0_0$277	= .
	.globl	C$scroll.c$44$0_0$277
;src\core\scroll.c:44: void scroll_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function scroll_init
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_scroll_init	= 255
_scroll_init::
	C$scroll.c$45$1_0$277	= .
	.globl	C$scroll.c$45$1_0$277
;src\core\scroll.c:45: draw_scroll_x   = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_draw_scroll_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$scroll.c$46$1_0$277	= .
	.globl	C$scroll.c$46$1_0$277
;src\core\scroll.c:46: draw_scroll_y   = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_draw_scroll_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$scroll.c$47$1_0$277	= .
	.globl	C$scroll.c$47$1_0$277
;src\core\scroll.c:47: scroll_x_max    = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_scroll_x_max
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$scroll.c$48$1_0$277	= .
	.globl	C$scroll.c$48$1_0$277
;src\core\scroll.c:48: scroll_y_max    = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_scroll_y_max
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$scroll.c$49$1_0$277	= .
	.globl	C$scroll.c$49$1_0$277
;src\core\scroll.c:49: scroll_offset_x = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_scroll_offset_x
	ld	(hl), #0x00
	C$scroll.c$50$1_0$277	= .
	.globl	C$scroll.c$50$1_0$277
;src\core\scroll.c:50: scroll_offset_y = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_scroll_offset_y
	ld	(hl), #0x00
	C$scroll.c$51$1_0$277	= .
	.globl	C$scroll.c$51$1_0$277
;src\core\scroll.c:51: scroll_reset();
;	genCall
	ld	e, #b_scroll_reset
	ld	hl, #_scroll_reset
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$scroll.c$52$1_0$277	= .
	.globl	C$scroll.c$52$1_0$277
;src\core\scroll.c:52: }
;	genEndFunction
	C$scroll.c$52$1_0$277	= .
	.globl	C$scroll.c$52$1_0$277
	XG$scroll_init$0$0	= .
	.globl	XG$scroll_init$0$0
	jp  ___sdcc_bcall_ehl
; common peephole 135 replaced call at end of function by jump (tail call optimization).
	G$scroll_reset$0$0	= .
	.globl	G$scroll_reset$0$0
	C$scroll.c$54$1_0$279	= .
	.globl	C$scroll.c$54$1_0$279
;src\core\scroll.c:54: void scroll_reset(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function scroll_reset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_scroll_reset	= 255
_scroll_reset::
	C$scroll.c$55$1_0$279	= .
	.globl	C$scroll.c$55$1_0$279
;src\core\scroll.c:55: pending_w_i     = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_pending_w_i
	ld	(hl), #0x00
	C$scroll.c$56$1_0$279	= .
	.globl	C$scroll.c$56$1_0$279
;src\core\scroll.c:56: pending_h_i     = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_pending_h_i
	ld	(hl), #0x00
	C$scroll.c$57$1_0$279	= .
	.globl	C$scroll.c$57$1_0$279
;src\core\scroll.c:57: scroll_x        = 0x7FFF;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scroll_x
;fetchLitPair	hl
	ld	a, #0xff
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x7f
	C$scroll.c$58$1_0$279	= .
	.globl	C$scroll.c$58$1_0$279
;src\core\scroll.c:58: scroll_y        = 0x7FFF;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scroll_y
;fetchLitPair	hl
	ld	a, #0xff
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x7f
	C$scroll.c$60$1_0$279	= .
	.globl	C$scroll.c$60$1_0$279
;src\core\scroll.c:60: game_time       = 0; // was in scroll_render_rows() - that is insane, here is not the best place either 
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_game_time
	ld	(hl), #0x00
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$scroll.c$61$1_0$279	= .
	.globl	C$scroll.c$61$1_0$279
;src\core\scroll.c:61: }
;	genEndFunction
	C$scroll.c$61$1_0$279	= .
	.globl	C$scroll.c$61$1_0$279
	XG$scroll_reset$0$0	= .
	.globl	XG$scroll_reset$0$0
	ret
	G$scroll_update$0$0	= .
	.globl	G$scroll_update$0$0
	C$scroll.c$63$1_0$281	= .
	.globl	C$scroll.c$63$1_0$281
;src\core\scroll.c:63: void scroll_update(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function scroll_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_scroll_update	= 255
_scroll_update::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$scroll.c$67$1_0$281	= .
	.globl	C$scroll.c$67$1_0$281
;src\core\scroll.c:67: x = (camera_x >> 4) - (SCREENWIDTH >> 1);
;	genRightShift
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_camera_x
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genMinus
	ld	a, c
	add	a, #0xb0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	C$scroll.c$68$1_0$281	= .
	.globl	C$scroll.c$68$1_0$281
;src\core\scroll.c:68: y = (camera_y >> 4) - (SCREENHEIGHT >> 1);
;	genRightShift
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_camera_y
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genMinus
	ld	a, e
	add	a, #0xb8
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	C$scroll.c$70$1_0$281	= .
	.globl	C$scroll.c$70$1_0$281
;src\core\scroll.c:70: if (x & 0x8000u) {  // check for negative signed bit
;	genAnd
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00153$.
;	skipping generated iCode
	C$scroll.c$71$2_0$282	= .
	.globl	C$scroll.c$71$2_0$282
;src\core\scroll.c:71: x = 0u;
;	genAssign
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x0000
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00104$:
	C$scroll.c$72$1_0$281	= .
	.globl	C$scroll.c$72$1_0$281
;src\core\scroll.c:72: } else if (x > scroll_x_max) {
;	genCast
;	AOP_STK for _scroll_update_sloc0_1_0
;	genMove_o size 2
	inc	sp
	inc	sp
	push	bc
;	genMove_o size 0
;	genCmpGt
;	AOP_STK for _scroll_update_sloc0_1_0
	push	de
;fetchLitPair	de
	ld	de, #_scroll_x_max
	ldhl	sp,	#2
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	pop	de
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00105$
;	skipping generated iCode
	C$scroll.c$73$2_0$283	= .
	.globl	C$scroll.c$73$2_0$283
;src\core\scroll.c:73: x = scroll_x_max;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scroll_x_max
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genLabel
00105$:
	C$scroll.c$75$1_0$281	= .
	.globl	C$scroll.c$75$1_0$281
;src\core\scroll.c:75: if (y & 0x8000u) {
;	genAnd
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00154$.
;	skipping generated iCode
	C$scroll.c$76$2_0$284	= .
	.globl	C$scroll.c$76$2_0$284
;src\core\scroll.c:76: y = 0u;
;	genAssign
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00109$:
	C$scroll.c$77$1_0$281	= .
	.globl	C$scroll.c$77$1_0$281
;src\core\scroll.c:77: } else if (y > scroll_y_max) {
;	genCast
;	AOP_STK for _scroll_update_sloc1_1_0
;	genMove_o size 2
	inc	sp
	inc	sp
	push	de
;	genMove_o size 0
;	genCmpGt
;	AOP_STK for _scroll_update_sloc1_1_0
	push	de
;fetchLitPair	de
	ld	de, #_scroll_y_max
	ldhl	sp,	#2
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	pop	de
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00110$
;	skipping generated iCode
	C$scroll.c$78$2_0$285	= .
	.globl	C$scroll.c$78$2_0$285
;src\core\scroll.c:78: y = scroll_y_max;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scroll_y_max
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genLabel
00110$:
	C$scroll.c$81$1_0$281	= .
	.globl	C$scroll.c$81$1_0$281
;src\core\scroll.c:81: current_col = scroll_x >> 3;
;	genRightShift
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_scroll_x)
; common peephole 17 loaded a from (#_scroll_x) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_current_col),a
; common peephole 19 loaded (#_current_col) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_scroll_x + 1)
;fetchLitPair	hl
	ld	hl, #_current_col + 1
	ld	(hl), a
;fetchLitPair	hl
	sra	(hl)
;fetchLitPair	hl
	dec	hl
	rr	(hl)
;fetchLitPair	hl
	inc	hl
	sra	(hl)
;fetchLitPair	hl
	dec	hl
	rr	(hl)
;fetchLitPair	hl
	inc	hl
	sra	(hl)
;fetchLitPair	hl
	dec	hl
	rr	(hl)
	C$scroll.c$82$1_0$281	= .
	.globl	C$scroll.c$82$1_0$281
;src\core\scroll.c:82: current_row = scroll_y >> 3;
;	genRightShift
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_scroll_y)
; common peephole 17 loaded a from (#_scroll_y) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_current_row),a
; common peephole 19 loaded (#_current_row) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_scroll_y + 1)
;fetchLitPair	hl
	ld	hl, #_current_row + 1
	ld	(hl), a
;fetchLitPair	hl
	sra	(hl)
;fetchLitPair	hl
	dec	hl
	rr	(hl)
;fetchLitPair	hl
	inc	hl
	sra	(hl)
;fetchLitPair	hl
	dec	hl
	rr	(hl)
;fetchLitPair	hl
	inc	hl
	sra	(hl)
;fetchLitPair	hl
	dec	hl
	rr	(hl)
	C$scroll.c$83$1_0$281	= .
	.globl	C$scroll.c$83$1_0$281
;src\core\scroll.c:83: new_col = x >> 3;
;	genRightShift
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_new_col
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;fetchLitPair	hl
	sra	(hl)
;fetchLitPair	hl
	dec	hl
	rr	(hl)
;fetchLitPair	hl
	inc	hl
	sra	(hl)
;fetchLitPair	hl
	dec	hl
	rr	(hl)
;fetchLitPair	hl
	inc	hl
	sra	(hl)
;fetchLitPair	hl
	dec	hl
	rr	(hl)
	C$scroll.c$84$1_0$281	= .
	.globl	C$scroll.c$84$1_0$281
;src\core\scroll.c:84: new_row = y >> 3;
;	genRightShift
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_new_row
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;fetchLitPair	hl
	sra	(hl)
;fetchLitPair	hl
	dec	hl
	rr	(hl)
;fetchLitPair	hl
	inc	hl
	sra	(hl)
;fetchLitPair	hl
	dec	hl
	rr	(hl)
;fetchLitPair	hl
	inc	hl
	sra	(hl)
;fetchLitPair	hl
	dec	hl
	rr	(hl)
	C$scroll.c$86$1_0$281	= .
	.globl	C$scroll.c$86$1_0$281
;src\core\scroll.c:86: scroll_x = x;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scroll_x
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$scroll.c$87$1_0$281	= .
	.globl	C$scroll.c$87$1_0$281
;src\core\scroll.c:87: scroll_y = y;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scroll_y
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
	C$scroll.c$88$1_0$281	= .
	.globl	C$scroll.c$88$1_0$281
;src\core\scroll.c:88: draw_scroll_x = x + scroll_offset_x;
;	genCast
;	AOP_STK for _scroll_update_sloc2_1_0
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_scroll_offset_x)
; common peephole 17 loaded a from (#_scroll_offset_x) directly instead of using hl.
	ldhl	sp,	#0
; common peephole 96b move inc hl before sbc a, a
; common peephole 96a move inc hl before rlca
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	rlca
	sbc	a, a
	ld	(hl), a
;	genPlus
;	AOP_STK for _scroll_update_sloc2_1_0
;fetchPairLong
	pop	hl
	push	hl
	add	hl, bc
;	genMove_o size 2
	ld	a, l
	ld	(_draw_scroll_x), a
	ld	a, h
	ld	(_draw_scroll_x + 1), a
	C$scroll.c$89$1_0$281	= .
	.globl	C$scroll.c$89$1_0$281
;src\core\scroll.c:89: draw_scroll_y = y + scroll_offset_y;
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_scroll_offset_y)
; common peephole 17 loaded a from (#_scroll_offset_y) directly instead of using hl.
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
	ld	a, e
	add	a, c
;fetchLitPair	hl
	ld	hl, #_draw_scroll_y
;fetchLitPair	hl
; common peephole 96b move inc hl before adc a, b
; common peephole 96b move inc hl before ld a, d
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, d
	adc	a, b
	ld	(hl), a
	C$scroll.c$91$1_0$281	= .
	.globl	C$scroll.c$91$1_0$281
;src\core\scroll.c:91: if (scroll_viewport(parallax_rows)) return;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_parallax_rows
;	genCall
	call	_scroll_viewport
;	genMove_o size 1
;	genIfx
	or	a, a
;	genRet
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00115$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00112$.
	C$scroll.c$92$1_0$281	= .
	.globl	C$scroll.c$92$1_0$281
;src\core\scroll.c:92: if (scroll_viewport(parallax_rows + 1)) return;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_parallax_rows + 6)
;	genCall
	call	_scroll_viewport
;	genMove_o size 1
;	genIfx
	or	a, a
;	genRet
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00115$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00114$.
	C$scroll.c$93$1_0$281	= .
	.globl	C$scroll.c$93$1_0$281
;src\core\scroll.c:93: scroll_viewport(parallax_rows + 2);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_parallax_rows + 12)
;	genCall
;	adjustStack by 2
	inc	sp
	inc	sp
	jp	_scroll_viewport
;	genLabel
00115$:
	C$scroll.c$94$1_0$281	= .
	.globl	C$scroll.c$94$1_0$281
;src\core\scroll.c:94: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$scroll.c$94$1_0$281	= .
	.globl	C$scroll.c$94$1_0$281
	XG$scroll_update$0$0	= .
	.globl	XG$scroll_update$0$0
	ret
	G$scroll_viewport$0$0	= .
	.globl	G$scroll_viewport$0$0
	C$scroll.c$96$1_0$287	= .
	.globl	C$scroll.c$96$1_0$287
;src\core\scroll.c:96: UBYTE scroll_viewport(parallax_row_t * port) {
;	genLabel
;	genFunction
;	---------------------------------
; Function scroll_viewport
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
_scroll_viewport::
;	adjustStack by -6
	add	sp, #-6
;	genReceive
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genMove_o size 0
	C$scroll.c$97$1_0$287	= .
	.globl	C$scroll.c$97$1_0$287
;src\core\scroll.c:97: if (port->next_y) {
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ld	a, d
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMove_o size 0
;	genIfx
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 0a removed redundant load from a into a.
	or	a, a
	jp	Z, 00138$
	C$scroll.c$100$2_0$288	= .
	.globl	C$scroll.c$100$2_0$288
;src\core\scroll.c:100: if (port->shift == 127) {
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	dec	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCmpEq
	sub	a, #0x7f
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00352$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00105$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00353$.
;	skipping generated iCode
	C$scroll.c$101$3_0$289	= .
	.globl	C$scroll.c$101$3_0$289
;src\core\scroll.c:101: shift_scroll_x = 0;
;	genAssign
;	AOP_STK for _scroll_viewport_sloc0_1_0
;	genMove_o size 2
	xor	a, a
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
	C$scroll.c$102$2_0$288	= .
	.globl	C$scroll.c$102$2_0$288
;src\core\scroll.c:102: } else if (port->shift < 0) {
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMove_o size 0
;	genCmpLt
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	skipping generated iCode
	C$scroll.c$103$3_0$290	= .
	.globl	C$scroll.c$103$3_0$290
;src\core\scroll.c:103: shift_scroll_x = draw_scroll_x << (-port->shift);
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	dec	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genUminus
	xor	a, a
	sub	a, c
	ld	b, a
;	genLeftShift
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_draw_scroll_x
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genMove_o size 0
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00355$
00354$:
	add	a, a
	rl	c
00355$:
	dec	b
	jr	NZ,00354$
;	genMove_o size 2
;	genAssign
;	AOP_STK for _scroll_viewport_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00102$:
	C$scroll.c$105$3_0$291	= .
	.globl	C$scroll.c$105$3_0$291
;src\core\scroll.c:105: shift_scroll_x = draw_scroll_x >> port->shift;
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genRightShift
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_draw_scroll_x
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	e
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00357$
00356$:
	sra	b
	rr	c
00357$:
	dec	e
	jr	NZ, 00356$
;	genMove_o size 2
;	genAssign
;	AOP_STK for _scroll_viewport_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genLabel
00106$:
	C$scroll.c$108$2_0$288	= .
	.globl	C$scroll.c$108$2_0$288
;src\core\scroll.c:108: port->shadow_scx = shift_scroll_x;        
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0005
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _scroll_viewport_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	a, (hl)
;	genMove_o size 0
;	genAssign (pointer)
	C$scroll.c$109$2_1$292	= .
	.globl	C$scroll.c$109$2_1$292
;src\core\scroll.c:109: UBYTE shift_col = shift_scroll_x >> 3;
;	genRightShift
;	AOP_STK for _scroll_viewport_sloc0_1_0
;fetchPairLong
; common peephole 96b move inc hl before ld (bc), a
; common peephole 96b move dec hl before ld (bc), a
; common peephole 156b removed inc hl / dec hl pair.
	ld	(bc), a
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;	genCast
;	genMove_o size 1
	C$scroll.c$112$2_1$292	= .
	.globl	C$scroll.c$112$2_1$292
;src\core\scroll.c:112: if (current_col == new_col - 1) {
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_col
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	dec	de
;	genCmpEq
;fetchLitPair	hl
	ld	hl, #_current_col
	ld	a, (hl)
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00113$
; common peephole 84 jumped to 00113$ directly instead of via 00358$.
;fetchLitPair	hl
	inc	hl
	ld	a, (hl)
	sub	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00358$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00113$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00359$.
;	skipping generated iCode
	C$scroll.c$114$3_1$293	= .
	.globl	C$scroll.c$114$3_1$293
;src\core\scroll.c:114: UBYTE x = shift_col - SCREEN_PAD_LEFT + SCREEN_TILE_REFRES_W - 1;
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genMinus
	add	a, #0x15
	ld	c, a
	C$scroll.c$115$3_1$293	= .
	.globl	C$scroll.c$115$3_1$293
;src\core\scroll.c:115: scroll_load_col(x, port->start_tile, port->tile_height);
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genIpush
	push	bc
	inc	sp
;	genSend
;	genMove_o size 1
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	_scroll_load_col
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
	C$scroll.c$116$2_1$292	= .
	.globl	C$scroll.c$116$2_1$292
;src\core\scroll.c:116: } else if (current_col == new_col + 1) {
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_new_col
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	inc	de
;	genCmpEq
;fetchLitPair	hl
	ld	hl, #_current_col
	ld	a, (hl)
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00110$
; common peephole 84 jumped to 00110$ directly instead of via 00360$.
;fetchLitPair	hl
	inc	hl
	ld	a, (hl)
	sub	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00360$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00110$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00361$.
;	skipping generated iCode
	C$scroll.c$118$3_1$294	= .
	.globl	C$scroll.c$118$3_1$294
;src\core\scroll.c:118: UBYTE x = MAX(0, shift_col - SCREEN_PAD_LEFT);
;	genCast
;	genMove_o size 1
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genMinus
;fetchPairLong
	ld	h, a
	dec	hl
;	genCmpGt
	bit	7, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00142$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	c, #0x00
; common peephole 6b removed dead xor a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00143$
;	genLabel
00142$:
;	genCast
;	(locations are the same)
;	genMinus
	dec	c
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	rlca
; common peephole 6b removed dead sbc a, a
;	genLabel
00143$:
;	genCast
;	genMove_o size 1
	C$scroll.c$119$3_1$294	= .
	.globl	C$scroll.c$119$3_1$294
;src\core\scroll.c:119: scroll_load_col(x, port->start_tile, port->tile_height);
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genIpush
	push	bc
	inc	sp
;	genSend
;	genMove_o size 1
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	_scroll_load_col
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00110$:
	C$scroll.c$120$2_1$292	= .
	.globl	C$scroll.c$120$2_1$292
;src\core\scroll.c:120: } else if (current_col != new_col) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_current_col)
; common peephole 17 loaded a from (#_current_col) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_new_col
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00362$
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_current_col + 1)
;fetchLitPair	hl
	ld	hl, #_new_col + 1
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
; common peephole 81 removed jp by using inverse jump logic
00362$:
;	skipping generated iCode
	C$scroll.c$122$3_1$295	= .
	.globl	C$scroll.c$122$3_1$295
;src\core\scroll.c:122: scroll_render_rows(shift_scroll_x, 0, port->start_tile, port->tile_height);
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genIpush
	push	bc
	inc	sp
;	genIpush
	push	af
	inc	sp
;	genSend
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x0000
;	genSend
;	AOP_STK for _scroll_viewport_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	_scroll_render_rows
;	genLabel
00114$:
	C$scroll.c$124$2_1$292	= .
	.globl	C$scroll.c$124$2_1$292
;src\core\scroll.c:124: return FALSE;   
;	genRet
;	genMove_o size 1
	xor	a, a
	jp	00140$
;	genLabel
00138$:
	C$scroll.c$127$2_0$296	= .
	.globl	C$scroll.c$127$2_0$296
;src\core\scroll.c:127: port->shadow_scx = draw_scroll_x;
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0005
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_draw_scroll_x)
; common peephole 17 loaded a from (#_draw_scroll_x) directly instead of using hl.
;	genAssign (pointer)
	ld	(bc), a
	C$scroll.c$130$2_0$296	= .
	.globl	C$scroll.c$130$2_0$296
;src\core\scroll.c:130: if (current_col == new_col - 1) {
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_col
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	dec	bc
;	genCmpEq
;fetchLitPair	hl
	ld	hl, #_current_col
	ld	a, (hl)
	sub	a, c
	jp	NZ,00121$
; common peephole 84 jumped to 00121$ directly instead of via 00363$.
;fetchLitPair	hl
	inc	hl
	ld	a, (hl)
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00363$.
	jp	NZ,00121$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00364$.
;	skipping generated iCode
	C$scroll.c$132$3_0$297	= .
	.globl	C$scroll.c$132$3_0$297
;src\core\scroll.c:132: UBYTE x = new_col - SCREEN_PAD_LEFT + SCREEN_TILE_REFRES_W - 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_new_col)
; common peephole 17 loaded a from (#_new_col) directly instead of using hl.
;	genMinus
;	AOP_STK for _scroll_viewport_sloc1_1_0
	add	a, #0x15
	ldhl	sp,	#2
	ld	(hl), a
	C$scroll.c$133$3_0$297	= .
	.globl	C$scroll.c$133$3_0$297
;src\core\scroll.c:133: UBYTE y = MAX(0, MAX((new_row - SCREEN_PAD_TOP), port->start_tile));
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_row
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	dec	bc
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from h directly instead of going through a.
	ld	d, h
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00365$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00366$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00366$
00365$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00366$
	scf
00366$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00146$
;	skipping generated iCode
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_row
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	dec	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00147$
;	genLabel
00146$:
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
; common peephole 1 removed dead load from a into c.
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
; common peephole 2c removed inc bc due to unused result.
; common peephole 5 removed dead inc bc.
; common peephole 2c removed inc bc due to unused result.
;	genPointerGet
; common peephole 1 removed dead load from (bc) into a.
;	genMove_o size 1
;	genCast
;	genMove_o size 1
; common peephole 1 removed dead load from a into c.
;	genMove_o size 0
;	genMove_o size 1
; common peephole 41a remove double load to b.
	ld	b, #0x00
;	genLabel
00147$:
;	genCmpGt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00144$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	c, #0x00
; common peephole 6b removed dead xor a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00145$
;	genLabel
00144$:
;	genMinus
;	AOP_STK for _scroll_viewport_sloc2_1_0
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_row
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0001
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#1
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genCmpGt
;	AOP_STK for _scroll_viewport_sloc2_1_0
	ldhl	sp,	#0
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00367$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00368$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00368$
00367$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00368$
	scf
00368$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00148$
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_new_row)
; common peephole 17 loaded a from (#_new_row) directly instead of using hl.
;	genMinus
	dec	a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00149$
;	genLabel
00148$:
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genLabel
00149$:
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
; common peephole 6b removed dead sbc a, a
;	genLabel
00145$:
;	genCast
;	AOP_STK for _scroll_viewport_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), c
;	genMove_o size 0
	C$scroll.c$134$3_0$297	= .
	.globl	C$scroll.c$134$3_0$297
;src\core\scroll.c:134: UBYTE full_y = MAX(0, (new_row - SCREEN_PAD_TOP));
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_row
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	dec	bc
;	genCmpGt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00150$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	c, #0x00
; common peephole 6b removed dead xor a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00151$
;	genLabel
00150$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_new_row)
; common peephole 17 loaded a from (#_new_row) directly instead of using hl.
;	genMinus
	dec	a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
; common peephole 6b removed dead sbc a, a
;	genLabel
00151$:
;	genCast
;	genMove_o size 1
	C$scroll.c$135$3_0$297	= .
	.globl	C$scroll.c$135$3_0$297
;src\core\scroll.c:135: scroll_queue_col(x, y);
;	genSend
;	AOP_STK for _scroll_viewport_sloc3_1_0
	push	bc
;	genMove_o size 1
	ldhl	sp,	#5
;	genMove_o size 0
;	genSend
;	AOP_STK for _scroll_viewport_sloc1_1_0
;	genMove_o size 1
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	call	_scroll_queue_col
	pop	bc
	C$scroll.c$136$3_0$297	= .
	.globl	C$scroll.c$136$3_0$297
;src\core\scroll.c:136: activate_actors_in_col(x, full_y);
;	genIpush
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _scroll_viewport_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_activate_actors_in_col
	ld	hl, #_activate_actors_in_col
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genGoto
	jp	00122$
;	genLabel
00121$:
	C$scroll.c$137$2_0$296	= .
	.globl	C$scroll.c$137$2_0$296
;src\core\scroll.c:137: } else if (current_col == new_col + 1) {
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_new_col
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	inc	bc
;	genCmpEq
;fetchLitPair	hl
	ld	hl, #_current_col
	ld	a, (hl)
	sub	a, c
	jp	NZ,00118$
; common peephole 84 jumped to 00118$ directly instead of via 00369$.
;fetchLitPair	hl
	inc	hl
	ld	a, (hl)
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00369$.
	jp	NZ,00118$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00370$.
;	skipping generated iCode
	C$scroll.c$139$3_0$298	= .
	.globl	C$scroll.c$139$3_0$298
;src\core\scroll.c:139: UBYTE x = MAX(0, new_col - SCREEN_PAD_LEFT);
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_col
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	dec	bc
;	genCmpGt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00152$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	c, #0x00
; common peephole 6b removed dead xor a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00153$
;	genLabel
00152$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_new_col)
; common peephole 17 loaded a from (#_new_col) directly instead of using hl.
;	genMinus
	dec	a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
; common peephole 6b removed dead sbc a, a
;	genLabel
00153$:
;	genCast
;	AOP_STK for _scroll_viewport_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	(hl), c
;	genMove_o size 0
	C$scroll.c$140$3_0$298	= .
	.globl	C$scroll.c$140$3_0$298
;src\core\scroll.c:140: UBYTE y = MAX(0, MAX((new_row - SCREEN_PAD_TOP), port->start_tile));
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_row
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	dec	bc
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from h directly instead of going through a.
	ld	d, h
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00371$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00372$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00372$
00371$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00372$
	scf
00372$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00156$
;	skipping generated iCode
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_row
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	dec	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00157$
;	genLabel
00156$:
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
; common peephole 1 removed dead load from a into c.
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
; common peephole 2c removed inc bc due to unused result.
; common peephole 5 removed dead inc bc.
; common peephole 2c removed inc bc due to unused result.
;	genPointerGet
; common peephole 1 removed dead load from (bc) into a.
;	genMove_o size 1
;	genCast
;	genMove_o size 1
; common peephole 1 removed dead load from a into c.
;	genMove_o size 0
;	genMove_o size 1
; common peephole 41a remove double load to b.
	ld	b, #0x00
;	genLabel
00157$:
;	genCmpGt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00154$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	c, #0x00
; common peephole 6b removed dead xor a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00155$
;	genLabel
00154$:
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_row
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	dec	bc
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genCmpGt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from h directly instead of going through a.
	ld	d, h
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00373$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00374$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00374$
00373$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00374$
	scf
00374$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00158$
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_new_row)
; common peephole 17 loaded a from (#_new_row) directly instead of using hl.
;	genMinus
	dec	a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00159$
;	genLabel
00158$:
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genLabel
00159$:
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
; common peephole 6b removed dead sbc a, a
;	genLabel
00155$:
;	genCast
;	AOP_STK for _scroll_viewport_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), c
;	genMove_o size 0
	C$scroll.c$141$3_0$298	= .
	.globl	C$scroll.c$141$3_0$298
;src\core\scroll.c:141: UBYTE full_y = MAX(0, (new_row - SCREEN_PAD_TOP));
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_row
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	dec	bc
;	genCmpGt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00160$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	c, #0x00
; common peephole 6b removed dead xor a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00161$
;	genLabel
00160$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_new_row)
; common peephole 17 loaded a from (#_new_row) directly instead of using hl.
;	genMinus
	dec	a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
; common peephole 6b removed dead sbc a, a
;	genLabel
00161$:
;	genCast
;	genMove_o size 1
	C$scroll.c$142$3_0$298	= .
	.globl	C$scroll.c$142$3_0$298
;src\core\scroll.c:142: scroll_queue_col(x, y);
;	genSend
;	AOP_STK for _scroll_viewport_sloc5_1_0
	push	bc
;	genMove_o size 1
	ldhl	sp,	#5
;	genMove_o size 0
;	genSend
;	AOP_STK for _scroll_viewport_sloc4_1_0
;	genMove_o size 1
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	call	_scroll_queue_col
	pop	bc
	C$scroll.c$143$3_0$298	= .
	.globl	C$scroll.c$143$3_0$298
;src\core\scroll.c:143: activate_actors_in_col(x, full_y);
;	genIpush
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _scroll_viewport_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_activate_actors_in_col
	ld	hl, #_activate_actors_in_col
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00122$
;	genLabel
00118$:
	C$scroll.c$144$2_0$296	= .
	.globl	C$scroll.c$144$2_0$296
;src\core\scroll.c:144: } else if (current_col != new_col) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_current_col)
; common peephole 17 loaded a from (#_current_col) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_new_col
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00375$
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_current_col + 1)
;fetchLitPair	hl
	ld	hl, #_new_col + 1
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00122$
; common peephole 81 removed jp by using inverse jump logic
00375$:
;	skipping generated iCode
	C$scroll.c$146$3_0$299	= .
	.globl	C$scroll.c$146$3_0$299
;src\core\scroll.c:146: scroll_render_rows(draw_scroll_x, draw_scroll_y, ((scene_LCD_type == LCD_parallax) ? port->start_tile : -SCREEN_PAD_TOP), SCREEN_TILE_REFRES_H);
;	genCmpEq
;fetchLitPair	hl
	ld	hl, #_scene_LCD_type
	ld	a, (hl)
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00376$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00162$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00377$.
;	skipping generated iCode
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00163$
;	genLabel
00162$:
;	genAssign
;	genMove_o size 1
	ld	a, #0xff
;	genLabel
00163$:
;	genIpush
;	genMove_o size 1
	ld	h, #0x15
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
	push	af
	inc	sp
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_draw_scroll_y
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_draw_scroll_x
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	_scroll_render_rows
	C$scroll.c$147$3_0$299	= .
	.globl	C$scroll.c$147$3_0$299
;src\core\scroll.c:147: return TRUE;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
	jp	00140$
;	genLabel
00122$:
	C$scroll.c$151$2_0$296	= .
	.globl	C$scroll.c$151$2_0$296
;src\core\scroll.c:151: if (current_row == new_row - 1) {
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_row
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	dec	bc
;	genCmpEq
;fetchLitPair	hl
	ld	hl, #_current_row
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00129$
; common peephole 84 jumped to 00129$ directly instead of via 00378$.
;fetchLitPair	hl
	inc	hl
	ld	a, (hl)
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00378$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00129$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00379$.
;	skipping generated iCode
	C$scroll.c$153$3_0$300	= .
	.globl	C$scroll.c$153$3_0$300
;src\core\scroll.c:153: UBYTE x = MAX(0, new_col - SCREEN_PAD_LEFT);
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_col
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	dec	bc
;	genCmpGt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00164$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	c, #0x00
; common peephole 6b removed dead xor a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00165$
;	genLabel
00164$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_new_col)
; common peephole 17 loaded a from (#_new_col) directly instead of using hl.
;	genMinus
	dec	a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
; common peephole 6b removed dead sbc a, a
;	genLabel
00165$:
;	genCast
;	genMove_o size 1
	C$scroll.c$154$3_0$300	= .
	.globl	C$scroll.c$154$3_0$300
;src\core\scroll.c:154: UBYTE y = new_row - SCREEN_PAD_TOP + SCREEN_TILE_REFRES_H - 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_new_row)
; common peephole 17 loaded a from (#_new_row) directly instead of using hl.
;	genMinus
	add	a, #0x13
	ld	b, a
	C$scroll.c$155$3_0$300	= .
	.globl	C$scroll.c$155$3_0$300
;src\core\scroll.c:155: scroll_queue_row(x, y);
;	genSend
	push	bc
;	genMove_o size 1
	ld	e, b
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	_scroll_queue_row
	pop	bc
	C$scroll.c$156$3_0$300	= .
	.globl	C$scroll.c$156$3_0$300
;src\core\scroll.c:156: activate_actors_in_row(x, y);
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_activate_actors_in_row
	ld	hl, #_activate_actors_in_row
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genGoto
	jp	00130$
;	genLabel
00129$:
	C$scroll.c$157$2_0$296	= .
	.globl	C$scroll.c$157$2_0$296
;src\core\scroll.c:157: } else if (current_row == new_row + 1) {
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_new_row
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	inc	bc
;	genCmpEq
;fetchLitPair	hl
	ld	hl, #_current_row
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00126$
; common peephole 84 jumped to 00126$ directly instead of via 00380$.
;fetchLitPair	hl
	inc	hl
	ld	a, (hl)
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00380$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00126$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00381$.
;	skipping generated iCode
	C$scroll.c$159$3_0$301	= .
	.globl	C$scroll.c$159$3_0$301
;src\core\scroll.c:159: UBYTE x = MAX(0, new_col - SCREEN_PAD_LEFT);
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_col
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	dec	bc
;	genCmpGt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00166$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	c, #0x00
; common peephole 6b removed dead xor a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00167$
;	genLabel
00166$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_new_col)
; common peephole 17 loaded a from (#_new_col) directly instead of using hl.
;	genMinus
	dec	a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
; common peephole 6b removed dead sbc a, a
;	genLabel
00167$:
;	genCast
;	AOP_STK for _scroll_viewport_sloc6_1_0
;	genMove_o size 1
	ldhl	sp,	#2
;	genMove_o size 0
	C$scroll.c$160$3_0$301	= .
	.globl	C$scroll.c$160$3_0$301
;src\core\scroll.c:160: UBYTE y = MAX(port->start_tile, new_row - SCREEN_PAD_TOP);
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	inc	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_new_row
; common peephole 77c decremented immediate.
	ld	c, (hl)
;fetchLitPair	hl
	inc	hl
	ld	b, (hl)
	dec	bc
;	genCast
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genCmpGt
; common peephole 9 loaded e from h directly instead of going through a.
	ld	e, h
; common peephole 9 loaded d from b directly instead of going through a.
	ld	d, b
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00382$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00383$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00383$
00382$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00383$
	scf
00383$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00168$
;	skipping generated iCode
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00169$
;	genLabel
00168$:
;	genCast
;	AOP_STK for _scroll_viewport_sloc7_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_new_row)
; common peephole 17 loaded a from (#_new_row) directly instead of using hl.
	ldhl	sp,	#3
	ld	(hl), a
;	genMinus
;	AOP_STK for _scroll_viewport_sloc7_1_0
	ld	b, (hl)
	dec	b
;	genLabel
00169$:
;	genAssign
;	(locations are the same)
	C$scroll.c$161$3_0$301	= .
	.globl	C$scroll.c$161$3_0$301
;src\core\scroll.c:161: scroll_queue_row(x, y);
;	genSend
	push	bc
;	genMove_o size 1
	ld	e, b
;	genMove_o size 0
;	genSend
;	AOP_STK for _scroll_viewport_sloc6_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	call	_scroll_queue_row
	pop	bc
	C$scroll.c$162$3_0$301	= .
	.globl	C$scroll.c$162$3_0$301
;src\core\scroll.c:162: activate_actors_in_row(x, y);
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	AOP_STK for _scroll_viewport_sloc6_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_activate_actors_in_row
	ld	hl, #_activate_actors_in_row
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00130$
;	genLabel
00126$:
	C$scroll.c$163$2_0$296	= .
	.globl	C$scroll.c$163$2_0$296
;src\core\scroll.c:163: } else if (current_row != new_row) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_current_row)
; common peephole 17 loaded a from (#_current_row) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_new_row
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00384$
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_current_row + 1)
;fetchLitPair	hl
	ld	hl, #_new_row + 1
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00130$
; common peephole 81 removed jp by using inverse jump logic
00384$:
;	skipping generated iCode
	C$scroll.c$165$3_0$302	= .
	.globl	C$scroll.c$165$3_0$302
;src\core\scroll.c:165: scroll_render_rows(draw_scroll_x, draw_scroll_y, ((scene_LCD_type == LCD_parallax) ? port->start_tile : -SCREEN_PAD_TOP), SCREEN_TILE_REFRES_H);
;	genCmpEq
;fetchLitPair	hl
	ld	hl, #_scene_LCD_type
	ld	a, (hl)
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00385$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00170$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00386$.
;	skipping generated iCode
;	genPlus
;	AOP_STK for _scroll_viewport_port_10000_286
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00171$
;	genLabel
00170$:
;	genAssign
;	genMove_o size 1
	ld	a, #0xff
;	genLabel
00171$:
;	genIpush
;	genMove_o size 1
	ld	h, #0x15
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
	push	af
	inc	sp
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_draw_scroll_y
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_draw_scroll_x
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	_scroll_render_rows
	C$scroll.c$166$3_0$302	= .
	.globl	C$scroll.c$166$3_0$302
;src\core\scroll.c:166: return TRUE;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00140$
;	genLabel
00130$:
	C$scroll.c$169$2_0$296	= .
	.globl	C$scroll.c$169$2_0$296
;src\core\scroll.c:169: if (IS_FRAME_2) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_game_time)
; common peephole 17 loaded a from (#_game_time) directly instead of using hl.
;	genAnd
	rrca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00387$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00136$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00388$.
;	skipping generated iCode
	C$scroll.c$170$3_0$303	= .
	.globl	C$scroll.c$170$3_0$303
;src\core\scroll.c:170: if (pending_h_i) scroll_load_pending_col();
;	genIfx
;fetchLitPair	hl
	ld	a, (#_pending_h_i)
; common peephole 17 loaded a from (#_pending_h_i) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00132$
;	genCall
	call	_scroll_load_pending_col
;	genLabel
00132$:
	C$scroll.c$171$3_0$303	= .
	.globl	C$scroll.c$171$3_0$303
;src\core\scroll.c:171: if (pending_w_i) scroll_load_pending_row();
;	genIfx
;fetchLitPair	hl
	ld	a, (#_pending_w_i)
; common peephole 17 loaded a from (#_pending_w_i) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00136$
;	genCall
	call	_scroll_load_pending_row
;	genLabel
00136$:
	C$scroll.c$174$2_0$296	= .
	.globl	C$scroll.c$174$2_0$296
;src\core\scroll.c:174: return TRUE;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
;	genLabel
00140$:
	C$scroll.c$176$1_0$287	= .
	.globl	C$scroll.c$176$1_0$287
;src\core\scroll.c:176: }
;	genEndFunction
;	adjustStack by 6
	add	sp, #6
	C$scroll.c$176$1_0$287	= .
	.globl	C$scroll.c$176$1_0$287
	XG$scroll_viewport$0$0	= .
	.globl	XG$scroll_viewport$0$0
	ret
	G$scroll_repaint$0$0	= .
	.globl	G$scroll_repaint$0$0
	C$scroll.c$178$1_0$305	= .
	.globl	C$scroll.c$178$1_0$305
;src\core\scroll.c:178: void scroll_repaint(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function scroll_repaint
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_scroll_repaint	= 255
_scroll_repaint::
	C$scroll.c$179$1_0$305	= .
	.globl	C$scroll.c$179$1_0$305
;src\core\scroll.c:179: scroll_reset();
;	genCall
	ld	e, #b_scroll_reset
	ld	hl, #_scroll_reset
	call	___sdcc_bcall_ehl
	C$scroll.c$180$1_0$305	= .
	.globl	C$scroll.c$180$1_0$305
;src\core\scroll.c:180: scroll_update();
;	genCall
	ld	e, #b_scroll_update
	ld	hl, #_scroll_update
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$scroll.c$181$1_0$305	= .
	.globl	C$scroll.c$181$1_0$305
;src\core\scroll.c:181: }
;	genEndFunction
	C$scroll.c$181$1_0$305	= .
	.globl	C$scroll.c$181$1_0$305
	XG$scroll_repaint$0$0	= .
	.globl	XG$scroll_repaint$0$0
	jp  ___sdcc_bcall_ehl
; common peephole 135 replaced call at end of function by jump (tail call optimization).
	G$scroll_render_rows$0$0	= .
	.globl	G$scroll_render_rows$0$0
	C$scroll.c$183$1_0$307	= .
	.globl	C$scroll.c$183$1_0$307
;src\core\scroll.c:183: void scroll_render_rows(INT16 scroll_x, INT16 scroll_y, BYTE row_offset, BYTE n_rows) {
;	genLabel
;	genFunction
;	---------------------------------
; Function scroll_render_rows
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
_scroll_render_rows::
;	adjustStack by -5
	add	sp, #-5
;	genReceive
;	AOP_STK for _scroll_render_rows_scroll_x_10000_306
;	genMove_o size 2
	ldhl	sp,	#3
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
;	genReceive
;	AOP_STK for _scroll_render_rows_scroll_y_10000_306
;	genMove_o size 2
	ldhl	sp,	#1
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$scroll.c$185$1_0$307	= .
	.globl	C$scroll.c$185$1_0$307
;src\core\scroll.c:185: pending_w_i = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_pending_w_i
	ld	(hl), #0x00
	C$scroll.c$186$1_0$307	= .
	.globl	C$scroll.c$186$1_0$307
;src\core\scroll.c:186: pending_h_i = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_pending_h_i
	ld	(hl), #0x00
	C$scroll.c$188$1_1$308	= .
	.globl	C$scroll.c$188$1_1$308
;src\core\scroll.c:188: UBYTE x = MAX(0, (scroll_x >> 3) - SCREEN_PAD_LEFT);
;	genRightShift
;	AOP_STK for _scroll_render_rows_scroll_x_10000_306
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genMinus
	dec	bc
;	genCmpGt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	c, #0x00
; common peephole 6b removed dead xor a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00108$:
;	genRightShift
;	AOP_STK for _scroll_render_rows_scroll_x_10000_306
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	genMove_o size 1
;	genMinus
	dec	c
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	rlca
; common peephole 6b removed dead sbc a, a
;	genLabel
00109$:
;	genCast
;	AOP_STK for _scroll_render_rows_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
;	genMove_o size 0
	C$scroll.c$189$1_1$308	= .
	.globl	C$scroll.c$189$1_1$308
;src\core\scroll.c:189: UBYTE y = MAX(0, (scroll_y >> 3) + row_offset);
;	genRightShift
;	AOP_STK for _scroll_render_rows_scroll_y_10000_306
;fetchPairLong
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	AOP_STK for 
;	genMove_o size 0
;	genMove_o size 1
	ldhl	sp,	#7
	ld	a, (hl)
;	genMove_o size 0
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genPlus
;	genMove_o size 2
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genCmpGt
	bit	7, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00110$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	b, #0x00
; common peephole 6b removed dead xor a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;	genLabel
00110$:
;	genRightShift
;	AOP_STK for _scroll_render_rows_scroll_y_10000_306
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#1
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genPlus
;	AOP_STK for 
	ldhl	sp,	#7
	add	a, (hl)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	b, a
	rlca
; common peephole 6b removed dead sbc a, a
;	genLabel
00111$:
;	genCast
;	genMove_o size 1
	C$scroll.c$191$2_1$307	= .
	.globl	C$scroll.c$191$2_1$307
;src\core\scroll.c:191: for (BYTE i = 0; i != n_rows && y != image_tile_height; ++i, y++) {
;	genAssign
;	genMove_o size 1
	ld	c, #0x00
;	genLabel
00104$:
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#8
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00143$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_image_tile_height)
; common peephole 17 loaded a from (#_image_tile_height) directly instead of using hl.
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00144$.
;	skipping generated iCode
	C$scroll.c$192$3_1$310	= .
	.globl	C$scroll.c$192$3_1$310
;src\core\scroll.c:192: scroll_load_row(x, y);
;	genSend
	push	bc
;	genMove_o size 1
	ld	e, b
;	genMove_o size 0
;	genSend
;	AOP_STK for _scroll_render_rows_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	call	_scroll_load_row
	pop	bc
	C$scroll.c$193$3_1$310	= .
	.globl	C$scroll.c$193$3_1$310
;src\core\scroll.c:193: activate_actors_in_row(x, y);
;	genIpush
	push	bc
	push	bc
	inc	sp
;	genIpush
;	AOP_STK for _scroll_render_rows_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_activate_actors_in_row
	ld	hl, #_activate_actors_in_row
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
	pop	bc
	C$scroll.c$191$2_1$309	= .
	.globl	C$scroll.c$191$2_1$309
;src\core\scroll.c:191: for (BYTE i = 0; i != n_rows && y != image_tile_height; ++i, y++) {
;	genPlus
	inc	c
;	genPlus
	inc	b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00106$:
	C$scroll.c$195$2_1$307	= .
	.globl	C$scroll.c$195$2_1$307
;src\core\scroll.c:195: }
;	genEndFunction
;	adjustStack by 5
	add	sp, #5
	pop	hl
	pop	af
	jp	(hl)
	G$scroll_queue_row$0$0	= .
	.globl	G$scroll_queue_row$0$0
	C$scroll.c$197$2_1$312	= .
	.globl	C$scroll.c$197$2_1$312
;src\core\scroll.c:197: void scroll_queue_row(UBYTE x, UBYTE y) {
;	genLabel
;	genFunction
;	---------------------------------
; Function scroll_queue_row
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_scroll_queue_row::
;	genReceive
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
;	genReceive
;	genMove_o size 1
	C$scroll.c$198$1_0$312	= .
	.globl	C$scroll.c$198$1_0$312
;src\core\scroll.c:198: while (pending_w_i) {
;	genLabel
00101$:
;	genIfx
;fetchLitPair	hl
	ld	a, (#_pending_w_i)
; common peephole 17 loaded a from (#_pending_w_i) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
	C$scroll.c$201$2_0$313	= .
	.globl	C$scroll.c$201$2_0$313
;src\core\scroll.c:201: scroll_load_pending_row();
;	genCall
	push	de
	call	_scroll_load_pending_row
	pop	de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00103$:
	C$scroll.c$205$1_0$312	= .
	.globl	C$scroll.c$205$1_0$312
;src\core\scroll.c:205: if (y >= image_tile_height) {
;	genCmpLt
	ld	a, e
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
;	skipping generated iCode
	C$scroll.c$206$2_0$314	= .
	.globl	C$scroll.c$206$2_0$314
;src\core\scroll.c:206: return;
;	genRet
;	genLabel
	ret	NC
; common peephole 161 replaced jump by return.
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00105$.
	C$scroll.c$209$1_0$312	= .
	.globl	C$scroll.c$209$1_0$312
;src\core\scroll.c:209: pending_w_x = x;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_pending_w_x
	ld	(hl), d
	C$scroll.c$210$1_0$312	= .
	.globl	C$scroll.c$210$1_0$312
;src\core\scroll.c:210: pending_w_y = y;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_pending_w_y
	ld	(hl), e
	C$scroll.c$211$1_0$312	= .
	.globl	C$scroll.c$211$1_0$312
;src\core\scroll.c:211: pending_w_i = SCREEN_TILE_REFRES_W;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_pending_w_i
	ld	(hl), #0x17
;	genLabel
; common peephole 158 removed unused label 00106$.
	C$scroll.c$212$1_0$312	= .
	.globl	C$scroll.c$212$1_0$312
;src\core\scroll.c:212: }
;	genEndFunction
	C$scroll.c$212$1_0$312	= .
	.globl	C$scroll.c$212$1_0$312
	XG$scroll_queue_row$0$0	= .
	.globl	XG$scroll_queue_row$0$0
	ret
	G$scroll_queue_col$0$0	= .
	.globl	G$scroll_queue_col$0$0
	C$scroll.c$214$1_0$316	= .
	.globl	C$scroll.c$214$1_0$316
;src\core\scroll.c:214: void scroll_queue_col(UBYTE x, UBYTE y) {
;	genLabel
;	genFunction
;	---------------------------------
; Function scroll_queue_col
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_scroll_queue_col::
;	genReceive
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genReceive
;	genMove_o size 1
	ld	c, e
;	genMove_o size 0
	C$scroll.c$215$1_0$316	= .
	.globl	C$scroll.c$215$1_0$316
;src\core\scroll.c:215: while (pending_h_i) {
;	genLabel
00101$:
;	genIfx
;fetchLitPair	hl
	ld	a, (#_pending_h_i)
; common peephole 17 loaded a from (#_pending_h_i) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
	C$scroll.c$218$2_0$317	= .
	.globl	C$scroll.c$218$2_0$317
;src\core\scroll.c:218: scroll_load_pending_col();
;	genCall
	push	bc
	call	_scroll_load_pending_col
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00103$:
	C$scroll.c$221$1_0$316	= .
	.globl	C$scroll.c$221$1_0$316
;src\core\scroll.c:221: pending_h_x = x;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_pending_h_x
	ld	(hl), b
	C$scroll.c$222$1_0$316	= .
	.globl	C$scroll.c$222$1_0$316
;src\core\scroll.c:222: pending_h_y = y;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_pending_h_y
	ld	(hl), c
	C$scroll.c$223$1_0$316	= .
	.globl	C$scroll.c$223$1_0$316
;src\core\scroll.c:223: pending_h_i = MIN(SCREEN_TILE_REFRES_H, image_tile_height - y);
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_height)
; common peephole 17 loaded a from (#_image_tile_height) directly instead of using hl.
;	genMove_o size 1
	ld	b, #0x00
;	genCast
;	genMove_o size 1
	ld	e, c
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genMinus
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	b, a
;	genCmpLt
; common peephole 9 loaded e from b directly instead of going through a.
	ld	e, b
; common peephole 9 loaded d from #0x00 directly instead of going through a.
	ld	d, #0x00
	ld	a, #0x15
	cp	a, l
	ld	a, #0x00
	sbc	a, b
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00126$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00127$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00127$
00126$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00127$
	scf
00127$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00106$
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	a, #0x15
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
;	genMinus
;fetchLitPair	hl
	ld	a, (#_image_tile_height)
; common peephole 17 loaded a from (#_image_tile_height) directly instead of using hl.
	sub	a, c
;	genLabel
00107$:
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_pending_h_i),a
; common peephole 19 loaded (#_pending_h_i) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$scroll.c$224$1_0$316	= .
	.globl	C$scroll.c$224$1_0$316
;src\core\scroll.c:224: }
;	genEndFunction
	C$scroll.c$224$1_0$316	= .
	.globl	C$scroll.c$224$1_0$316
	XG$scroll_queue_col$0$0	= .
	.globl	XG$scroll_queue_col$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
