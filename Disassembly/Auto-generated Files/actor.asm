;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module actor
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_ACTOR
	.globl ___func_ACTOR
	.globl b_script_detach_hthread
	.globl _script_detach_hthread
	.globl b_script_terminate
	.globl _script_terminate
	.globl b_script_execute
	.globl _script_execute
	.globl _memset
	.globl _ReadBankedUWORD
	.globl _allocated_hardware_sprites
	.globl _allocated_sprite_tiles
	.globl _emote_timer
	.globl _emote_actor
	.globl _player_collision_actor
	.globl _player_iframes
	.globl _player_moving
	.globl _invalid
	.globl _screen_y
	.globl _screen_x
	.globl _actors_inactive_head
	.globl _actors_active_tail
	.globl _actors_active_head
	.globl _actors
	.globl _emote_metasprite
	.globl _emote_offsets
	.globl b_actors_init
	.globl _actors_init
	.globl b_player_init
	.globl _player_init
	.globl _actors_update
	.globl b_deactivate_actor
	.globl _deactivate_actor
	.globl b_activate_actor
	.globl _activate_actor
	.globl b_activate_actors_in_row
	.globl _activate_actors_in_row
	.globl b_activate_actors_in_col
	.globl _activate_actors_in_col
	.globl b_actor_set_frames
	.globl _actor_set_frames
	.globl b_actor_set_frame_offset
	.globl _actor_set_frame_offset
	.globl b_actor_get_frame_offset
	.globl _actor_get_frame_offset
	.globl b_actor_set_anim_idle
	.globl _actor_set_anim_idle
	.globl b_actor_set_anim_moving
	.globl _actor_set_anim_moving
	.globl b_actor_set_dir
	.globl _actor_set_dir
	.globl b_actor_at_tile
	.globl _actor_at_tile
	.globl b_actor_in_front_of_player
	.globl _actor_in_front_of_player
	.globl b_actor_overlapping_player
	.globl _actor_overlapping_player
	.globl b_actor_overlapping_bb
	.globl _actor_overlapping_bb
	.globl b_actors_handle_player_collision
	.globl _actors_handle_player_collision
	.globl b_check_collision_in_direction
	.globl _check_collision_in_direction
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$actors$0_0$0==.
_actors::
	.ds 1092
G$actors_active_head$0_0$0==.
_actors_active_head::
	.ds 2
G$actors_active_tail$0_0$0==.
_actors_active_tail::
	.ds 2
G$actors_inactive_head$0_0$0==.
_actors_inactive_head::
	.ds 2
G$screen_x$0_0$0==.
_screen_x::
	.ds 1
G$screen_y$0_0$0==.
_screen_y::
	.ds 1
G$invalid$0_0$0==.
_invalid::
	.ds 2
G$player_moving$0_0$0==.
_player_moving::
	.ds 1
G$player_iframes$0_0$0==.
_player_iframes::
	.ds 1
G$player_collision_actor$0_0$0==.
_player_collision_actor::
	.ds 2
G$emote_actor$0_0$0==.
_emote_actor::
	.ds 2
G$emote_timer$0_0$0==.
_emote_timer::
	.ds 1
G$allocated_sprite_tiles$0_0$0==.
_allocated_sprite_tiles::
	.ds 1
G$allocated_hardware_sprites$0_0$0==.
_allocated_hardware_sprites::
	.ds 1
Lactor.actors_update$actor$1_0$320==.
_actors_update_actor_10000_320:
	.ds 2
Lactor.actors_update$screen_tile16_x$1_0$320==.
_actors_update_screen_tile16_x_10000_320:
	.ds 1
Lactor.actors_update$screen_tile16_y$1_0$320==.
_actors_update_screen_tile16_y_10000_320:
	.ds 1
Lactor.actors_update$actor_tile16_x$1_0$320==.
_actors_update_actor_tile16_x_10000_320:
	.ds 1
Lactor.actors_update$actor_tile16_y$1_0$320==.
_actors_update_actor_tile16_y_10000_320:
	.ds 1
Lactor.actors_update$window_hide_actors$1_1$324==.
_actors_update_window_hide_actors_10001_324:
	.ds 1
Lactor.activate_actors_in_row$actor$1_0$365==.
_activate_actors_in_row_actor_10000_365:
	.ds 2
Lactor.activate_actors_in_col$actor$1_0$370==.
_activate_actors_in_col_actor_10000_370:
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
	G$actors_update$0$0	= .
	.globl	G$actors_update$0$0
	C$actor.c$77$1_0$320	= .
	.globl	C$actor.c$77$1_0$320
;src\core\actor.c:77: void actors_update(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actors_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_actors_update::
;	adjustStack by -4
	add	sp, #-4
	C$actor.c$78$2_0$320	= .
	.globl	C$actor.c$78$2_0$320
;src\core\actor.c:78: UBYTE _save = CURRENT_BANK;
;	genAssign
;	AOP_STK for _actors_update_sloc0_1_0
	ldh	a, (__current_bank + 0)
	ldhl	sp,	#0
	ld	(hl), a
	C$actor.c$87$1_0$320	= .
	.globl	C$actor.c$87$1_0$320
;src\core\actor.c:87: screen_tile16_x = (draw_scroll_x >> 4) + TILE16_OFFSET;
;	genRightShift
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_draw_scroll_x
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
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genPlus
	add	a, #0x40
;fetchLitPair	hl
	ld	(#_actors_update_screen_tile16_x_10000_320),a
; common peephole 19 loaded (#_actors_update_screen_tile16_x_10000_320) from a directly instead of using hl.
	C$actor.c$88$1_0$320	= .
	.globl	C$actor.c$88$1_0$320
;src\core\actor.c:88: screen_tile16_y = (draw_scroll_y >> 4) + TILE16_OFFSET;
;	genRightShift
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_draw_scroll_y
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
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genPlus
	add	a, #0x40
;fetchLitPair	hl
	ld	(#_actors_update_screen_tile16_y_10000_320),a
; common peephole 19 loaded (#_actors_update_screen_tile16_y_10000_320) from a directly instead of using hl.
	C$actor.c$90$1_0$320	= .
	.globl	C$actor.c$90$1_0$320
;src\core\actor.c:90: if (emote_actor) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_emote_actor + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00104$
	C$actor.c$91$2_0$321	= .
	.globl	C$actor.c$91$2_0$321
;src\core\actor.c:91: SWITCH_ROM(emote_actor->sprite.bank);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0022
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_emote_actor
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0022
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$actor.c$92$2_1$322	= .
	.globl	C$actor.c$92$2_1$322
;src\core\actor.c:92: spritesheet_t *sprite = emote_actor->sprite.ptr;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_emote_actor
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
	C$actor.c$93$2_1$322	= .
	.globl	C$actor.c$93$2_1$322
;src\core\actor.c:93: screen_x = (emote_actor->pos.x >> 4) - scroll_x + 8 + sprite->emote_origin.x;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_emote_actor
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_emote_actor + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genRightShift
;fetchPairLong
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;	genCast
;	genMove_o size 1
	ld	a, l
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_scroll_x
	ld	e, (hl)
;	genMinus
	sub	a, e
;	genPlus
	add	a, #0x08
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
	ld	e, (hl)
;	genPlus
	add	a, e
;fetchLitPair	hl
	ld	(#_screen_x),a
; common peephole 19 loaded (#_screen_x) from a directly instead of using hl.
	C$actor.c$94$2_1$322	= .
	.globl	C$actor.c$94$2_1$322
;src\core\actor.c:94: screen_y = (emote_actor->pos.y >> 4) - scroll_y + 8 + sprite->emote_origin.y;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_emote_actor
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_emote_actor + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genRightShift
;fetchPairLong
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;	genCast
;	genMove_o size 1
	ld	a, l
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_scroll_y
	ld	e, (hl)
;	genMinus
	sub	a, e
;	genPlus
	add	a, #0x08
	ld	e, a
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genPlus
	add	a, e
;fetchLitPair	hl
	ld	(#_screen_y),a
; common peephole 19 loaded (#_screen_y) from a directly instead of using hl.
	C$actor.c$96$2_1$322	= .
	.globl	C$actor.c$96$2_1$322
;src\core\actor.c:96: SWITCH_ROM(BANK(ACTOR));  // bank of emote_offsets[] and emote_metasprite[]
;	skipping iCode since result will be rematerialized
;	genCast
	ld	a, #<(___bank_ACTOR)
	ldh	(__current_bank + 0), a
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_rROMB0
	ld	(hl), #<(___bank_ACTOR)
	C$actor.c$97$2_1$322	= .
	.globl	C$actor.c$97$2_1$322
;src\core\actor.c:97: if (emote_timer < EMOTE_BOUNCE_FRAMES) {
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_emote_timer
	ld	a, (hl)
	sub	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00102$
;	skipping generated iCode
	C$actor.c$98$3_1$323	= .
	.globl	C$actor.c$98$3_1$323
;src\core\actor.c:98: screen_y += emote_offsets[emote_timer];
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	a, #<(_emote_offsets)
;fetchLitPair	hl
	add	a, (hl)
	ld	c, a
	ld	a, #>(_emote_offsets)
	adc	a, #0x00
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_screen_y
	ld	c, (hl)
;	genPlus
	add	a, c
;fetchLitPair	hl
	ld	(hl), a
;	genLabel
00102$:
;src\core\actor.c:106: );
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_screen_y
	ld	b, (hl)
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_screen_x
	ld	e, (hl)
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_allocated_hardware_sprites
	ld	c, (hl)
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_allocated_sprite_tiles)
; common peephole 17 loaded a from (#_allocated_sprite_tiles) directly instead of using hl.
;fetchLitPair	hl
	ld	(#___current_base_tile),a
; common peephole 19 loaded (#___current_base_tile) from a directly instead of using hl.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;c:\users\odiae\downloads\asarm\_gbstools\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #___current_metasprite
	ld	(hl), #<(_emote_metasprite)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_emote_metasprite)
;c:\users\odiae\downloads\asarm\_gbstools\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\users\odiae\downloads\asarm\_gbstools\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
;	genCast
;	genMove_o size 1
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into h.
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
; common peephole 1 removed dead load from #0x00 into a.
;	genCast
;	genMove_o size 1
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into d.
;	genOr
;	genMove_o size 1
;	genMove_o size 1
; common peephole 9 loaded d from b directly instead of going through l.
	ld	d, b
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	___move_metasprite
;	genMove_o size 1
	C$actor.c$106$4_1$339	= .
	.globl	C$actor.c$106$4_1$339
;src\core\actor.c:106: );
;	genPlus
;fetchLitPair	hl
	ld	hl, #_allocated_hardware_sprites
	add	a, (hl)
;fetchLitPair	hl
	ld	(hl), a
;	genLabel
00104$:
	C$actor.c$111$1_1$324	= .
	.globl	C$actor.c$111$1_1$324
;src\core\actor.c:111: window_hide_actors = (!_is_CGB) && ((overlay_priority & S_PRIORITY) == 0) && (!show_actors_on_overlay) && (WX_REG > DEVICE_WINDOW_PX_OFFSET_X);
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00140$
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_overlay_priority)
; common peephole 17 loaded a from (#_overlay_priority) directly instead of using hl.
;	genAnd
	rlca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00273$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00140$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00274$.
;	skipping generated iCode
;	genIfx
;fetchLitPair	hl
	ld	a, (#_show_actors_on_overlay)
; common peephole 17 loaded a from (#_show_actors_on_overlay) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00140$
;	genCmpGt
	ldh	a, (_WX_REG + 0)
	ld	b, a
	ld	a, #0x07
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00141$
;	skipping generated iCode
;	genLabel
00140$:
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00142$
;	genLabel
00141$:
;	genAssign
;	genMove_o size 1
	ld	a, #0x01
;	genLabel
00142$:
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_actors_update_window_hide_actors_10001_324),a
; common peephole 19 loaded (#_actors_update_window_hide_actors_10001_324) from a directly instead of using hl.
	C$actor.c$116$1_1$324	= .
	.globl	C$actor.c$116$1_1$324
;src\core\actor.c:116: actor = actors_active_tail;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_actors_active_tail)
; common peephole 17 loaded a from (#_actors_active_tail) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_actors_update_actor_10000_320),a
; common peephole 19 loaded (#_actors_update_actor_10000_320) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_actors_active_tail + 1)
;fetchLitPair	hl
	ld	(#_actors_update_actor_10000_320 + 1),a
; common peephole 20 loaded (#_actors_update_actor_10000_320) from a directly instead of using hl.
	C$actor.c$117$1_1$324	= .
	.globl	C$actor.c$117$1_1$324
;src\core\actor.c:117: while (actor) {
;	genLabel
00132$:
;	genIfx
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320 + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00134$
	C$actor.c$118$2_1$325	= .
	.globl	C$actor.c$118$2_1$325
;src\core\actor.c:118: if (actor->pinned) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_actors_update_actor_10000_320 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
;	genUnpackBits
	ld	a, (hl)
	rrca
;	genIfx
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 0a removed redundant load from a into a.
	and	a,#0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00115$
	C$actor.c$119$3_1$326	= .
	.globl	C$actor.c$119$3_1$326
;src\core\actor.c:119: screen_x = (actor->pos.x >> 4) + 8, screen_y = (actor->pos.y >> 4) + 8;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_actors_update_actor_10000_320 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
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
	add	a, #0x08
;fetchLitPair	hl
	ld	(#_screen_x),a
; common peephole 19 loaded (#_screen_x) from a directly instead of using hl.
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_actors_update_actor_10000_320 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
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
	add	a, #0x08
;fetchLitPair	hl
	ld	(#_screen_y),a
; common peephole 19 loaded (#_screen_y) from a directly instead of using hl.
;	genGoto
	jp	00116$
;	genLabel
00115$:
	C$actor.c$124$3_1$327	= .
	.globl	C$actor.c$124$3_1$327
;src\core\actor.c:124: actor_tile16_x = (actor->pos.x >> 8) + ACTOR_BOUNDS_TILE16_HALF + TILE16_OFFSET;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_actors_update_actor_10000_320 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; common peephole 1 removed dead load from a into c.
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genGetByte
;	genMove_o size 1
;	genPlus
	add	a, #0x43
;fetchLitPair	hl
	ld	(#_actors_update_actor_tile16_x_10000_320),a
; common peephole 19 loaded (#_actors_update_actor_tile16_x_10000_320) from a directly instead of using hl.
	C$actor.c$125$3_1$327	= .
	.globl	C$actor.c$125$3_1$327
;src\core\actor.c:125: actor_tile16_y = (actor->pos.y >> 8) + ACTOR_BOUNDS_TILE16_HALF + TILE16_OFFSET;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_actors_update_actor_10000_320 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; common peephole 1 removed dead load from a into c.
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genGetByte
;	genMove_o size 1
;	genPlus
	add	a, #0x43
;fetchLitPair	hl
	ld	(#_actors_update_actor_tile16_y_10000_320),a
; common peephole 19 loaded (#_actors_update_actor_tile16_y_10000_320) from a directly instead of using hl.
	C$actor.c$129$3_1$327	= .
	.globl	C$actor.c$129$3_1$327
;src\core\actor.c:129: (actor_tile16_x < screen_tile16_x) ||
;	genCmpLt
;fetchLitPair	hl
	ld	a, (#_actors_update_actor_tile16_x_10000_320)
; common peephole 17 loaded a from (#_actors_update_actor_tile16_x_10000_320) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_actors_update_screen_tile16_x_10000_320
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00109$
;	skipping generated iCode
	C$actor.c$131$3_1$327	= .
	.globl	C$actor.c$131$3_1$327
;src\core\actor.c:131: ((actor_tile16_x - (ACTOR_BOUNDS_TILE16 + SCREEN_TILE16_W)) > screen_tile16_x) ||
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_actors_update_actor_tile16_x_10000_320)
; common peephole 17 loaded a from (#_actors_update_actor_tile16_x_10000_320) directly instead of using hl.
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	b, #0x00
;	genMinus
	add	a, #0xf0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actors_update_screen_tile16_x_10000_320
	ld	e, (hl)
;	genMove_o size 1
	ld	d, #0x00
;	genCmpGt
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00109$
;	skipping generated iCode
	C$actor.c$133$3_1$327	= .
	.globl	C$actor.c$133$3_1$327
;src\core\actor.c:133: (actor_tile16_y < screen_tile16_y) ||
;	genCmpLt
;fetchLitPair	hl
	ld	a, (#_actors_update_actor_tile16_y_10000_320)
; common peephole 17 loaded a from (#_actors_update_actor_tile16_y_10000_320) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_actors_update_screen_tile16_y_10000_320
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00109$
;	skipping generated iCode
	C$actor.c$135$3_1$327	= .
	.globl	C$actor.c$135$3_1$327
;src\core\actor.c:135: ((actor_tile16_y - (ACTOR_BOUNDS_TILE16 + SCREEN_TILE16_H)) > screen_tile16_y)
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_actors_update_actor_tile16_y_10000_320)
; common peephole 17 loaded a from (#_actors_update_actor_tile16_y_10000_320) directly instead of using hl.
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	b, #0x00
;	genMinus
	add	a, #0xf1
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actors_update_screen_tile16_y_10000_320
	ld	e, (hl)
;	genMove_o size 1
	ld	d, #0x00
;	genCmpGt
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00110$
;	skipping generated iCode
;	genLabel
00109$:
	C$actor.c$137$4_1$328	= .
	.globl	C$actor.c$137$4_1$328
;src\core\actor.c:137: if (actor->persistent) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_actors_update_actor_10000_320 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
;	genUnpackBits
	ld	a, (hl)
;	genIfx
; common peephole 100 removed redundant or after and.
	rlca
; common peephole 90a removed and by changing jump condition.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00106$
	C$actor.c$138$5_1$329	= .
	.globl	C$actor.c$138$5_1$329
;src\core\actor.c:138: actor = actor->prev;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$actor.c$139$5_1$329	= .
	.globl	C$actor.c$139$5_1$329
;src\core\actor.c:139: continue;
;	genGoto
	jp	00132$
;	genLabel
00106$:
	C$actor.c$142$4_2$330	= .
	.globl	C$actor.c$142$4_2$330
;src\core\actor.c:142: actor_t * prev = actor->prev;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;include/vm.h:158: return (vm_lock_state != 0);
;	genNot
;fetchLitPair	hl
	ld	a, (#_vm_lock_state)
; common peephole 17 loaded a from (#_vm_lock_state) directly instead of using hl.
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genNot
;	genCast
;	(locations are the same)
	C$actor.c$143$6_2$342	= .
	.globl	C$actor.c$143$6_2$342
;src\core\actor.c:143: if (!VM_ISLOCKED()) deactivate_actor(actor);
;	genIfx
	xor	a,#0x01
; common peephole 101 removed redundant or after xor.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00108$
;	genIpush
	push	bc
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
	ld	e, (hl)
;fetchLitPair	hl
	inc	hl
	ld	d, (hl)
	push	de
;	genCall
	ld	e, #b_deactivate_actor
	ld	hl, #_deactivate_actor
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
	pop	bc
;	genLabel
00108$:
	C$actor.c$144$4_2$330	= .
	.globl	C$actor.c$144$4_2$330
;src\core\actor.c:144: actor = prev;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$actor.c$145$4_2$330	= .
	.globl	C$actor.c$145$4_2$330
;src\core\actor.c:145: continue;
;	genGoto
	jp	00132$
;	genLabel
00110$:
	C$actor.c$148$3_1$327	= .
	.globl	C$actor.c$148$3_1$327
;src\core\actor.c:148: screen_x = ((actor->pos.x >> 4) + 8) - draw_scroll_x, screen_y = ((actor->pos.y >> 4) + 8) - draw_scroll_y;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_actors_update_actor_10000_320 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
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
	add	a, #0x08
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_draw_scroll_x
	ld	c, (hl)
;	genMinus
	sub	a, c
;fetchLitPair	hl
	ld	(#_screen_x),a
; common peephole 19 loaded (#_screen_x) from a directly instead of using hl.
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_actors_update_actor_10000_320 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
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
	add	a, #0x08
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_draw_scroll_y
	ld	c, (hl)
;	genMinus
	sub	a, c
;fetchLitPair	hl
	ld	(#_screen_y),a
; common peephole 19 loaded (#_screen_y) from a directly instead of using hl.
;	genLabel
00116$:
	C$actor.c$150$2_1$325	= .
	.globl	C$actor.c$150$2_1$325
;src\core\actor.c:150: if (actor->hidden) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_actors_update_actor_10000_320 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
;	genUnpackBits
	ld	a, (hl)
	rrca
	rrca
;	genIfx
	and	a,#0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00122$
	C$actor.c$151$3_1$331	= .
	.globl	C$actor.c$151$3_1$331
;src\core\actor.c:151: actor = actor->prev;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$actor.c$152$3_1$331	= .
	.globl	C$actor.c$152$3_1$331
;src\core\actor.c:152: continue;
;	genGoto
	jp	00132$
;	genLabel
00122$:
	C$actor.c$153$2_1$325	= .
	.globl	C$actor.c$153$2_1$325
;src\core\actor.c:153: } else if ((window_hide_actors) && (((screen_x + 8) > WX_REG) && ((screen_y - 8) > WY_REG))) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_actors_update_window_hide_actors_10001_324
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00123$
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_screen_x
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genCast
;	genMove_o size 1
	ldh	a, (_WX_REG + 0)
	ld	c, a
;	genMove_o size 1
	ld	b, #0x00
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
	jr	Z, 00275$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00276$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00276$
00275$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00276$
	scf
00276$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00123$
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_screen_y)
; common peephole 17 loaded a from (#_screen_y) directly instead of using hl.
;	genMove_o size 1
	ld	b, #0x00
;	genMinus
	add	a, #0xf8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;	genCast
;	genMove_o size 1
	ldh	a, (_WY_REG + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
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
	jr	Z, 00277$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00278$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00278$
00277$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00278$
	scf
00278$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00123$
;	skipping generated iCode
	C$actor.c$155$3_1$332	= .
	.globl	C$actor.c$155$3_1$332
;src\core\actor.c:155: actor = actor->prev;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$actor.c$156$3_1$332	= .
	.globl	C$actor.c$156$3_1$332
;src\core\actor.c:156: continue;
;	genGoto
	jp	00132$
;	genLabel
00123$:
	C$actor.c$160$2_1$325	= .
	.globl	C$actor.c$160$2_1$325
;src\core\actor.c:160: if ((actor->anim_tick != ANIM_PAUSED) && (game_time & actor->anim_tick) == 0) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000e
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genCmpEq
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00130$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00279$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000e
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genAnd
;fetchLitPair	hl
	ld	hl, #_game_time
;	genMove_o size 1
;	genIfx
	and	a,(hl)
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00130$
	C$actor.c$161$3_1$333	= .
	.globl	C$actor.c$161$3_1$333
;src\core\actor.c:161: actor->frame++;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000b
	add	hl, bc
;	genPointerGet
;	genPlus
;	genAssign (pointer)
	inc	(hl)
	ld	a, (hl)
; common peephole 104b inc (hl) directly to remove redundant load from a into (hl)
	C$actor.c$163$3_1$333	= .
	.globl	C$actor.c$163$3_1$333
;src\core\actor.c:163: if (actor->frame == actor->frame_end) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000b
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000d
	add	hl, de
;	genPointerGet
	ld	b, (hl)
;	genCmpEq
	ld	a, c
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00280$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00130$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00281$.
;	skipping generated iCode
	C$actor.c$164$4_1$334	= .
	.globl	C$actor.c$164$4_1$334
;src\core\actor.c:164: if (actor->anim_noloop) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_actors_update_actor_10000_320 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
;	genUnpackBits
	ld	a, (hl)
	swap	a
;	genIfx
	and	a,#0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00125$
	C$actor.c$165$5_1$335	= .
	.globl	C$actor.c$165$5_1$335
;src\core\actor.c:165: actor->frame--;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000b
	add	hl, bc
;	genPointerGet
;	genMinus
;	genAssign (pointer)
	dec	(hl)
	ld	a, (hl)
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00130$
;	genLabel
00125$:
	C$actor.c$168$5_1$336	= .
	.globl	C$actor.c$168$5_1$336
;src\core\actor.c:168: actor->frame = actor->frame_start;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x000b
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000c
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genAssign (pointer)
	ld	(bc), a
;	genLabel
00130$:
	C$actor.c$173$2_1$325	= .
	.globl	C$actor.c$173$2_1$325
;src\core\actor.c:173: SWITCH_ROM(actor->sprite.bank);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0022
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0022
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$actor.c$174$2_2$337	= .
	.globl	C$actor.c$174$2_2$337
;src\core\actor.c:174: spritesheet_t *sprite = actor->sprite.ptr;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0023
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;src\core\actor.c:182: );
;	genAssign
;	AOP_STK for _actors_update_sloc1_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_screen_y)
; common peephole 17 loaded a from (#_screen_y) directly instead of using hl.
	ldhl	sp,	#1
	ld	(hl), a
;	genAssign
;	AOP_STK for _actors_update_sloc2_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_screen_x)
; common peephole 17 loaded a from (#_screen_x) directly instead of using hl.
	ldhl	sp,	#2
	ld	(hl), a
;	genAssign
;	AOP_STK for _actors_update_sloc3_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_allocated_hardware_sprites)
; common peephole 17 loaded a from (#_allocated_hardware_sprites) directly instead of using hl.
	ldhl	sp,	#3
	ld	(hl), a
;src\core\actor.c:178: actor->base_tile,
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#___current_base_tile),a
; common peephole 19 loaded (#___current_base_tile) from a directly instead of using hl.
;src\core\actor.c:177: *(sprite->metasprites + actor->frame),
;	genPlus
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
; common peephole 24 incremented in hl instead of bc.
	inc	hl
; common peephole 24 incremented in hl instead of bc.
	inc	hl
; common peephole 24 incremented in hl instead of bc.
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000b
	add	hl, de
;	genPointerGet
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	h, a
	add	hl, hl
;	genPlus
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;c:\users\odiae\downloads\asarm\_gbstools\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #___current_metasprite
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;c:\users\odiae\downloads\asarm\_gbstools\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\users\odiae\downloads\asarm\_gbstools\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
;	genCast
;	AOP_STK for _actors_update_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#1
;	genMove_o size 0
;	genMove_o size 1
; common peephole 6b removed dead xor a, a
;	genLeftShift
; common peephole 9 loaded b from (hl) directly instead of going through c.
; common peephole 1 removed dead load from #0x00 into c.
;	genCast
;	AOP_STK for _actors_update_sloc2_1_0
;	genMove_o size 1
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into d.
;	genOr
;	genMove_o size 1
;	genMove_o size 1
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 2
;	genSend
;	AOP_STK for _actors_update_sloc3_1_0
;	genMove_o size 1
; common peephole 96b move inc hl before ld d, b
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, b
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	call	___move_metasprite
;	genMove_o size 1
	C$actor.c$182$4_2$345	= .
	.globl	C$actor.c$182$4_2$345
;src\core\actor.c:182: );
;	genPlus
;fetchLitPair	hl
	ld	hl, #_allocated_hardware_sprites
	add	a, (hl)
;fetchLitPair	hl
	ld	(hl), a
	C$actor.c$184$2_2$337	= .
	.globl	C$actor.c$184$2_2$337
;src\core\actor.c:184: actor = actor->prev;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_actors_update_actor_10000_320
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
	jp	00132$
;	genLabel
00134$:
	C$actor.c$187$1_1$324	= .
	.globl	C$actor.c$187$1_1$324
;src\core\actor.c:187: SWITCH_ROM(_save);
;	genAssign
;	AOP_STK for _actors_update_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for _actors_update_sloc0_1_0
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00138$.
	C$actor.c$188$1_1$320	= .
	.globl	C$actor.c$188$1_1$320
;src\core\actor.c:188: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$actor.c$188$1_1$320	= .
	.globl	C$actor.c$188$1_1$320
	XG$actors_update$0$0	= .
	.globl	XG$actors_update$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$__func_ACTOR$0$0	= .
	.globl	G$__func_ACTOR$0$0
	C$actor.c$34$0_0$314	= .
	.globl	C$actor.c$34$0_0$314
;src\core\actor.c:34: BANKREF(ACTOR)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_ACTOR
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_ACTOR	= 255
___func_ACTOR::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_ACTOR 
	___bank_ACTOR = b___func_ACTOR 
	.globl ___bank_ACTOR 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$actors_init$0$0	= .
	.globl	G$actors_init$0$0
	C$actor.c$58$1_0$316	= .
	.globl	C$actor.c$58$1_0$316
;src\core\actor.c:58: void actors_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actors_init
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_actors_init	= 255
_actors_init::
	C$actor.c$59$1_0$316	= .
	.globl	C$actor.c$59$1_0$316
;src\core\actor.c:59: actors_active_tail = actors_active_head = actors_inactive_head = NULL;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_actors_inactive_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_actors_active_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_actors_active_tail
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$actor.c$60$1_0$316	= .
	.globl	C$actor.c$60$1_0$316
;src\core\actor.c:60: player_moving           = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_player_moving
	ld	(hl), #0x00
	C$actor.c$61$1_0$316	= .
	.globl	C$actor.c$61$1_0$316
;src\core\actor.c:61: player_iframes          = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_player_iframes
	ld	(hl), #0x00
	C$actor.c$62$1_0$316	= .
	.globl	C$actor.c$62$1_0$316
;src\core\actor.c:62: player_collision_actor  = NULL;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_player_collision_actor
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$actor.c$63$1_0$316	= .
	.globl	C$actor.c$63$1_0$316
;src\core\actor.c:63: emote_actor             = NULL;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_emote_actor
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$actor.c$65$1_0$316	= .
	.globl	C$actor.c$65$1_0$316
;src\core\actor.c:65: memset(actors, 0, sizeof(actors));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0444
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$actor.c$66$1_0$316	= .
	.globl	C$actor.c$66$1_0$316
;src\core\actor.c:66: }
;	genEndFunction
	C$actor.c$66$1_0$316	= .
	.globl	C$actor.c$66$1_0$316
	XG$actors_init$0$0	= .
	.globl	XG$actors_init$0$0
	ret
G$emote_offsets$0_0$0 == .
_emote_offsets:
	.db #0x02	;  2
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0xff	; -1
	.db #0xfe	; -2
	.db #0xfd	; -3
	.db #0xfc	; -4
	.db #0xfb	; -5
	.db #0xfa	; -6
	.db #0xfb	; -5
	.db #0xfc	; -4
	.db #0xfd	; -3
	.db #0xfe	; -2
	.db #0xff	; -1
	.db #0x00	;  0
G$emote_metasprite$0_0$0 == .
_emote_metasprite:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
	G$player_init$0$0	= .
	.globl	G$player_init$0$0
	C$actor.c$68$1_0$318	= .
	.globl	C$actor.c$68$1_0$318
;src\core\actor.c:68: void player_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function player_init
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_player_init	= 255
_player_init::
	C$actor.c$69$1_0$318	= .
	.globl	C$actor.c$69$1_0$318
;src\core\actor.c:69: actor_set_anim_idle(&PLAYER);
;	genAddrOf
	ld	bc, #_actors+0
;	genCast
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genIpush
	push	bc
	push	de
;	genCall
	ld	e, #b_actor_set_anim_idle
	ld	hl, #_actor_set_anim_idle
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
	pop	bc
	C$actor.c$70$1_0$318	= .
	.globl	C$actor.c$70$1_0$318
;src\core\actor.c:70: PLAYER.hidden = FALSE;
;	genAssign
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	genPackBits
	res	2, (hl)
	C$actor.c$71$1_0$318	= .
	.globl	C$actor.c$71$1_0$318
;src\core\actor.c:71: PLAYER.disabled = FALSE;
;	genAssign
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	genPackBits
	res	3, (hl)
	C$actor.c$72$1_0$318	= .
	.globl	C$actor.c$72$1_0$318
;src\core\actor.c:72: PLAYER.anim_noloop = FALSE;
;	genAssign
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	genPackBits
	res	4, (hl)
	C$actor.c$73$1_0$318	= .
	.globl	C$actor.c$73$1_0$318
;src\core\actor.c:73: PLAYER.pinned = FALSE;
;	genAssign
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	genPackBits
	res	1, (hl)
	C$actor.c$74$1_0$318	= .
	.globl	C$actor.c$74$1_0$318
;src\core\actor.c:74: PLAYER.collision_enabled = TRUE;
;	genAssign
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	genPackBits
	ld	a, (bc)
	or	a, #0x20
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$actor.c$75$1_0$318	= .
	.globl	C$actor.c$75$1_0$318
;src\core\actor.c:75: }
;	genEndFunction
	C$actor.c$75$1_0$318	= .
	.globl	C$actor.c$75$1_0$318
	XG$player_init$0$0	= .
	.globl	XG$player_init$0$0
	ret
	G$deactivate_actor$0$0	= .
	.globl	G$deactivate_actor$0$0
	C$actor.c$190$1_1$348	= .
	.globl	C$actor.c$190$1_1$348
;src\core\actor.c:190: void deactivate_actor(actor_t *actor) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function deactivate_actor
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
	b_deactivate_actor	= 255
_deactivate_actor::
;	adjustStack by -6
	add	sp, #-6
	C$actor.c$203$1_0$348	= .
	.globl	C$actor.c$203$1_0$348
;src\core\actor.c:203: if (!actor->active) return;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	genUnpackBits
	ld	a, (hl)
;	genIfx
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 0a removed redundant load from a into a.
	and	a,#0x01
; common peephole 100 removed redundant or after and.
;	genRet
;	genLabel
	jp	Z,00121$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
	C$actor.c$204$1_0$348	= .
	.globl	C$actor.c$204$1_0$348
;src\core\actor.c:204: if (actor == &PLAYER) return;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#12
	ld	a, (hl)
	sub	a, #<(_actors)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
; common peephole 84 jumped to 00104$ directly instead of via 00177$.
	inc	hl
	ld	a, (hl)
	sub	a, #>(_actors)
	jp	Z,00121$
; common peephole 84 jumped to 00121$ directly instead of via 00178$.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00177$.
;	skipping generated iCode
;	genRet
; common peephole 87b removed unreachable jump to 00121$
;	genLabel
; common peephole 85a eliminated jump.
00104$:
	C$actor.c$205$1_0$348	= .
	.globl	C$actor.c$205$1_0$348
;src\core\actor.c:205: actor->active = FALSE;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genCast
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genAssign (pointer)
;	genPackBits
	res	0, (hl)
	C$actor.c$206$1_0$348	= .
	.globl	C$actor.c$206$1_0$348
;src\core\actor.c:206: DL_REMOVE_ITEM(actors_active_head, actor);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
;	genIfx
; common peephole 9 loaded a from (hl) directly instead of going through b.
; common peephole 1 removed dead load from a into c.
	or	a,(hl)
; common peephole 99 removed load by reordering or arguments.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00112$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00112$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _deactivate_actor_sloc0_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genMove_o size 2
	inc	sp
	inc	sp
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _deactivate_actor_sloc0_1_0
;	AOP_STK for _deactivate_actor_sloc1_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
; common peephole 52a replaced push/pop pair by loads.
	push	de
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genPlus
;	AOP_STK for _deactivate_actor_sloc1_1_0
;	AOP_STK for _deactivate_actor_sloc2_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _deactivate_actor_sloc3_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genAssign (pointer)
;	AOP_STK for _deactivate_actor_sloc2_1_0
;	AOP_STK for _deactivate_actor_sloc3_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _deactivate_actor_sloc0_1_0
;	AOP_STK for _deactivate_actor_sloc4_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genAssign (pointer)
;	AOP_STK for _deactivate_actor_sloc4_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00112$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genMove_o size 2
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	c,l
	ld	b,h
; common peephole 104 removed redundant load from bc into hl
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0032
	add	hl, de
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genPointerGet
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_actors_active_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00109$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00106$:
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_actors_active_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00113$:
	C$actor.c$207$1_0$348	= .
	.globl	C$actor.c$207$1_0$348
;src\core\actor.c:207: DL_PUSH_HEAD(actors_inactive_head, actor);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_actors_inactive_head
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genIfx
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00116$
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genLabel
00116$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_inactive_head
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$actor.c$208$1_0$348	= .
	.globl	C$actor.c$208$1_0$348
;src\core\actor.c:208: if ((actor->hscript_update & SCRIPT_TERMINATED) == 0) {
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002b
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; common peephole 1 removed dead load from a into c.
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genAnd
	rlca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00179$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00118$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00180$.
;	skipping generated iCode
	C$actor.c$209$2_0$354	= .
	.globl	C$actor.c$209$2_0$354
;src\core\actor.c:209: script_terminate(actor->hscript_update);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002b
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_terminate
	ld	hl, #_script_terminate
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
;	genLabel
00118$:
	C$actor.c$211$1_0$348	= .
	.globl	C$actor.c$211$1_0$348
;src\core\actor.c:211: if ((actor->hscript_hit & SCRIPT_TERMINATED) == 0) {
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002d
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; common peephole 1 removed dead load from a into c.
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genAnd
	rlca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00181$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00121$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00182$.
;	skipping generated iCode
	C$actor.c$212$2_0$355	= .
	.globl	C$actor.c$212$2_0$355
;src\core\actor.c:212: script_detach_hthread(actor->hscript_hit);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002d
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_detach_hthread
	ld	hl, #_script_detach_hthread
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
;	genLabel
00121$:
	C$actor.c$214$1_0$348	= .
	.globl	C$actor.c$214$1_0$348
;src\core\actor.c:214: }
;	genEndFunction
;	adjustStack by 6
	add	sp, #6
	C$actor.c$214$1_0$348	= .
	.globl	C$actor.c$214$1_0$348
	XG$deactivate_actor$0$0	= .
	.globl	XG$deactivate_actor$0$0
	ret
	G$activate_actor$0$0	= .
	.globl	G$activate_actor$0$0
	C$actor.c$216$1_0$357	= .
	.globl	C$actor.c$216$1_0$357
;src\core\actor.c:216: void activate_actor(actor_t *actor) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function activate_actor
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
	b_activate_actor	= 255
_activate_actor::
;	adjustStack by -6
	add	sp, #-6
	C$actor.c$229$1_0$357	= .
	.globl	C$actor.c$229$1_0$357
;src\core\actor.c:229: if (actor->active || actor->disabled) return;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	genUnpackBits
	ld	a, (hl)
;	genIfx
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 0a removed redundant load from a into a.
	and	a,#0x01
; common peephole 100 removed redundant or after and.
	jp	NZ,00118$
; common peephole 84 jumped to 00118$ directly instead of via 00101$.
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	ld	l, a
	ld	h, c
;	genUnpackBits
	ld	a, (hl)
	swap	a
;	genIfx
; common peephole 100 removed redundant or after and.
	rlca
; common peephole 90a removed and by changing jump condition.
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genRet
;	genLabel
	jp	C,00118$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
	C$actor.c$230$1_0$357	= .
	.globl	C$actor.c$230$1_0$357
;src\core\actor.c:230: actor->active = TRUE;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genCast
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genAssign (pointer)
;	genPackBits
	set	0, (hl)
	C$actor.c$231$1_0$357	= .
	.globl	C$actor.c$231$1_0$357
;src\core\actor.c:231: actor_set_anim_idle(actor);
;	genIpush
	push	bc
;	genCall
	ld	e, #b_actor_set_anim_idle
	ld	hl, #_actor_set_anim_idle
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
	C$actor.c$232$1_0$357	= .
	.globl	C$actor.c$232$1_0$357
;src\core\actor.c:232: DL_REMOVE_ITEM(actors_inactive_head, actor);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
;	genIfx
; common peephole 9 loaded a from (hl) directly instead of going through b.
; common peephole 1 removed dead load from a into c.
	or	a,(hl)
; common peephole 99 removed load by reordering or arguments.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _activate_actor_sloc0_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genMove_o size 2
	inc	sp
	inc	sp
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _activate_actor_sloc0_1_0
;	AOP_STK for _activate_actor_sloc1_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
; common peephole 52a replaced push/pop pair by loads.
	push	de
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genPlus
;	AOP_STK for _activate_actor_sloc1_1_0
;	AOP_STK for _activate_actor_sloc2_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _activate_actor_sloc3_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genAssign (pointer)
;	AOP_STK for _activate_actor_sloc2_1_0
;	AOP_STK for _activate_actor_sloc3_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _activate_actor_sloc0_1_0
;	AOP_STK for _activate_actor_sloc4_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genAssign (pointer)
;	AOP_STK for _activate_actor_sloc4_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00111$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genMove_o size 2
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	c,l
	ld	b,h
; common peephole 104 removed redundant load from bc into hl
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0032
	add	hl, de
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genPointerGet
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_actors_inactive_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00108$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00105$:
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_actors_inactive_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00112$:
	C$actor.c$233$1_0$357	= .
	.globl	C$actor.c$233$1_0$357
;src\core\actor.c:233: DL_PUSH_HEAD(actors_active_head, actor);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_actors_active_head
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genIfx
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00115$
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genLabel
00115$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_active_head
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$actor.c$234$1_0$357	= .
	.globl	C$actor.c$234$1_0$357
;src\core\actor.c:234: actor->hscript_update = SCRIPT_TERMINATED;
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002b
	add	hl, bc
;	genAssign (pointer)
;fetchPairLong
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x80
	C$actor.c$235$1_0$357	= .
	.globl	C$actor.c$235$1_0$357
;src\core\actor.c:235: if (actor->script_update.bank) {
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0028
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00117$
	C$actor.c$236$2_0$363	= .
	.globl	C$actor.c$236$2_0$363
;src\core\actor.c:236: script_execute(actor->script_update.bank, actor->script_update.ptr, &(actor->hscript_update), 0);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x002b
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _activate_actor_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0028
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0029
	add	hl, de
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genIpush
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
;	AOP_STK for _activate_actor_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#5
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
	push	bc
;	genIpush
	push	de
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 6
	add	sp, #6
;	genLabel
00117$:
	C$actor.c$238$1_0$357	= .
	.globl	C$actor.c$238$1_0$357
;src\core\actor.c:238: actor->hscript_hit = SCRIPT_TERMINATED;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002d
	add	hl, bc
;	genAssign (pointer)
;fetchPairLong
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x80
;	genLabel
00118$:
	C$actor.c$239$1_0$357	= .
	.globl	C$actor.c$239$1_0$357
;src\core\actor.c:239: }
;	genEndFunction
;	adjustStack by 6
	add	sp, #6
	C$actor.c$239$1_0$357	= .
	.globl	C$actor.c$239$1_0$357
	XG$activate_actor$0$0	= .
	.globl	XG$activate_actor$0$0
	ret
	G$activate_actors_in_row$0$0	= .
	.globl	G$activate_actors_in_row$0$0
	C$actor.c$241$1_0$365	= .
	.globl	C$actor.c$241$1_0$365
;src\core\actor.c:241: void activate_actors_in_row(UBYTE x, UBYTE y) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function activate_actors_in_row
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_activate_actors_in_row	= 255
_activate_actors_in_row::
;	adjustStack by -4
	add	sp, #-4
	C$actor.c$243$1_0$365	= .
	.globl	C$actor.c$243$1_0$365
;src\core\actor.c:243: actor = actors_inactive_head;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_actors_inactive_head)
; common peephole 17 loaded a from (#_actors_inactive_head) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_activate_actors_in_row_actor_10000_365),a
; common peephole 19 loaded (#_activate_actors_in_row_actor_10000_365) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_actors_inactive_head + 1)
;fetchLitPair	hl
	ld	(#_activate_actors_in_row_actor_10000_365 + 1),a
; common peephole 20 loaded (#_activate_actors_in_row_actor_10000_365) from a directly instead of using hl.
	C$actor.c$245$1_0$365	= .
	.globl	C$actor.c$245$1_0$365
;src\core\actor.c:245: while (actor) {
;	genLabel
00106$:
;	genIfx
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_row_actor_10000_365 + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00109$
	C$actor.c$246$2_0$366	= .
	.globl	C$actor.c$246$2_0$366
;src\core\actor.c:246: UBYTE ty = actor->pos.y >> 7;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_activate_actors_in_row_actor_10000_365 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genRightShift
;	genMove_o size 2
	sra	l
	rr	c
	sra	l
	rr	c
	sra	l
	rr	c
	sra	l
	rr	c
	sra	l
	rr	c
	sra	l
	rr	c
	sra	l
	rr	c
;	genCast
;	genMove_o size 1
	C$actor.c$247$2_0$366	= .
	.globl	C$actor.c$247$2_0$366
;src\core\actor.c:247: if (ty == y) {
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#11
	ld	a, (hl)
	sub	a, c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00141$.
	jp	NZ,00105$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00142$.
;	skipping generated iCode
	C$actor.c$248$3_0$367	= .
	.globl	C$actor.c$248$3_0$367
;src\core\actor.c:248: UBYTE tx = actor->pos.x >> 7;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_row_actor_10000_365
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_activate_actors_in_row_actor_10000_365 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	genMove_o size 1
	C$actor.c$249$3_0$367	= .
	.globl	C$actor.c$249$3_0$367
;src\core\actor.c:249: if ((tx + 1 > x) && (tx < x + SCREEN_TILE_REFRES_W)) {
;	genCast
;	genMove_o size 1
	ld	e, c
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genPlus
;	AOP_STK for _activate_actors_in_row_sloc0_1_0
	inc	de
;	genMove_o size 2
	inc	sp
	inc	sp
	push	de
;	genMove_o size 0
;	genCast
;	AOP_STK for 
;	AOP_STK for _activate_actors_in_row_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#2
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genCmpGt
;	AOP_STK for _activate_actors_in_row_sloc0_1_0
;	AOP_STK for _activate_actors_in_row_sloc1_1_0
	ldhl	sp,	#2
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00143$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00144$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00144$
00143$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00144$
	scf
00144$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00105$
;	skipping generated iCode
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#10
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0017
	add	hl, de
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	b, #0x00
;	genCmpLt
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
	jr	Z, 00145$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00146$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00146$
00145$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00146$
	scf
00146$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00105$
;	skipping generated iCode
	C$actor.c$250$4_0$368	= .
	.globl	C$actor.c$250$4_0$368
;src\core\actor.c:250: actor_t * next = actor->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_row_actor_10000_365
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
	C$actor.c$251$4_0$368	= .
	.globl	C$actor.c$251$4_0$368
;src\core\actor.c:251: activate_actor(actor);
;	genIpush
	push	bc
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_row_actor_10000_365
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	push	de
;	genCall
	ld	e, #b_activate_actor
	ld	hl, #_activate_actor
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
	pop	bc
	C$actor.c$252$4_0$368	= .
	.globl	C$actor.c$252$4_0$368
;src\core\actor.c:252: actor = next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_row_actor_10000_365
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$actor.c$253$4_0$368	= .
	.globl	C$actor.c$253$4_0$368
;src\core\actor.c:253: continue;
;	genGoto
	jp	00106$
;	genLabel
00105$:
	C$actor.c$256$2_0$366	= .
	.globl	C$actor.c$256$2_0$366
;src\core\actor.c:256: actor = actor->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_row_actor_10000_365
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_row_actor_10000_365
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
	jp	00106$
;	genLabel
00109$:
	C$actor.c$258$1_0$365	= .
	.globl	C$actor.c$258$1_0$365
;src\core\actor.c:258: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$actor.c$258$1_0$365	= .
	.globl	C$actor.c$258$1_0$365
	XG$activate_actors_in_row$0$0	= .
	.globl	XG$activate_actors_in_row$0$0
	ret
	G$activate_actors_in_col$0$0	= .
	.globl	G$activate_actors_in_col$0$0
	C$actor.c$260$1_0$370	= .
	.globl	C$actor.c$260$1_0$370
;src\core\actor.c:260: void activate_actors_in_col(UBYTE x, UBYTE y) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function activate_actors_in_col
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
	b_activate_actors_in_col	= 255
_activate_actors_in_col::
;	adjustStack by -3
	add	sp, #-3
	C$actor.c$262$1_0$370	= .
	.globl	C$actor.c$262$1_0$370
;src\core\actor.c:262: actor = actors_inactive_head;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_actors_inactive_head)
; common peephole 17 loaded a from (#_actors_inactive_head) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_activate_actors_in_col_actor_10000_370),a
; common peephole 19 loaded (#_activate_actors_in_col_actor_10000_370) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_actors_inactive_head + 1)
;fetchLitPair	hl
	ld	(#_activate_actors_in_col_actor_10000_370 + 1),a
; common peephole 20 loaded (#_activate_actors_in_col_actor_10000_370) from a directly instead of using hl.
	C$actor.c$263$1_0$370	= .
	.globl	C$actor.c$263$1_0$370
;src\core\actor.c:263: while (actor) {
;	genLabel
00106$:
;	genIfx
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_col_actor_10000_370 + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00109$
	C$actor.c$264$2_0$371	= .
	.globl	C$actor.c$264$2_0$371
;src\core\actor.c:264: UBYTE tx_left   = actor->pos.x >> 7;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_activate_actors_in_col_actor_10000_370 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	AOP_STK for _activate_actors_in_col_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), c
;	genMove_o size 0
	C$actor.c$265$2_0$371	= .
	.globl	C$actor.c$265$2_0$371
;src\core\actor.c:265: UBYTE ty_bottom = actor->pos.y >> 7;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_col_actor_10000_370
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_activate_actors_in_col_actor_10000_370 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	AOP_STK for _activate_actors_in_col_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), c
;	genMove_o size 0
	C$actor.c$266$2_0$371	= .
	.globl	C$actor.c$266$2_0$371
;src\core\actor.c:266: UBYTE tx_right  = ((actor->pos.x >> 4) + (actor->bounds.right)) >> 3;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_col_actor_10000_370
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_activate_actors_in_col_actor_10000_370 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_col_actor_10000_370
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0007
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	AOP_STK for _activate_actors_in_col_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	(hl), c
;	genMove_o size 0
	C$actor.c$267$2_0$371	= .
	.globl	C$actor.c$267$2_0$371
;src\core\actor.c:267: UBYTE ty_top    = ((actor->pos.y >> 4) + (actor->bounds.top)) >> 3;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_col_actor_10000_370
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_activate_actors_in_col_actor_10000_370 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_col_actor_10000_370
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genCast
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	add	hl, de
;	genRightShift
;fetchPairLong
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;	genCast
;	genMove_o size 1
	ld	c, l
;	genMove_o size 0
	C$actor.c$268$2_0$371	= .
	.globl	C$actor.c$268$2_0$371
;src\core\actor.c:268: if (tx_left <= x && tx_right >= x && ty_top <= (y + SCREEN_TILE_REFRES_H) && ty_bottom >= y) {
;	genCmpGt
;	AOP_STK for _activate_actors_in_col_sloc0_1_0
;	AOP_STK for 
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#0
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00102$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _activate_actors_in_col_sloc2_1_0
;	AOP_STK for 
	inc	hl
	inc	hl
	ld	a, (hl)
	ldhl	sp,	#9
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00102$
;	skipping generated iCode
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	inc	hl
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0015
	add	hl, de
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	b, #0x00
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
	jr	Z, 00147$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00148$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00148$
00147$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00148$
	scf
00148$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00102$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _activate_actors_in_col_sloc1_1_0
;	AOP_STK for 
	ldhl	sp,	#1
	ld	a, (hl)
	ldhl	sp,	#10
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00102$
;	skipping generated iCode
	C$actor.c$269$3_0$372	= .
	.globl	C$actor.c$269$3_0$372
;src\core\actor.c:269: actor_t * next = actor->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_col_actor_10000_370
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
	C$actor.c$270$3_0$372	= .
	.globl	C$actor.c$270$3_0$372
;src\core\actor.c:270: activate_actor(actor);
;	genIpush
	push	bc
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_col_actor_10000_370
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	push	de
;	genCall
	ld	e, #b_activate_actor
	ld	hl, #_activate_actor
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
	pop	bc
	C$actor.c$271$3_0$372	= .
	.globl	C$actor.c$271$3_0$372
;src\core\actor.c:271: actor=next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_col_actor_10000_370
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$actor.c$272$3_0$372	= .
	.globl	C$actor.c$272$3_0$372
;src\core\actor.c:272: continue;
;	genGoto
	jp	00106$
;	genLabel
00102$:
	C$actor.c$274$2_0$371	= .
	.globl	C$actor.c$274$2_0$371
;src\core\actor.c:274: actor = actor->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_col_actor_10000_370
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_activate_actors_in_col_actor_10000_370
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
	jp	00106$
;	genLabel
00109$:
	C$actor.c$276$1_0$370	= .
	.globl	C$actor.c$276$1_0$370
;src\core\actor.c:276: }
;	genEndFunction
;	adjustStack by 3
	add	sp, #3
	C$actor.c$276$1_0$370	= .
	.globl	C$actor.c$276$1_0$370
	XG$activate_actors_in_col$0$0	= .
	.globl	XG$activate_actors_in_col$0$0
	ret
	G$actor_set_frames$0$0	= .
	.globl	G$actor_set_frames$0$0
	C$actor.c$278$1_0$374	= .
	.globl	C$actor.c$278$1_0$374
;src\core\actor.c:278: void actor_set_frames(actor_t *actor, UBYTE frame_start, UBYTE frame_end) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actor_set_frames
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_actor_set_frames	= 255
_actor_set_frames::
	C$actor.c$279$1_0$374	= .
	.globl	C$actor.c$279$1_0$374
;src\core\actor.c:279: if ((actor->frame_start != frame_start) || (actor->frame_end != frame_end)) {
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000c
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#8
	ld	a, (hl)
	sub	a, c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00112$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00113$.
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000d
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#9
	ld	a, (hl)
	sub	a, c
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00114$.
;	skipping generated iCode
;	genLabel
00101$:
	C$actor.c$280$2_0$375	= .
	.globl	C$actor.c$280$2_0$375
;src\core\actor.c:280: actor->frame = frame_start;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x000b
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
	C$actor.c$281$2_0$375	= .
	.globl	C$actor.c$281$2_0$375
;src\core\actor.c:281: actor->frame_start = frame_start;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x000c
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
	C$actor.c$282$2_0$375	= .
	.globl	C$actor.c$282$2_0$375
;src\core\actor.c:282: actor->frame_end = frame_end;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x000d
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#9
	ld	a, (hl)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$actor.c$284$1_0$374	= .
	.globl	C$actor.c$284$1_0$374
;src\core\actor.c:284: }
;	genEndFunction
	C$actor.c$284$1_0$374	= .
	.globl	C$actor.c$284$1_0$374
	XG$actor_set_frames$0$0	= .
	.globl	XG$actor_set_frames$0$0
	ret
	G$actor_set_frame_offset$0$0	= .
	.globl	G$actor_set_frame_offset$0$0
	C$actor.c$286$1_0$377	= .
	.globl	C$actor.c$286$1_0$377
;src\core\actor.c:286: void actor_set_frame_offset(actor_t *actor, UBYTE frame_offset) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actor_set_frame_offset
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
	b_actor_set_frame_offset	= 255
_actor_set_frame_offset::
;	adjustStack by -3
	add	sp, #-3
	C$actor.c$287$1_0$377	= .
	.globl	C$actor.c$287$1_0$377
;src\core\actor.c:287: actor->frame = actor->frame_start + (frame_offset % (actor->frame_end - actor->frame_start));
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _actor_set_frame_offset_sloc0_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000b
	add	hl, bc
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000c
	add	hl, bc
;	genPointerGet
;	AOP_STK for _actor_set_frame_offset_sloc1_1_0
	ld	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#2
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000d
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	b, #0x00
;	genCast
;	AOP_STK for _actor_set_frame_offset_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genMinus
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#11
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	__modsint
;	genMove_o size 2
;	genCast
;	genMove_o size 1
;	genCast
;	AOP_STK for _actor_set_frame_offset_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	a, (hl)
;	genMove_o size 0
;	genPlus
	add	a, c
	ld	c, a
;	genAssign (pointer)
;	AOP_STK for _actor_set_frame_offset_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	(hl), c
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$actor.c$288$1_0$377	= .
	.globl	C$actor.c$288$1_0$377
;src\core\actor.c:288: }
;	genEndFunction
;	adjustStack by 3
	add	sp, #3
	C$actor.c$288$1_0$377	= .
	.globl	C$actor.c$288$1_0$377
	XG$actor_set_frame_offset$0$0	= .
	.globl	XG$actor_set_frame_offset$0$0
	ret
	G$actor_get_frame_offset$0$0	= .
	.globl	G$actor_get_frame_offset$0$0
	C$actor.c$290$1_0$379	= .
	.globl	C$actor.c$290$1_0$379
;src\core\actor.c:290: UBYTE actor_get_frame_offset(actor_t *actor) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actor_get_frame_offset
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_actor_get_frame_offset	= 255
_actor_get_frame_offset::
	C$actor.c$291$1_0$379	= .
	.globl	C$actor.c$291$1_0$379
;src\core\actor.c:291: return actor->frame - actor->frame_start;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000b
	add	hl, bc
;	genPointerGet
	ld	e, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000c
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genMinus
	ld	a, e
	sub	a, c
;	genRet
;	genMove_o size 1
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$actor.c$292$1_0$379	= .
	.globl	C$actor.c$292$1_0$379
;src\core\actor.c:292: }
;	genEndFunction
	C$actor.c$292$1_0$379	= .
	.globl	C$actor.c$292$1_0$379
	XG$actor_get_frame_offset$0$0	= .
	.globl	XG$actor_get_frame_offset$0$0
	ret
	G$actor_set_anim_idle$0$0	= .
	.globl	G$actor_set_anim_idle$0$0
	C$actor.c$294$1_0$381	= .
	.globl	C$actor.c$294$1_0$381
;src\core\actor.c:294: void actor_set_anim_idle(actor_t *actor) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actor_set_anim_idle
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_actor_set_anim_idle	= 255
_actor_set_anim_idle::
;src\core\actor.c:295: actor_set_anim(actor, actor->dir);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0005
	add	hl, bc
;	genPointerGet
	ld	e, (hl)
;	genAssign
;	(locations are the same)
;include/actor.h:62: actor->animation = anim;
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), e
;include/actor.h:63: actor_set_frames(actor, actor->animations[anim].start, actor->animations[anim].end + 1);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genLeftShift
	sla	e
;	genPlus
;	genMove_o size 2
;	genMove_o size 1
	ld	d, #0x00
	add	hl, de
;	genPlus
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genPointerGet
	ld	d, (hl)
;	genIpush
	push	af
	inc	sp
;	genIpush
	push	de
	inc	sp
;	genIpush
	push	bc
;	genCall
	ld	e, #b_actor_set_frames
	ld	hl, #_actor_set_frames
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
	C$actor.c$295$3_0$381	= .
	.globl	C$actor.c$295$3_0$381
;src\core\actor.c:295: actor_set_anim(actor, actor->dir);
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$actor.c$296$3_0$381	= .
	.globl	C$actor.c$296$3_0$381
;src\core\actor.c:296: }
;	genEndFunction
	C$actor.c$296$3_0$381	= .
	.globl	C$actor.c$296$3_0$381
	XG$actor_set_anim_idle$0$0	= .
	.globl	XG$actor_set_anim_idle$0$0
	ret
	G$actor_set_anim_moving$0$0	= .
	.globl	G$actor_set_anim_moving$0$0
	C$actor.c$298$3_0$386	= .
	.globl	C$actor.c$298$3_0$386
;src\core\actor.c:298: void actor_set_anim_moving(actor_t *actor) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actor_set_anim_moving
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_actor_set_anim_moving	= 255
_actor_set_anim_moving::
;src\core\actor.c:299: actor_set_anim(actor, actor->dir + N_DIRECTIONS);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0005
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genCast
;	(locations are the same)
;	genPlus
	add	a, #0x04
	ld	e, a
;	genAssign
;	(locations are the same)
;include/actor.h:62: actor->animation = anim;
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), e
;include/actor.h:63: actor_set_frames(actor, actor->animations[anim].start, actor->animations[anim].end + 1);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genLeftShift
	sla	e
;	genPlus
;	genMove_o size 2
;	genMove_o size 1
	ld	d, #0x00
	add	hl, de
;	genPlus
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genPointerGet
	ld	d, (hl)
;	genIpush
	push	af
	inc	sp
;	genIpush
	push	de
	inc	sp
;	genIpush
	push	bc
;	genCall
	ld	e, #b_actor_set_frames
	ld	hl, #_actor_set_frames
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
	C$actor.c$299$3_0$386	= .
	.globl	C$actor.c$299$3_0$386
;src\core\actor.c:299: actor_set_anim(actor, actor->dir + N_DIRECTIONS);
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$actor.c$300$3_0$386	= .
	.globl	C$actor.c$300$3_0$386
;src\core\actor.c:300: }
;	genEndFunction
	C$actor.c$300$3_0$386	= .
	.globl	C$actor.c$300$3_0$386
	XG$actor_set_anim_moving$0$0	= .
	.globl	XG$actor_set_anim_moving$0$0
	ret
	G$actor_set_dir$0$0	= .
	.globl	G$actor_set_dir$0$0
	C$actor.c$302$3_0$391	= .
	.globl	C$actor.c$302$3_0$391
;src\core\actor.c:302: void actor_set_dir(actor_t *actor, direction_e dir, UBYTE moving) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actor_set_dir
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_actor_set_dir	= 255
_actor_set_dir::
	C$actor.c$303$1_0$391	= .
	.globl	C$actor.c$303$1_0$391
;src\core\actor.c:303: actor->dir = dir;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genPlus
;	genAssign (pointer)
;	AOP_STK for 
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	C$actor.c$304$1_0$391	= .
	.globl	C$actor.c$304$1_0$391
;src\core\actor.c:304: if (moving) {
;	genIfx
;	AOP_STK for 
; common peephole 96b move inc hl before ld (bc), a
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	(bc), a
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;src\core\actor.c:305: actor_set_anim(actor, dir + N_DIRECTIONS);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	dec	hl
;	genMove_o size 0
;	genPlus
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
; common peephole 96b move dec hl before ld e, a
; common peephole 96b move dec hl before add a, #0x04
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
; common peephole 96b move dec hl before ld e, a
; common peephole 96b move dec hl before add a, #0x04
	dec	hl
	add	a, #0x04
	ld	e, a
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;include/actor.h:62: actor->animation = anim;
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), e
;include/actor.h:63: actor_set_frames(actor, actor->animations[anim].start, actor->animations[anim].end + 1);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genLeftShift
	sla	e
;	genPlus
;	genMove_o size 2
;	genMove_o size 1
	ld	d, #0x00
	add	hl, de
;	genPlus
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genPointerGet
	ld	d, (hl)
;	genIpush
	push	af
	inc	sp
;	genIpush
	push	de
	inc	sp
;	genIpush
	push	bc
;	genCall
	ld	e, #b_actor_set_frames
	ld	hl, #_actor_set_frames
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
	C$actor.c$305$1_0$391	= .
	.globl	C$actor.c$305$1_0$391
;src\core\actor.c:305: actor_set_anim(actor, dir + N_DIRECTIONS);
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
;src\core\actor.c:307: actor_set_anim(actor, dir);
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96b move dec hl before ld e, a
	dec	hl
	ld	e, a
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;include/actor.h:62: actor->animation = anim;
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), e
;include/actor.h:63: actor_set_frames(actor, actor->animations[anim].start, actor->animations[anim].end + 1);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genLeftShift
	sla	e
;	genPlus
;	genMove_o size 2
;	genMove_o size 1
	ld	d, #0x00
	add	hl, de
;	genPlus
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genPointerGet
	ld	d, (hl)
;	genIpush
	push	af
	inc	sp
;	genIpush
	push	de
	inc	sp
;	genIpush
	push	bc
;	genCall
	ld	e, #b_actor_set_frames
	ld	hl, #_actor_set_frames
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
	C$actor.c$307$1_0$391	= .
	.globl	C$actor.c$307$1_0$391
;src\core\actor.c:307: actor_set_anim(actor, dir);
;	genLabel
; common peephole 158 removed unused label 00106$.
	C$actor.c$309$1_0$391	= .
	.globl	C$actor.c$309$1_0$391
;src\core\actor.c:309: }
;	genEndFunction
	C$actor.c$309$1_0$391	= .
	.globl	C$actor.c$309$1_0$391
	XG$actor_set_dir$0$0	= .
	.globl	XG$actor_set_dir$0$0
	ret
	G$actor_at_tile$0$0	= .
	.globl	G$actor_at_tile$0$0
	C$actor.c$311$1_0$401	= .
	.globl	C$actor.c$311$1_0$401
;src\core\actor.c:311: actor_t *actor_at_tile(UBYTE tx, UBYTE ty, UBYTE inc_noclip) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actor_at_tile
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
	b_actor_at_tile	= 255
_actor_at_tile::
;	adjustStack by -3
	add	sp, #-3
	C$actor.c$312$3_0$402	= .
	.globl	C$actor.c$312$3_0$402
;src\core\actor.c:312: for (actor_t *actor = actors_active_head; (actor); actor = actor->next) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_active_head
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genLabel
00113$:
;	genIfx
	ld	a, b
	or	a, c
	jp	Z, 00111$
	C$actor.c$313$3_0$403	= .
	.globl	C$actor.c$313$3_0$403
;src\core\actor.c:313: if ((!inc_noclip && !actor->collision_enabled))
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#11
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
;	genAssign
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
;	genUnpackBits
	ld	a, (hl)
	swap	a
	rrca
;	genIfx
	and	a,#0x01
; common peephole 100 removed redundant or after and.
	jp	Z, 00110$
	C$actor.c$314$3_0$403	= .
	.globl	C$actor.c$314$3_0$403
;src\core\actor.c:314: continue;
;	genLabel
00102$:
	C$actor.c$316$3_1$404	= .
	.globl	C$actor.c$316$3_1$404
;src\core\actor.c:316: UBYTE a_tx = (actor->pos.x >> 7), a_ty = (actor->pos.y >> 7);
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
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genRightShift
;fetchPairLong
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	AOP_STK for _actor_at_tile_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), e
;	genMove_o size 0
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
;	genPlus
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genRightShift
;	genMove_o size 2
; common peephole 9 loaded e from a directly instead of going through h.
	ld	e, a
;	genMove_o size 0
	sra	l
	rr	e
	sra	l
	rr	e
	sra	l
	rr	e
	sra	l
	rr	e
	sra	l
	rr	e
	sra	l
	rr	e
	sra	l
	rr	e
;	genCast
;	genMove_o size 1
	C$actor.c$317$3_1$404	= .
	.globl	C$actor.c$317$3_1$404
;src\core\actor.c:317: if ((ty == a_ty || ty == a_ty + 1) && (tx == a_tx || tx == a_tx + 1 || tx == a_tx - 1)) return actor;
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00152$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	xor	a, a
;	genPlus
;	genMove_o size 2
	ld	d, a
;	genMove_o size 0
	inc	de
;	genCast
;	AOP_STK for 
;	AOP_STK for _actor_at_tile_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#1
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCmpEq
;	AOP_STK for _actor_at_tile_sloc1_1_0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl)
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00110$
; common peephole 84 jumped to 00110$ directly instead of via 00153$.
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00153$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00110$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00154$.
;	skipping generated iCode
;	genLabel
00109$:
;	genCmpEq
;	AOP_STK for 
;	AOP_STK for _actor_at_tile_sloc0_1_0
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#0
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
; common peephole 84 jumped to 00114$ directly instead of via 00104$.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00155$.
;	skipping generated iCode
;	genCast
;	AOP_STK for _actor_at_tile_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genPlus
;	genMove_o size 2
	ld	d, a
;	genMove_o size 0
	inc	de
;	genCast
;	AOP_STK for 
;	AOP_STK for _actor_at_tile_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#1
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCmpEq
;	AOP_STK for _actor_at_tile_sloc2_1_0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl)
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00156$
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
; common peephole 84 jumped to 00114$ directly instead of via 00104$.
; common peephole 81 removed jp by using inverse jump logic
00156$:
;	skipping generated iCode
;	genCast
;	AOP_STK for _actor_at_tile_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genMinus
;fetchPairLong
	ld	d, a
	dec	de
;	genCast
;	AOP_STK for 
;	AOP_STK for _actor_at_tile_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#1
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCmpEq
;	AOP_STK for _actor_at_tile_sloc3_1_0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl)
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00110$
; common peephole 84 jumped to 00110$ directly instead of via 00157$.
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00157$.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00158$.
;	skipping generated iCode
;	genLabel
; common peephole 158 removed unused label 00104$.
;	genRet
;	genMove_o size 2
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
; common peephole 81 removed jp by using inverse jump logic
00110$:
	C$actor.c$312$2_0$402	= .
	.globl	C$actor.c$312$2_0$402
;src\core\actor.c:312: for (actor_t *actor = actors_active_head; (actor); actor = actor->next) {
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genGoto
	jp	00113$
;	genLabel
00111$:
	C$actor.c$319$1_0$401	= .
	.globl	C$actor.c$319$1_0$401
;src\core\actor.c:319: return NULL;
;	genRet
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x0000
;	genLabel
00114$:
	C$actor.c$320$1_0$401	= .
	.globl	C$actor.c$320$1_0$401
;src\core\actor.c:320: }
;	genEndFunction
;	adjustStack by 3
	add	sp, #3
	C$actor.c$320$1_0$401	= .
	.globl	C$actor.c$320$1_0$401
	XG$actor_at_tile$0$0	= .
	.globl	XG$actor_at_tile$0$0
	ret
	G$actor_in_front_of_player$0$0	= .
	.globl	G$actor_in_front_of_player$0$0
	C$actor.c$322$1_0$406	= .
	.globl	C$actor.c$322$1_0$406
;src\core\actor.c:322: actor_t *actor_in_front_of_player(UBYTE grid_size, UBYTE inc_noclip) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actor_in_front_of_player
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 10 bytes.
	b_actor_in_front_of_player	= 255
_actor_in_front_of_player::
;	adjustStack by -10
	add	sp, #-10
	C$actor.c$324$1_0$406	= .
	.globl	C$actor.c$324$1_0$406
;src\core\actor.c:324: offset.x = PLAYER.pos.x;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 1
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign (pointer)
;	genMove_o size 2
	inc	sp
	inc	sp
	push	bc
;	genMove_o size 0
	C$actor.c$325$1_0$406	= .
	.globl	C$actor.c$325$1_0$406
;src\core\actor.c:325: offset.y = PLAYER.pos.y;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 3
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign (pointer)
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;src\core\actor.c:326: point_translate_dir_word(&offset, PLAYER.dir, grid_size << 4);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#16
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genLeftShift
;	genMove_o size 2
	ld	a, c
;	genMove_o size 0
	add	a, a
	rl	b
	add	a, a
	rl	b
	add	a, a
	rl	b
	add	a, a
	rl	b
;	genCast
;	AOP_STK for _actor_in_front_of_player_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 5
;	genPointerGet
	ld	c, (hl)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;include/math.h:104: point->x += (int16_t)(dir_lookup[dir].x * speed);
;	genPointerGet
;	AOP_STK for _actor_in_front_of_player_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#1
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl), a
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	b, #0x00
;	genLeftShift
;	AOP_STK for _actor_in_front_of_player_sloc2_1_0
	sla	c
	rl	b
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genPlus
;	AOP_STK for _actor_in_front_of_player_sloc2_1_0
;fetchPairLong
;fetchLitPair	de
	ld	de, #_dir_lookup
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genSend
;	AOP_STK for _actor_in_front_of_player_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	__mulint
;	genMove_o size 2
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _actor_in_front_of_player_sloc1_1_0
;fetchPairLong
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	genMove_o size 2
	inc	sp
	inc	sp
	push	bc
;	genMove_o size 0
;include/math.h:105: point->y += (int16_t)(dir_lookup[dir].y * speed);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _actor_in_front_of_player_sloc3_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#3
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _actor_in_front_of_player_sloc2_1_0
;fetchPairLong
;fetchLitPair	de
	ld	de, #_dir_lookup
;fetchPairLong
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
; common peephole 69 incremented in hl instead of bc.
	inc	hl
	ld	c, l
	ld	b, h
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genSend
;	AOP_STK for _actor_in_front_of_player_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	__mulint
;	genMove_o size 2
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _actor_in_front_of_player_sloc3_1_0
;fetchPairLong
	ldhl	sp,	#8
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$actor.c$327$1_0$406	= .
	.globl	C$actor.c$327$1_0$406
;src\core\actor.c:327: return actor_overlapping_bb(&PLAYER.bounds, &offset, &PLAYER, inc_noclip);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#17
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	push	de
;	genIpush
;	genMove_o size 2
	ld	hl, #3
	add	hl, sp
;	genMove_o size 2
;	genMove_o size 0
; common peephole 29 pushed hl directly instead of going through de.
	push	hl
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_actors + 6)
	push	de
;	genCall
	ld	e, #b_actor_overlapping_bb
	ld	hl, #_actor_overlapping_bb
	call	___sdcc_bcall_ehl
;	adjustStack by 7
;	genMove_o size 2
;	genRet
;	genMove_o size 2
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$actor.c$328$1_0$406	= .
	.globl	C$actor.c$328$1_0$406
;src\core\actor.c:328: }
;	genEndFunction
;	adjustStack by 10
; peephole sp9 combined SP additions
	add	sp, #17
	C$actor.c$328$1_0$406	= .
	.globl	C$actor.c$328$1_0$406
	XG$actor_in_front_of_player$0$0	= .
	.globl	XG$actor_in_front_of_player$0$0
	ret
	G$actor_overlapping_player$0$0	= .
	.globl	G$actor_overlapping_player$0$0
	C$actor.c$330$1_0$411	= .
	.globl	C$actor.c$330$1_0$411
;src\core\actor.c:330: actor_t *actor_overlapping_player(UBYTE inc_noclip) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actor_overlapping_player
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
	b_actor_overlapping_player	= 255
_actor_overlapping_player::
;	adjustStack by -8
	add	sp, #-8
	C$actor.c$331$1_0$411	= .
	.globl	C$actor.c$331$1_0$411
;src\core\actor.c:331: actor_t *actor = PLAYER.prev;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _actor_overlapping_player_sloc0_1_0
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_actors + 50)
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;src\core\actor.c:333: while (actor) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00106$:
;	genIfx
;	AOP_STK for _actor_overlapping_player_sloc0_1_0
	ldhl	sp,	#1
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00108$
	C$actor.c$334$2_0$412	= .
	.globl	C$actor.c$334$2_0$412
;src\core\actor.c:334: if (!inc_noclip && !actor->collision_enabled) {
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#14
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
;	genAssign
;	AOP_STK for _actor_overlapping_player_sloc0_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	genUnpackBits
	ld	a, (hl)
	swap	a
	rrca
;	genIfx
	and	a,#0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
	C$actor.c$335$3_0$413	= .
	.globl	C$actor.c$335$3_0$413
;src\core\actor.c:335: actor = actor->prev;
;	genPlus
;	AOP_STK for _actor_overlapping_player_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _actor_overlapping_player_sloc0_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$actor.c$336$3_0$413	= .
	.globl	C$actor.c$336$3_0$413
;src\core\actor.c:336: continue;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00102$:
;src\core\actor.c:339: if (bb_intersects(&PLAYER.bounds, &PLAYER.pos, &actor->bounds, &actor->pos)) {
;	genPlus
;	AOP_STK for _actor_overlapping_player_sloc0_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
	inc	bc
;	genPlus
;	AOP_STK for _actor_overlapping_player_sloc0_1_0
;	AOP_STK for _actor_overlapping_player_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	AOP_STK for _actor_overlapping_player_sloc2_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genAssign
;	AOP_STK for _actor_overlapping_player_sloc1_1_0
;	AOP_STK for _actor_overlapping_player_sloc3_1_0
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	ld	(hl), a
	ldhl	sp,	#7
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	ld	(hl), a
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;include/collision.h:51: if (((offset_b->x >> 4) + bb_b->left   > (offset_a->x >> 4) + bb_a->right) ||
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genPointerGet
;	AOP_STK for _actor_overlapping_player_sloc1_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genRightShift
;fetchPairLong
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;	genPlus
;fetchLitPair	de
	ld	de, #(_actors + 6) + 1
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, de
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
	jr	Z, 00160$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00161$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00161$
00160$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00161$
	scf
00161$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00110$
;	skipping generated iCode
;include/collision.h:52: ((offset_b->x >> 4) + bb_b->right  < (offset_a->x >> 4) + bb_a->left)) return FALSE;
;	genPointerGet
;	AOP_STK for _actor_overlapping_player_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genRightShift
;fetchPairLong
;	genPlus
;	AOP_STK for _actor_overlapping_player_sloc3_1_0
;	genMove_o size 2
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96b move inc hl before ld b, a
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before ld a, (de)
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _actor_overlapping_player_sloc4_1_0
;fetchPairLong
	ld	l, e
	ld	h, d
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
;	genMove_o size 0
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genPointerGet
	ld	a, (#(_actors + 6) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCmpLt
;	AOP_STK for _actor_overlapping_player_sloc4_1_0
	ldhl	sp,	#6
; common peephole 96b move inc hl before sub a, c
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through e.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00162$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00163$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00163$
00162$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00163$
	scf
00163$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00111$
;	skipping generated iCode
;	genLabel
00110$:
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genGoto
	jp	00115$
;	genLabel
00111$:
;include/collision.h:53: if (((offset_b->y >> 4) + bb_b->top    > (offset_a->y >> 4) + bb_a->bottom) ||
;	genPlus
;	AOP_STK for _actor_overlapping_player_sloc2_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genPlus
;	AOP_STK for _actor_overlapping_player_sloc3_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genRightShift
;fetchPairLong
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;	genPlus
;fetchLitPair	de
	ld	de, #(_actors + 6) + 3
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, de
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
	jr	Z, 00164$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00165$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00165$
00164$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00165$
	scf
00165$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00113$
;	skipping generated iCode
;include/collision.h:54: ((offset_b->y >> 4) + bb_b->bottom < (offset_a->y >> 4) + bb_a->top)) return FALSE;
;	genPlus
;	AOP_STK for _actor_overlapping_player_sloc2_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genPlus
;	AOP_STK for _actor_overlapping_player_sloc3_1_0
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
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genRightShift
;fetchPairLong
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;	genPlus
;fetchLitPair	de
	ld	de, #(_actors + 6) + 2
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, de
;	genCmpLt
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
	jr	Z, 00166$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00167$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00167$
00166$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00167$
	scf
00167$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00114$
;	skipping generated iCode
;	genLabel
00113$:
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;	genLabel
00114$:
;include/collision.h:55: return TRUE;
;	genAssign
;	genMove_o size 1
	ld	a, #0x01
;src\core\actor.c:339: if (bb_intersects(&PLAYER.bounds, &PLAYER.pos, &actor->bounds, &actor->pos)) {
;	genLabel
00115$:
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
	C$actor.c$340$3_0$414	= .
	.globl	C$actor.c$340$3_0$414
;src\core\actor.c:340: return actor;
;	genRet
;	AOP_STK for _actor_overlapping_player_sloc0_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;	genLabel
00105$:
	C$actor.c$343$2_0$412	= .
	.globl	C$actor.c$343$2_0$412
;src\core\actor.c:343: actor = actor->prev;
;	genPlus
;	AOP_STK for _actor_overlapping_player_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _actor_overlapping_player_sloc0_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
	jp	00106$
;	genLabel
00108$:
	C$actor.c$346$1_0$411	= .
	.globl	C$actor.c$346$1_0$411
;src\core\actor.c:346: return NULL;
;	genRet
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x0000
;	genLabel
00116$:
	C$actor.c$347$1_0$411	= .
	.globl	C$actor.c$347$1_0$411
;src\core\actor.c:347: }
;	genEndFunction
;	adjustStack by 8
	add	sp, #8
	C$actor.c$347$1_0$411	= .
	.globl	C$actor.c$347$1_0$411
	XG$actor_overlapping_player$0$0	= .
	.globl	XG$actor_overlapping_player$0$0
	ret
	G$actor_overlapping_bb$0$0	= .
	.globl	G$actor_overlapping_bb$0$0
	C$actor.c$349$1_0$419	= .
	.globl	C$actor.c$349$1_0$419
;src\core\actor.c:349: actor_t *actor_overlapping_bb(bounding_box_t *bb, point16_t *offset, actor_t *ignore, UBYTE inc_noclip) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actor_overlapping_bb
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 19 bytes.
	b_actor_overlapping_bb	= 255
_actor_overlapping_bb::
;	adjustStack by -19
	add	sp, #-19
	C$actor.c$350$1_0$419	= .
	.globl	C$actor.c$350$1_0$419
;src\core\actor.c:350: actor_t *actor = &PLAYER;
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _actor_overlapping_bb_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), #<(_actors)
	inc	hl
	ld	(hl), #>(_actors)
;src\core\actor.c:352: while (actor) {
;	genAssign
;	AOP_STK for 
;	AOP_STK for _actor_overlapping_bb_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#27
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	ldhl	sp,	#28
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	AOP_STK for _actor_overlapping_bb_sloc2_1_0
;	genMove_o size 2
	ldhl	sp,	#25
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
	ldhl	sp,	#26
	ld	a, (hl)
	ldhl	sp,	#5
;	genMove_o size 0
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc2_1_0
;	AOP_STK for _actor_overlapping_bb_sloc3_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
; common peephole 39 replaced 16-bit addition by 8-bit loads and 16-bit increment.
	ld	l, e
	ld	h, d
	inc	hl
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc2_1_0
;	AOP_STK for _actor_overlapping_bb_sloc4_1_0
;fetchPairLong
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	inc	bc
; common peephole 96c move inc hl before inc bc
; common peephole 96c move dec hl before inc bc
; common peephole 156b removed inc hl / dec hl pair.
	inc	bc
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0003
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
	ld	(hl), a
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;	AOP_STK for _actor_overlapping_bb_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	sra	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	sra	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	sra	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	sra	(hl)
	dec	hl
	rr	(hl)
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc2_1_0
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
;	AOP_STK for _actor_overlapping_bb_sloc6_1_0
	ld	a, (bc)
;	genMove_o size 1
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00107$:
;	genIfx
;	AOP_STK for _actor_overlapping_bb_sloc0_1_0
	ldhl	sp,	#1
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00109$
	C$actor.c$353$2_0$420	= .
	.globl	C$actor.c$353$2_0$420
;src\core\actor.c:353: if (actor == ignore || (!inc_noclip && !actor->collision_enabled)) {
;	genCmpEq
;	AOP_STK for 
;	AOP_STK for _actor_overlapping_bb_sloc0_1_0
	ldhl	sp,	#29
	ld	a, (hl)
	ldhl	sp,	#0
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00161$
	ldhl	sp,	#30
	ld	a, (hl)
	ldhl	sp,	#1
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00101$
; common peephole 81 removed jp by using inverse jump logic
00161$:
;	skipping generated iCode
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#31
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
;	genAssign
;	AOP_STK for _actor_overlapping_bb_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	l, a
	ld	h, c
;	genUnpackBits
	ld	a, (hl)
	swap	a
	rrca
;	genIfx
	and	a,#0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
;	genLabel
00101$:
	C$actor.c$354$3_0$421	= .
	.globl	C$actor.c$354$3_0$421
;src\core\actor.c:354: actor = actor->prev;
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _actor_overlapping_bb_sloc0_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$actor.c$355$3_0$421	= .
	.globl	C$actor.c$355$3_0$421
;src\core\actor.c:355: continue;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00102$:
;src\core\actor.c:358: if (bb_intersects(bb, offset, &actor->bounds, &actor->pos)) {
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc0_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
	inc	bc
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc0_1_0
;	AOP_STK for _actor_overlapping_bb_sloc7_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#19
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#18
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	AOP_STK for _actor_overlapping_bb_sloc8_1_0
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genAssign
;	AOP_STK for _actor_overlapping_bb_sloc7_1_0
;	AOP_STK for _actor_overlapping_bb_sloc9_1_0
;	genMove_o size 2
	ldhl	sp,	#17
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	ld	(hl), a
	ldhl	sp,	#18
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	ld	(hl), a
;	genMove_o size 0
;include/collision.h:51: if (((offset_b->x >> 4) + bb_b->left   > (offset_a->x >> 4) + bb_a->right) ||
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genPointerGet
;	AOP_STK for _actor_overlapping_bb_sloc7_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#17
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc10_1_0
;fetchPairLong
	ld	l, e
	ld	h, d
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#19
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#18
	ld	(hl), a
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _actor_overlapping_bb_sloc1_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genPointerGet
;	AOP_STK for _actor_overlapping_bb_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCmpGt
;	AOP_STK for _actor_overlapping_bb_sloc10_1_0
	ldhl	sp,	#17
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
	jr	Z, 00162$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00163$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00163$
00162$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00163$
	scf
00163$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00111$
;	skipping generated iCode
;include/collision.h:52: ((offset_b->x >> 4) + bb_b->right  < (offset_a->x >> 4) + bb_a->left)) return FALSE;
;	genPointerGet
;	AOP_STK for _actor_overlapping_bb_sloc8_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#13
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genRightShift
;fetchPairLong
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc9_1_0
;	genMove_o size 2
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96b move inc hl before ld b, a
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before ld a, (de)
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc11_1_0
;fetchPairLong
	ld	l, e
	ld	h, d
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#19
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#18
	ld	(hl), a
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _actor_overlapping_bb_sloc1_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genRightShift
;fetchPairLong
;	genPointerGet
;	AOP_STK for _actor_overlapping_bb_sloc2_1_0
;fetchPairLong
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96b move inc hl before ld b, a
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before ld a, (de)
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
; common peephole 96c move inc hl before rr c
; common peephole 96c move dec hl before rr c
; common peephole 156b removed inc hl / dec hl pair.
	rr	c
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCmpLt
;	AOP_STK for _actor_overlapping_bb_sloc11_1_0
	ldhl	sp,	#17
; common peephole 96b move inc hl before sub a, c
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through e.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00164$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00165$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00165$
00164$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00165$
	scf
00165$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00112$
;	skipping generated iCode
;	genLabel
00111$:
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genGoto
	jp	00116$
;	genLabel
00112$:
;include/collision.h:53: if (((offset_b->y >> 4) + bb_b->top    > (offset_a->y >> 4) + bb_a->bottom) ||
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc8_1_0
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc9_1_0
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc12_1_0
;fetchPairLong
	ld	l, e
	ld	h, d
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#19
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#18
	ld	(hl), a
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _actor_overlapping_bb_sloc4_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;	genCast
;	AOP_STK for _actor_overlapping_bb_sloc5_1_0
;	genMove_o size 2
; common peephole 96b move inc hl before ld b, a
; common peephole 96b move inc hl before sbc a, a
; common peephole 96a move inc hl before rlca
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before ld a, (de)
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (de)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
;	genPlus
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	b, a
;	genCmpGt
;	AOP_STK for _actor_overlapping_bb_sloc12_1_0
	ldhl	sp,	#17
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
	jr	Z, 00166$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00167$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00167$
00166$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00167$
	scf
00167$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00114$
;	skipping generated iCode
;include/collision.h:54: ((offset_b->y >> 4) + bb_b->bottom < (offset_a->y >> 4) + bb_a->top)) return FALSE;
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc8_1_0
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc9_1_0
;	genMove_o size 2
	ldhl	sp,	#15
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
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc13_1_0
;fetchPairLong
	ld	l, e
	ld	h, d
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#19
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#18
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	AOP_STK for _actor_overlapping_bb_sloc6_1_0
;	genMove_o size 0
;	genMove_o size 1
	ldhl	sp,	#12
;	genMove_o size 0
;	genCast
;	AOP_STK for _actor_overlapping_bb_sloc5_1_0
;	genMove_o size 2
; common peephole 96b move dec hl before ld b, a
; common peephole 96b move dec hl before sbc a, a
; common peephole 96a move dec hl before rlca
; common peephole 96b move dec hl before ld c, a
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
; common peephole 96b move dec hl before ld b, a
; common peephole 96b move dec hl before sbc a, a
; common peephole 96a move dec hl before rlca
; common peephole 96b move dec hl before ld c, a
	dec	hl
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
;	genPlus
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	b, a
;	genCmpLt
;	AOP_STK for _actor_overlapping_bb_sloc13_1_0
	ldhl	sp,	#17
; common peephole 96b move inc hl before sub a, c
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through e.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00168$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00169$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00169$
00168$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00169$
	scf
00169$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00115$
;	skipping generated iCode
;	genLabel
00114$:
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;	genLabel
00115$:
;include/collision.h:55: return TRUE;
;	genAssign
;	genMove_o size 1
	ld	a, #0x01
;src\core\actor.c:358: if (bb_intersects(bb, offset, &actor->bounds, &actor->pos)) {
;	genLabel
00116$:
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
	C$actor.c$359$3_0$422	= .
	.globl	C$actor.c$359$3_0$422
;src\core\actor.c:359: return actor;
;	genRet
;	AOP_STK for _actor_overlapping_bb_sloc0_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00117$
;	genLabel
00106$:
	C$actor.c$362$2_0$420	= .
	.globl	C$actor.c$362$2_0$420
;src\core\actor.c:362: actor = actor->prev;
;	genPlus
;	AOP_STK for _actor_overlapping_bb_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _actor_overlapping_bb_sloc0_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
	jp	00107$
;	genLabel
00109$:
	C$actor.c$365$1_0$419	= .
	.globl	C$actor.c$365$1_0$419
;src\core\actor.c:365: return NULL;
;	genRet
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x0000
;	genLabel
00117$:
	C$actor.c$366$1_0$419	= .
	.globl	C$actor.c$366$1_0$419
;src\core\actor.c:366: }
;	genEndFunction
;	adjustStack by 19
	add	sp, #19
	C$actor.c$366$1_0$419	= .
	.globl	C$actor.c$366$1_0$419
	XG$actor_overlapping_bb$0$0	= .
	.globl	XG$actor_overlapping_bb$0$0
	ret
	G$actors_handle_player_collision$0$0	= .
	.globl	G$actors_handle_player_collision$0$0
	C$actor.c$368$1_0$427	= .
	.globl	C$actor.c$368$1_0$427
;src\core\actor.c:368: void actors_handle_player_collision(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function actors_handle_player_collision
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_actors_handle_player_collision	= 255
_actors_handle_player_collision::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$actor.c$369$1_0$427	= .
	.globl	C$actor.c$369$1_0$427
;src\core\actor.c:369: if (player_iframes == 0 && player_collision_actor != NULL) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_player_iframes)
; common peephole 17 loaded a from (#_player_iframes) directly instead of using hl.
	or	a, a
	jp	NZ, 00110$
;	genIfx
;fetchLitPair	hl
	ld	hl, #_player_collision_actor + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00110$
	C$actor.c$370$2_0$428	= .
	.globl	C$actor.c$370$2_0$428
;src\core\actor.c:370: if (player_collision_actor->collision_group) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002f
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
	jp	Z, 00111$
	C$actor.c$372$3_0$429	= .
	.globl	C$actor.c$372$3_0$429
;src\core\actor.c:372: if (PLAYER.script.bank) {
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 37) + 0)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$actor.c$373$4_0$430	= .
	.globl	C$actor.c$373$4_0$430
;src\core\actor.c:373: script_execute(PLAYER.script.bank, PLAYER.script.ptr, 0, 1, (UWORD)(player_collision_actor->collision_group));
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_player_collision_actor
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002f
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genCast
;	AOP_STK for _actors_handle_player_collision_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 38
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genPointerGet
	ld	a, (#(_actors + 37) + 0)
;	genIpush
;	AOP_STK for _actors_handle_player_collision_sloc0_1_0
;	genMove_o size 2
	pop	de
	push	de
;	genMove_o size 0
	push	de
;	genIpush
;	genMove_o size 1
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
	push	bc
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 8
	add	sp, #8
;	genLabel
00102$:
	C$actor.c$376$3_0$429	= .
	.globl	C$actor.c$376$3_0$429
;src\core\actor.c:376: if (player_collision_actor->script.bank) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_player_collision_actor
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0025
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
	C$actor.c$378$4_0$431	= .
	.globl	C$actor.c$378$4_0$431
;src\core\actor.c:378: player_collision_actor->script.ptr, 0, 1, 0);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_player_collision_actor
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0026
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
	C$actor.c$377$4_0$431	= .
	.globl	C$actor.c$377$4_0$431
;src\core\actor.c:377: script_execute(player_collision_actor->script.bank,
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_player_collision_actor
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0025
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 1
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
	push	bc
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 8
	add	sp, #8
;	genLabel
00104$:
	C$actor.c$382$3_0$429	= .
	.globl	C$actor.c$382$3_0$429
;src\core\actor.c:382: player_iframes = PLAYER_HURT_IFRAMES;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_player_iframes
	ld	(hl), #0x14
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;	genLabel
00110$:
	C$actor.c$384$1_0$427	= .
	.globl	C$actor.c$384$1_0$427
;src\core\actor.c:384: } else if (player_iframes != 0) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_player_iframes
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
	C$actor.c$385$2_0$432	= .
	.globl	C$actor.c$385$2_0$432
;src\core\actor.c:385: player_iframes--;
;	genMinus
;fetchLitPair	hl
	dec	(hl)
;	genLabel
00111$:
	C$actor.c$387$1_0$427	= .
	.globl	C$actor.c$387$1_0$427
;src\core\actor.c:387: player_collision_actor = NULL;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_player_collision_actor
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
; common peephole 158 removed unused label 00113$.
	C$actor.c$388$1_0$427	= .
	.globl	C$actor.c$388$1_0$427
;src\core\actor.c:388: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$actor.c$388$1_0$427	= .
	.globl	C$actor.c$388$1_0$427
	XG$actors_handle_player_collision$0$0	= .
	.globl	XG$actors_handle_player_collision$0$0
	ret
	G$check_collision_in_direction$0$0	= .
	.globl	G$check_collision_in_direction$0$0
	C$actor.c$390$1_0$434	= .
	.globl	C$actor.c$390$1_0$434
;src\core\actor.c:390: UWORD check_collision_in_direction(UWORD start_x, UWORD start_y, bounding_box_t *bounds, UWORD end_pos, col_check_dir_e check_dir) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function check_collision_in_direction
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 18 bytes.
	b_check_collision_in_direction	= 255
_check_collision_in_direction::
;	adjustStack by -18
	add	sp, #-18
	C$actor.c$392$1_0$434	= .
	.globl	C$actor.c$392$1_0$434
;src\core\actor.c:392: switch (check_dir) {
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#32
	ld	a, (hl)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00384$.
;	skipping generated iCode
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#32
	ld	a, (hl)
	sub	a, #0x02
	jp	Z,00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00385$.
;	skipping generated iCode
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#32
	ld	a, (hl)
	sub	a, #0x03
	jp	Z,00119$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00386$.
;	skipping generated iCode
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#32
	ld	a, (hl)
	sub	a, #0x04
	jp	Z,00128$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00387$.
;	skipping generated iCode
;	genGoto
	jp	00137$
	C$actor.c$393$2_0$435	= .
	.globl	C$actor.c$393$2_0$435
;src\core\actor.c:393: case CHECK_DIR_LEFT:  // Check left
;	genLabel
00101$:
	C$actor.c$394$2_0$435	= .
	.globl	C$actor.c$394$2_0$435
;src\core\actor.c:394: tx1 = (((start_x >> 4) + bounds->left) >> 3);
;	genRightShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#24
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
	srl	b
	rr	c
;	genAssign
;	AOP_STK for 
;	AOP_STK for _check_collision_in_direction_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#28
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl), a
	ldhl	sp,	#29
	ld	a, (hl)
	ldhl	sp,	#17
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _check_collision_in_direction_sloc0_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
;	genCast
;	genMove_o size 2
	ld	d, a
;	genMove_o size 0
;	genPlus
	ld	a, c
	add	a, e
	ld	c, a
	ld	a, b
	adc	a, d
	ld	b, a
;	genRightShift
;	AOP_STK for _check_collision_in_direction_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#3
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	C$actor.c$395$2_0$435	= .
	.globl	C$actor.c$395$2_0$435
;src\core\actor.c:395: tx2 = (((end_pos >> 4) + bounds->left) >> 3) - 1;
;	genRightShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#30
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
	srl	b
	rr	c
;	genPlus
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, de
;	genRightShift
;fetchPairLong
	ld	c, l
	ld	b, h
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;	genMinus
;	AOP_STK for _check_collision_in_direction_sloc2_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#6
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
	C$actor.c$396$2_0$435	= .
	.globl	C$actor.c$396$2_0$435
;src\core\actor.c:396: ty1 = (((start_y >> 4) + bounds->top) >> 3);
;	genRightShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#26
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
	srl	b
	rr	c
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;	AOP_STK for _check_collision_in_direction_sloc3_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	C$actor.c$397$2_0$435	= .
	.globl	C$actor.c$397$2_0$435
;src\core\actor.c:397: ty2 = (((start_y >> 4) + bounds->bottom) >> 3) + 1;
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#16
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
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc4_1_0
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$actor.c$398$1_0$434	= .
	.globl	C$actor.c$398$1_0$434
;src\core\actor.c:398: while (tx1 != tx2) {
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc1_1_0
;	AOP_STK for _check_collision_in_direction_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#3
	ld	a, (hl)
	ldhl	sp,	#14
	ld	(hl), a
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#15
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00107$:
;	genCmpEq
;	AOP_STK for _check_collision_in_direction_sloc2_1_0
;	AOP_STK for _check_collision_in_direction_sloc5_1_0
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#14
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00388$
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#15
	sub	a, (hl)
	jp	Z,00109$
; common peephole 81 removed jp by using inverse jump logic
00388$:
;	skipping generated iCode
	C$actor.c$399$3_0$436	= .
	.globl	C$actor.c$399$3_0$436
;src\core\actor.c:399: tt = ty1;
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc3_1_0
;	AOP_STK for _check_collision_in_direction_sloc6_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl), a
	ldhl	sp,	#8
	ld	a, (hl)
	ldhl	sp,	#17
	ld	(hl), a
;	genMove_o size 0
	C$actor.c$400$3_0$436	= .
	.globl	C$actor.c$400$3_0$436
;src\core\actor.c:400: while (tt != ty2) {
;	genLabel
00104$:
;	genCmpEq
;	AOP_STK for _check_collision_in_direction_sloc4_1_0
;	AOP_STK for _check_collision_in_direction_sloc6_1_0
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#16
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00389$
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#17
	sub	a, (hl)
	jp	Z,00106$
; common peephole 81 removed jp by using inverse jump logic
00389$:
;	skipping generated iCode
;src\core\actor.c:401: if (tile_at(tx1, tt) & COLLISION_RIGHT) {
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc6_1_0
;	AOP_STK for _check_collision_in_direction_sloc7_1_0
;	genMove_o size 1
	ldhl	sp,	#16
	ld	a, (hl)
	ldhl	sp,	#11
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#14
;	genMove_o size 0
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc8_1_0
;	genMove_o size 1
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96b move dec hl before ld c, a
	dec	hl
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
; common peephole 1 removed dead load from a into c.
; common peephole 176a remove unnecessary load back
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00141$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _check_collision_in_direction_sloc7_1_0
	ldhl	sp,	#11
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00141$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc9_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#13
	ld	(hl), a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc7_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	__mulint
;	genMove_o size 2
;	genPlus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_collision_ptr
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
;	AOP_STK for _check_collision_in_direction_sloc8_1_0
;fetchPairLong
	ldhl	sp,	#12
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _check_collision_in_direction_sloc9_1_0
;	genMove_o size 1
	ldhl	sp,	#13
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00142$
;	genLabel
00141$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\core\actor.c:401: if (tile_at(tx1, tt) & COLLISION_RIGHT) {
;	genLabel
00142$:
;	genAnd
	bit	3, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00390$.
;	skipping generated iCode
	C$actor.c$402$5_0$438	= .
	.globl	C$actor.c$402$5_0$438
;src\core\actor.c:402: return ((tx1 + 1) << 7) - (bounds->left << 4);
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genLeftShift
	xor	a, a
	rr	b
	ld	b, c
	rr	b
	rra
	ld	c, a
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#28
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genRet
;	genMove_o size 2
	jp	00158$
;	genLabel
00103$:
	C$actor.c$404$4_0$437	= .
	.globl	C$actor.c$404$4_0$437
;src\core\actor.c:404: tt++;
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc6_1_0
	ldhl	sp,	#16
	inc	(hl)
	jp	NZ,00104$
; common peephole 84 jumped to 00104$ directly instead of via 00391$.
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00391$.
;	genGoto
	jp	00104$
;	genLabel
00106$:
	C$actor.c$406$3_0$436	= .
	.globl	C$actor.c$406$3_0$436
;src\core\actor.c:406: tx1--;
;	genMinus
;	AOP_STK for _check_collision_in_direction_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#14
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96c move dec hl before dec de
	ld	a, (hl-)
	ld	d, a
; sm83 peephole 3 used ldd to decrement hl after load
	dec	de
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc5_1_0
;	AOP_STK for _check_collision_in_direction_sloc1_1_0
;	genMove_o size 2
	ld	a, d
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#15
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00107$
;	genLabel
00109$:
	C$actor.c$408$2_0$435	= .
	.globl	C$actor.c$408$2_0$435
;src\core\actor.c:408: return end_pos;
;	genRet
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#30
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
	jp	00158$
	C$actor.c$409$2_0$435	= .
	.globl	C$actor.c$409$2_0$435
;src\core\actor.c:409: case CHECK_DIR_RIGHT:  // Check right
;	genLabel
00110$:
	C$actor.c$410$2_0$435	= .
	.globl	C$actor.c$410$2_0$435
;src\core\actor.c:410: tx1 = (((start_x >> 4) + bounds->right) >> 3);
;	genRightShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#24
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
;	genAssign
;	AOP_STK for 
;	AOP_STK for _check_collision_in_direction_sloc10_1_0
;	genMove_o size 2
	ldhl	sp,	#28
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl), a
	ldhl	sp,	#29
	ld	a, (hl)
	ldhl	sp,	#17
;	genMove_o size 0
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc10_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
	sbc	a, a
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genPlus
	ld	a, e
	add	a, c
	ld	e, a
	ld	a, d
	adc	a, b
	ld	d, a
;	genRightShift
;	AOP_STK for _check_collision_in_direction_sloc11_1_0
;	genMove_o size 2
	ldhl	sp,	#3
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	C$actor.c$411$2_0$435	= .
	.globl	C$actor.c$411$2_0$435
;src\core\actor.c:411: tx2 = (((end_pos >> 4) + bounds->right) >> 3) + 1;
;	genRightShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#30
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
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
;	genRightShift
;fetchPairLong
	ld	c, l
	ld	b, h
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc12_1_0
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#5
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$actor.c$412$2_0$435	= .
	.globl	C$actor.c$412$2_0$435
;src\core\actor.c:412: ty1 = (((start_y >> 4) + bounds->top) >> 3);
;	genRightShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#26
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
	srl	b
	rr	c
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc10_1_0
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;	AOP_STK for _check_collision_in_direction_sloc13_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	C$actor.c$413$2_0$435	= .
	.globl	C$actor.c$413$2_0$435
;src\core\actor.c:413: ty2 = (((start_y >> 4) + bounds->bottom) >> 3) + 1;
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc10_1_0
;	genMove_o size 2
	ldhl	sp,	#16
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
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc14_1_0
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$actor.c$414$1_0$434	= .
	.globl	C$actor.c$414$1_0$434
;src\core\actor.c:414: while (tx1 != tx2) {
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc11_1_0
;	AOP_STK for _check_collision_in_direction_sloc15_1_0
;	genMove_o size 2
	ldhl	sp,	#3
	ld	a, (hl)
	ldhl	sp,	#14
	ld	(hl), a
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#15
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00116$:
;	genCmpEq
;	AOP_STK for _check_collision_in_direction_sloc12_1_0
;	AOP_STK for _check_collision_in_direction_sloc15_1_0
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#14
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00392$
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#15
	sub	a, (hl)
	jp	Z,00118$
; common peephole 81 removed jp by using inverse jump logic
00392$:
;	skipping generated iCode
	C$actor.c$415$3_0$439	= .
	.globl	C$actor.c$415$3_0$439
;src\core\actor.c:415: tt = ty1;
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc13_1_0
;	AOP_STK for _check_collision_in_direction_sloc16_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl), a
	ldhl	sp,	#8
	ld	a, (hl)
	ldhl	sp,	#17
	ld	(hl), a
;	genMove_o size 0
	C$actor.c$416$3_0$439	= .
	.globl	C$actor.c$416$3_0$439
;src\core\actor.c:416: while (tt != ty2) {
;	genLabel
00113$:
;	genCmpEq
;	AOP_STK for _check_collision_in_direction_sloc14_1_0
;	AOP_STK for _check_collision_in_direction_sloc16_1_0
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#16
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00393$
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#17
	sub	a, (hl)
	jp	Z,00115$
; common peephole 81 removed jp by using inverse jump logic
00393$:
;	skipping generated iCode
;src\core\actor.c:417: if (tile_at(tx1, tt) & COLLISION_LEFT) {
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc16_1_0
;	AOP_STK for _check_collision_in_direction_sloc17_1_0
;	genMove_o size 1
	ldhl	sp,	#16
	ld	a, (hl)
	ldhl	sp,	#11
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc15_1_0
;	genMove_o size 1
	ldhl	sp,	#14
;	genMove_o size 0
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc18_1_0
;	genMove_o size 1
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96b move dec hl before ld c, a
	dec	hl
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
; common peephole 1 removed dead load from a into c.
; common peephole 176a remove unnecessary load back
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00146$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _check_collision_in_direction_sloc17_1_0
	ldhl	sp,	#11
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00146$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc19_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#13
	ld	(hl), a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc17_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	__mulint
;	genMove_o size 2
;	genPlus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_collision_ptr
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
;	AOP_STK for _check_collision_in_direction_sloc18_1_0
;fetchPairLong
	ldhl	sp,	#12
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _check_collision_in_direction_sloc19_1_0
;	genMove_o size 1
	ldhl	sp,	#13
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00147$
;	genLabel
00146$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\core\actor.c:417: if (tile_at(tx1, tt) & COLLISION_LEFT) {
;	genLabel
00147$:
;	genAnd
	bit	2, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00394$.
;	skipping generated iCode
	C$actor.c$418$5_0$441	= .
	.globl	C$actor.c$418$5_0$441
;src\core\actor.c:418: return (tx1 << 7) - ((bounds->right + 1) << 4);
;	genLeftShift
;	AOP_STK for _check_collision_in_direction_sloc11_1_0
;	genMove_o size 2
	ldhl	sp,	#3
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	add	a, a
	rl	b
	add	a, a
	rl	b
	add	a, a
	rl	b
	add	a, a
	rl	b
	add	a, a
	rl	b
	add	a, a
	rl	b
	add	a, a
	rl	b
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#28
	ld	c, (hl)
	inc	hl
	ld	e, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 0
	push	af
;	genMove_o size 1
	ld	a, l
;	genMove_o size 0
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
; common peephole 96d move inc hl before pop (af)
	inc	hl
	pop	af
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genMinus
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genRet
;	genMove_o size 2
	jp	00158$
;	genLabel
00112$:
	C$actor.c$420$4_0$440	= .
	.globl	C$actor.c$420$4_0$440
;src\core\actor.c:420: tt++;
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc16_1_0
	ldhl	sp,	#16
	inc	(hl)
	jp	NZ,00113$
; common peephole 84 jumped to 00113$ directly instead of via 00396$.
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00396$.
;	genGoto
	jp	00113$
;	genLabel
00115$:
	C$actor.c$422$3_0$439	= .
	.globl	C$actor.c$422$3_0$439
;src\core\actor.c:422: tx1++;
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc15_1_0
	ldhl	sp,	#14
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00397$
	inc	hl
	inc	(hl)
00397$:
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc15_1_0
;	AOP_STK for _check_collision_in_direction_sloc11_1_0
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#15
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00116$
;	genLabel
00118$:
	C$actor.c$424$2_0$435	= .
	.globl	C$actor.c$424$2_0$435
;src\core\actor.c:424: return end_pos;
;	genRet
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#30
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
	jp	00158$
	C$actor.c$425$2_0$435	= .
	.globl	C$actor.c$425$2_0$435
;src\core\actor.c:425: case CHECK_DIR_UP:  // Check up
;	genLabel
00119$:
	C$actor.c$426$2_0$435	= .
	.globl	C$actor.c$426$2_0$435
;src\core\actor.c:426: ty1 = (((start_y >> 4) + bounds->top) >> 3);
;	genRightShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#26
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genAssign
;	AOP_STK for 
;	AOP_STK for _check_collision_in_direction_sloc20_1_0
;	genMove_o size 2
; common peephole 96c move inc hl before rr e
; common peephole 96c move inc hl before srl d
; common peephole 96c move inc hl before rr e
; common peephole 96c move inc hl before srl d
; common peephole 96c move inc hl before rr e
; common peephole 96c move inc hl before srl d
; common peephole 96c move inc hl before rr e
; common peephole 96c move inc hl before srl d
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl), a
	ldhl	sp,	#29
	ld	a, (hl)
	ldhl	sp,	#17
;	genMove_o size 0
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc20_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
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
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
	sbc	a, a
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genPlus
	ld	a, e
	add	a, c
	ld	e, a
	ld	a, d
	adc	a, b
	ld	d, a
;	genRightShift
;	AOP_STK for _check_collision_in_direction_sloc21_1_0
;	genMove_o size 2
	inc	sp
	inc	sp
	push	de
;	genMove_o size 0
	ldhl	sp,	#1
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	C$actor.c$427$2_0$435	= .
	.globl	C$actor.c$427$2_0$435
;src\core\actor.c:427: ty2 = (((end_pos >> 4) + bounds->top) >> 3) - 1;
;	genRightShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#30
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
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
;	genRightShift
;fetchPairLong
	ld	c, l
	ld	b, h
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;	genMinus
;	AOP_STK for _check_collision_in_direction_sloc22_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#3
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
	C$actor.c$428$2_0$435	= .
	.globl	C$actor.c$428$2_0$435
;src\core\actor.c:428: tx1 = (((start_x >> 4) + bounds->left) >> 3);
;	genRightShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#24
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
	srl	b
	rr	c
;	genPointerGet
;	AOP_STK for _check_collision_in_direction_sloc20_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#16
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;	AOP_STK for _check_collision_in_direction_sloc23_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	C$actor.c$429$2_0$435	= .
	.globl	C$actor.c$429$2_0$435
;src\core\actor.c:429: tx2 = (((start_x >> 4) + bounds->right) >> 3) + 1;
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc20_1_0
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	ld	b, h
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc24_1_0
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$actor.c$430$1_0$434	= .
	.globl	C$actor.c$430$1_0$434
;src\core\actor.c:430: while (ty1 != ty2) {
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc21_1_0
;	AOP_STK for _check_collision_in_direction_sloc25_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#14
	ld	(hl), a
	ldhl	sp,	#1
	ld	a, (hl)
	ldhl	sp,	#15
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00125$:
;	genCmpEq
;	AOP_STK for _check_collision_in_direction_sloc22_1_0
;	AOP_STK for _check_collision_in_direction_sloc25_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	ldhl	sp,	#14
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00398$
	ldhl	sp,	#3
	ld	a, (hl)
	ldhl	sp,	#15
	sub	a, (hl)
	jp	Z,00127$
; common peephole 81 removed jp by using inverse jump logic
00398$:
;	skipping generated iCode
	C$actor.c$431$3_0$442	= .
	.globl	C$actor.c$431$3_0$442
;src\core\actor.c:431: tt = tx1;
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc23_1_0
;	AOP_STK for _check_collision_in_direction_sloc26_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl), a
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#17
	ld	(hl), a
;	genMove_o size 0
	C$actor.c$432$3_0$442	= .
	.globl	C$actor.c$432$3_0$442
;src\core\actor.c:432: while (tt != tx2) {
;	genLabel
00122$:
;	genCmpEq
;	AOP_STK for _check_collision_in_direction_sloc24_1_0
;	AOP_STK for _check_collision_in_direction_sloc26_1_0
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#16
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00399$
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#17
	sub	a, (hl)
	jp	Z,00124$
; common peephole 81 removed jp by using inverse jump logic
00399$:
;	skipping generated iCode
;src\core\actor.c:433: if (tile_at(tt, ty1) & COLLISION_BOTTOM) {
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc25_1_0
;	AOP_STK for _check_collision_in_direction_sloc27_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc26_1_0
;	genMove_o size 1
	ldhl	sp,	#16
	ld	c, (hl)
;	genMove_o size 0
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc28_1_0
;	genMove_o size 1
	ldhl	sp,	#8
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
	ld	a,c
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00151$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _check_collision_in_direction_sloc27_1_0
	ldhl	sp,	#13
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00151$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc29_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#9
	ld	(hl), a
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc30_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	ldhl	sp,	#10
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc27_1_0
;	AOP_STK for _check_collision_in_direction_sloc31_1_0
;	genMove_o size 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	inc	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genSend
;	AOP_STK for _check_collision_in_direction_sloc30_1_0
;	genMove_o size 2
	ldhl	sp,	#10
;	genMove_o size 0
;	genSend
;	AOP_STK for _check_collision_in_direction_sloc31_1_0
;	genMove_o size 2
; common peephole 96b move inc hl before ld b, #0x00
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld b, #0x00
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	ld	b, #0x00
	ld	e, (hl)
	ld	d, #0x00
;	genMove_o size 0
;	genCall
	call	__mulint
;	genMove_o size 2
;	genPlus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_collision_ptr
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
;	AOP_STK for _check_collision_in_direction_sloc28_1_0
;fetchPairLong
	ldhl	sp,	#8
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _check_collision_in_direction_sloc29_1_0
;	genMove_o size 1
	ldhl	sp,	#9
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00152$
;	genLabel
00151$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\core\actor.c:433: if (tile_at(tt, ty1) & COLLISION_BOTTOM) {
;	genLabel
00152$:
;	genAnd
	bit	1, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00121$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00400$.
;	skipping generated iCode
	C$actor.c$434$5_0$444	= .
	.globl	C$actor.c$434$5_0$444
;src\core\actor.c:434: return ((ty1 + 1) << 7) - ((bounds->top) << 4);
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc21_1_0
;	AOP_STK for _check_collision_in_direction_sloc32_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
; common peephole 39 replaced 16-bit addition by 8-bit loads and 16-bit increment.
	ld	l, e
	ld	h, d
	inc	hl
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#18
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#17
;	genMove_o size 0
;	genLeftShift
;	AOP_STK for _check_collision_in_direction_sloc32_1_0
;	AOP_STK for _check_collision_in_direction_sloc33_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl)
	ldhl	sp,	#12
	ld	(hl), a
	ldhl	sp,	#17
	ld	a, (hl)
	ldhl	sp,	#13
	ld	(hl), a
;	genMove_o size 0
	ld	a, #0x07
00401$:
	ldhl	sp,	#12
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00401$
;	genAssign
;	AOP_STK for 
;	AOP_STK for _check_collision_in_direction_sloc34_1_0
;	genMove_o size 2
	ldhl	sp,	#28
	ld	a, (hl)
	ldhl	sp,	#14
	ld	(hl), a
	ldhl	sp,	#29
	ld	a, (hl)
	ldhl	sp,	#15
;	genMove_o size 0
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc34_1_0
;	AOP_STK for _check_collision_in_direction_sloc35_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0002
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#18
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#17
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _check_collision_in_direction_sloc35_1_0
;	AOP_STK for _check_collision_in_direction_sloc36_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	(hl), a
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc36_1_0
;	AOP_STK for _check_collision_in_direction_sloc37_1_0
;	genMove_o size 0
;	genMove_o size 1
;	genMove_o size 0
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
; common peephole 96b move inc hl before sbc a, a
; common peephole 96a move inc hl before rlca
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	rlca
	sbc	a, a
;	genLeftShift
;	AOP_STK for _check_collision_in_direction_sloc37_1_0
;	AOP_STK for _check_collision_in_direction_sloc38_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	ld	(hl), a
	ldhl	sp,	#17
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	ld	(hl), a
;	genMove_o size 0
	ld	a, #0x04
00402$:
	ldhl	sp,	#14
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00402$
;	genMinus
;	AOP_STK for _check_collision_in_direction_sloc33_1_0
;	AOP_STK for _check_collision_in_direction_sloc38_1_0
;	AOP_STK for _check_collision_in_direction_sloc39_1_0
;fetchPairLong
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;fetchPairLong
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#17
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genRet
;	AOP_STK for _check_collision_in_direction_sloc39_1_0
;	genMove_o size 2
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
	jp	00158$
;	genLabel
00121$:
	C$actor.c$436$4_0$443	= .
	.globl	C$actor.c$436$4_0$443
;src\core\actor.c:436: tt++;
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc26_1_0
	ldhl	sp,	#16
	inc	(hl)
	jp	NZ,00122$
; common peephole 84 jumped to 00122$ directly instead of via 00403$.
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00403$.
;	genGoto
	jp	00122$
;	genLabel
00124$:
	C$actor.c$438$3_0$442	= .
	.globl	C$actor.c$438$3_0$442
;src\core\actor.c:438: ty1--;
;	genMinus
;	AOP_STK for _check_collision_in_direction_sloc25_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#14
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96c move dec hl before dec de
	ld	a, (hl-)
	ld	d, a
; sm83 peephole 3 used ldd to decrement hl after load
	dec	de
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc25_1_0
;	AOP_STK for _check_collision_in_direction_sloc21_1_0
;	genMove_o size 2
	ld	a, d
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#15
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00125$
;	genLabel
00127$:
	C$actor.c$440$2_0$435	= .
	.globl	C$actor.c$440$2_0$435
;src\core\actor.c:440: return end_pos;
;	genRet
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#30
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
	jp	00158$
	C$actor.c$441$2_0$435	= .
	.globl	C$actor.c$441$2_0$435
;src\core\actor.c:441: case CHECK_DIR_DOWN:  // Check down
;	genLabel
00128$:
	C$actor.c$442$2_0$435	= .
	.globl	C$actor.c$442$2_0$435
;src\core\actor.c:442: ty1 = (((start_y >> 4) + bounds->bottom) >> 3);
;	genRightShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#26
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genAssign
;	AOP_STK for 
;	AOP_STK for _check_collision_in_direction_sloc40_1_0
;	genMove_o size 2
; common peephole 96c move inc hl before rr e
; common peephole 96c move inc hl before srl d
; common peephole 96c move inc hl before rr e
; common peephole 96c move inc hl before srl d
; common peephole 96c move inc hl before rr e
; common peephole 96c move inc hl before srl d
; common peephole 96c move inc hl before rr e
; common peephole 96c move inc hl before srl d
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl), a
	ldhl	sp,	#29
	ld	a, (hl)
	ldhl	sp,	#17
;	genMove_o size 0
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc40_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
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
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
	sbc	a, a
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genPlus
	ld	a, e
	add	a, c
	ld	e, a
	ld	a, d
	adc	a, b
	ld	d, a
;	genRightShift
;	AOP_STK for _check_collision_in_direction_sloc41_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	C$actor.c$443$2_0$435	= .
	.globl	C$actor.c$443$2_0$435
;src\core\actor.c:443: ty2 = (((end_pos >> 4) + bounds->bottom) >> 3) + 1;
;	genRightShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#30
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
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
;	genRightShift
;fetchPairLong
	ld	c, l
	ld	b, h
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc42_1_0
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$actor.c$444$2_0$435	= .
	.globl	C$actor.c$444$2_0$435
;src\core\actor.c:444: tx1 = (((start_x >> 4) + bounds->left) >> 3);
;	genRightShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#24
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
	srl	b
	rr	c
;	genPointerGet
;	AOP_STK for _check_collision_in_direction_sloc40_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#16
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;	AOP_STK for _check_collision_in_direction_sloc43_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	inc	hl
	srl	(hl)
	dec	hl
	rr	(hl)
	C$actor.c$445$2_0$435	= .
	.globl	C$actor.c$445$2_0$435
;src\core\actor.c:445: tx2 = (((start_x >> 4) + bounds->right) >> 3) + 1;
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc40_1_0
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	add	hl, bc
;	genRightShift
;fetchPairLong
	ld	c, l
	ld	b, h
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc44_1_0
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$actor.c$446$1_0$434	= .
	.globl	C$actor.c$446$1_0$434
;src\core\actor.c:446: while (ty1 != ty2) {
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc41_1_0
;	AOP_STK for _check_collision_in_direction_sloc45_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#14
	ld	(hl), a
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#15
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00134$:
;	genCmpEq
;	AOP_STK for _check_collision_in_direction_sloc42_1_0
;	AOP_STK for _check_collision_in_direction_sloc45_1_0
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#14
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00404$
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#15
	sub	a, (hl)
	jp	Z,00136$
; common peephole 81 removed jp by using inverse jump logic
00404$:
;	skipping generated iCode
	C$actor.c$447$3_0$445	= .
	.globl	C$actor.c$447$3_0$445
;src\core\actor.c:447: tt = tx1;
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc43_1_0
;	AOP_STK for _check_collision_in_direction_sloc46_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl), a
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#17
	ld	(hl), a
;	genMove_o size 0
	C$actor.c$448$3_0$445	= .
	.globl	C$actor.c$448$3_0$445
;src\core\actor.c:448: while (tt != tx2) {
;	genLabel
00131$:
;	genCmpEq
;	AOP_STK for _check_collision_in_direction_sloc44_1_0
;	AOP_STK for _check_collision_in_direction_sloc46_1_0
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#16
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00405$
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#17
	sub	a, (hl)
	jp	Z,00133$
; common peephole 81 removed jp by using inverse jump logic
00405$:
;	skipping generated iCode
;src\core\actor.c:449: if (tile_at(tt, ty1) & COLLISION_TOP) {
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc45_1_0
;	genMove_o size 1
	ldhl	sp,	#14
;	genMove_o size 0
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc46_1_0
;	genMove_o size 1
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld e, a
	inc	hl
	ld	e, a
	ld	c, (hl)
;	genMove_o size 0
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc47_1_0
;	genMove_o size 1
	ldhl	sp,	#12
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
	ld	a,c
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00156$
;	skipping generated iCode
;	genCmpLt
	ld	a, e
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00156$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc48_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#13
	ld	(hl), a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	c, (hl)
;	genMove_o size 1
;	genCast
;	genMove_o size 1
;	genMove_o size 1
; common peephole 103b loaded constant in b first and used it next
	ld	b, #0x00
	ld	d, b
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	__mulint
;	genMove_o size 2
;	genPlus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_collision_ptr
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
;	AOP_STK for _check_collision_in_direction_sloc47_1_0
;fetchPairLong
	ldhl	sp,	#12
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _check_collision_in_direction_sloc48_1_0
;	genMove_o size 1
	ldhl	sp,	#13
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00157$
;	genLabel
00156$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	a, #0x0f
;src\core\actor.c:449: if (tile_at(tt, ty1) & COLLISION_TOP) {
;	genLabel
00157$:
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00130$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00406$.
;	skipping generated iCode
	C$actor.c$450$5_0$447	= .
	.globl	C$actor.c$450$5_0$447
;src\core\actor.c:450: return ((ty1) << 7) - ((bounds->bottom + 1) << 4);
;	genLeftShift
;	AOP_STK for _check_collision_in_direction_sloc41_1_0
;	AOP_STK for _check_collision_in_direction_sloc49_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl), a
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#17
	ld	(hl), a
;	genMove_o size 0
	ld	a, #0x07
00407$:
	ldhl	sp,	#16
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00407$
;	genAssign
;	AOP_STK for 
;	AOP_STK for _check_collision_in_direction_sloc50_1_0
;	genMove_o size 2
	ldhl	sp,	#28
	ld	a, (hl)
	ldhl	sp,	#12
	ld	(hl), a
	ldhl	sp,	#29
	ld	a, (hl)
	ldhl	sp,	#13
;	genMove_o size 0
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc50_1_0
;	AOP_STK for _check_collision_in_direction_sloc51_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0003
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#16
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#15
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _check_collision_in_direction_sloc51_1_0
;	AOP_STK for _check_collision_in_direction_sloc52_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genCast
;	AOP_STK for _check_collision_in_direction_sloc52_1_0
;	AOP_STK for _check_collision_in_direction_sloc53_1_0
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl), a
; common peephole 98 removed redundant load from (hl) into a.
;	genMove_o size 0
	ldhl	sp,	#12
; common peephole 96b move inc hl before sbc a, a
; common peephole 96a move inc hl before rlca
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	rlca
	sbc	a, a
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc53_1_0
;	AOP_STK for _check_collision_in_direction_sloc54_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
; common peephole 39 replaced 16-bit addition by 8-bit loads and 16-bit increment.
	ld	l, e
	ld	h, d
	inc	hl
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#16
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#15
;	genMove_o size 0
;	genLeftShift
;	AOP_STK for _check_collision_in_direction_sloc54_1_0
;	AOP_STK for _check_collision_in_direction_sloc55_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	ld	(hl), a
	ldhl	sp,	#15
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	ld	(hl), a
;	genMove_o size 0
	ld	a, #0x04
00408$:
	ldhl	sp,	#12
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00408$
;	genMinus
;	AOP_STK for _check_collision_in_direction_sloc49_1_0
;	AOP_STK for _check_collision_in_direction_sloc55_1_0
;	AOP_STK for _check_collision_in_direction_sloc56_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#16
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
	ldhl	sp,	#12
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#15
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genRet
;	AOP_STK for _check_collision_in_direction_sloc56_1_0
;	genMove_o size 2
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00158$
;	genLabel
00130$:
	C$actor.c$452$4_0$446	= .
	.globl	C$actor.c$452$4_0$446
;src\core\actor.c:452: tt++;
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc46_1_0
	ldhl	sp,	#16
	inc	(hl)
	jp	NZ,00131$
; common peephole 84 jumped to 00131$ directly instead of via 00409$.
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00409$.
;	genGoto
	jp	00131$
;	genLabel
00133$:
	C$actor.c$454$3_0$445	= .
	.globl	C$actor.c$454$3_0$445
;src\core\actor.c:454: ty1++;
;	genPlus
;	AOP_STK for _check_collision_in_direction_sloc45_1_0
	ldhl	sp,	#14
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00410$
	inc	hl
	inc	(hl)
00410$:
;	genAssign
;	AOP_STK for _check_collision_in_direction_sloc45_1_0
;	AOP_STK for _check_collision_in_direction_sloc41_1_0
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
	ldhl	sp,	#15
	ld	a, (hl)
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00134$
;	genLabel
00136$:
	C$actor.c$456$2_0$435	= .
	.globl	C$actor.c$456$2_0$435
;src\core\actor.c:456: return end_pos;
;	genRet
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#30
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00158$
	C$actor.c$457$1_0$434	= .
	.globl	C$actor.c$457$1_0$434
;src\core\actor.c:457: }
;	genLabel
00137$:
	C$actor.c$458$1_0$434	= .
	.globl	C$actor.c$458$1_0$434
;src\core\actor.c:458: return end_pos;
;	genRet
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#30
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
;	genLabel
00158$:
	C$actor.c$459$1_0$434	= .
	.globl	C$actor.c$459$1_0$434
;src\core\actor.c:459: }
;	genEndFunction
;	adjustStack by 18
	add	sp, #18
	C$actor.c$459$1_0$434	= .
	.globl	C$actor.c$459$1_0$434
	XG$check_collision_in_direction$0$0	= .
	.globl	XG$check_collision_in_direction$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
