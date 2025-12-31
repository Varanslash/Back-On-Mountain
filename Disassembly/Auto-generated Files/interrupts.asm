;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module interrupts
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _parallax_LCD_isr
	.globl _remove_LCD
	.globl _overlay_cut_scanline
	.globl _show_actors_on_overlay
	.globl _hide_sprites
	.globl b_remove_LCD_ISRs
	.globl _remove_LCD_ISRs
	.globl _simple_LCD_isr
	.globl _fullscreen_LCD_isr
	.globl _VBL_isr
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
G$hide_sprites$0_0$0==.
_hide_sprites::
	.ds 1
G$show_actors_on_overlay$0_0$0==.
_show_actors_on_overlay::
	.ds 1
G$overlay_cut_scanline$0_0$0==.
_overlay_cut_scanline::
	.ds 1
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
	G$simple_LCD_isr$0$0	= .
	.globl	G$simple_LCD_isr$0$0
	C$interrupts.c$26$2_0$221	= .
	.globl	C$interrupts.c$26$2_0$221
;src\core\interrupts.c:26: void simple_LCD_isr(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function simple_LCD_isr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_simple_LCD_isr::
	C$interrupts.c$27$1_0$221	= .
	.globl	C$interrupts.c$27$1_0$221
;src\core\interrupts.c:27: if (LYC_REG == LYC_SYNC_VALUE) {
;	genCmpEq
	ldh	a, (_LYC_REG + 0)
	sub	a, #0x96
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00200$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00124$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00201$.
;	skipping generated iCode
	C$interrupts.c$28$2_0$222	= .
	.globl	C$interrupts.c$28$2_0$222
;src\core\interrupts.c:28: SCX_REG = draw_scroll_x;
;	genCast
;fetchLitPair	hl
	ld	a, (#_draw_scroll_x)
; common peephole 17 loaded a from (#_draw_scroll_x) directly instead of using hl.
	ldh	(_SCX_REG + 0), a
	C$interrupts.c$29$2_0$222	= .
	.globl	C$interrupts.c$29$2_0$222
;src\core\interrupts.c:29: SCY_REG = draw_scroll_y;
;	genCast
;fetchLitPair	hl
	ld	a, (#_draw_scroll_y)
; common peephole 17 loaded a from (#_draw_scroll_y) directly instead of using hl.
	ldh	(_SCY_REG + 0), a
	C$interrupts.c$30$2_0$222	= .
	.globl	C$interrupts.c$30$2_0$222
;src\core\interrupts.c:30: if (WY_REG) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_WY_REG)
; common peephole 17 loaded a from (#_WY_REG) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
	C$interrupts.c$31$3_0$223	= .
	.globl	C$interrupts.c$31$3_0$223
;src\core\interrupts.c:31: if (WY_REG < MENU_CLOSED_Y) LYC_REG = WY_REG - 1;
;	genCmpLt
	ldh	a, (_WY_REG + 0)
	sub	a, #0x90
	ret	NC
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	genCast
	ldh	a, (_WY_REG + 0)
;	genMinus
; common peephole 155c turned add into dec.
	dec	a
	ldh	(_LYC_REG + 0), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00107$:
	C$interrupts.c$33$3_0$224	= .
	.globl	C$interrupts.c$33$3_0$224
;src\core\interrupts.c:33: if ((WX_REG == DEVICE_WINDOW_PX_OFFSET_X) && (show_actors_on_overlay == FALSE)) HIDE_SPRITES;
;	genCmpEq
	ldh	a, (_WX_REG + 0)
	sub	a, #0x07
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00202$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00203$.
;	skipping generated iCode
;	genIfx
;fetchLitPair	hl
	ld	a, (#_show_actors_on_overlay)
; common peephole 17 loaded a from (#_show_actors_on_overlay) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
;	genAnd
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genLabel
00104$:
	C$interrupts.c$34$3_0$224	= .
	.globl	C$interrupts.c$34$3_0$224
;src\core\interrupts.c:34: LYC_REG = overlay_cut_scanline;
;	genAssign
;fetchLitPair	hl
	ld	a, (#_overlay_cut_scanline)
; common peephole 17 loaded a from (#_overlay_cut_scanline) directly instead of using hl.
	ldh	(_LYC_REG + 0), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00124$:
	C$interrupts.c$37$2_0$225	= .
	.globl	C$interrupts.c$37$2_0$225
;src\core\interrupts.c:37: if (LYC_REG < overlay_cut_scanline) {
;	genCmpLt
	ldh	a, (_LYC_REG + 0)
;fetchLitPair	hl
	ld	hl, #_overlay_cut_scanline
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00115$
;	skipping generated iCode
	C$interrupts.c$38$3_0$226	= .
	.globl	C$interrupts.c$38$3_0$226
;src\core\interrupts.c:38: if ((WX_REG == DEVICE_WINDOW_PX_OFFSET_X) && (show_actors_on_overlay == FALSE)) {
;	genCmpEq
	ldh	a, (_WX_REG + 0)
	sub	a, #0x07
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00204$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00113$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00205$.
;	skipping generated iCode
;	genIfx
;fetchLitPair	hl
	ld	a, (#_show_actors_on_overlay)
; common peephole 17 loaded a from (#_show_actors_on_overlay) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00113$
	C$interrupts.c$39$4_0$227	= .
	.globl	C$interrupts.c$39$4_0$227
;src\core\interrupts.c:39: while (STAT_REG & STATF_BUSY) ;
;	genLabel
00109$:
;	genCast
	ldh	a, (_STAT_REG + 0)
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00206$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00109$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00207$.
;	skipping generated iCode
	C$interrupts.c$40$4_0$227	= .
	.globl	C$interrupts.c$40$4_0$227
;src\core\interrupts.c:40: HIDE_SPRITES;
;	genAnd
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genLabel
00113$:
	C$interrupts.c$42$3_0$226	= .
	.globl	C$interrupts.c$42$3_0$226
;src\core\interrupts.c:42: LYC_REG = overlay_cut_scanline;
;	genAssign
;fetchLitPair	hl
	ld	a, (#_overlay_cut_scanline)
; common peephole 17 loaded a from (#_overlay_cut_scanline) directly instead of using hl.
	ldh	(_LYC_REG + 0), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
	C$interrupts.c$44$3_0$228	= .
	.globl	C$interrupts.c$44$3_0$228
;src\core\interrupts.c:44: while (STAT_REG & STATF_BUSY) ;
;	genLabel
00115$:
;	genCast
	ldh	a, (_STAT_REG + 0)
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00208$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00115$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00209$.
;	skipping generated iCode
	C$interrupts.c$45$3_0$228	= .
	.globl	C$interrupts.c$45$3_0$228
;src\core\interrupts.c:45: WX_REG = 0, HIDE_WIN;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_WX_REG + 0), a
;	genAnd
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xdf
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
	C$interrupts.c$46$3_0$228	= .
	.globl	C$interrupts.c$46$3_0$228
;src\core\interrupts.c:46: if (!hide_sprites) SHOW_SPRITES;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_hide_sprites)
; common peephole 17 loaded a from (#_hide_sprites) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00119$
;	genOr
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genLabel
00119$:
	C$interrupts.c$47$3_0$228	= .
	.globl	C$interrupts.c$47$3_0$228
;src\core\interrupts.c:47: LYC_REG = LYC_SYNC_VALUE;
;	genAssign
	ld	a, #0x96
	ldh	(_LYC_REG + 0), a
	C$interrupts.c$48$3_0$228	= .
	.globl	C$interrupts.c$48$3_0$228
;src\core\interrupts.c:48: return;
;	genRet
;	genLabel
; common peephole 158 removed unused label 00126$.
	C$interrupts.c$51$1_0$221	= .
	.globl	C$interrupts.c$51$1_0$221
;src\core\interrupts.c:51: }
;	genEndFunction
	C$interrupts.c$51$1_0$221	= .
	.globl	C$interrupts.c$51$1_0$221
	XG$simple_LCD_isr$0$0	= .
	.globl	XG$simple_LCD_isr$0$0
	ret
	G$fullscreen_LCD_isr$0$0	= .
	.globl	G$fullscreen_LCD_isr$0$0
	C$interrupts.c$53$1_0$230	= .
	.globl	C$interrupts.c$53$1_0$230
;src\core\interrupts.c:53: void fullscreen_LCD_isr(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function fullscreen_LCD_isr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fullscreen_LCD_isr::
	C$interrupts.c$54$1_0$230	= .
	.globl	C$interrupts.c$54$1_0$230
;src\core\interrupts.c:54: if (LYC_REG == LYC_SYNC_VALUE) {
;	genCmpEq
	ldh	a, (_LYC_REG + 0)
	sub	a, #0x96
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00127$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00128$.
;	skipping generated iCode
	C$interrupts.c$55$2_0$231	= .
	.globl	C$interrupts.c$55$2_0$231
;src\core\interrupts.c:55: LCDC_REG &= ~LCDCF_BG8000;
;	genAnd
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xef
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
	C$interrupts.c$56$2_0$231	= .
	.globl	C$interrupts.c$56$2_0$231
;src\core\interrupts.c:56: SCX_REG = draw_scroll_x;
;	genCast
;fetchLitPair	hl
	ld	a, (#_draw_scroll_x)
; common peephole 17 loaded a from (#_draw_scroll_x) directly instead of using hl.
	ldh	(_SCX_REG + 0), a
	C$interrupts.c$57$2_0$231	= .
	.globl	C$interrupts.c$57$2_0$231
;src\core\interrupts.c:57: SCY_REG = draw_scroll_y;
;	genCast
;fetchLitPair	hl
	ld	a, (#_draw_scroll_y)
; common peephole 17 loaded a from (#_draw_scroll_y) directly instead of using hl.
	ldh	(_SCY_REG + 0), a
	C$interrupts.c$58$2_0$231	= .
	.globl	C$interrupts.c$58$2_0$231
;src\core\interrupts.c:58: LYC_REG = (9 * 8) - 1;
;	genAssign
	ld	a, #0x47
	ldh	(_LYC_REG + 0), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
	C$interrupts.c$60$2_0$232	= .
	.globl	C$interrupts.c$60$2_0$232
;src\core\interrupts.c:60: while (STAT_REG & STATF_BUSY) ;
;	genLabel
00101$:
;	genCast
	ldh	a, (_STAT_REG + 0)
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00129$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00130$.
;	skipping generated iCode
	C$interrupts.c$61$2_0$232	= .
	.globl	C$interrupts.c$61$2_0$232
;src\core\interrupts.c:61: LCDC_REG |= LCDCF_BG8000;
;	genOr
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x10
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
	C$interrupts.c$62$2_0$232	= .
	.globl	C$interrupts.c$62$2_0$232
;src\core\interrupts.c:62: LYC_REG = LYC_SYNC_VALUE;
;	genAssign
	ld	a, #0x96
	ldh	(_LYC_REG + 0), a
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$interrupts.c$64$1_0$230	= .
	.globl	C$interrupts.c$64$1_0$230
;src\core\interrupts.c:64: }
;	genEndFunction
	C$interrupts.c$64$1_0$230	= .
	.globl	C$interrupts.c$64$1_0$230
	XG$fullscreen_LCD_isr$0$0	= .
	.globl	XG$fullscreen_LCD_isr$0$0
	ret
	G$VBL_isr$0$0	= .
	.globl	G$VBL_isr$0$0
	C$interrupts.c$66$1_0$234	= .
	.globl	C$interrupts.c$66$1_0$234
;src\core\interrupts.c:66: void VBL_isr(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function VBL_isr
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_VBL_isr::
	C$interrupts.c$67$1_0$234	= .
	.globl	C$interrupts.c$67$1_0$234
;src\core\interrupts.c:67: if ((WY_REG = win_pos_y) < MENU_CLOSED_Y) WX_REG = (win_pos_x + DEVICE_WINDOW_PX_OFFSET_X), SHOW_WIN; else WX_REG = 0, HIDE_WIN;
;	genAssign
;fetchLitPair	hl
	ld	hl, #_win_pos_y
	ld	a, (hl)
	ldh	(_WY_REG + 0), a
;	genCmpLt
;fetchLitPair	hl
	ld	a, (hl)
	sub	a, #0x90
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00102$
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_win_pos_x)
; common peephole 17 loaded a from (#_win_pos_x) directly instead of using hl.
;	genPlus
	add	a, #0x07
	ldh	(_WX_REG + 0), a
;	genOr
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x20
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_WX_REG + 0), a
;	genAnd
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xdf
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genLabel
00103$:
	C$interrupts.c$68$1_0$234	= .
	.globl	C$interrupts.c$68$1_0$234
;src\core\interrupts.c:68: if (hide_sprites) HIDE_SPRITES; else SHOW_SPRITES;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_hide_sprites)
; common peephole 17 loaded a from (#_hide_sprites) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	genAnd
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	genOr
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genLabel
00106$:
;include/scroll.h:75: parallax_rows[0].scx = parallax_rows[0].shadow_scx;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_parallax_rows + 5) + 0)
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	(#_parallax_rows),a
; common peephole 19 loaded (#_parallax_rows) from a directly instead of using hl.
;include/scroll.h:76: parallax_rows[1].scx = parallax_rows[1].shadow_scx;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_parallax_rows + 11) + 0)
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	(#(_parallax_rows + 6)),a
; common peephole 19 loaded (#(_parallax_rows + 6)) from a directly instead of using hl.
;include/scroll.h:77: parallax_rows[2].scx = parallax_rows[2].shadow_scx;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_parallax_rows + 17) + 0)
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	(#(_parallax_rows + 12)),a
; common peephole 19 loaded (#(_parallax_rows + 12)) from a directly instead of using hl.
	C$interrupts.c$69$3_0$234	= .
	.globl	C$interrupts.c$69$3_0$234
;src\core\interrupts.c:69: scroll_shadow_update();
;	genLabel
; common peephole 158 removed unused label 00108$.
	C$interrupts.c$70$3_0$234	= .
	.globl	C$interrupts.c$70$3_0$234
;src\core\interrupts.c:70: }
;	genEndFunction
	C$interrupts.c$70$3_0$234	= .
	.globl	C$interrupts.c$70$3_0$234
	XG$VBL_isr$0$0	= .
	.globl	XG$VBL_isr$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$remove_LCD_ISRs$0$0	= .
	.globl	G$remove_LCD_ISRs$0$0
	C$interrupts.c$17$0_0$218	= .
	.globl	C$interrupts.c$17$0_0$218
;src\core\interrupts.c:17: void remove_LCD_ISRs(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function remove_LCD_ISRs
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_remove_LCD_ISRs	= 255
_remove_LCD_ISRs::
	C$interrupts.c$23$1_0$218	= .
	.globl	C$interrupts.c$23$1_0$218
;src\core\interrupts.c:23: }
;	genCritical
	di
	C$interrupts.c$19$2_0$219	= .
	.globl	C$interrupts.c$19$2_0$219
;src\core\interrupts.c:19: remove_LCD(parallax_LCD_isr);
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_parallax_LCD_isr
;	genCall
	call	_remove_LCD
	C$interrupts.c$20$2_0$219	= .
	.globl	C$interrupts.c$20$2_0$219
;src\core\interrupts.c:20: remove_LCD(simple_LCD_isr);
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_simple_LCD_isr
;	genCall
	call	_remove_LCD
	C$interrupts.c$21$2_0$219	= .
	.globl	C$interrupts.c$21$2_0$219
;src\core\interrupts.c:21: remove_LCD(fullscreen_LCD_isr);
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_fullscreen_LCD_isr
;	genCall
	call	_remove_LCD
	C$interrupts.c$22$2_0$219	= .
	.globl	C$interrupts.c$22$2_0$219
;src\core\interrupts.c:22: LCDC_REG &= ~LCDCF_BG8000;
;	genAnd
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xef
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genEndCritical
	ei
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$interrupts.c$24$2_0$218	= .
	.globl	C$interrupts.c$24$2_0$218
;src\core\interrupts.c:24: }
;	genEndFunction
	C$interrupts.c$24$2_0$218	= .
	.globl	C$interrupts.c$24$2_0$218
	XG$remove_LCD_ISRs$0$0	= .
	.globl	XG$remove_LCD_ISRs$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
Finterrupts$__xinit_hide_sprites$0_0$0 == .
__xinit__hide_sprites:
	.db #0x00	; 0
Finterrupts$__xinit_show_actors_on_overlay$0_0$0 == .
__xinit__show_actors_on_overlay:
	.db #0x00	; 0
Finterrupts$__xinit_overlay_cut_scanline$0_0$0 == .
__xinit__overlay_cut_scanline:
	.db #0x96	; 150
	.area _CABS (ABS)
