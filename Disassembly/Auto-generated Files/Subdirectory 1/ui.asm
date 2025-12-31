;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module ui
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_ui_draw_text_buffer_char
	.globl _ui_draw_text_buffer_char
	.globl _ui_print_render
	.globl _ui_swap_tiles
	.globl _ui_print_make_mask_rl
	.globl _ui_print_make_mask_lr
	.globl _ui_print_shift_char
	.globl _ui_print_reset
	.globl b_ui_draw_frame
	.globl _ui_draw_frame
	.globl _ui_draw_frame_row
	.globl _projectiles_render
	.globl _actors_update
	.globl _input_update
	.globl b_scroll_rect
	.globl _scroll_rect
	.globl _GetWinAddr
	.globl b_scroll_update
	.globl _scroll_update
	.globl _camera_update
	.globl _MemcpyBanked
	.globl _ReadBankedUWORD
	.globl _SetBankedBkgData
	.globl _hide_sprites_range
	.globl _fill_win_rect
	.globl _set_win_tile_xy
	.globl _set_bkg_data
	.globl _set_vram_byte
	.globl _wait_vbl_done
	.globl _memset
	.globl _text_palette
	.globl _overlay_priority
	.globl _text_sound_data
	.globl _text_sound_bank
	.globl _text_sound_mask
	.globl _text_scroll_fill
	.globl _text_scroll_height
	.globl _text_scroll_width
	.globl _text_scroll_addr
	.globl _text_render_base_addr
	.globl _vwf_current_font_idx
	.globl _vwf_current_font_bank
	.globl _vwf_current_font_desc
	.globl _vwf_direction
	.globl _vwf_inverse_map
	.globl _vwf_current_rotate
	.globl _vwf_current_mask
	.globl _ui_text_data
	.globl _text_bkg_fill
	.globl _text_ff
	.globl _text_ff_joypad
	.globl _text_draw_speed
	.globl _text_out_speed
	.globl _text_in_speed
	.globl _text_options
	.globl _current_text_speed
	.globl _text_drawn
	.globl _win_speed
	.globl _win_dest_pos_y
	.globl _win_pos_y
	.globl _win_dest_pos_x
	.globl _win_pos_x
	.globl b_ui_init
	.globl _ui_init
	.globl b_ui_load_tiles
	.globl _ui_load_tiles
	.globl b_ui_set_start_tile
	.globl _ui_set_start_tile
	.globl _ui_update
	.globl b_ui_run_menu
	.globl _ui_run_menu
	.globl b_ui_run_modal
	.globl _ui_run_modal
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$win_pos_x$0_0$0==.
_win_pos_x::
	.ds 1
G$win_dest_pos_x$0_0$0==.
_win_dest_pos_x::
	.ds 1
G$win_pos_y$0_0$0==.
_win_pos_y::
	.ds 1
G$win_dest_pos_y$0_0$0==.
_win_dest_pos_y::
	.ds 1
G$win_speed$0_0$0==.
_win_speed::
	.ds 1
G$text_drawn$0_0$0==.
_text_drawn::
	.ds 1
G$current_text_speed$0_0$0==.
_current_text_speed::
	.ds 1
G$text_options$0_0$0==.
_text_options::
	.ds 1
G$text_in_speed$0_0$0==.
_text_in_speed::
	.ds 1
G$text_out_speed$0_0$0==.
_text_out_speed::
	.ds 1
G$text_draw_speed$0_0$0==.
_text_draw_speed::
	.ds 1
G$text_ff_joypad$0_0$0==.
_text_ff_joypad::
	.ds 1
G$text_ff$0_0$0==.
_text_ff::
	.ds 1
G$text_bkg_fill$0_0$0==.
_text_bkg_fill::
	.ds 1
G$ui_text_data$0_0$0==.
_ui_text_data::
	.ds 255
Fui$ui_text_ptr$0_0$0==.
_ui_text_ptr:
	.ds 2
Fui$ui_dest_ptr$0_0$0==.
_ui_dest_ptr:
	.ds 2
Fui$ui_dest_base$0_0$0==.
_ui_dest_base:
	.ds 2
Fui$ui_current_tile$0_0$0==.
_ui_current_tile:
	.ds 1
Fui$ui_current_tile_bank$0_0$0==.
_ui_current_tile_bank:
	.ds 1
Fui$ui_prev_tile$0_0$0==.
_ui_prev_tile:
	.ds 1
Fui$ui_prev_tile_bank$0_0$0==.
_ui_prev_tile_bank:
	.ds 1
Fui$vwf_current_offset$0_0$0==.
_vwf_current_offset:
	.ds 1
G$vwf_current_mask$0_0$0==.
_vwf_current_mask::
	.ds 1
G$vwf_current_rotate$0_0$0==.
_vwf_current_rotate::
	.ds 1
G$vwf_inverse_map$0_0$0==.
_vwf_inverse_map::
	.ds 1
G$vwf_direction$0_0$0==.
_vwf_direction::
	.ds 1
G$vwf_current_font_desc$0_0$0==.
_vwf_current_font_desc::
	.ds 8
G$vwf_current_font_bank$0_0$0==.
_vwf_current_font_bank::
	.ds 1
G$vwf_current_font_idx$0_0$0==.
_vwf_current_font_idx::
	.ds 1
G$text_render_base_addr$0_0$0==.
_text_render_base_addr::
	.ds 2
G$text_scroll_addr$0_0$0==.
_text_scroll_addr::
	.ds 2
G$text_scroll_width$0_0$0==.
_text_scroll_width::
	.ds 1
G$text_scroll_height$0_0$0==.
_text_scroll_height::
	.ds 1
G$text_scroll_fill$0_0$0==.
_text_scroll_fill::
	.ds 1
G$text_sound_mask$0_0$0==.
_text_sound_mask::
	.ds 1
G$text_sound_bank$0_0$0==.
_text_sound_bank::
	.ds 1
G$text_sound_data$0_0$0==.
_text_sound_data::
	.ds 2
G$overlay_priority$0_0$0==.
_overlay_priority::
	.ds 1
G$text_palette$0_0$0==.
_text_palette::
	.ds 1
Lui.ui_draw_text_buffer_char$current_font_idx$1_0$488==.
_ui_draw_text_buffer_char_current_font_idx_10000_488:
	.ds 1
Lui.ui_draw_text_buffer_char$current_text_bkg_fill$1_0$488==.
_ui_draw_text_buffer_char_current_text_bkg_fill_10000_488:
	.ds 1
Lui.ui_draw_text_buffer_char$current_vwf_direction$1_0$488==.
_ui_draw_text_buffer_char_current_vwf_direction_10000_488:
	.ds 1
Lui.ui_draw_text_buffer_char$current_text_ff_joypad$1_0$488==.
_ui_draw_text_buffer_char_current_text_ff_joypad_10000_488:
	.ds 1
Lui.ui_draw_text_buffer_char$current_text_draw_speed$1_0$488==.
_ui_draw_text_buffer_char_current_text_draw_speed_10000_488:
	.ds 1
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
	G$ui_update$0$0	= .
	.globl	G$ui_update$0$0
	C$ui.c$428$1_0$517	= .
	.globl	C$ui.c$428$1_0$517
;src\core\ui.c:428: void ui_update(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function ui_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_ui_update::
	C$ui.c$429$2_0$517	= .
	.globl	C$ui.c$429$2_0$517
;src\core\ui.c:429: UBYTE flag = FALSE;
;	genAssign
;	genMove_o size 1
	ld	c, #0x00
	C$ui.c$432$1_0$517	= .
	.globl	C$ui.c$432$1_0$517
;src\core\ui.c:432: if (win_pos_y != win_dest_pos_y) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_win_pos_y)
; common peephole 17 loaded a from (#_win_pos_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_y
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00307$.
;	skipping generated iCode
	C$ui.c$433$2_0$518	= .
	.globl	C$ui.c$433$2_0$518
;src\core\ui.c:433: if ((game_time & ui_time_masks[win_speed]) == 0) {
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	a, #<(_ui_time_masks)
;fetchLitPair	hl
	ld	hl, #_win_speed
	add	a, (hl)
	ld	c, a
	ld	a, #>(_ui_time_masks)
	adc	a, #0x00
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAnd
;fetchLitPair	hl
	ld	hl, #_game_time
;	genMove_o size 1
;	genIfx
	and	a,(hl)
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00105$
	C$ui.c$434$3_0$519	= .
	.globl	C$ui.c$434$3_0$519
;src\core\ui.c:434: UBYTE interval = (win_speed == 0) ? 2u : 1u;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_win_speed)
; common peephole 17 loaded a from (#_win_speed) directly instead of using hl.
	or	a, a
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	c, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00150$
; common peephole 158 removed unused label 00149$.
	ld	c, #0x01
; common peephole 170nz used double assignment in case of NZ condition.
00150$:
;	genCast
;	(locations are the same)
	C$ui.c$436$3_0$519	= .
	.globl	C$ui.c$436$3_0$519
;src\core\ui.c:436: if (win_pos_y < win_dest_pos_y) win_pos_y += interval; else win_pos_y -= interval;
;	genCmpLt
;fetchLitPair	hl
	ld	a, (#_win_pos_y)
; common peephole 17 loaded a from (#_win_pos_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_y
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00102$
;	skipping generated iCode
;	genPlus
;fetchLitPair	hl
	ld	hl, #_win_pos_y
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00102$:
;	genMinus
;fetchLitPair	hl
	ld	hl, #_win_pos_y
	ld	a, (hl)
	sub	a, c
;fetchLitPair	hl
	ld	(hl), a
;	genLabel
00105$:
	C$ui.c$438$2_0$518	= .
	.globl	C$ui.c$438$2_0$518
;src\core\ui.c:438: flag = TRUE;
;	genAssign
;	genMove_o size 1
	ld	c, #0x01
;	genLabel
00107$:
	C$ui.c$440$1_0$517	= .
	.globl	C$ui.c$440$1_0$517
;src\core\ui.c:440: if (win_pos_x != win_dest_pos_x) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_win_pos_x)
; common peephole 17 loaded a from (#_win_pos_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_x
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00308$.
;	skipping generated iCode
	C$ui.c$441$2_0$520	= .
	.globl	C$ui.c$441$2_0$520
;src\core\ui.c:441: if ((game_time & ui_time_masks[win_speed]) == 0) {
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	a, #<(_ui_time_masks)
;fetchLitPair	hl
	ld	hl, #_win_speed
	add	a, (hl)
	ld	c, a
	ld	a, #>(_ui_time_masks)
	adc	a, #0x00
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAnd
;fetchLitPair	hl
	ld	hl, #_game_time
;	genMove_o size 1
;	genIfx
	and	a,(hl)
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00112$
	C$ui.c$442$3_0$521	= .
	.globl	C$ui.c$442$3_0$521
;src\core\ui.c:442: UBYTE interval = (win_speed == 0) ? 2u : 1u;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_win_speed)
; common peephole 17 loaded a from (#_win_speed) directly instead of using hl.
	or	a, a
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	c, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00152$
; common peephole 158 removed unused label 00151$.
	ld	c, #0x01
; common peephole 170nz used double assignment in case of NZ condition.
00152$:
;	genCast
;	(locations are the same)
	C$ui.c$444$3_0$521	= .
	.globl	C$ui.c$444$3_0$521
;src\core\ui.c:444: if (win_pos_x < win_dest_pos_x) win_pos_x += interval; else win_pos_x -= interval;
;	genCmpLt
;fetchLitPair	hl
	ld	a, (#_win_pos_x)
; common peephole 17 loaded a from (#_win_pos_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_x
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00109$
;	skipping generated iCode
;	genPlus
;fetchLitPair	hl
	ld	hl, #_win_pos_x
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00109$:
;	genMinus
;fetchLitPair	hl
	ld	hl, #_win_pos_x
	ld	a, (hl)
	sub	a, c
;fetchLitPair	hl
	ld	(hl), a
;	genLabel
00112$:
	C$ui.c$446$2_0$520	= .
	.globl	C$ui.c$446$2_0$520
;src\core\ui.c:446: flag = TRUE;
;	genAssign
;	genMove_o size 1
	ld	c, #0x01
;	genLabel
00114$:
	C$ui.c$450$1_0$517	= .
	.globl	C$ui.c$450$1_0$517
;src\core\ui.c:450: if (flag) return;
;	genIfx
	ld	a, c
	or	a, a
;	genRet
;	genLabel
	ret	NZ
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00116$.
	C$ui.c$452$1_0$517	= .
	.globl	C$ui.c$452$1_0$517
;src\core\ui.c:452: if (text_drawn) return;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_text_drawn)
; common peephole 17 loaded a from (#_text_drawn) directly instead of using hl.
	or	a, a
;	genRet
;	genLabel
	ret	NZ
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00118$.
	C$ui.c$454$1_0$517	= .
	.globl	C$ui.c$454$1_0$517
;src\core\ui.c:454: if ((text_ff_joypad) && (INPUT_A_OR_B_PRESSED)) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_text_ff_joypad)
; common peephole 17 loaded a from (#_text_ff_joypad) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00122$
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
;	genMove_o size 1
	ld	b, #0x00
;	genCpl
	cpl
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	ld	a, b
	cpl
;	genMove_o size 1
; common peephole 1 removed dead load from a into b.
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into e.
;	genAnd
	and	a, c
;	genMove_o size 1
;	genMove_o size 0
; common peephole 6b removed dead and a, b
;	genMove_o size 1
; common peephole 1 removed dead load from a into b.
;	genMove_o size 0
;	genAnd
; common peephole 41a remove double load to a.
; common peephole 1 removed dead load from a into c.
; common peephole 98 removed redundant load from c into a.
	and	a, #0x30
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00122$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00309$.
;	skipping generated iCode
	C$ui.c$455$2_0$522	= .
	.globl	C$ui.c$455$2_0$522
;src\core\ui.c:455: text_ff = TRUE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_ff
	ld	(hl), #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00127$
;	genLabel
00122$:
	C$ui.c$457$2_0$523	= .
	.globl	C$ui.c$457$2_0$523
;src\core\ui.c:457: if (game_time & current_text_speed) return;
;	genAnd
;fetchLitPair	hl
	ld	a, (#_game_time)
; common peephole 17 loaded a from (#_game_time) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_current_text_speed
;	genMove_o size 1
;	genIfx
	and	a,(hl)
; common peephole 100 removed redundant or after and.
;	genRet
	C$ui.c$460$1_0$517	= .
	.globl	C$ui.c$460$1_0$517
;src\core\ui.c:460: do {
;	genLabel
	ret	NZ
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
00127$:
	C$ui.c$461$2_0$524	= .
	.globl	C$ui.c$461$2_0$524
;src\core\ui.c:461: flag = ui_draw_text_buffer_char();
;	genCall
	ld	e, #b_ui_draw_text_buffer_char
	ld	hl, #_ui_draw_text_buffer_char
	call	___sdcc_bcall_ehl
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$ui.c$462$1_0$517	= .
	.globl	C$ui.c$462$1_0$517
;src\core\ui.c:462: } while (((text_ff) || (text_draw_speed == 0)) && (!text_drawn));
;	genIfx
;fetchLitPair	hl
	ld	a, (#_text_ff)
; common peephole 17 loaded a from (#_text_ff) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00126$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_text_draw_speed)
; common peephole 17 loaded a from (#_text_draw_speed) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00129$
;	genLabel
00126$:
;	genIfx
;fetchLitPair	hl
	ld	a, (#_text_drawn)
; common peephole 17 loaded a from (#_text_drawn) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00127$
;	genLabel
00129$:
	C$ui.c$464$1_0$517	= .
	.globl	C$ui.c$464$1_0$517
;src\core\ui.c:464: if ((flag) && (text_sound_bank != SFX_STOP_BANK)) music_play_sfx(text_sound_bank, text_sound_data, text_sound_mask, MUSIC_SFX_PRIORITY_NORMAL);
;	genIfx
	ld	a, c
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_text_sound_bank)
; common peephole 17 loaded a from (#_text_sound_bank) directly instead of using hl.
	inc	a
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00310$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_sound_mask
	ld	c, (hl)
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_text_sound_data
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_sound_bank
;	genAssign
;	(locations are the same)
;	genAssign
;	(locations are the same)
;	genAssign
;	genMove_o size 1
; common peephole 9 loaded b from (hl) directly instead of going through a.
	ld	b, (hl)
;	genMove_o size 0
;include/music_manager.h:118: if (priority < music_sfx_priority) return;
;	genCmpLt
	ld	a, #0x04
;fetchLitPair	hl
	ld	hl, #_music_sfx_priority
	sub	a, (hl)
	ret	C
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;include/music_manager.h:119: sfx_play_bank = SFX_STOP_BANK;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_sfx_play_bank
	ld	(hl), #0xff
;include/music_manager.h:120: music_sfx_priority = priority;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_sfx_priority
	ld	(hl), #0x04
;include/music_manager.h:121: music_sound_cut_mask(music_mute_mask);
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_music_mute_mask)
; common peephole 17 loaded a from (#_music_mute_mask) directly instead of using hl.
;include/music_manager.h:86: return sfx_sound_cut_mask(mask);
;	genCast
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;include/sfx_player.h:33: if (mask & SFX_CH_1) NR12_REG = 0, NR14_REG = SFX_CH_RETRIGGER;
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00136$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00311$.
;	skipping generated iCode
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR12_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR14_REG + 0), a
;	genLabel
00136$:
;include/sfx_player.h:34: if (mask & SFX_CH_2) NR22_REG = 0, NR24_REG = SFX_CH_RETRIGGER;
;	genAnd
	bit	1, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00138$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00312$.
;	skipping generated iCode
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR22_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR24_REG + 0), a
;	genLabel
00138$:
;include/sfx_player.h:35: if (mask & SFX_CH_3) NR32_REG = 0;
;	genAnd
	bit	2, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00140$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00313$.
;	skipping generated iCode
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR32_REG + 0), a
;	genLabel
00140$:
;include/sfx_player.h:36: if (mask & SFX_CH_4) NR42_REG = 0, NR44_REG = SFX_CH_RETRIGGER;
;	genAnd
	bit	3, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00142$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00314$.
;	skipping generated iCode
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR42_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR44_REG + 0), a
;	genLabel
00142$:
;include/sfx_player.h:37: NR51_REG = 0xFF;
;	genAssign
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;include/music_manager.h:122: music_mute_mask = mute_mask;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_mute_mask
	ld	(hl), c
;include/sfx_player.h:46: sfx_play_bank = SFX_STOP_BANK, sfx_frame_skip = 0, sfx_play_sample = sample, sfx_play_bank = bank;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_sfx_play_bank
	ld	(hl), #0xff
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_sfx_frame_skip
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_sfx_play_sample
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_sfx_play_bank
	ld	(hl), b
	C$ui.c$464$1_0$517	= .
	.globl	C$ui.c$464$1_0$517
;src\core\ui.c:464: if ((flag) && (text_sound_bank != SFX_STOP_BANK)) music_play_sfx(text_sound_bank, text_sound_data, text_sound_mask, MUSIC_SFX_PRIORITY_NORMAL);
;	genLabel
; common peephole 158 removed unused label 00147$.
	C$ui.c$465$1_0$517	= .
	.globl	C$ui.c$465$1_0$517
;src\core\ui.c:465: }
;	genEndFunction
	C$ui.c$465$1_0$517	= .
	.globl	C$ui.c$465$1_0$517
	XG$ui_update$0$0	= .
	.globl	XG$ui_update$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_1
	G$ui_init$0$0	= .
	.globl	G$ui_init$0$0
	C$ui.c$81$0_0$408	= .
	.globl	C$ui.c$81$0_0$408
;src\core\ui.c:81: void ui_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function ui_init
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_ui_init	= 1
_ui_init::
	C$ui.c$82$1_0$408	= .
	.globl	C$ui.c$82$1_0$408
;src\core\ui.c:82: vwf_direction               = UI_PRINT_LEFTTORIGHT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vwf_direction
	ld	(hl), #0x00
	C$ui.c$83$1_0$408	= .
	.globl	C$ui.c$83$1_0$408
;src\core\ui.c:83: vwf_current_font_idx        = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vwf_current_font_idx
	ld	(hl), #0x00
	C$ui.c$84$1_0$408	= .
	.globl	C$ui.c$84$1_0$408
;src\core\ui.c:84: vwf_current_font_bank       = ui_fonts[0].bank;
;	genAddrOf
	ld	bc, #_ui_fonts+0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_vwf_current_font_bank),a
; common peephole 19 loaded (#_vwf_current_font_bank) from a directly instead of using hl.
	C$ui.c$85$1_0$408	= .
	.globl	C$ui.c$85$1_0$408
;src\core\ui.c:85: MemcpyBanked(&vwf_current_font_desc, ui_fonts[0].ptr, sizeof(font_desc_t), vwf_current_font_bank);
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_ui_fonts + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vwf_current_font_bank)
; common peephole 17 loaded a from (#_vwf_current_font_bank) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0008
	push	de
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_vwf_current_font_desc
;	genCall
	call	_MemcpyBanked
	C$ui.c$87$1_0$408	= .
	.globl	C$ui.c$87$1_0$408
;src\core\ui.c:87: text_options                = TEXT_OPT_DEFAULT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_options
	ld	(hl), #0x00
	C$ui.c$88$1_0$408	= .
	.globl	C$ui.c$88$1_0$408
;src\core\ui.c:88: text_in_speed               = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_in_speed
	ld	(hl), #0x00
	C$ui.c$89$1_0$408	= .
	.globl	C$ui.c$89$1_0$408
;src\core\ui.c:89: text_out_speed              = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_out_speed
	ld	(hl), #0x00
	C$ui.c$90$1_0$408	= .
	.globl	C$ui.c$90$1_0$408
;src\core\ui.c:90: text_ff_joypad              = TRUE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_ff_joypad
	ld	(hl), #0x01
	C$ui.c$91$1_0$408	= .
	.globl	C$ui.c$91$1_0$408
;src\core\ui.c:91: text_bkg_fill               = TEXT_BKG_FILL_W;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_bkg_fill
	ld	(hl), #0x00
	C$ui.c$93$1_0$408	= .
	.globl	C$ui.c$93$1_0$408
;src\core\ui.c:93: ui_text_ptr                 = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$ui.c$95$1_0$408	= .
	.globl	C$ui.c$95$1_0$408
;src\core\ui.c:95: vwf_current_offset          = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vwf_current_offset
	ld	(hl), #0x00
	C$ui.c$97$1_0$408	= .
	.globl	C$ui.c$97$1_0$408
;src\core\ui.c:97: ui_current_tile             = TEXT_BUFFER_START;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ui_current_tile
	ld	(hl), #0xcc
	C$ui.c$98$1_0$408	= .
	.globl	C$ui.c$98$1_0$408
;src\core\ui.c:98: ui_current_tile_bank        = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ui_current_tile_bank
	ld	(hl), #0x00
	C$ui.c$99$1_0$408	= .
	.globl	C$ui.c$99$1_0$408
;src\core\ui.c:99: ui_prev_tile                = TEXT_BUFFER_START;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ui_prev_tile
	ld	(hl), #0xcc
	C$ui.c$100$1_0$408	= .
	.globl	C$ui.c$100$1_0$408
;src\core\ui.c:100: ui_prev_tile_bank           = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ui_prev_tile_bank
	ld	(hl), #0x00
;include/ui.h:104: win_pos_y = win_dest_pos_y = y;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_y
	ld	(hl), #0x90
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_win_pos_y
	ld	(hl), #0x90
;include/ui.h:105: win_pos_x = win_dest_pos_x = x;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_x
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_win_pos_x
	ld	(hl), #0x00
	C$ui.c$104$1_0$408	= .
	.globl	C$ui.c$104$1_0$408
;src\core\ui.c:104: win_speed                   = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_win_speed
	ld	(hl), #0x01
	C$ui.c$105$1_0$408	= .
	.globl	C$ui.c$105$1_0$408
;src\core\ui.c:105: text_drawn                  = TRUE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_drawn
	ld	(hl), #0x01
	C$ui.c$106$1_0$408	= .
	.globl	C$ui.c$106$1_0$408
;src\core\ui.c:106: text_draw_speed             = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_draw_speed
	ld	(hl), #0x01
	C$ui.c$107$1_0$408	= .
	.globl	C$ui.c$107$1_0$408
;src\core\ui.c:107: current_text_speed          = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_current_text_speed
	ld	(hl), #0x00
	C$ui.c$109$1_0$408	= .
	.globl	C$ui.c$109$1_0$408
;src\core\ui.c:109: ui_dest_ptr = ui_dest_base  = (text_render_base_addr = GetWinAddr()) + 32 + 1;
;	genCall
	call	_GetWinAddr
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_text_render_base_addr
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genPlus
;fetchPairLong
;fetchLitPair	hl
;	genPlus
	ld	hl,#0x21
	add	hl,de
; common peephole 129a moved increment of hl to constant.
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_base
	ld	(hl), c
;fetchLitPair	hl
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_ptr
	ld	(hl), c
;fetchLitPair	hl
	inc	hl
	ld	(hl), a
	C$ui.c$111$1_0$408	= .
	.globl	C$ui.c$111$1_0$408
;src\core\ui.c:111: text_scroll_addr            = GetWinAddr();
;	genCall
	call	_GetWinAddr
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_text_scroll_addr
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
	C$ui.c$112$1_0$408	= .
	.globl	C$ui.c$112$1_0$408
;src\core\ui.c:112: text_scroll_width           = 20;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_scroll_width
	ld	(hl), #0x14
	C$ui.c$113$1_0$408	= .
	.globl	C$ui.c$113$1_0$408
;src\core\ui.c:113: text_scroll_height          = 8;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_scroll_height
	ld	(hl), #0x08
	C$ui.c$114$1_0$408	= .
	.globl	C$ui.c$114$1_0$408
;src\core\ui.c:114: text_scroll_fill            = ui_white_tile;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_scroll_fill
	ld	(hl), #0xc9
	C$ui.c$116$1_0$408	= .
	.globl	C$ui.c$116$1_0$408
;src\core\ui.c:116: text_sound_bank             = SFX_STOP_BANK;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_sound_bank
	ld	(hl), #0xff
	C$ui.c$118$1_0$408	= .
	.globl	C$ui.c$118$1_0$408
;src\core\ui.c:118: ui_load_tiles();
;	genCall
	ld	e, #b_ui_load_tiles
	ld	hl, #_ui_load_tiles
	call	___sdcc_bcall_ehl
	C$ui.c$121$1_0$408	= .
	.globl	C$ui.c$121$1_0$408
;src\core\ui.c:121: overlay_priority            = S_PRIORITY;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_overlay_priority
	ld	(hl), #0x80
	C$ui.c$122$1_0$408	= .
	.globl	C$ui.c$122$1_0$408
;src\core\ui.c:122: text_palette                = UI_DEFAULT_PALETTE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_palette
	ld	(hl), #0x07
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$ui.c$124$1_0$408	= .
	.globl	C$ui.c$124$1_0$408
;src\core\ui.c:124: }
;	genEndFunction
	C$ui.c$124$1_0$408	= .
	.globl	C$ui.c$124$1_0$408
	XG$ui_init$0$0	= .
	.globl	XG$ui_init$0$0
	ret
	G$ui_load_tiles$0$0	= .
	.globl	G$ui_load_tiles$0$0
	C$ui.c$126$1_0$413	= .
	.globl	C$ui.c$126$1_0$413
;src\core\ui.c:126: void ui_load_tiles(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function ui_load_tiles
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_ui_load_tiles	= 1
_ui_load_tiles::
	C$ui.c$128$1_0$413	= .
	.globl	C$ui.c$128$1_0$413
;src\core\ui.c:128: SetBankedBkgData(ui_frame_tl_tiles, 9, frame_image, BANK(frame_image));
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 1
	ld	b, #<(___bank_frame_image)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_frame_image
	push	de
;	genIpush
;	genMove_o size 1
	ld	a, #0x09
;	genIpush
;	genMove_o size 1
; sm83 peephole 19 pushed #0xc0 via flags
	cp	a
	push	af
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
	C$ui.c$130$1_0$413	= .
	.globl	C$ui.c$130$1_0$413
;src\core\ui.c:130: SetBankedBkgData(ui_cursor_tile, 1, cursor_image, BANK(cursor_image));
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 1
	ld	b, #<(___bank_cursor_image)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_cursor_image
	push	de
;	genIpush
;	genMove_o size 1
;	genIpush
;	genMove_o size 1
; common peephole 37a pushed hl instead of pushing a twice.
; common peephole 1 removed dead load from #0x01 into a.
	ld	hl, #0x1cb
; common peephole 93d combined constant loads into register pair.
	push	hl
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
	C$ui.c$132$1_0$413	= .
	.globl	C$ui.c$132$1_0$413
;src\core\ui.c:132: memset(vwf_tile_data, TEXT_BKG_FILL_W, 16);
;	genAddrOf
	ld	bc, #_vwf_tile_data+0
;	genCast
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0010
	push	hl
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	l, h
	push	hl
;	genIpush
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
	C$ui.c$133$1_0$413	= .
	.globl	C$ui.c$133$1_0$413
;src\core\ui.c:133: set_bkg_data(ui_white_tile, 1, vwf_tile_data);
;	genAssign
;	genMove_o size 2
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genIpush
; common peephole 29 pushed bc directly instead of going through de.
	push	bc
;	genIpush
;	genMove_o size 1
;	genIpush
;	genMove_o size 1
; common peephole 37a pushed hl instead of pushing a twice.
; common peephole 1 removed dead load from #0x01 into a.
	ld	hl, #0x1c9
; common peephole 93d combined constant loads into register pair.
	push	hl
;	genCall
	call	_set_bkg_data
;	adjustStack by 4
	add	sp, #4
	C$ui.c$134$1_0$413	= .
	.globl	C$ui.c$134$1_0$413
;src\core\ui.c:134: memset(vwf_tile_data, TEXT_BKG_FILL_B, 16);
;	genAssign
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0010
	push	hl
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	l, #0xff
	push	hl
;	genIpush
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
	C$ui.c$135$1_0$413	= .
	.globl	C$ui.c$135$1_0$413
;src\core\ui.c:135: set_bkg_data(ui_black_tile, 1, vwf_tile_data);
;	genAssign
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 1
;	genIpush
;	genMove_o size 1
; common peephole 37a pushed hl instead of pushing a twice.
; common peephole 1 removed dead load from #0x01 into a.
	ld	hl, #0x1ca
; common peephole 93d combined constant loads into register pair.
	push	hl
;	genCall
	call	_set_bkg_data
;	adjustStack by 4
	add	sp, #4
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$ui.c$136$1_0$413	= .
	.globl	C$ui.c$136$1_0$413
;src\core\ui.c:136: }
;	genEndFunction
	C$ui.c$136$1_0$413	= .
	.globl	C$ui.c$136$1_0$413
	XG$ui_load_tiles$0$0	= .
	.globl	XG$ui_load_tiles$0$0
	ret
	G$ui_draw_frame$0$0	= .
	.globl	G$ui_draw_frame$0$0
	C$ui.c$140$1_0$416	= .
	.globl	C$ui.c$140$1_0$416
;src\core\ui.c:140: void ui_draw_frame(UBYTE x, UBYTE y, UBYTE width, UBYTE height) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function ui_draw_frame
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_ui_draw_frame	= 1
_ui_draw_frame::
	C$ui.c$141$1_0$416	= .
	.globl	C$ui.c$141$1_0$416
;src\core\ui.c:141: if (height == 0) return;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#9
	ld	a, (hl)
	or	a, a
;	genRet
;	genLabel
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
	C$ui.c$143$1_0$416	= .
	.globl	C$ui.c$143$1_0$416
;src\core\ui.c:143: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
	C$ui.c$144$2_0$417	= .
	.globl	C$ui.c$144$2_0$417
;src\core\ui.c:144: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$ui.c$145$2_0$417	= .
	.globl	C$ui.c$145$2_0$417
;src\core\ui.c:145: fill_win_rect(x, y, width, height, overlay_priority | (text_palette & 0x07u));
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_palette)
; common peephole 17 loaded a from (#_text_palette) directly instead of using hl.
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_overlay_priority
	ld	c, (hl)
;	genOr
	or	a, c
;	genMove_o size 1
;	genIpush
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#10
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move dec hl before push (de)
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	push	de
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
	push	de
;	genCall
	call	_fill_win_rect
;	adjustStack by 5
	add	sp, #5
	C$ui.c$146$2_0$417	= .
	.globl	C$ui.c$146$2_0$417
;src\core\ui.c:146: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00104$:
	C$ui.c$149$1_1$418	= .
	.globl	C$ui.c$149$1_1$418
;src\core\ui.c:149: UBYTE * base_addr = GetWinAddr() + (y << 5) + x;
;	genCall
	call	_GetWinAddr
;	genMove_o size 2
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#7
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, c
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#6
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	C$ui.c$150$1_1$418	= .
	.globl	C$ui.c$150$1_1$418
;src\core\ui.c:150: ui_draw_frame_row(base_addr, ui_frame_tl_tiles, width);
;	genCast
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genIpush
	push	bc
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#10
	ld	a, (hl)
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
; sm83 peephole 19 pushed #0xc0 via flags
	cp	a
	push	af
;	genIpush
	push	de
;	genCall
	call	_ui_draw_frame_row
;	adjustStack by 4
	add	sp, #4
	pop	bc
	C$ui.c$151$1_1$418	= .
	.globl	C$ui.c$151$1_1$418
;src\core\ui.c:151: if (--height == 0) return;
;	genMinus
;	AOP_STK for 
	ldhl	sp,	#9
;	genIfx
;	AOP_STK for 
	dec	(hl)
	ld	a, (hl)
; common peephole 100b removed redundant or after dec
;	genRet
;	genLabel
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00106$.
	C$ui.c$152$1_1$418	= .
	.globl	C$ui.c$152$1_1$418
;src\core\ui.c:152: if (height > 1)
;	genCmpGt
;	AOP_STK for 
	ld	a, #0x01
	ldhl	sp,	#9
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00109$
;	skipping generated iCode
	C$ui.c$153$2_1$419	= .
	.globl	C$ui.c$153$2_1$419
;src\core\ui.c:153: for (UBYTE i = height - 1; i != 0; i--) {
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ld	e, (hl)
;	genMove_o size 0
;	genMinus
	dec	e
;	genAssign
;	(locations are the same)
;	genLabel
00111$:
;	genIfx
	ld	a, e
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00121$
	C$ui.c$154$3_1$420	= .
	.globl	C$ui.c$154$3_1$420
;src\core\ui.c:154: base_addr += 32;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0020
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	C$ui.c$155$3_1$420	= .
	.globl	C$ui.c$155$3_1$420
;src\core\ui.c:155: ui_draw_frame_row(base_addr, ui_frame_l_tiles, width);
;	genCast
;	genMove_o size 2
	ld	a, c
	ld	d, b
;	genMove_o size 0
;	genIpush
	push	bc
	push	de
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
;	genMove_o size 1
	ld	h, #0xc3
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
;	genMove_o size 2
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
; common peephole 27 pushed de instead of hl removing a load.
	ld	e,a
	push	de
;	genCall
	call	_ui_draw_frame_row
;	adjustStack by 4
	add	sp, #4
	pop	de
	pop	bc
	C$ui.c$153$2_1$419	= .
	.globl	C$ui.c$153$2_1$419
;src\core\ui.c:153: for (UBYTE i = height - 1; i != 0; i--) {
;	genMinus
	dec	e
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;	genLabel
00121$:
;	genAssign
;	(locations are the same)
;	genLabel
00109$:
	C$ui.c$157$1_1$418	= .
	.globl	C$ui.c$157$1_1$418
;src\core\ui.c:157: base_addr += 32;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0020
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	C$ui.c$158$1_1$418	= .
	.globl	C$ui.c$158$1_1$418
;src\core\ui.c:158: ui_draw_frame_row(base_addr, ui_frame_bl_tiles, width);
;	genCast
;	(locations are the same)
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
; common peephole 37a pushed hl instead of pushing a twice.
; common peephole 9 loaded h from (hl) directly instead of going through a.
	ld	h, (hl)
	ld	l, #0xc6
	push	hl
;	genIpush
	push	bc
;	genCall
	call	_ui_draw_frame_row
;	adjustStack by 4
	add	sp, #4
;	genLabel
; common peephole 158 removed unused label 00113$.
	C$ui.c$159$1_1$416	= .
	.globl	C$ui.c$159$1_1$416
;src\core\ui.c:159: }
;	genEndFunction
	C$ui.c$159$1_1$416	= .
	.globl	C$ui.c$159$1_1$416
	XG$ui_draw_frame$0$0	= .
	.globl	XG$ui_draw_frame$0$0
	ret
	G$ui_print_reset$0$0	= .
	.globl	G$ui_print_reset$0$0
	C$ui.c$197$1_1$430	= .
	.globl	C$ui.c$197$1_1$430
;src\core\ui.c:197: void ui_print_reset(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ui_print_reset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_ui_print_reset::
	C$ui.c$198$1_0$430	= .
	.globl	C$ui.c$198$1_0$430
;src\core\ui.c:198: if (vwf_current_offset) ui_next_tile();
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vwf_current_offset)
; common peephole 17 loaded a from (#_vwf_current_offset) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;src\core\ui.c:181: ui_prev_tile_bank = ui_current_tile_bank;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_current_tile_bank)
; common peephole 17 loaded a from (#_ui_current_tile_bank) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_prev_tile_bank),a
; common peephole 19 loaded (#_ui_prev_tile_bank) from a directly instead of using hl.
;src\core\ui.c:182: ui_prev_tile = ui_current_tile++;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_current_tile)
; common peephole 17 loaded a from (#_ui_current_tile) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_prev_tile),a
; common peephole 19 loaded (#_ui_prev_tile) from a directly instead of using hl.
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_current_tile
;src\core\ui.c:183: if (ui_current_tile) return;
;	genIfx
;fetchLitPair	hl
	inc	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 100b removed redundant or after inc
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
;src\core\ui.c:185: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
;src\core\ui.c:186: ui_current_tile_bank++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_current_tile_bank
	inc	(hl)
;src\core\ui.c:187: ui_current_tile_bank &= 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;	genAnd
	and	a, #0x01
;	genMove_o size 1
;fetchLitPair	hl
;src\core\ui.c:188: ui_current_tile = (ui_current_tile_bank) ? TEXT_BUFFER_START_BANK1 : TEXT_BUFFER_START;
;	genIfx
;fetchLitPair	hl
	ld	(hl), a
; common peephole 98 removed redundant load from (hl) into a.
	or	a, a
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0xc0
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00112$
; common peephole 158 removed unused label 00111$.
	ld	a, #0xcc
; common peephole 168z used double assignment in case of Z condition.
00112$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_ui_current_tile),a
; common peephole 19 loaded (#_ui_current_tile) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00102$
;	genLabel
00106$:
;src\core\ui.c:190: ui_current_tile = TEXT_BUFFER_START;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ui_current_tile
	ld	(hl), #0xcc
	C$ui.c$198$1_0$430	= .
	.globl	C$ui.c$198$1_0$430
;src\core\ui.c:198: if (vwf_current_offset) ui_next_tile();
;	genLabel
00102$:
	C$ui.c$199$1_0$430	= .
	.globl	C$ui.c$199$1_0$430
;src\core\ui.c:199: vwf_current_offset = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vwf_current_offset
	ld	(hl), #0x00
	C$ui.c$200$1_0$430	= .
	.globl	C$ui.c$200$1_0$430
;src\core\ui.c:200: memset(vwf_tile_data, text_bkg_fill, sizeof(vwf_tile_data));
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_bkg_fill
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0020
	push	de
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_vwf_tile_data
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
;	genLabel
; common peephole 158 removed unused label 00109$.
	C$ui.c$201$1_0$430	= .
	.globl	C$ui.c$201$1_0$430
;src\core\ui.c:201: }
;	genEndFunction
	C$ui.c$201$1_0$430	= .
	.globl	C$ui.c$201$1_0$430
	XG$ui_print_reset$0$0	= .
	.globl	XG$ui_print_reset$0$0
	ret
	G$ui_set_start_tile$0$0	= .
	.globl	G$ui_set_start_tile$0$0
	C$ui.c$203$1_0$437	= .
	.globl	C$ui.c$203$1_0$437
;src\core\ui.c:203: void ui_set_start_tile(UBYTE start_tile, UBYTE start_tile_bank) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function ui_set_start_tile
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_ui_set_start_tile	= 1
_ui_set_start_tile::
	C$ui.c$204$1_0$437	= .
	.globl	C$ui.c$204$1_0$437
;src\core\ui.c:204: ui_prev_tile = ui_current_tile = start_tile;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#6
	ld	a, (hl)
;	genMove_o size 0
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_ui_current_tile),a
; common peephole 19 loaded (#_ui_current_tile) from a directly instead of using hl.
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_ui_prev_tile),a
; common peephole 19 loaded (#_ui_prev_tile) from a directly instead of using hl.
	C$ui.c$205$1_0$437	= .
	.globl	C$ui.c$205$1_0$437
;src\core\ui.c:205: ui_prev_tile_bank = ui_current_tile_bank = start_tile_bank;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#7
	ld	a, (hl)
;	genMove_o size 0
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_ui_current_tile_bank),a
; common peephole 19 loaded (#_ui_current_tile_bank) from a directly instead of using hl.
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_ui_prev_tile_bank),a
; common peephole 19 loaded (#_ui_prev_tile_bank) from a directly instead of using hl.
	C$ui.c$206$1_0$437	= .
	.globl	C$ui.c$206$1_0$437
;src\core\ui.c:206: vwf_current_offset = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vwf_current_offset
	ld	(hl), #0x00
	C$ui.c$207$1_0$437	= .
	.globl	C$ui.c$207$1_0$437
;src\core\ui.c:207: memset(vwf_tile_data, text_bkg_fill, sizeof(vwf_tile_data));
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_bkg_fill
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0020
	push	de
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_vwf_tile_data
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$ui.c$208$1_0$437	= .
	.globl	C$ui.c$208$1_0$437
;src\core\ui.c:208: }
;	genEndFunction
	C$ui.c$208$1_0$437	= .
	.globl	C$ui.c$208$1_0$437
	XG$ui_set_start_tile$0$0	= .
	.globl	XG$ui_set_start_tile$0$0
	ret
	G$ui_print_render$0$0	= .
	.globl	G$ui_print_render$0$0
	C$ui.c$215$1_0$443	= .
	.globl	C$ui.c$215$1_0$443
;src\core\ui.c:215: UBYTE ui_print_render(const unsigned char ch) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ui_print_render
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_ui_print_render::
;	adjustStack by -4
	add	sp, #-4
;	genReceive
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$ui.c$216$1_0$443	= .
	.globl	C$ui.c$216$1_0$443
;src\core\ui.c:216: UBYTE letter = (vwf_current_font_desc.attr & FONT_RECODE) ? ReadBankedUBYTE(vwf_current_font_desc.recode_table + (ch & vwf_current_font_desc.mask), vwf_current_font_bank) : ch;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_vwf_current_font_desc + 0)
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00142$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00268$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vwf_current_font_bank
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	hl, #_vwf_current_font_desc + 2
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
;fetchLitPair	de
	ld	de, #_vwf_current_font_desc + 1
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genAnd
	and	a, c
;	genMove_o size 1
;	genPlus
	add	a, l
	ld	e, a
	ld	a, #0x00
	adc	a, h
	ld	d, a
;	genSend
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	(locations are the same)
;	genLabel
; common peephole 85b eliminated jump.
00142$:
; common peephole 158 removed unused label 00143$.
;	genAssign
;	(locations are the same)
	C$ui.c$217$1_0$443	= .
	.globl	C$ui.c$217$1_0$443
;src\core\ui.c:217: const UBYTE * bitmap = vwf_current_font_desc.bitmaps + letter * 16u;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	hl, #_vwf_current_font_desc + 6
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	genMove_o size 1
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	e, l
	ld	d, h
;	genPlus
;	AOP_STK for _ui_print_render_sloc0_1_0
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
	C$ui.c$218$1_0$443	= .
	.globl	C$ui.c$218$1_0$443
;src\core\ui.c:218: if (vwf_current_font_desc.attr & FONT_VWF) {
;	genPointerGet
	ld	a, (#_vwf_current_font_desc + 0)
;	genAnd
	bit	1, a
	jp	Z,00115$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00269$.
;	skipping generated iCode
	C$ui.c$219$2_0$444	= .
	.globl	C$ui.c$219$2_0$444
;src\core\ui.c:219: vwf_inverse_map = (vwf_current_font_desc.attr & FONT_VWF_1BIT) ? text_bkg_fill : 0u;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_vwf_current_font_desc + 0)
;	genAnd
	bit	2, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00144$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00270$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_bkg_fill)
; common peephole 17 loaded a from (#_text_bkg_fill) directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00145$
;	genLabel
00144$:
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genLabel
00145$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_vwf_inverse_map),a
; common peephole 19 loaded (#_vwf_inverse_map) from a directly instead of using hl.
;src\core\ui.c:220: UBYTE width = ReadBankedUBYTE(vwf_current_font_desc.widths + letter, vwf_current_font_bank);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vwf_current_font_bank
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_vwf_current_font_desc + 4)
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
;	genMove_o size 2
	ld	e, c
;	genMove_o size 1
	ld	d, #0x00
	add	hl, de
;	genSend
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
	ld	b, c
;	genMove_o size 0
	C$ui.c$221$2_1$445	= .
	.globl	C$ui.c$221$2_1$445
;src\core\ui.c:221: if (vwf_direction == UI_PRINT_LEFTTORIGHT) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vwf_direction)
; common peephole 17 loaded a from (#_vwf_direction) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00106$
	C$ui.c$222$3_1$446	= .
	.globl	C$ui.c$222$3_1$446
;src\core\ui.c:222: vwf_current_rotate = vwf_current_offset;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vwf_current_offset)
; common peephole 17 loaded a from (#_vwf_current_offset) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_vwf_current_rotate),a
; common peephole 19 loaded (#_vwf_current_rotate) from a directly instead of using hl.
	C$ui.c$223$3_2$447	= .
	.globl	C$ui.c$223$3_2$447
;src\core\ui.c:223: UWORD masks = ui_print_make_mask_lr(width, vwf_current_offset);
;	genIpush
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vwf_current_offset)
; common peephole 17 loaded a from (#_vwf_current_offset) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
	push	bc
	inc	sp
;	genCall
;	AOP_STK for _ui_print_render_sloc1_1_0
;	adjustStack by 2
	call	_ui_print_make_mask_lr
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
	pop	bc
	C$ui.c$224$3_2$447	= .
	.globl	C$ui.c$224$3_2$447
;src\core\ui.c:224: vwf_current_mask = (UBYTE)masks;
;	genCast
;	AOP_STK for _ui_print_render_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_vwf_current_mask),a
; common peephole 19 loaded (#_vwf_current_mask) from a directly instead of using hl.
	C$ui.c$225$3_2$447	= .
	.globl	C$ui.c$225$3_2$447
;src\core\ui.c:225: ui_print_shift_char(vwf_tile_data, bitmap, vwf_current_font_bank);
;	genCast
;	AOP_STK for _ui_print_render_sloc0_1_0
;	genMove_o size 2
	pop	de
	push	de
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vwf_current_font_bank)
; common peephole 17 loaded a from (#_vwf_current_font_bank) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_vwf_tile_data
	push	de
;	genCall
	call	_ui_print_shift_char
;	adjustStack by 5
	add	sp, #5
	pop	bc
	C$ui.c$227$3_2$447	= .
	.globl	C$ui.c$227$3_2$447
;src\core\ui.c:227: if ((UBYTE)(vwf_current_offset + width) > 8u) {
;	genPlus
;fetchLitPair	hl
	ld	hl, #_vwf_current_offset
	ld	a, (hl)
	add	a, b
	ld	c, a
;	genCmpGt
;	skipping generated iCode
	C$ui.c$228$4_2$448	= .
	.globl	C$ui.c$228$4_2$448
;src\core\ui.c:228: vwf_current_rotate = (8u - vwf_current_offset) | 0x80u;
;	genMinus
	ld	a,#0x08
	cp	a,c
	jp	NC,00107$
; common peephole 107 removed load from #0x08 into a by replacing sub with cp
;fetchLitPair	hl
	sub	a, (hl)
;	genOr
	or	a, #0x80
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_vwf_current_rotate),a
; common peephole 19 loaded (#_vwf_current_rotate) from a directly instead of using hl.
	C$ui.c$229$4_2$448	= .
	.globl	C$ui.c$229$4_2$448
;src\core\ui.c:229: vwf_current_mask = (UBYTE)(masks >> 8u);
;	genGetByte
;	AOP_STK for _ui_print_render_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_vwf_current_mask),a
; common peephole 19 loaded (#_vwf_current_mask) from a directly instead of using hl.
	C$ui.c$230$4_2$448	= .
	.globl	C$ui.c$230$4_2$448
;src\core\ui.c:230: ui_print_shift_char(vwf_tile_data + 16u, bitmap, vwf_current_font_bank);
;	genCast
;	AOP_STK for _ui_print_render_sloc0_1_0
;	genMove_o size 2
	pop	de
	push	de
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vwf_current_font_bank)
; common peephole 17 loaded a from (#_vwf_current_font_bank) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_vwf_tile_data + 16)
	push	de
;	genCall
	call	_ui_print_shift_char
;	adjustStack by 5
	add	sp, #5
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
	C$ui.c$233$3_1$449	= .
	.globl	C$ui.c$233$3_1$449
;src\core\ui.c:233: UBYTE dx = (8u - vwf_current_offset);
;	genMinus
	ld	a, #0x08
;fetchLitPair	hl
	ld	hl, #_vwf_current_offset
	sub	a, (hl)
	ld	c, a
	C$ui.c$234$3_1$449	= .
	.globl	C$ui.c$234$3_1$449
;src\core\ui.c:234: vwf_current_rotate =  (width < dx) ? (dx - width) : (width - dx) | 0x80u;
;	genCmpLt
	ld	a, b
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00146$
;	skipping generated iCode
;	genMinus
	ld	a, c
	sub	a, b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00147$
;	genLabel
00146$:
;	genMinus
	ld	a, b
	sub	a, c
;	genOr
	set	7, a
;	genLabel
00147$:
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_vwf_current_rotate),a
; common peephole 19 loaded (#_vwf_current_rotate) from a directly instead of using hl.
	C$ui.c$235$3_2$450	= .
	.globl	C$ui.c$235$3_2$450
;src\core\ui.c:235: UWORD masks = ui_print_make_mask_rl(width, vwf_current_offset);
;	genIpush
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vwf_current_offset)
; common peephole 17 loaded a from (#_vwf_current_offset) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
	push	bc
	inc	sp
;	genCall
;	AOP_STK for _ui_print_render_sloc2_1_0
;	adjustStack by 2
	call	_ui_print_make_mask_rl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
	pop	bc
	C$ui.c$236$3_2$450	= .
	.globl	C$ui.c$236$3_2$450
;src\core\ui.c:236: vwf_current_mask = (UBYTE)masks;
;	genCast
;	AOP_STK for _ui_print_render_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_vwf_current_mask),a
; common peephole 19 loaded (#_vwf_current_mask) from a directly instead of using hl.
	C$ui.c$237$3_2$450	= .
	.globl	C$ui.c$237$3_2$450
;src\core\ui.c:237: ui_print_shift_char(vwf_tile_data, bitmap, vwf_current_font_bank);
;	genCast
;	AOP_STK for _ui_print_render_sloc0_1_0
;	genMove_o size 2
	pop	de
	push	de
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vwf_current_font_bank)
; common peephole 17 loaded a from (#_vwf_current_font_bank) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_vwf_tile_data
	push	de
;	genCall
	call	_ui_print_shift_char
;	adjustStack by 5
	add	sp, #5
	pop	bc
	C$ui.c$239$3_2$450	= .
	.globl	C$ui.c$239$3_2$450
;src\core\ui.c:239: if ((UBYTE)(vwf_current_offset + width) > 8u) {
;	genPlus
;fetchLitPair	hl
	ld	hl, #_vwf_current_offset
	ld	a, (hl)
	add	a, b
	ld	c, a
;	genCmpGt
	ld	a, #0x08
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00107$
;	skipping generated iCode
	C$ui.c$240$4_2$451	= .
	.globl	C$ui.c$240$4_2$451
;src\core\ui.c:240: vwf_current_rotate = 16u - (UBYTE)(vwf_current_offset + width);
;	genPlus
;fetchLitPair	hl
	ld	a, (hl)
	add	a, b
	ld	c, a
;	genMinus
	ld	a, #0x10
	sub	a, c
;fetchLitPair	hl
	ld	(#_vwf_current_rotate),a
; common peephole 19 loaded (#_vwf_current_rotate) from a directly instead of using hl.
	C$ui.c$241$4_2$451	= .
	.globl	C$ui.c$241$4_2$451
;src\core\ui.c:241: vwf_current_mask = (UBYTE)(masks >> 8u);
;	genGetByte
;	AOP_STK for _ui_print_render_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_vwf_current_mask),a
; common peephole 19 loaded (#_vwf_current_mask) from a directly instead of using hl.
	C$ui.c$242$4_2$451	= .
	.globl	C$ui.c$242$4_2$451
;src\core\ui.c:242: ui_print_shift_char(vwf_tile_data + 16u, bitmap, vwf_current_font_bank);
;	genCast
;	AOP_STK for _ui_print_render_sloc0_1_0
;	genMove_o size 2
	pop	de
	push	de
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vwf_current_font_bank)
; common peephole 17 loaded a from (#_vwf_current_font_bank) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_vwf_tile_data + 16)
	push	de
;	genCall
	call	_ui_print_shift_char
;	adjustStack by 5
	add	sp, #5
	pop	bc
;	genLabel
00107$:
	C$ui.c$245$2_1$445	= .
	.globl	C$ui.c$245$2_1$445
;src\core\ui.c:245: vwf_current_offset += width;
;	genPlus
	ld	a, b
;fetchLitPair	hl
	ld	hl, #_vwf_current_offset
	add	a, (hl)
;fetchLitPair	hl
	ld	(hl), a
;src\core\ui.c:247: ui_load_wram_tile(vwf_tile_data);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;src\core\ui.c:172: VBK_REG = ui_current_tile_bank;
;	genAssign
;fetchLitPair	hl
	ld	a, (#_ui_current_tile_bank)
; common peephole 17 loaded a from (#_ui_current_tile_bank) directly instead of using hl.
	ldh	(_VBK_REG + 0), a
;src\core\ui.c:174: set_bkg_data(ui_current_tile, 1, tiledata);
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_vwf_tile_data
	push	de
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_current_tile)
; common peephole 17 loaded a from (#_ui_current_tile) directly instead of using hl.
	push	af
	inc	sp
;	genCall
	call	_set_bkg_data
;	adjustStack by 4
	add	sp, #4
;src\core\ui.c:176: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
	C$ui.c$248$2_1$445	= .
	.globl	C$ui.c$248$2_1$445
;src\core\ui.c:248: if (vwf_current_offset > 7u) {
;	genCmpGt
	ld	a, #0x07
;fetchLitPair	hl
	ld	hl, #_vwf_current_offset
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00111$
;	skipping generated iCode
	C$ui.c$249$3_1$452	= .
	.globl	C$ui.c$249$3_1$452
;src\core\ui.c:249: ui_swap_tiles();
;	genCall
	call	_ui_swap_tiles
	C$ui.c$250$3_1$452	= .
	.globl	C$ui.c$250$3_1$452
;src\core\ui.c:250: vwf_current_offset -= 8u;
;	genMinus
;fetchLitPair	hl
	ld	hl, #_vwf_current_offset
	ld	a, (hl)
	add	a, #0xf8
;fetchLitPair	hl
	ld	(hl), a
;src\core\ui.c:181: ui_prev_tile_bank = ui_current_tile_bank;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_current_tile_bank)
; common peephole 17 loaded a from (#_ui_current_tile_bank) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_prev_tile_bank),a
; common peephole 19 loaded (#_ui_prev_tile_bank) from a directly instead of using hl.
;src\core\ui.c:182: ui_prev_tile = ui_current_tile++;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_current_tile)
; common peephole 17 loaded a from (#_ui_current_tile) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_prev_tile),a
; common peephole 19 loaded (#_ui_prev_tile) from a directly instead of using hl.
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_current_tile
;src\core\ui.c:183: if (ui_current_tile) return;
;	genIfx
;fetchLitPair	hl
	inc	(hl)
	ld	a, (hl)
; common peephole 100b removed redundant or after inc
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00125$
;src\core\ui.c:185: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00123$
;src\core\ui.c:186: ui_current_tile_bank++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_current_tile_bank
	inc	(hl)
;src\core\ui.c:187: ui_current_tile_bank &= 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;	genAnd
	and	a, #0x01
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;src\core\ui.c:188: ui_current_tile = (ui_current_tile_bank) ? TEXT_BUFFER_START_BANK1 : TEXT_BUFFER_START;
;	genIfx
;fetchLitPair	hl
	ld	a, (hl)
	or	a, a
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0xc0
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00149$
; common peephole 158 removed unused label 00148$.
	ld	a, #0xcc
; common peephole 168z used double assignment in case of Z condition.
00149$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_ui_current_tile),a
; common peephole 19 loaded (#_ui_current_tile) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00125$
;	genLabel
00123$:
;src\core\ui.c:190: ui_current_tile = TEXT_BUFFER_START;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ui_current_tile
	ld	(hl), #0xcc
;src\core\ui.c:251: ui_next_tile();
;	genLabel
00125$:
	C$ui.c$252$3_1$452	= .
	.globl	C$ui.c$252$3_1$452
;src\core\ui.c:252: if (vwf_current_offset) ui_load_wram_tile(vwf_tile_data);
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vwf_current_offset)
; common peephole 17 loaded a from (#_vwf_current_offset) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;src\core\ui.c:172: VBK_REG = ui_current_tile_bank;
;	genAssign
;fetchLitPair	hl
	ld	a, (#_ui_current_tile_bank)
; common peephole 17 loaded a from (#_ui_current_tile_bank) directly instead of using hl.
	ldh	(_VBK_REG + 0), a
;src\core\ui.c:174: set_bkg_data(ui_current_tile, 1, tiledata);
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_vwf_tile_data
	push	de
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_current_tile)
; common peephole 17 loaded a from (#_ui_current_tile) directly instead of using hl.
	push	af
	inc	sp
;	genCall
	call	_set_bkg_data
;	adjustStack by 4
	add	sp, #4
;src\core\ui.c:176: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
	C$ui.c$252$3_1$452	= .
	.globl	C$ui.c$252$3_1$452
;src\core\ui.c:252: if (vwf_current_offset) ui_load_wram_tile(vwf_tile_data);
;	genLabel
00109$:
	C$ui.c$253$3_1$452	= .
	.globl	C$ui.c$253$3_1$452
;src\core\ui.c:253: return TRUE;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
	jp	00140$
;	genLabel
00111$:
	C$ui.c$255$2_1$445	= .
	.globl	C$ui.c$255$2_1$445
;src\core\ui.c:255: return FALSE;
;	genRet
;	genMove_o size 1
	xor	a, a
	jp	00140$
;	genLabel
00115$:
	C$ui.c$257$2_0$453	= .
	.globl	C$ui.c$257$2_0$453
;src\core\ui.c:257: if (vwf_current_offset) ui_next_tile();
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vwf_current_offset)
; common peephole 17 loaded a from (#_vwf_current_offset) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
;src\core\ui.c:181: ui_prev_tile_bank = ui_current_tile_bank;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_current_tile_bank)
; common peephole 17 loaded a from (#_ui_current_tile_bank) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_prev_tile_bank),a
; common peephole 19 loaded (#_ui_prev_tile_bank) from a directly instead of using hl.
;src\core\ui.c:182: ui_prev_tile = ui_current_tile++;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_current_tile)
; common peephole 17 loaded a from (#_ui_current_tile) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_prev_tile),a
; common peephole 19 loaded (#_ui_prev_tile) from a directly instead of using hl.
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_current_tile
;src\core\ui.c:183: if (ui_current_tile) return;
;	genIfx
;fetchLitPair	hl
	inc	(hl)
	ld	a, (hl)
; common peephole 100b removed redundant or after inc
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00113$
;src\core\ui.c:185: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00130$
;src\core\ui.c:186: ui_current_tile_bank++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_current_tile_bank
	inc	(hl)
;src\core\ui.c:187: ui_current_tile_bank &= 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;	genAnd
	and	a, #0x01
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;src\core\ui.c:188: ui_current_tile = (ui_current_tile_bank) ? TEXT_BUFFER_START_BANK1 : TEXT_BUFFER_START;
;	genIfx
;fetchLitPair	hl
	ld	a, (hl)
	or	a, a
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0xc0
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00151$
; common peephole 158 removed unused label 00150$.
	ld	a, #0xcc
; common peephole 168z used double assignment in case of Z condition.
00151$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_ui_current_tile),a
; common peephole 19 loaded (#_ui_current_tile) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00130$:
;src\core\ui.c:190: ui_current_tile = TEXT_BUFFER_START;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ui_current_tile
	ld	(hl), #0xcc
	C$ui.c$257$2_0$453	= .
	.globl	C$ui.c$257$2_0$453
;src\core\ui.c:257: if (vwf_current_offset) ui_next_tile();
;	genLabel
00113$:
;src\core\ui.c:258: ui_load_tile(bitmap, vwf_current_font_bank);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vwf_current_font_bank
	ld	b, (hl)
;src\core\ui.c:163: VBK_REG = ui_current_tile_bank;
;	genAssign
;fetchLitPair	hl
	ld	a, (#_ui_current_tile_bank)
; common peephole 17 loaded a from (#_ui_current_tile_bank) directly instead of using hl.
	ldh	(_VBK_REG + 0), a
;src\core\ui.c:165: SetBankedBkgData(ui_current_tile, 1, tiledata, bank);
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	AOP_STK for _ui_print_render_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_current_tile)
; common peephole 17 loaded a from (#_ui_current_tile) directly instead of using hl.
	push	af
	inc	sp
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
;src\core\ui.c:167: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;src\core\ui.c:181: ui_prev_tile_bank = ui_current_tile_bank;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_current_tile_bank)
; common peephole 17 loaded a from (#_ui_current_tile_bank) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_prev_tile_bank),a
; common peephole 19 loaded (#_ui_prev_tile_bank) from a directly instead of using hl.
;src\core\ui.c:182: ui_prev_tile = ui_current_tile++;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_current_tile)
; common peephole 17 loaded a from (#_ui_current_tile) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_prev_tile),a
; common peephole 19 loaded (#_ui_prev_tile) from a directly instead of using hl.
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_current_tile
;src\core\ui.c:183: if (ui_current_tile) return;
;	genIfx
;fetchLitPair	hl
	inc	(hl)
	ld	a, (hl)
; common peephole 100b removed redundant or after inc
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00139$
;src\core\ui.c:185: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00137$
;src\core\ui.c:186: ui_current_tile_bank++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_current_tile_bank
	inc	(hl)
;src\core\ui.c:187: ui_current_tile_bank &= 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;	genAnd
	and	a, #0x01
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;src\core\ui.c:188: ui_current_tile = (ui_current_tile_bank) ? TEXT_BUFFER_START_BANK1 : TEXT_BUFFER_START;
;	genIfx
;fetchLitPair	hl
	ld	a, (hl)
	or	a, a
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0xc0
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00153$
; common peephole 158 removed unused label 00152$.
	ld	a, #0xcc
; common peephole 168z used double assignment in case of Z condition.
00153$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_ui_current_tile),a
; common peephole 19 loaded (#_ui_current_tile) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00139$
;	genLabel
00137$:
;src\core\ui.c:190: ui_current_tile = TEXT_BUFFER_START;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ui_current_tile
	ld	(hl), #0xcc
;src\core\ui.c:259: ui_next_tile();
;	genLabel
00139$:
	C$ui.c$260$2_0$453	= .
	.globl	C$ui.c$260$2_0$453
;src\core\ui.c:260: vwf_current_offset = 0u;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vwf_current_offset
	ld	(hl), #0x00
	C$ui.c$261$2_0$453	= .
	.globl	C$ui.c$261$2_0$453
;src\core\ui.c:261: return TRUE;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
;	genLabel
00140$:
	C$ui.c$263$1_0$443	= .
	.globl	C$ui.c$263$1_0$443
;src\core\ui.c:263: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$ui.c$263$1_0$443	= .
	.globl	C$ui.c$263$1_0$443
	XG$ui_print_render$0$0	= .
	.globl	XG$ui_print_render$0$0
	ret
	G$ui_draw_text_buffer_char$0$0	= .
	.globl	G$ui_draw_text_buffer_char$0$0
	C$ui.c$278$1_0$488	= .
	.globl	C$ui.c$278$1_0$488
;src\core\ui.c:278: UBYTE ui_draw_text_buffer_char(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function ui_draw_text_buffer_char
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
	b_ui_draw_text_buffer_char	= 1
_ui_draw_text_buffer_char::
;	adjustStack by -3
	add	sp, #-3
	C$ui.c$281$1_0$488	= .
	.globl	C$ui.c$281$1_0$488
;src\core\ui.c:281: if (ui_text_ptr == 0) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00206$
	C$ui.c$283$2_0$489	= .
	.globl	C$ui.c$283$2_0$489
;src\core\ui.c:283: current_text_speed = ui_time_masks[text_draw_speed];
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	a, #<(_ui_time_masks)
;fetchLitPair	hl
	ld	hl, #_text_draw_speed
	add	a, (hl)
	ld	c, a
	ld	a, #>(_ui_time_masks)
	adc	a, #0x00
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_current_text_speed),a
; common peephole 19 loaded (#_current_text_speed) from a directly instead of using hl.
	C$ui.c$285$2_0$489	= .
	.globl	C$ui.c$285$2_0$489
;src\core\ui.c:285: current_font_idx        = vwf_current_font_idx;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vwf_current_font_idx)
; common peephole 17 loaded a from (#_vwf_current_font_idx) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_draw_text_buffer_char_current_font_idx_10000_488),a
; common peephole 19 loaded (#_ui_draw_text_buffer_char_current_font_idx_10000_488) from a directly instead of using hl.
	C$ui.c$286$2_0$489	= .
	.globl	C$ui.c$286$2_0$489
;src\core\ui.c:286: current_text_bkg_fill   = text_bkg_fill;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_bkg_fill)
; common peephole 17 loaded a from (#_text_bkg_fill) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_draw_text_buffer_char_current_text_bkg_fill_10000_488),a
; common peephole 19 loaded (#_ui_draw_text_buffer_char_current_text_bkg_fill_10000_488) from a directly instead of using hl.
	C$ui.c$287$2_0$489	= .
	.globl	C$ui.c$287$2_0$489
;src\core\ui.c:287: current_vwf_direction   = vwf_direction;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vwf_direction)
; common peephole 17 loaded a from (#_vwf_direction) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_draw_text_buffer_char_current_vwf_direction_10000_488),a
; common peephole 19 loaded (#_ui_draw_text_buffer_char_current_vwf_direction_10000_488) from a directly instead of using hl.
	C$ui.c$288$2_0$489	= .
	.globl	C$ui.c$288$2_0$489
;src\core\ui.c:288: current_text_ff_joypad  = text_ff_joypad;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_ff_joypad)
; common peephole 17 loaded a from (#_text_ff_joypad) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_draw_text_buffer_char_current_text_ff_joypad_10000_488),a
; common peephole 19 loaded (#_ui_draw_text_buffer_char_current_text_ff_joypad_10000_488) from a directly instead of using hl.
	C$ui.c$289$2_0$489	= .
	.globl	C$ui.c$289$2_0$489
;src\core\ui.c:289: current_text_draw_speed = text_draw_speed;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_draw_speed)
; common peephole 17 loaded a from (#_text_draw_speed) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_draw_text_buffer_char_current_text_draw_speed_10000_488),a
; common peephole 19 loaded (#_ui_draw_text_buffer_char_current_text_draw_speed_10000_488) from a directly instead of using hl.
	C$ui.c$292$2_0$489	= .
	.globl	C$ui.c$292$2_0$489
;src\core\ui.c:292: ui_text_ptr = ui_text_data;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	ld	(hl), #<(_ui_text_data)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_ui_text_data)
	C$ui.c$294$2_0$489	= .
	.globl	C$ui.c$294$2_0$489
;src\core\ui.c:294: if ((text_options & TEXT_OPT_PRESERVE_POS) == 0) {
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_options)
; common peephole 17 loaded a from (#_text_options) directly instead of using hl.
;	genAnd
	rrca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00352$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00104$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00353$.
;	skipping generated iCode
	C$ui.c$295$3_0$490	= .
	.globl	C$ui.c$295$3_0$490
;src\core\ui.c:295: ui_dest_base = text_render_base_addr + 32 + 1;                  // gotoxy(1,1)
;	genPlus
;fetchLitPair	hl
	ld	hl, #_text_render_base_addr
;fetchLitPair	hl
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before add a, #0x20
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	add	a, #0x20
	ld	c, a
	ld	a, (hl)
	adc	a, #0x00
	ld	b, a
;	genPlus
	inc	bc
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_base
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$ui.c$296$3_0$490	= .
	.globl	C$ui.c$296$3_0$490
;src\core\ui.c:296: if (vwf_direction == UI_PRINT_RIGHTTOLEFT) ui_dest_base += 17;  // right_to_left initial pos correction
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_vwf_direction)
; common peephole 17 loaded a from (#_vwf_direction) directly instead of using hl.
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00354$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00355$.
;	skipping generated iCode
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_dest_base
	ld	a, (hl)
	add	a, #0x11
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, #0x00
;fetchLitPair	hl
	ld	(hl), a
;	genLabel
00102$:
	C$ui.c$298$3_0$490	= .
	.globl	C$ui.c$298$3_0$490
;src\core\ui.c:298: ui_dest_ptr = ui_dest_base;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_ui_dest_base)
; common peephole 17 loaded a from (#_ui_dest_base) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_dest_ptr),a
; common peephole 19 loaded (#_ui_dest_ptr) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_ui_dest_base + 1)
;fetchLitPair	hl
	ld	(#_ui_dest_ptr + 1),a
; common peephole 20 loaded (#_ui_dest_ptr) from a directly instead of using hl.
;	genLabel
00104$:
	C$ui.c$301$2_0$489	= .
	.globl	C$ui.c$301$2_0$489
;src\core\ui.c:301: ui_print_reset();
;	genCall
	call	_ui_print_reset
	C$ui.c$305$1_0$488	= .
	.globl	C$ui.c$305$1_0$488
;src\core\ui.c:305: while (TRUE) {
;	genLabel
00206$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00160$:
	C$ui.c$306$2_0$491	= .
	.globl	C$ui.c$306$2_0$491
;src\core\ui.c:306: switch (*ui_text_ptr) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPointerGet
;	AOP_STK for _ui_draw_text_buffer_char_sloc0_1_0
	ld	a, (bc)
;	genMove_o size 1
	ldhl	sp,	#2
	ld	(hl), a
;	genMove_o size 0
;	genCmpGt
;	AOP_STK for _ui_draw_text_buffer_char_sloc0_1_0
	ld	a, #0x0d
	sub	a, (hl)
	jp	C, 00150$
;	skipping generated iCode
;	genJumpTab
;	AOP_STK for _ui_draw_text_buffer_char_sloc0_1_0
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #00356$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00356$:
	jp	00107$
	jp	00110$
	jp	00111$
	jp	00116$
	jp	00119$
	jp	00149$
	jp	00126$
	jp	00134$
	jp	00135$
	jp	00158$
	jp	00137$
	jp	00140$
	jp	00150$
	jp	00141$
	C$ui.c$307$3_0$492	= .
	.globl	C$ui.c$307$3_0$492
;src\core\ui.c:307: case 0x00: {
;	genLabel
00107$:
	C$ui.c$308$4_0$493	= .
	.globl	C$ui.c$308$4_0$493
;src\core\ui.c:308: ui_text_ptr = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$ui.c$309$4_0$493	= .
	.globl	C$ui.c$309$4_0$493
;src\core\ui.c:309: text_drawn = TRUE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_drawn
	ld	(hl), #0x01
	C$ui.c$310$4_0$493	= .
	.globl	C$ui.c$310$4_0$493
;src\core\ui.c:310: if (vwf_current_font_idx != current_font_idx) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_vwf_current_font_idx)
; common peephole 17 loaded a from (#_vwf_current_font_idx) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_ui_draw_text_buffer_char_current_font_idx_10000_488
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00357$.
;	skipping generated iCode
	C$ui.c$311$5_0$494	= .
	.globl	C$ui.c$311$5_0$494
;src\core\ui.c:311: const far_ptr_t * font = ui_fonts + vwf_current_font_idx;
;	skipping iCode since result will be rematerialized
;	genMult
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_vwf_current_font_idx
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
; common peephole 119 removed loads by exploiting commutativity of addition.
	ld	bc,#_ui_fonts
	add	hl,bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$ui.c$312$5_0$494	= .
	.globl	C$ui.c$312$5_0$494
;src\core\ui.c:312: MemcpyBanked(&vwf_current_font_desc, font->ptr, sizeof(font_desc_t), vwf_current_font_bank = font->bank);
;	genPointerGet
;	AOP_STK for _ui_draw_text_buffer_char_sloc1_1_0
	ld	a, (bc)
;	genMove_o size 1
	ldhl	sp,	#2
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	AOP_STK for _ui_draw_text_buffer_char_sloc1_1_0
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_vwf_current_font_bank),a
; common peephole 19 loaded (#_vwf_current_font_bank) from a directly instead of using hl.
;	genPlus
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
; common peephole 24 incremented in hl instead of bc.
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for _ui_draw_text_buffer_char_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0008
	push	de
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_vwf_current_font_desc
;	genCall
	call	_MemcpyBanked
;	genLabel
00109$:
	C$ui.c$314$4_0$493	= .
	.globl	C$ui.c$314$4_0$493
;src\core\ui.c:314: text_bkg_fill = current_text_bkg_fill;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_draw_text_buffer_char_current_text_bkg_fill_10000_488)
; common peephole 17 loaded a from (#_ui_draw_text_buffer_char_current_text_bkg_fill_10000_488) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_text_bkg_fill),a
; common peephole 19 loaded (#_text_bkg_fill) from a directly instead of using hl.
	C$ui.c$315$4_0$493	= .
	.globl	C$ui.c$315$4_0$493
;src\core\ui.c:315: vwf_direction = current_vwf_direction;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_draw_text_buffer_char_current_vwf_direction_10000_488)
; common peephole 17 loaded a from (#_ui_draw_text_buffer_char_current_vwf_direction_10000_488) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_vwf_direction),a
; common peephole 19 loaded (#_vwf_direction) from a directly instead of using hl.
	C$ui.c$316$4_0$493	= .
	.globl	C$ui.c$316$4_0$493
;src\core\ui.c:316: text_ff_joypad = current_text_ff_joypad;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_draw_text_buffer_char_current_text_ff_joypad_10000_488)
; common peephole 17 loaded a from (#_ui_draw_text_buffer_char_current_text_ff_joypad_10000_488) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_text_ff_joypad),a
; common peephole 19 loaded (#_text_ff_joypad) from a directly instead of using hl.
	C$ui.c$317$4_0$493	= .
	.globl	C$ui.c$317$4_0$493
;src\core\ui.c:317: text_draw_speed = current_text_draw_speed;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_draw_text_buffer_char_current_text_draw_speed_10000_488)
; common peephole 17 loaded a from (#_ui_draw_text_buffer_char_current_text_draw_speed_10000_488) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_text_draw_speed),a
; common peephole 19 loaded (#_text_draw_speed) from a directly instead of using hl.
	C$ui.c$318$4_0$493	= .
	.globl	C$ui.c$318$4_0$493
;src\core\ui.c:318: return FALSE;
;	genRet
;	genMove_o size 1
	xor	a, a
	jp	00168$
	C$ui.c$320$3_0$492	= .
	.globl	C$ui.c$320$3_0$492
;src\core\ui.c:320: case 0x01:
;	genLabel
00110$:
	C$ui.c$322$3_0$492	= .
	.globl	C$ui.c$322$3_0$492
;src\core\ui.c:322: text_draw_speed = (*(++ui_text_ptr) - 1u) & 0x07u;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00358$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00358$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMinus
	dec	a
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;fetchLitPair	hl
	C$ui.c$323$3_0$492	= .
	.globl	C$ui.c$323$3_0$492
;src\core\ui.c:323: current_text_speed = ui_time_masks[text_draw_speed];
;	genPlus
;fetchLitPair	hl
	ld	(#_text_draw_speed),a
; common peephole 19 loaded (#_text_draw_speed) from a directly instead of using hl.
; common peephole 118 removed load by exploiting commutativity of addition.
	add	a,#<(_ui_time_masks)
	ld	c, a
	ld	a, #>(_ui_time_masks)
	adc	a, #0x00
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_current_text_speed),a
; common peephole 19 loaded (#_current_text_speed) from a directly instead of using hl.
	C$ui.c$324$3_0$492	= .
	.globl	C$ui.c$324$3_0$492
;src\core\ui.c:324: break;
;	genGoto
	jp	00158$
	C$ui.c$325$3_0$492	= .
	.globl	C$ui.c$325$3_0$492
;src\core\ui.c:325: case 0x02: {
;	genLabel
00111$:
	C$ui.c$327$4_0$495	= .
	.globl	C$ui.c$327$4_0$495
;src\core\ui.c:327: current_font_idx = *(++ui_text_ptr) - 1u;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00359$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00359$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genMinus
; common peephole 155c turned add into dec.
	dec	a
;fetchLitPair	hl
	ld	hl, #_ui_draw_text_buffer_char_current_font_idx_10000_488
	ld	(hl), a
	C$ui.c$328$4_1$496	= .
	.globl	C$ui.c$328$4_1$496
;src\core\ui.c:328: const far_ptr_t * font = ui_fonts + current_font_idx;
;	genMult
;fetchPairLong
;fetchLitPair	hl
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
; common peephole 119 removed loads by exploiting commutativity of addition.
	ld	bc,#_ui_fonts
	add	hl,bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$ui.c$329$4_1$496	= .
	.globl	C$ui.c$329$4_1$496
;src\core\ui.c:329: UBYTE old_flags = vwf_current_font_desc.attr;
;	genPointerGet
;	AOP_STK for _ui_draw_text_buffer_char_sloc2_1_0
;	_moveFrom_tpair_()
; common peephole 18 loaded 0 into a directly instead of using hl.
	ld	a, (#_vwf_current_font_desc + 0)
	ldhl	sp,	#2
	ld	(hl), a
	C$ui.c$330$4_1$496	= .
	.globl	C$ui.c$330$4_1$496
;src\core\ui.c:330: MemcpyBanked(&vwf_current_font_desc, font->ptr, sizeof(font_desc_t), vwf_current_font_bank = font->bank);
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_vwf_current_font_bank),a
; common peephole 19 loaded (#_vwf_current_font_bank) from a directly instead of using hl.
;	genPlus
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	genIpush
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0008
	push	de
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_vwf_current_font_desc
;	genCall
	call	_MemcpyBanked
	C$ui.c$331$4_1$496	= .
	.globl	C$ui.c$331$4_1$496
;src\core\ui.c:331: if ((vwf_current_offset) && ((old_flags & FONT_VWF) != 0) && ((vwf_current_font_desc.attr & FONT_VWF) == 0)) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_vwf_current_offset
	ld	a, (hl)
	or	a, a
	jp	Z, 00158$
;	genAnd
;	AOP_STK for _ui_draw_text_buffer_char_sloc2_1_0
	push	hl
	ldhl	sp,	#4
	bit	1, (hl)
	pop	hl
	jp	Z,00158$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00360$.
;	skipping generated iCode
;	genPointerGet
	ld	a, (#_vwf_current_font_desc + 0)
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00361$.
	jp	NZ,00158$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00362$.
;	skipping generated iCode
	C$ui.c$332$5_1$497	= .
	.globl	C$ui.c$332$5_1$497
;src\core\ui.c:332: ui_dest_ptr++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_dest_ptr
	inc	(hl)
	jp	NZ,00158$
; common peephole 84 jumped to 00158$ directly instead of via 00363$.
;fetchLitPair	hl
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00363$.
	C$ui.c$334$4_1$496	= .
	.globl	C$ui.c$334$4_1$496
;src\core\ui.c:334: break;
;	genGoto
	jp	00158$
	C$ui.c$336$3_0$492	= .
	.globl	C$ui.c$336$3_0$492
;src\core\ui.c:336: case 0x03:
;	genLabel
00116$:
	C$ui.c$338$3_0$492	= .
	.globl	C$ui.c$338$3_0$492
;src\core\ui.c:338: ui_dest_ptr = ui_dest_base = text_render_base_addr + (*++ui_text_ptr - 1u) + (*++ui_text_ptr - 1u) * 32u;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00364$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00364$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_ui_text_ptr + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
	ld	c, (hl)
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	xor	a, a
;	genMinus
;fetchPairLong
	ld	b, a
	dec	bc
;	genPlus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_text_render_base_addr
	add	a, (hl)
;fetchLitPair	hl
; common peephole 96b move inc hl before ld a, b
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	ld	a, b
	adc	a, (hl)
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00365$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00365$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_ui_text_ptr + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	xor	a, a
;	genMinus
;fetchPairLong
	ld	h, a
	dec	hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_base
	ld	(hl), c
;fetchLitPair	hl
	inc	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_ptr
	ld	(hl), c
;fetchLitPair	hl
	inc	hl
	ld	(hl), a
	C$ui.c$339$3_0$492	= .
	.globl	C$ui.c$339$3_0$492
;src\core\ui.c:339: if (vwf_current_offset) ui_print_reset();
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vwf_current_offset)
; common peephole 17 loaded a from (#_vwf_current_offset) directly instead of using hl.
	or	a, a
	jp	Z, 00158$
;	genCall
	call	_ui_print_reset
	C$ui.c$340$3_0$492	= .
	.globl	C$ui.c$340$3_0$492
;src\core\ui.c:340: break;
;	genGoto
	jp	00158$
	C$ui.c$341$3_0$492	= .
	.globl	C$ui.c$341$3_0$492
;src\core\ui.c:341: case 0x04: {
;	genLabel
00119$:
	C$ui.c$343$4_0$498	= .
	.globl	C$ui.c$343$4_0$498
;src\core\ui.c:343: BYTE dx = (BYTE)(*++ui_text_ptr);
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00366$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00366$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_ui_text_ptr + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
	ld	c, (hl)
;	genCast
;	(locations are the same)
	C$ui.c$344$4_0$498	= .
	.globl	C$ui.c$344$4_0$498
;src\core\ui.c:344: if (dx > 0) dx--;
;	genCmpGt
; common peephole 9 loaded e from c directly instead of going through a.
	ld	e, c
; common peephole 9 loaded d from #0x00 directly instead of going through a.
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	d, a
	sub	a, c
	bit	7, e
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
	jr	NC, 00121$
;	skipping generated iCode
;	genMinus
	dec	c
;	genLabel
00121$:
	C$ui.c$345$4_1$499	= .
	.globl	C$ui.c$345$4_1$499
;src\core\ui.c:345: BYTE dy = (BYTE)(*++ui_text_ptr);
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00369$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00369$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_ui_text_ptr + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	(locations are the same)
	C$ui.c$346$4_1$499	= .
	.globl	C$ui.c$346$4_1$499
;src\core\ui.c:346: if (dy > 0) dy--;
;	genCmpGt
; common peephole 9 loaded e from l directly instead of going through a.
	ld	e, l
; common peephole 9 loaded d from #0x00 directly instead of going through a.
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	d, a
	sub	a, l
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00370$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00371$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00371$
00370$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00371$
	scf
00371$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00123$
;	skipping generated iCode
;	genMinus
	dec	l
;	genLabel
00123$:
	C$ui.c$347$4_1$499	= .
	.globl	C$ui.c$347$4_1$499
;src\core\ui.c:347: ui_dest_base = ui_dest_ptr += dx + dy * 32u;
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	rlca
	sbc	a, a
	ld	b, a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	a, l
;	genMove_o size 0
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_ui_dest_ptr
	add	a, (hl)
;fetchLitPair	hl
; common peephole 96b move inc hl before ld a, b
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	ld	a, b
	adc	a, (hl)
	ld	b, a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_base
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_ptr
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$ui.c$348$4_1$499	= .
	.globl	C$ui.c$348$4_1$499
;src\core\ui.c:348: if (vwf_current_offset) ui_print_reset();
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vwf_current_offset)
; common peephole 17 loaded a from (#_vwf_current_offset) directly instead of using hl.
	or	a, a
	jp	Z, 00158$
;	genCall
	call	_ui_print_reset
	C$ui.c$349$4_1$499	= .
	.globl	C$ui.c$349$4_1$499
;src\core\ui.c:349: break;
;	genGoto
	jp	00158$
	C$ui.c$351$3_0$492	= .
	.globl	C$ui.c$351$3_0$492
;src\core\ui.c:351: case 0x06:
;	genLabel
00126$:
	C$ui.c$353$3_0$492	= .
	.globl	C$ui.c$353$3_0$492
;src\core\ui.c:353: if (text_ff) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_text_ff
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00128$
	C$ui.c$354$4_0$500	= .
	.globl	C$ui.c$354$4_0$500
;src\core\ui.c:354: text_ff = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), #0x00
	C$ui.c$355$4_0$500	= .
	.globl	C$ui.c$355$4_0$500
;src\core\ui.c:355: INPUT_RESET;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_last_joy),a
; common peephole 19 loaded (#_last_joy) from a directly instead of using hl.
;	genLabel
00128$:
	C$ui.c$357$3_0$492	= .
	.globl	C$ui.c$357$3_0$492
;src\core\ui.c:357: text_ff_joypad = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_ff_joypad
	ld	(hl), #0x00
	C$ui.c$359$3_0$492	= .
	.globl	C$ui.c$359$3_0$492
;src\core\ui.c:359: ui_text_ptr++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00372$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00372$:
	C$ui.c$361$3_0$492	= .
	.globl	C$ui.c$361$3_0$492
;src\core\ui.c:361: if (text_draw_speed) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_text_draw_speed)
; common peephole 17 loaded a from (#_text_draw_speed) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00133$
	C$ui.c$363$4_0$501	= .
	.globl	C$ui.c$363$4_0$501
;src\core\ui.c:363: if (INPUT_PRESSED(*ui_text_ptr)) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
;	genMove_o size 1
	ld	b, #0x00
;	genCpl
	cpl
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	ld	a, b
	cpl
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genMove_o size 1
	ld	e, #0x00
;	genAnd
	and	a, c
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	ld	a, e
	and	a, b
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	e, #0x00
;	genAnd
	and	a, c
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	ld	a, e
	and	a, b
;	genMove_o size 1
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00130$
	C$ui.c$365$5_0$502	= .
	.globl	C$ui.c$365$5_0$502
;src\core\ui.c:365: text_ff_joypad = current_text_ff_joypad;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_ui_draw_text_buffer_char_current_text_ff_joypad_10000_488)
; common peephole 17 loaded a from (#_ui_draw_text_buffer_char_current_text_ff_joypad_10000_488) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_text_ff_joypad),a
; common peephole 19 loaded (#_text_ff_joypad) from a directly instead of using hl.
	C$ui.c$366$5_0$502	= .
	.globl	C$ui.c$366$5_0$502
;src\core\ui.c:366: INPUT_RESET;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_last_joy),a
; common peephole 19 loaded (#_last_joy) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00133$
;	genLabel
00130$:
	C$ui.c$369$5_0$503	= .
	.globl	C$ui.c$369$5_0$503
;src\core\ui.c:369: ui_text_ptr--;
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ui_text_ptr
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;fetchLitPair	hl
; common peephole 96c move dec hl before dec de
	ld	a, (hl-)
	ld	d, a
; sm83 peephole 3 used ldd to decrement hl after load
	dec	de
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
	C$ui.c$370$5_0$503	= .
	.globl	C$ui.c$370$5_0$503
;src\core\ui.c:370: current_text_speed = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_current_text_speed
	ld	(hl), #0x00
	C$ui.c$371$5_0$503	= .
	.globl	C$ui.c$371$5_0$503
;src\core\ui.c:371: return FALSE;
;	genRet
;	genMove_o size 1
	xor	a, a
	jp	00168$
;	genLabel
00133$:
	C$ui.c$374$3_0$492	= .
	.globl	C$ui.c$374$3_0$492
;src\core\ui.c:374: current_text_speed = ui_time_masks[text_draw_speed];
;	genPlus
	ld	a, #<(_ui_time_masks)
;fetchLitPair	hl
	ld	hl, #_text_draw_speed
	add	a, (hl)
	ld	c, a
	ld	a, #>(_ui_time_masks)
	adc	a, #0x00
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_current_text_speed),a
; common peephole 19 loaded (#_current_text_speed) from a directly instead of using hl.
	C$ui.c$375$3_0$492	= .
	.globl	C$ui.c$375$3_0$492
;src\core\ui.c:375: break;
;	genGoto
	jp	00158$
	C$ui.c$376$3_0$492	= .
	.globl	C$ui.c$376$3_0$492
;src\core\ui.c:376: case 0x07:
;	genLabel
00134$:
	C$ui.c$378$3_0$492	= .
	.globl	C$ui.c$378$3_0$492
;src\core\ui.c:378: text_bkg_fill = (*++ui_text_ptr & 1u) ? TEXT_BKG_FILL_W : TEXT_BKG_FILL_B;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00373$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00373$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00170$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00374$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	xor	a, a
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
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_text_bkg_fill),a
; common peephole 19 loaded (#_text_bkg_fill) from a directly instead of using hl.
	C$ui.c$379$3_0$492	= .
	.globl	C$ui.c$379$3_0$492
;src\core\ui.c:379: break;
;	genGoto
	jp	00158$
	C$ui.c$380$3_0$492	= .
	.globl	C$ui.c$380$3_0$492
;src\core\ui.c:380: case 0x08:
;	genLabel
00135$:
	C$ui.c$382$3_0$492	= .
	.globl	C$ui.c$382$3_0$492
;src\core\ui.c:382: vwf_direction = (*++ui_text_ptr & 1u) ? UI_PRINT_LEFTTORIGHT : UI_PRINT_RIGHTTOLEFT;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00375$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00375$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00172$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00376$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00173$
;	genLabel
00172$:
;	genAssign
;	genMove_o size 1
	ld	a, #0x01
;	genLabel
00173$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_vwf_direction),a
; common peephole 19 loaded (#_vwf_direction) from a directly instead of using hl.
	C$ui.c$383$3_0$492	= .
	.globl	C$ui.c$383$3_0$492
;src\core\ui.c:383: break;
;	genGoto
	jp	00158$
	C$ui.c$386$3_0$492	= .
	.globl	C$ui.c$386$3_0$492
;src\core\ui.c:386: case '\n':  // 0x0a
;	genLabel
00137$:
	C$ui.c$388$3_0$492	= .
	.globl	C$ui.c$388$3_0$492
;src\core\ui.c:388: ui_dest_ptr = ui_dest_base += 32u;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_dest_base
;fetchLitPair	hl
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before add a, #0x20
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	add	a, #0x20
	ld	c, a
	ld	a, (hl)
	adc	a, #0x00
	ld	b, a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_ptr
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_base
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$ui.c$389$3_0$492	= .
	.globl	C$ui.c$389$3_0$492
;src\core\ui.c:389: if (vwf_current_offset) ui_print_reset();
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vwf_current_offset)
; common peephole 17 loaded a from (#_vwf_current_offset) directly instead of using hl.
	or	a, a
	jp	Z, 00158$
;	genCall
	call	_ui_print_reset
	C$ui.c$390$3_0$492	= .
	.globl	C$ui.c$390$3_0$492
;src\core\ui.c:390: break;
;	genGoto
	jp	00158$
	C$ui.c$391$3_0$492	= .
	.globl	C$ui.c$391$3_0$492
;src\core\ui.c:391: case 0x0b:
;	genLabel
00140$:
	C$ui.c$392$3_0$492	= .
	.globl	C$ui.c$392$3_0$492
;src\core\ui.c:392: text_palette = (*++ui_text_ptr & 0x07);
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00377$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00377$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_text_palette),a
; common peephole 19 loaded (#_text_palette) from a directly instead of using hl.
	C$ui.c$393$3_0$492	= .
	.globl	C$ui.c$393$3_0$492
;src\core\ui.c:393: break;
;	genGoto
	jp	00158$
	C$ui.c$394$3_0$492	= .
	.globl	C$ui.c$394$3_0$492
;src\core\ui.c:394: case '\r':  // 0x0d
;	genLabel
00141$:
	C$ui.c$396$3_0$492	= .
	.globl	C$ui.c$396$3_0$492
;src\core\ui.c:396: if ((ui_dest_ptr + 32u) > (UBYTE *)((((UWORD)text_scroll_addr + ((UWORD)text_scroll_height << 5)) & 0xFFE0) - 1)) {
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_dest_ptr
;fetchLitPair	hl
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before add a, #0x20
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	add	a, #0x20
	ld	c, a
	ld	a, (hl)
	adc	a, #0x00
	ld	b, a
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_text_scroll_addr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_scroll_height
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
	add	hl, de
;	genAnd
	ld	a, l
	and	a, #0xe0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
;	genMinus
	dec	hl
;	genCast
;	(locations are the same)
;	genCmpGt
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00145$
;	skipping generated iCode
	C$ui.c$397$4_0$504	= .
	.globl	C$ui.c$397$4_0$504
;src\core\ui.c:397: scroll_rect(text_scroll_addr, text_scroll_width, text_scroll_height, text_scroll_fill);
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_text_scroll_fill) directly instead of using hl.
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_text_scroll_height) directly instead of using hl.
	ld	a, (#_text_scroll_fill)
	ld	h, a
	ld	a, (#_text_scroll_height)
	ld	l, a
; common peephole 44b combined pushing of (#_text_scroll_fill) and (#_text_scroll_height).
	push	hl
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_scroll_width)
; common peephole 17 loaded a from (#_text_scroll_width) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_text_scroll_addr
	ld	e, (hl)
;fetchLitPair	hl
	inc	hl
	ld	d, (hl)
	push	de
;	genCall
	ld	e, #b_scroll_rect
	ld	hl, #_scroll_rect
	call	___sdcc_bcall_ehl
;	adjustStack by 5
	add	sp, #5
	C$ui.c$399$4_0$504	= .
	.globl	C$ui.c$399$4_0$504
;src\core\ui.c:399: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00143$
	C$ui.c$400$5_0$505	= .
	.globl	C$ui.c$400$5_0$505
;src\core\ui.c:400: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$ui.c$401$5_0$505	= .
	.globl	C$ui.c$401$5_0$505
;src\core\ui.c:401: scroll_rect(text_scroll_addr, text_scroll_width, text_scroll_height, overlay_priority | (text_palette & 0x07u));
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_palette)
; common peephole 17 loaded a from (#_text_palette) directly instead of using hl.
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_overlay_priority
	ld	c, (hl)
;	genOr
	or	a, c
;	genMove_o size 1
;	genIpush
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_text_scroll_height) directly instead of using hl.
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_text_scroll_width) directly instead of using hl.
	ld	a, (#_text_scroll_height)
	ld	h, a
	ld	a, (#_text_scroll_width)
	ld	l, a
; common peephole 44b combined pushing of (#_text_scroll_height) and (#_text_scroll_width).
	push	hl
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_text_scroll_addr
	ld	e, (hl)
;fetchLitPair	hl
	inc	hl
	ld	d, (hl)
	push	de
;	genCall
	ld	e, #b_scroll_rect
	ld	hl, #_scroll_rect
	call	___sdcc_bcall_ehl
;	adjustStack by 5
	add	sp, #5
	C$ui.c$402$5_0$505	= .
	.globl	C$ui.c$402$5_0$505
;src\core\ui.c:402: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00143$:
	C$ui.c$405$4_0$504	= .
	.globl	C$ui.c$405$4_0$504
;src\core\ui.c:405: ui_dest_ptr = ui_dest_base;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_ui_dest_base)
; common peephole 17 loaded a from (#_ui_dest_base) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ui_dest_ptr),a
; common peephole 19 loaded (#_ui_dest_ptr) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_ui_dest_base + 1)
;fetchLitPair	hl
	ld	(#_ui_dest_ptr + 1),a
; common peephole 20 loaded (#_ui_dest_ptr) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00146$
;	genLabel
00145$:
	C$ui.c$407$4_0$506	= .
	.globl	C$ui.c$407$4_0$506
;src\core\ui.c:407: ui_dest_ptr = ui_dest_base += 32u;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_dest_base
;fetchLitPair	hl
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before add a, #0x20
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	add	a, #0x20
	ld	c, a
	ld	a, (hl)
	adc	a, #0x00
	ld	b, a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_ptr
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_base
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00146$:
	C$ui.c$409$3_0$492	= .
	.globl	C$ui.c$409$3_0$492
;src\core\ui.c:409: if (vwf_current_offset) ui_print_reset();
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vwf_current_offset)
; common peephole 17 loaded a from (#_vwf_current_offset) directly instead of using hl.
	or	a, a
	jp	Z, 00158$
;	genCall
	call	_ui_print_reset
	C$ui.c$410$3_0$492	= .
	.globl	C$ui.c$410$3_0$492
;src\core\ui.c:410: break;
;	genGoto
	jp	00158$
	C$ui.c$411$3_0$492	= .
	.globl	C$ui.c$411$3_0$492
;src\core\ui.c:411: case 0x05:
;	genLabel
00149$:
	C$ui.c$413$3_0$492	= .
	.globl	C$ui.c$413$3_0$492
;src\core\ui.c:413: ui_text_ptr++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00378$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00378$:
	C$ui.c$415$3_0$492	= .
	.globl	C$ui.c$415$3_0$492
;src\core\ui.c:415: default:
;	genLabel
00150$:
	C$ui.c$416$3_0$492	= .
	.globl	C$ui.c$416$3_0$492
;src\core\ui.c:416: if (ui_print_render(*ui_text_ptr)) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_ui_text_ptr + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
;	genSend
;	genMove_o size 1
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	call	_ui_print_render
;	genMove_o size 1
;	genMove_o size 0
;	genIfx
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00155$
;src\core\ui.c:417: ui_set_tile(ui_dest_ptr, ui_prev_tile, ui_prev_tile_bank);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ui_prev_tile_bank
	ld	c, (hl)
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ui_prev_tile
	ld	e, (hl)
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_ptr
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genAssign
;	(locations are the same)
;	genAssign
;	AOP_STK for _ui_draw_text_buffer_char_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), e
;	genMove_o size 0
;	genAssign
;	AOP_STK for _ui_draw_text_buffer_char_sloc4_1_0
;	genMove_o size 2
	inc	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;src\core\ui.c:267: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00163$
;src\core\ui.c:268: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;src\core\ui.c:269: set_vram_byte(addr, overlay_priority | ((bank) ? ((text_palette & 0x07u) | 0x08u) : (text_palette & 0x07u)));
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00174$
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_palette)
; common peephole 17 loaded a from (#_text_palette) directly instead of using hl.
;	genCast
;	(locations are the same)
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;	genOr
	set	3, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00175$
;	genLabel
00174$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_palette)
; common peephole 17 loaded a from (#_text_palette) directly instead of using hl.
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genLabel
00175$:
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_overlay_priority
	ld	c, (hl)
;	genCast
;	(locations are the same)
;	genOr
	or	a, c
;	genMove_o size 1
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	c, a
; common peephole 98 removed redundant load from c into a.
;	genMove_o size 0
;	genSend
;	AOP_STK for _ui_draw_text_buffer_char_sloc4_1_0
;	genMove_o size 2
	ldhl	sp,	#1
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	_set_vram_byte
;src\core\ui.c:270: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00163$:
;src\core\ui.c:275: set_vram_byte(addr, tile);
;	genSend
;	AOP_STK for _ui_draw_text_buffer_char_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#0
;	genMove_o size 0
;	genSend
;	AOP_STK for _ui_draw_text_buffer_char_sloc4_1_0
;	genMove_o size 2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	_set_vram_byte
	C$ui.c$418$4_0$507	= .
	.globl	C$ui.c$418$4_0$507
;src\core\ui.c:418: if (vwf_direction == UI_PRINT_LEFTTORIGHT)  ui_dest_ptr++; else ui_dest_ptr--;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vwf_direction)
; common peephole 17 loaded a from (#_vwf_direction) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00152$
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_dest_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00155$
; common peephole 84 jumped to 00155$ directly instead of via 00379$.
;fetchLitPair	hl
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00379$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00155$
;	genLabel
00152$:
;	genMinus
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ui_dest_ptr
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;fetchLitPair	hl
; common peephole 96c move dec hl before dec de
	ld	a, (hl-)
	ld	d, a
; sm83 peephole 3 used ldd to decrement hl after load
	dec	de
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genLabel
00155$:
	C$ui.c$420$3_0$492	= .
	.globl	C$ui.c$420$3_0$492
;src\core\ui.c:420: if (vwf_current_offset) ui_set_tile(ui_dest_ptr, ui_current_tile, ui_current_tile_bank);
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vwf_current_offset)
; common peephole 17 loaded a from (#_vwf_current_offset) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00157$
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ui_current_tile_bank
	ld	c, (hl)
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ui_current_tile
	ld	e, (hl)
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_dest_ptr
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genAssign
;	(locations are the same)
;	genAssign
;	AOP_STK for _ui_draw_text_buffer_char_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), e
;	genMove_o size 0
;	genAssign
;	AOP_STK for _ui_draw_text_buffer_char_sloc6_1_0
;	genMove_o size 2
	inc	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;src\core\ui.c:267: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00166$
;src\core\ui.c:268: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;src\core\ui.c:269: set_vram_byte(addr, overlay_priority | ((bank) ? ((text_palette & 0x07u) | 0x08u) : (text_palette & 0x07u)));
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00176$
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_palette)
; common peephole 17 loaded a from (#_text_palette) directly instead of using hl.
;	genCast
;	(locations are the same)
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;	genOr
	set	3, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00177$
;	genLabel
00176$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_palette)
; common peephole 17 loaded a from (#_text_palette) directly instead of using hl.
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genLabel
00177$:
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_overlay_priority
	ld	c, (hl)
;	genCast
;	(locations are the same)
;	genOr
	or	a, c
;	genMove_o size 1
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	c, a
; common peephole 98 removed redundant load from c into a.
;	genMove_o size 0
;	genSend
;	AOP_STK for _ui_draw_text_buffer_char_sloc6_1_0
;	genMove_o size 2
	ldhl	sp,	#1
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	_set_vram_byte
;src\core\ui.c:270: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00166$:
;src\core\ui.c:275: set_vram_byte(addr, tile);
;	genSend
;	AOP_STK for _ui_draw_text_buffer_char_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#0
;	genMove_o size 0
;	genSend
;	AOP_STK for _ui_draw_text_buffer_char_sloc6_1_0
;	genMove_o size 2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	_set_vram_byte
	C$ui.c$420$3_0$492	= .
	.globl	C$ui.c$420$3_0$492
;src\core\ui.c:420: if (vwf_current_offset) ui_set_tile(ui_dest_ptr, ui_current_tile, ui_current_tile_bank);
;	genLabel
00157$:
	C$ui.c$421$3_0$492	= .
	.globl	C$ui.c$421$3_0$492
;src\core\ui.c:421: ui_text_ptr++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00380$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00380$:
	C$ui.c$422$3_0$492	= .
	.globl	C$ui.c$422$3_0$492
;src\core\ui.c:422: return TRUE;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00168$
	C$ui.c$423$2_0$491	= .
	.globl	C$ui.c$423$2_0$491
;src\core\ui.c:423: }
;	genLabel
00158$:
	C$ui.c$424$2_0$491	= .
	.globl	C$ui.c$424$2_0$491
;src\core\ui.c:424: ui_text_ptr++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_ui_text_ptr
	inc	(hl)
	jp	NZ,00160$
; common peephole 84 jumped to 00160$ directly instead of via 00381$.
;fetchLitPair	hl
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00381$.
;	genGoto
	jp	00160$
;	genLabel
00168$:
	C$ui.c$426$1_0$488	= .
	.globl	C$ui.c$426$1_0$488
;src\core\ui.c:426: }
;	genEndFunction
;	adjustStack by 3
	add	sp, #3
	C$ui.c$426$1_0$488	= .
	.globl	C$ui.c$426$1_0$488
	XG$ui_draw_text_buffer_char$0$0	= .
	.globl	XG$ui_draw_text_buffer_char$0$0
	ret
	G$ui_run_menu$0$0	= .
	.globl	G$ui_run_menu$0$0
	C$ui.c$467$1_0$538	= .
	.globl	C$ui.c$467$1_0$538
;src\core\ui.c:467: UBYTE ui_run_menu(menu_item_t * start_item, UBYTE bank, UBYTE options, UBYTE count, UBYTE start_index) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function ui_run_menu
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 10 bytes.
	b_ui_run_menu	= 1
_ui_run_menu::
;	adjustStack by -10
	add	sp, #-10
	C$ui.c$469$1_0$538	= .
	.globl	C$ui.c$469$1_0$538
;src\core\ui.c:469: UBYTE current_index = ((options & MENU_SET_START) ? start_index : 1u), next_index = 0u;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#19
;	genMove_o size 0
;	genAnd
; common peephole 73 tested bit 2 of (hl) directly instead of going through a.
	bit	2, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00138$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00240$.
;	skipping generated iCode
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#21
	ld	a, (hl)
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00139$
;	genLabel
00138$:
;	genAssign
;	genMove_o size 1
	ld	a, #0x01
;	genLabel
00139$:
;	genCast
;	AOP_STK for _ui_run_menu_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#6
	ld	(hl), a
;	genMove_o size 0
	C$ui.c$471$1_0$538	= .
	.globl	C$ui.c$471$1_0$538
;src\core\ui.c:471: MemcpyBanked(&current_menu_item, start_item + (current_index - 1u), sizeof(menu_item_t), bank);
;	genAssign
;	AOP_STK for _ui_run_menu_sloc0_1_0
;	genMove_o size 1
	ld	c, (hl)
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	xor	a, a
;	genMinus
;fetchPairLong
	ld	b, a
	dec	bc
;	genMult
;fetchPairLong
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#16
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genAddrOf
	ldhl	sp,	#0
	ld	e, l
	ld	d, h
;	genCast
;	(locations are the same)
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#18
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0006
	push	hl
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	_MemcpyBanked
	C$ui.c$475$1_0$538	= .
	.globl	C$ui.c$475$1_0$538
;src\core\ui.c:475: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$ui.c$476$2_0$539	= .
	.globl	C$ui.c$476$2_0$539
;src\core\ui.c:476: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$ui.c$477$2_0$539	= .
	.globl	C$ui.c$477$2_0$539
;src\core\ui.c:477: set_win_tile_xy(current_menu_item.X, current_menu_item.Y, overlay_priority | (text_palette & 0x07u));
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_palette)
; common peephole 17 loaded a from (#_text_palette) directly instead of using hl.
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_overlay_priority
	ld	c, (hl)
;	genOr
	or	a, c
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#1
;	genMove_o size 0
;	genPointerGet
;	genMove_o size 1
	ld	a, (hl-)
	ld	c, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genIpush
	push	bc
	inc	sp
;	genSend
;	genMove_o size 1
	ld	e, c
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, l
;	genMove_o size 0
;	genCall
	call	_set_win_tile_xy
	C$ui.c$478$2_0$539	= .
	.globl	C$ui.c$478$2_0$539
;src\core\ui.c:478: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00102$:
	C$ui.c$481$1_0$538	= .
	.globl	C$ui.c$481$1_0$538
;src\core\ui.c:481: set_win_tile_xy(current_menu_item.X, current_menu_item.Y, ui_cursor_tile);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#1
;	genMove_o size 0
;	genPointerGet
;	genMove_o size 1
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	c, (hl)
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
	ld	a, #0xcb
	push	af
	inc	sp
;	genSend
;	genMove_o size 1
	ld	e, b
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	_set_win_tile_xy
	C$ui.c$484$2_0$540	= .
	.globl	C$ui.c$484$2_0$540
;src\core\ui.c:484: while (TRUE) {
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#19
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
;	AOP_STK for _ui_run_menu_sloc1_1_0
	and	a, #0x02
;	genMove_o size 1
	ldhl	sp,	#7
	ld	(hl), a
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00129$:
	C$ui.c$485$2_0$540	= .
	.globl	C$ui.c$485$2_0$540
;src\core\ui.c:485: input_update();
;	genCall
	call	_input_update
	C$ui.c$486$2_0$540	= .
	.globl	C$ui.c$486$2_0$540
;src\core\ui.c:486: ui_update();
;	genCall
	call	_ui_update
;include/shadow.h:9: if (_shadow_OAM_base == (UBYTE)((UWORD)&shadow_OAM >> 8)) { 
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genGetByte
;	genMove_o size 1
	ld	c, #>(_shadow_OAM)
;	genCmpEq
	ldh	a, (__shadow_OAM_base + 0)
	sub	a, c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00241$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00132$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00242$.
;	skipping generated iCode
;include/shadow.h:10: __render_shadow_OAM = (UBYTE)((UWORD)&shadow_OAM2 >> 8); 
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genGetByte
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #___render_shadow_OAM
	ld	(hl), #>(_shadow_OAM2)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00133$
;	genLabel
00132$:
;include/shadow.h:12: __render_shadow_OAM = (UBYTE)((UWORD)&shadow_OAM >> 8);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genGetByte
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #___render_shadow_OAM
	ld	(hl), #>(_shadow_OAM)
;	genLabel
00133$:
;include/shadow.h:14: allocated_hardware_sprites = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_allocated_hardware_sprites
	ld	(hl), #0x00
	C$ui.c$489$2_0$540	= .
	.globl	C$ui.c$489$2_0$540
;src\core\ui.c:489: camera_update();
;	genCall
	call	_camera_update
	C$ui.c$490$2_0$540	= .
	.globl	C$ui.c$490$2_0$540
;src\core\ui.c:490: scroll_update();
;	genCall
	ld	e, #b_scroll_update
	ld	hl, #_scroll_update
	call	___sdcc_bcall_ehl
	C$ui.c$491$2_0$540	= .
	.globl	C$ui.c$491$2_0$540
;src\core\ui.c:491: actors_update();
;	genCall
	call	_actors_update
	C$ui.c$492$2_0$540	= .
	.globl	C$ui.c$492$2_0$540
;src\core\ui.c:492: projectiles_render();
;	genCall
	call	_projectiles_render
;include/shadow.h:17: hide_sprites_range(allocated_hardware_sprites, MAX_HARDWARE_SPRITES);
;	genSend
;	genMove_o size 1
	ld	e, #0x28
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_allocated_hardware_sprites)
; common peephole 17 loaded a from (#_allocated_hardware_sprites) directly instead of using hl.
;	genCall
	call	_hide_sprites_range
;include/shadow.h:18: _shadow_OAM_base = __render_shadow_OAM;
;	genAssign
;fetchLitPair	hl
	ld	a, (#___render_shadow_OAM)
; common peephole 17 loaded a from (#___render_shadow_OAM) directly instead of using hl.
	ldh	(__shadow_OAM_base + 0), a
	C$ui.c$495$2_0$540	= .
	.globl	C$ui.c$495$2_0$540
;src\core\ui.c:495: game_time++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_game_time
	inc	(hl)
	C$ui.c$496$2_0$540	= .
	.globl	C$ui.c$496$2_0$540
;src\core\ui.c:496: wait_vbl_done();
;	genCall
	call	_wait_vbl_done
	C$ui.c$498$2_0$540	= .
	.globl	C$ui.c$498$2_0$540
;src\core\ui.c:498: if (INPUT_UP_PRESSED) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
;	genMove_o size 1
	ld	c, #0x00
;	genCpl
	cpl
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, c
	cpl
;	genMove_o size 1
; common peephole 1 removed dead load from a into d.
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into c.
;	genAnd
	and	a, e
;	genMove_o size 1
;	genMove_o size 0
; common peephole 1 removed dead load from c into a.
; common peephole 6b removed dead and a, d
;	genMove_o size 1
;	genAnd
	bit	2,a
; common peephole 149 tested bit 2 of a directly instead of going through b.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00120$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00243$.
;	skipping generated iCode
	C$ui.c$499$3_0$541	= .
	.globl	C$ui.c$499$3_0$541
;src\core\ui.c:499: next_index = current_menu_item.iU;
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#4
	ld	a, (hl)
;	genMove_o size 0
;	genGoto
	jp	00121$
;	genLabel
00120$:
	C$ui.c$500$2_0$540	= .
	.globl	C$ui.c$500$2_0$540
;src\core\ui.c:500: } else if (INPUT_DOWN_PRESSED) {
;	genCast
;	AOP_STK for _ui_run_menu_sloc2_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
	ldhl	sp,	#8
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCpl
;	AOP_STK for _ui_run_menu_sloc2_1_0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl)
	cpl
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	cpl
;	genMove_o size 1
; common peephole 1 removed dead load from a into b.
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into e.
;	genAnd
	and	a, c
;	genMove_o size 1
;	genMove_o size 0
; common peephole 1 removed dead load from e into a.
; common peephole 6b removed dead and a, b
;	genMove_o size 1
;	genAnd
	bit	3,a
; common peephole 149 tested bit 3 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00117$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00244$.
;	skipping generated iCode
	C$ui.c$501$3_0$542	= .
	.globl	C$ui.c$501$3_0$542
;src\core\ui.c:501: next_index = current_menu_item.iD;
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#5
	ld	a, (hl)
;	genMove_o size 0
;	genGoto
	jp	00121$
;	genLabel
00117$:
	C$ui.c$502$2_0$540	= .
	.globl	C$ui.c$502$2_0$540
;src\core\ui.c:502: } else if (INPUT_LEFT_PRESSED) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_joy
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genCpl
	ld	a, c
	cpl
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	ld	a, b
	cpl
;	genMove_o size 1
; common peephole 1 removed dead load from a into b.
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into d.
;	genAnd
; common peephole 9 loaded a from (hl) directly instead of going through e.
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
	and	a, c
;	genMove_o size 1
;	genMove_o size 0
; common peephole 1 removed dead load from d into a.
; common peephole 6b removed dead and a, b
;	genMove_o size 1
;	genAnd
	bit	1,a
; common peephole 149 tested bit 1 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00245$.
;	skipping generated iCode
	C$ui.c$503$3_0$543	= .
	.globl	C$ui.c$503$3_0$543
;src\core\ui.c:503: next_index = current_menu_item.iL;
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#2
	ld	a, (hl)
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00121$
;	genLabel
00114$:
	C$ui.c$504$2_0$540	= .
	.globl	C$ui.c$504$2_0$540
;src\core\ui.c:504: } else if (INPUT_RIGHT_PRESSED) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
;	genMove_o size 1
	ld	b, #0x00
;	genCpl
	cpl
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, b
	cpl
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into l.
;	spillPairReg hl
;	spillPairReg hl
;	genAnd
	and	a, e
;	genMove_o size 1
;	genMove_o size 0
; common peephole 1 removed dead load from l into a.
; common peephole 6b removed dead and a, d
;	genMove_o size 1
;	genAnd
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00246$.
;	skipping generated iCode
	C$ui.c$505$3_0$544	= .
	.globl	C$ui.c$505$3_0$544
;src\core\ui.c:505: next_index = current_menu_item.iR;
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00121$
;	genLabel
00111$:
	C$ui.c$506$2_0$540	= .
	.globl	C$ui.c$506$2_0$540
;src\core\ui.c:506: } else if (INPUT_A_PRESSED) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
;	genMove_o size 1
	ld	b, #0x00
;	genCpl
	cpl
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	ld	a, b
	cpl
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genMove_o size 1
	ld	e, #0x00
;	genAnd
	and	a, c
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
; common peephole 1 removed dead load from e into a.
; common peephole 6b removed dead and a, b
;	genMove_o size 1
;	genAnd
	bit	4, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00247$.
;	skipping generated iCode
	C$ui.c$507$3_0$545	= .
	.globl	C$ui.c$507$3_0$545
;src\core\ui.c:507: return ((current_index == count) && (options & MENU_CANCEL_LAST)) ? 0u : current_index;
;	genCmpEq
;	AOP_STK for _ui_run_menu_sloc0_1_0
;	AOP_STK for 
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#20
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00248$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00140$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00249$.
;	skipping generated iCode
;	genGetAbit
;	AOP_STK for 
	ldhl	sp,	#19
	ld	a, (hl)
	and	a, #0x01
;	genMove_o size 0
;	genIfx
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00140$
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genGoto
	jp	00136$
; common peephole 83 jumped to 00136$ directly instead of via 00141$.
;	genLabel
00140$:
;	genAssign
;	AOP_STK for _ui_run_menu_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#6
	ld	a, (hl)
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genLabel
; common peephole 158 removed unused label 00141$.
;	genCast
;	(locations are the same)
;	genRet
;	genMove_o size 1
	jp	00136$
;	genLabel
00108$:
	C$ui.c$508$2_0$540	= .
	.globl	C$ui.c$508$2_0$540
;src\core\ui.c:508: } else if ((INPUT_B_PRESSED) && (options & MENU_CANCEL_B))  {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
;	genMove_o size 1
	ld	b, #0x00
;	genCpl
	cpl
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	ld	a, b
	cpl
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genMove_o size 1
	ld	e, #0x00
;	genAnd
	and	a, c
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	ld	a, e
	and	a, b
;	genMove_o size 1
;	genAnd
	bit	5, c
	jp	Z,00129$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00250$.
;	skipping generated iCode
;	genIfx
;	AOP_STK for _ui_run_menu_sloc1_1_0
	ldhl	sp,	#7
	ld	a, (hl)
	or	a, a
	jp	Z, 00129$
	C$ui.c$509$3_0$546	= .
	.globl	C$ui.c$509$3_0$546
;src\core\ui.c:509: return 0u;
;	genRet
;	genMove_o size 1
	xor	a, a
	jp	00136$
	C$ui.c$511$2_0$540	= .
	.globl	C$ui.c$511$2_0$540
;src\core\ui.c:511: continue;
;	genLabel
00121$:
	C$ui.c$514$2_0$540	= .
	.globl	C$ui.c$514$2_0$540
;src\core\ui.c:514: if (!next_index) continue;
;	genIfx
	or	a, a
	jp	Z, 00129$
	C$ui.c$517$2_0$540	= .
	.globl	C$ui.c$517$2_0$540
;src\core\ui.c:517: current_index = next_index;
;	genAssign
;	AOP_STK for _ui_run_menu_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#6
	ld	(hl), a
;	genMove_o size 0
	C$ui.c$520$2_0$540	= .
	.globl	C$ui.c$520$2_0$540
;src\core\ui.c:520: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00125$
	C$ui.c$521$3_0$548	= .
	.globl	C$ui.c$521$3_0$548
;src\core\ui.c:521: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$ui.c$522$3_0$548	= .
	.globl	C$ui.c$522$3_0$548
;src\core\ui.c:522: set_win_tile_xy(current_menu_item.X, current_menu_item.Y, overlay_priority | (text_palette & 0x07u));
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_palette)
; common peephole 17 loaded a from (#_text_palette) directly instead of using hl.
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_overlay_priority
	ld	c, (hl)
;	genOr
	or	a, c
;	genMove_o size 1
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#1
	ld	b, (hl)
;	genMove_o size 0
;	genPointerGet
;	genMove_o size 1
	dec	hl
	ld	c, (hl)
;	genMove_o size 0
;	genIpush
	push	af
	inc	sp
;	genSend
;	genMove_o size 1
	ld	e, b
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	_set_win_tile_xy
	C$ui.c$523$3_0$548	= .
	.globl	C$ui.c$523$3_0$548
;src\core\ui.c:523: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00125$:
	C$ui.c$526$2_0$540	= .
	.globl	C$ui.c$526$2_0$540
;src\core\ui.c:526: set_win_tile_xy(current_menu_item.X, current_menu_item.Y, ui_bg_tile);
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#1
;	genMove_o size 0
;	genPointerGet
;	genMove_o size 1
	ld	a, (hl-)
	ld	c, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
	ld	a, #0xc4
	push	af
	inc	sp
;	genSend
;	genMove_o size 1
	ld	e, c
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genCall
	call	_set_win_tile_xy
	C$ui.c$528$2_0$540	= .
	.globl	C$ui.c$528$2_0$540
;src\core\ui.c:528: MemcpyBanked(&current_menu_item, start_item + current_index - 1u, sizeof(menu_item_t), bank);
;	genMult
;	AOP_STK for _ui_run_menu_sloc0_1_0
;fetchPairLong
	ldhl	sp,	#6
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#16
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genMinus
	ld	a, c
	add	a, #0xfa
	ld	c, a
	ld	a, b
	adc	a, #0xff
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#18
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0006
	push	de
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
	ld	hl, #3
	add	hl, sp
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCall
	call	_MemcpyBanked
	C$ui.c$531$2_0$540	= .
	.globl	C$ui.c$531$2_0$540
;src\core\ui.c:531: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00127$
	C$ui.c$532$3_0$549	= .
	.globl	C$ui.c$532$3_0$549
;src\core\ui.c:532: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$ui.c$533$3_0$549	= .
	.globl	C$ui.c$533$3_0$549
;src\core\ui.c:533: set_win_tile_xy(current_menu_item.X, current_menu_item.Y, overlay_priority | (text_palette & 0x07u));
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_palette)
; common peephole 17 loaded a from (#_text_palette) directly instead of using hl.
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_overlay_priority
	ld	c, (hl)
;	genOr
	or	a, c
;	genMove_o size 1
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#1
	ld	b, (hl)
;	genMove_o size 0
;	genPointerGet
;	genMove_o size 1
	dec	hl
	ld	c, (hl)
;	genMove_o size 0
;	genIpush
	push	af
	inc	sp
;	genSend
;	genMove_o size 1
	ld	e, b
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	_set_win_tile_xy
	C$ui.c$534$3_0$549	= .
	.globl	C$ui.c$534$3_0$549
;src\core\ui.c:534: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00127$:
	C$ui.c$537$2_0$540	= .
	.globl	C$ui.c$537$2_0$540
;src\core\ui.c:537: set_win_tile_xy(current_menu_item.X, current_menu_item.Y, ui_cursor_tile);
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#1
;	genMove_o size 0
;	genPointerGet
;	genMove_o size 1
	ld	a, (hl-)
	ld	c, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
	ld	a, #0xcb
	push	af
	inc	sp
;	genSend
;	genMove_o size 1
	ld	e, c
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genCall
	call	_set_win_tile_xy
	C$ui.c$539$1_0$538	= .
	.globl	C$ui.c$539$1_0$538
;src\core\ui.c:539: next_index = 0;
;	genGoto
	jp	00129$
;	genLabel
00136$:
	C$ui.c$541$1_0$538	= .
	.globl	C$ui.c$541$1_0$538
;src\core\ui.c:541: }
;	genEndFunction
;	adjustStack by 10
	add	sp, #10
	C$ui.c$541$1_0$538	= .
	.globl	C$ui.c$541$1_0$538
	XG$ui_run_menu$0$0	= .
	.globl	XG$ui_run_menu$0$0
	ret
	G$ui_run_modal$0$0	= .
	.globl	G$ui_run_modal$0$0
	C$ui.c$543$1_0$559	= .
	.globl	C$ui.c$543$1_0$559
;src\core\ui.c:543: void ui_run_modal(UBYTE wait_flags) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function ui_run_modal
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
	b_ui_run_modal	= 1
_ui_run_modal::
;	adjustStack by -3
	add	sp, #-3
	C$ui.c$545$2_0$560	= .
	.globl	C$ui.c$545$2_0$560
;src\core\ui.c:545: do {
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#9
	ld	b, (hl)
;	genMove_o size 0
;	genAnd
	ld	a, b
	and	a, #0x02
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genAnd
	ld	a, b
	and	a, #0x04
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genAnd
;	AOP_STK for _ui_run_modal_sloc0_1_0
	ld	a, b
	and	a, #0x08
;	genMove_o size 1
	ldhl	sp,	#0
;	genMove_o size 0
;	genAnd
;	AOP_STK for _ui_run_modal_sloc1_1_0
;	genMove_o size 1
; common peephole 96b move inc hl before and a, #0x10
; common peephole 96b move inc hl before ld a, b
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, b
	and	a, #0x10
;	genMove_o size 0
;	genAnd
;	AOP_STK for _ui_run_modal_sloc2_1_0
;	genMove_o size 1
; common peephole 96b move inc hl before and a, #0x01
; common peephole 96b move inc hl before ld a, b
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, b
	and	a, #0x01
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00124$:
	C$ui.c$546$2_0$560	= .
	.globl	C$ui.c$546$2_0$560
;src\core\ui.c:546: fail = FALSE;
;	genAssign
;	genMove_o size 1
	ld	b, #0x00
	C$ui.c$548$2_0$560	= .
	.globl	C$ui.c$548$2_0$560
;src\core\ui.c:548: if (wait_flags & UI_WAIT_WINDOW)
;	genIfx
;	AOP_STK for _ui_run_modal_sloc2_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
	C$ui.c$549$2_0$560	= .
	.globl	C$ui.c$549$2_0$560
;src\core\ui.c:549: if ((win_pos_x != win_dest_pos_x) || (win_pos_y != win_dest_pos_y)) fail = TRUE;
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_win_pos_x)
; common peephole 17 loaded a from (#_win_pos_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_x
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00212$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00213$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_win_pos_y)
; common peephole 17 loaded a from (#_win_pos_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_y
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00214$.
;	skipping generated iCode
;	genLabel
00101$:
;	genAssign
;	genMove_o size 1
	ld	b, #0x01
;	genLabel
00105$:
	C$ui.c$550$2_0$560	= .
	.globl	C$ui.c$550$2_0$560
;src\core\ui.c:550: if (wait_flags & UI_WAIT_TEXT)
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
	C$ui.c$551$2_0$560	= .
	.globl	C$ui.c$551$2_0$560
;src\core\ui.c:551: if (!text_drawn) fail = TRUE;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_text_drawn)
; common peephole 17 loaded a from (#_text_drawn) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00109$
;	genAssign
;	genMove_o size 1
	ld	b, #0x01
;	genLabel
00109$:
	C$ui.c$552$2_0$560	= .
	.globl	C$ui.c$552$2_0$560
;src\core\ui.c:552: if (wait_flags & UI_WAIT_BTN_A)
;	genIfx
	ld	a, e
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
	C$ui.c$553$2_0$560	= .
	.globl	C$ui.c$553$2_0$560
;src\core\ui.c:553: if (!INPUT_A_PRESSED) fail = TRUE;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
;	genMove_o size 1
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genCpl
	cpl
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
	ld	a, l
	cpl
;	genMove_o size 1
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_frame_joy
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into h.
;	spillPairReg hl
;	spillPairReg hl
;	genAnd
	push	af
	ld	a, l
	and	a, d
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
	pop	af
; common peephole 6b removed dead and a, h
;	genMove_o size 1
;	genAnd
	bit	4, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00215$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00113$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00216$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	b, #0x01
;	genLabel
00113$:
	C$ui.c$554$2_0$560	= .
	.globl	C$ui.c$554$2_0$560
;src\core\ui.c:554: if (wait_flags & UI_WAIT_BTN_B)
;	genIfx
;	AOP_STK for _ui_run_modal_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00117$
	C$ui.c$555$2_0$560	= .
	.globl	C$ui.c$555$2_0$560
;src\core\ui.c:555: if (!INPUT_B_PRESSED) fail = TRUE;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
;	genMove_o size 1
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genCpl
	cpl
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
	ld	a, l
	cpl
;	genMove_o size 1
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_frame_joy
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into h.
;	spillPairReg hl
;	spillPairReg hl
;	genAnd
	push	af
	ld	a, l
	and	a, d
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
	pop	af
; common peephole 6b removed dead and a, h
;	genMove_o size 1
;	genAnd
	bit	5, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00217$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00117$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00218$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	b, #0x01
;	genLabel
00117$:
	C$ui.c$556$2_0$560	= .
	.globl	C$ui.c$556$2_0$560
;src\core\ui.c:556: if (wait_flags & UI_WAIT_BTN_ANY)
;	genIfx
;	AOP_STK for _ui_run_modal_sloc1_1_0
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00121$
	C$ui.c$557$2_0$560	= .
	.globl	C$ui.c$557$2_0$560
;src\core\ui.c:557: if (!INPUT_ANY_PRESSED) fail = TRUE;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
;	genMove_o size 1
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genCpl
	cpl
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
	ld	a, l
	cpl
;	genMove_o size 1
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_frame_joy
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genAnd
	push	af
	ld	a, l
	and	a, d
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
	pop	af
	and	a, h
;	genMove_o size 1
;	genIfx
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00121$
;	genAssign
;	genMove_o size 1
	ld	b, #0x01
;	genLabel
00121$:
	C$ui.c$559$2_0$560	= .
	.globl	C$ui.c$559$2_0$560
;src\core\ui.c:559: if (!fail) return;
;	genIfx
	ld	a, b
	or	a, a
;	genRet
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00132$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00123$.
	C$ui.c$561$2_0$560	= .
	.globl	C$ui.c$561$2_0$560
;src\core\ui.c:561: ui_update();
;	genCall
	push	bc
	push	de
	call	_ui_update
	pop	de
	pop	bc
;include/shadow.h:9: if (_shadow_OAM_base == (UBYTE)((UWORD)&shadow_OAM >> 8)) { 
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genGetByte
;	genMove_o size 1
	ld	d, #>(_shadow_OAM)
;	genCmpEq
	ldh	a, (__shadow_OAM_base + 0)
	sub	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00219$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00128$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00220$.
;	skipping generated iCode
;include/shadow.h:10: __render_shadow_OAM = (UBYTE)((UWORD)&shadow_OAM2 >> 8); 
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genGetByte
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #___render_shadow_OAM
	ld	(hl), #>(_shadow_OAM2)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00129$
;	genLabel
00128$:
;include/shadow.h:12: __render_shadow_OAM = (UBYTE)((UWORD)&shadow_OAM >> 8);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genGetByte
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #___render_shadow_OAM
	ld	(hl), #>(_shadow_OAM)
;	genLabel
00129$:
;include/shadow.h:14: allocated_hardware_sprites = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_allocated_hardware_sprites
	ld	(hl), #0x00
	C$ui.c$564$2_0$560	= .
	.globl	C$ui.c$564$2_0$560
;src\core\ui.c:564: camera_update();
;	genCall
	push	bc
	push	de
	call	_camera_update
	C$ui.c$565$2_0$560	= .
	.globl	C$ui.c$565$2_0$560
;src\core\ui.c:565: scroll_update();
;	genCall
; common peephole 50a eliminated dead pop/push bc pair.
; common peephole 50a eliminated dead pop/push de pair.
	ld	e, #b_scroll_update
	ld	hl, #_scroll_update
	call	___sdcc_bcall_ehl
	C$ui.c$566$2_0$560	= .
	.globl	C$ui.c$566$2_0$560
;src\core\ui.c:566: actors_update();
;	genCall
; common peephole 50a eliminated dead pop/push bc pair.
; common peephole 50a eliminated dead pop/push de pair.
	call	_actors_update
	C$ui.c$567$2_0$560	= .
	.globl	C$ui.c$567$2_0$560
;src\core\ui.c:567: projectiles_render();
;	genCall
; common peephole 50a eliminated dead pop/push bc pair.
; common peephole 50a eliminated dead pop/push de pair.
	call	_projectiles_render
;include/shadow.h:17: hide_sprites_range(allocated_hardware_sprites, MAX_HARDWARE_SPRITES);
;	genSend
; common peephole 50a eliminated dead pop/push bc pair.
; common peephole 50a eliminated dead pop/push de pair.
;	genMove_o size 1
	ld	e, #0x28
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_allocated_hardware_sprites)
; common peephole 17 loaded a from (#_allocated_hardware_sprites) directly instead of using hl.
;	genCall
	call	_hide_sprites_range
	pop	de
	pop	bc
;include/shadow.h:18: _shadow_OAM_base = __render_shadow_OAM;
;	genAssign
;fetchLitPair	hl
	ld	a, (#___render_shadow_OAM)
; common peephole 17 loaded a from (#___render_shadow_OAM) directly instead of using hl.
	ldh	(__shadow_OAM_base + 0), a
	C$ui.c$570$2_0$560	= .
	.globl	C$ui.c$570$2_0$560
;src\core\ui.c:570: game_time++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_game_time
	inc	(hl)
	C$ui.c$571$2_0$560	= .
	.globl	C$ui.c$571$2_0$560
;src\core\ui.c:571: wait_vbl_done();
;	genCall
	call	_wait_vbl_done
	C$ui.c$572$2_0$560	= .
	.globl	C$ui.c$572$2_0$560
;src\core\ui.c:572: input_update();
;	genCall
	push	bc
	push	de
	call	_input_update
	pop	de
	pop	bc
	C$ui.c$573$1_0$559	= .
	.globl	C$ui.c$573$1_0$559
;src\core\ui.c:573: } while (fail);
;	genIfx
	ld	a, b
	or	a, a
	jp	NZ, 00124$
;	genLabel
00132$:
	C$ui.c$574$1_0$559	= .
	.globl	C$ui.c$574$1_0$559
;src\core\ui.c:574: }
;	genEndFunction
;	adjustStack by 3
	add	sp, #3
	C$ui.c$574$1_0$559	= .
	.globl	C$ui.c$574$1_0$559
	XG$ui_run_modal$0$0	= .
	.globl	XG$ui_run_modal$0$0
	ret
	.area _CODE_1
	.area _INITIALIZER
	.area _CABS (ABS)
