;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module platform
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_clear_state_script
	.globl _clear_state_script
	.globl b_assign_state_script
	.globl _assign_state_script
	.globl b_script_execute
	.globl _script_execute
	.globl b_trigger_activate_at_intersection
	.globl _trigger_activate_at_intersection
	.globl b_actor_set_dir
	.globl _actor_set_dir
	.globl b_actor_set_anim_idle
	.globl _actor_set_anim_idle
	.globl b_actor_overlapping_player
	.globl _actor_overlapping_player
	.globl b_actor_in_front_of_player
	.globl _actor_in_front_of_player
	.globl b_actor_set_frames
	.globl _actor_set_frames
	.globl _ReadBankedUWORD
	.globl _slope_y
	.globl _on_slope
	.globl _grounded
	.globl _jump_type
	.globl _run_stage
	.globl _mod_image_left
	.globl _mod_image_right
	.globl _edge_right
	.globl _edge_left
	.globl _pl_vel_y
	.globl _pl_vel_x
	.globl _boost_val
	.globl _jump_reduction
	.globl _jump_per_frame
	.globl _jump_reduction_val
	.globl _mp_last_y
	.globl _mp_last_x
	.globl _actor_attached
	.globl _last_actor
	.globl _dash_end_clear
	.globl _tap_val
	.globl _dash_currentframe
	.globl _dash_dist
	.globl _dash_ready_val
	.globl _col
	.globl _last_wall
	.globl _wj_val
	.globl _dj_val
	.globl _hold_jump_val
	.globl _wc_val
	.globl _jb_val
	.globl _ct_val
	.globl _deltaY
	.globl _deltaX
	.globl _nocollide
	.globl _nocontrol_h
	.globl _que_state
	.globl _plat_state
	.globl _plat_dash_deadzone
	.globl _plat_dash_ready_max
	.globl _plat_dash_frames
	.globl _plat_dash_dist
	.globl _plat_dash_through
	.globl _plat_dash_momentum
	.globl _plat_dash_style
	.globl _plat_dash
	.globl _plat_run_boost
	.globl _plat_turn_acc
	.globl _plat_run_type
	.globl _plat_air_dec
	.globl _plat_turn_control
	.globl _plat_air_control
	.globl _plat_float_grav
	.globl _plat_float_input
	.globl _plat_wall_kick
	.globl _plat_wall_grav
	.globl _plat_wall_slide
	.globl _plat_wall_jump_max
	.globl _plat_buffer_max
	.globl _plat_coyote_max
	.globl _plat_jump_reduction
	.globl _plat_extra_jumps
	.globl _plat_hold_jump_max
	.globl _plat_jump_min
	.globl _plat_solid_group
	.globl _plat_mp_group
	.globl _plat_drop_through
	.globl _plat_camera_block
	.globl _plat_camera_deadzone_x
	.globl _plat_max_fall_vel
	.globl _plat_hold_grav
	.globl _plat_grav
	.globl _plat_jump_vel
	.globl _plat_dec
	.globl _plat_run_acc
	.globl _plat_walk_acc
	.globl _plat_climb_vel
	.globl _plat_run_vel
	.globl _plat_walk_vel
	.globl _plat_min_vel
	.globl _state_events
	.globl b_platform_init
	.globl _platform_init
	.globl b_platform_update
	.globl _platform_update
	.globl b_basic_anim
	.globl _basic_anim
	.globl b_wall_check
	.globl _wall_check
	.globl b_ladder_check
	.globl _ladder_check
	.globl b_ladder_switch
	.globl _ladder_switch
	.globl b_dash_init_switch
	.globl _dash_init_switch
	.globl b_drop_press
	.globl _drop_press
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$state_events$0_0$0==.
_state_events::
	.ds 63
G$plat_min_vel$0_0$0==.
_plat_min_vel::
	.ds 2
G$plat_walk_vel$0_0$0==.
_plat_walk_vel::
	.ds 2
G$plat_run_vel$0_0$0==.
_plat_run_vel::
	.ds 2
G$plat_climb_vel$0_0$0==.
_plat_climb_vel::
	.ds 2
G$plat_walk_acc$0_0$0==.
_plat_walk_acc::
	.ds 2
G$plat_run_acc$0_0$0==.
_plat_run_acc::
	.ds 2
G$plat_dec$0_0$0==.
_plat_dec::
	.ds 2
G$plat_jump_vel$0_0$0==.
_plat_jump_vel::
	.ds 2
G$plat_grav$0_0$0==.
_plat_grav::
	.ds 2
G$plat_hold_grav$0_0$0==.
_plat_hold_grav::
	.ds 2
G$plat_max_fall_vel$0_0$0==.
_plat_max_fall_vel::
	.ds 2
G$plat_camera_deadzone_x$0_0$0==.
_plat_camera_deadzone_x::
	.ds 1
G$plat_camera_block$0_0$0==.
_plat_camera_block::
	.ds 1
G$plat_drop_through$0_0$0==.
_plat_drop_through::
	.ds 1
G$plat_mp_group$0_0$0==.
_plat_mp_group::
	.ds 1
G$plat_solid_group$0_0$0==.
_plat_solid_group::
	.ds 1
G$plat_jump_min$0_0$0==.
_plat_jump_min::
	.ds 2
G$plat_hold_jump_max$0_0$0==.
_plat_hold_jump_max::
	.ds 1
G$plat_extra_jumps$0_0$0==.
_plat_extra_jumps::
	.ds 1
G$plat_jump_reduction$0_0$0==.
_plat_jump_reduction::
	.ds 2
G$plat_coyote_max$0_0$0==.
_plat_coyote_max::
	.ds 1
G$plat_buffer_max$0_0$0==.
_plat_buffer_max::
	.ds 1
G$plat_wall_jump_max$0_0$0==.
_plat_wall_jump_max::
	.ds 1
G$plat_wall_slide$0_0$0==.
_plat_wall_slide::
	.ds 1
G$plat_wall_grav$0_0$0==.
_plat_wall_grav::
	.ds 2
G$plat_wall_kick$0_0$0==.
_plat_wall_kick::
	.ds 2
G$plat_float_input$0_0$0==.
_plat_float_input::
	.ds 1
G$plat_float_grav$0_0$0==.
_plat_float_grav::
	.ds 2
G$plat_air_control$0_0$0==.
_plat_air_control::
	.ds 1
G$plat_turn_control$0_0$0==.
_plat_turn_control::
	.ds 1
G$plat_air_dec$0_0$0==.
_plat_air_dec::
	.ds 2
G$plat_run_type$0_0$0==.
_plat_run_type::
	.ds 1
G$plat_turn_acc$0_0$0==.
_plat_turn_acc::
	.ds 2
G$plat_run_boost$0_0$0==.
_plat_run_boost::
	.ds 1
G$plat_dash$0_0$0==.
_plat_dash::
	.ds 1
G$plat_dash_style$0_0$0==.
_plat_dash_style::
	.ds 1
G$plat_dash_momentum$0_0$0==.
_plat_dash_momentum::
	.ds 1
G$plat_dash_through$0_0$0==.
_plat_dash_through::
	.ds 1
G$plat_dash_dist$0_0$0==.
_plat_dash_dist::
	.ds 2
G$plat_dash_frames$0_0$0==.
_plat_dash_frames::
	.ds 1
G$plat_dash_ready_max$0_0$0==.
_plat_dash_ready_max::
	.ds 1
G$plat_dash_deadzone$0_0$0==.
_plat_dash_deadzone::
	.ds 1
G$plat_state$0_0$0==.
_plat_state::
	.ds 1
G$que_state$0_0$0==.
_que_state::
	.ds 1
G$nocontrol_h$0_0$0==.
_nocontrol_h::
	.ds 1
G$nocollide$0_0$0==.
_nocollide::
	.ds 1
G$deltaX$0_0$0==.
_deltaX::
	.ds 2
G$deltaY$0_0$0==.
_deltaY::
	.ds 2
G$ct_val$0_0$0==.
_ct_val::
	.ds 1
G$jb_val$0_0$0==.
_jb_val::
	.ds 1
G$wc_val$0_0$0==.
_wc_val::
	.ds 1
G$hold_jump_val$0_0$0==.
_hold_jump_val::
	.ds 1
G$dj_val$0_0$0==.
_dj_val::
	.ds 1
G$wj_val$0_0$0==.
_wj_val::
	.ds 1
G$last_wall$0_0$0==.
_last_wall::
	.ds 1
G$col$0_0$0==.
_col::
	.ds 1
G$dash_ready_val$0_0$0==.
_dash_ready_val::
	.ds 1
G$dash_dist$0_0$0==.
_dash_dist::
	.ds 2
G$dash_currentframe$0_0$0==.
_dash_currentframe::
	.ds 1
G$tap_val$0_0$0==.
_tap_val::
	.ds 1
G$dash_end_clear$0_0$0==.
_dash_end_clear::
	.ds 1
G$last_actor$0_0$0==.
_last_actor::
	.ds 2
G$actor_attached$0_0$0==.
_actor_attached::
	.ds 1
G$mp_last_x$0_0$0==.
_mp_last_x::
	.ds 2
G$mp_last_y$0_0$0==.
_mp_last_y::
	.ds 2
G$jump_reduction_val$0_0$0==.
_jump_reduction_val::
	.ds 2
G$jump_per_frame$0_0$0==.
_jump_per_frame::
	.ds 2
G$jump_reduction$0_0$0==.
_jump_reduction::
	.ds 2
G$boost_val$0_0$0==.
_boost_val::
	.ds 2
G$pl_vel_x$0_0$0==.
_pl_vel_x::
	.ds 2
G$pl_vel_y$0_0$0==.
_pl_vel_y::
	.ds 2
G$edge_left$0_0$0==.
_edge_left::
	.ds 2
G$edge_right$0_0$0==.
_edge_right::
	.ds 2
G$mod_image_right$0_0$0==.
_mod_image_right::
	.ds 2
G$mod_image_left$0_0$0==.
_mod_image_left::
	.ds 2
G$run_stage$0_0$0==.
_run_stage::
	.ds 1
G$jump_type$0_0$0==.
_jump_type::
	.ds 1
G$grounded$0_0$0==.
_grounded::
	.ds 1
G$on_slope$0_0$0==.
_on_slope::
	.ds 1
G$slope_y$0_0$0==.
_slope_y::
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_3
	G$platform_init$0$0	= .
	.globl	G$platform_init$0$0
	C$platform.c$269$0_0$313	= .
	.globl	C$platform.c$269$0_0$313
;src\states\platform.c:269: void platform_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function platform_init
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_platform_init	= 3
_platform_init::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$platform.c$271$1_0$313	= .
	.globl	C$platform.c$271$1_0$313
;src\states\platform.c:271: camera_offset_x = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_camera_offset_x
	ld	(hl), #0x00
	C$platform.c$272$1_0$313	= .
	.globl	C$platform.c$272$1_0$313
;src\states\platform.c:272: camera_offset_y = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_camera_offset_y
	ld	(hl), #0x00
	C$platform.c$273$1_0$313	= .
	.globl	C$platform.c$273$1_0$313
;src\states\platform.c:273: camera_deadzone_x = plat_camera_deadzone_x;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_camera_deadzone_x)
; common peephole 17 loaded a from (#_plat_camera_deadzone_x) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_camera_deadzone_x),a
; common peephole 19 loaded (#_camera_deadzone_x) from a directly instead of using hl.
	C$platform.c$274$1_0$313	= .
	.globl	C$platform.c$274$1_0$313
;src\states\platform.c:274: camera_deadzone_y = PLATFORM_CAMERA_DEADZONE_Y;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_camera_deadzone_y
	ld	(hl), #0x10
	C$platform.c$275$1_0$313	= .
	.globl	C$platform.c$275$1_0$313
;src\states\platform.c:275: if ((camera_settings & CAMERA_LOCK_X_FLAG)){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_settings)
; common peephole 17 loaded a from (#_camera_settings) directly instead of using hl.
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00102$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00203$.
;	skipping generated iCode
	C$platform.c$276$2_0$314	= .
	.globl	C$platform.c$276$2_0$314
;src\states\platform.c:276: camera_x = (PLAYER.pos.x >> 4) + 8;
;	skipping iCode since result will be rematerialized
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
;	genCast
;	(locations are the same)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;fetchLitPair	hl
	ld	hl, #_camera_x
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
	C$platform.c$278$2_0$315	= .
	.globl	C$platform.c$278$2_0$315
;src\states\platform.c:278: camera_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_camera_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00103$:
	C$platform.c$280$1_0$313	= .
	.globl	C$platform.c$280$1_0$313
;src\states\platform.c:280: if ((camera_settings & CAMERA_LOCK_Y_FLAG)){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_camera_settings)
; common peephole 17 loaded a from (#_camera_settings) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00204$.
;	skipping generated iCode
	C$platform.c$281$2_0$316	= .
	.globl	C$platform.c$281$2_0$316
;src\states\platform.c:281: camera_y = (PLAYER.pos.y >> 4) + 8;
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
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
;	(locations are the same)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;fetchLitPair	hl
	ld	hl, #_camera_y
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
	C$platform.c$283$2_0$317	= .
	.globl	C$platform.c$283$2_0$317
;src\states\platform.c:283: camera_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_camera_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00106$:
	C$platform.c$287$1_0$313	= .
	.globl	C$platform.c$287$1_0$313
;src\states\platform.c:287: mod_image_right = image_width - SCREEN_WIDTH;
;	genMinus
;fetchLitPair	hl
	ld	a, (#_image_width)
; common peephole 17 loaded a from (#_image_width) directly instead of using hl.
	add	a, #0x60
;fetchLitPair	hl
	ld	(#_mod_image_right),a
; common peephole 19 loaded (#_mod_image_right) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_image_width + 1)
	adc	a, #0xff
;fetchLitPair	hl
	ld	(#_mod_image_right + 1),a
; common peephole 20 loaded (#_mod_image_right) from a directly instead of using hl.
	C$platform.c$288$1_0$313	= .
	.globl	C$platform.c$288$1_0$313
;src\states\platform.c:288: mod_image_left = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_mod_image_left
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$289$1_0$313	= .
	.globl	C$platform.c$289$1_0$313
;src\states\platform.c:289: if (plat_camera_block & 1){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_camera_block)
; common peephole 17 loaded a from (#_plat_camera_block) directly instead of using hl.
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00108$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00205$.
;	skipping generated iCode
	C$platform.c$290$2_0$318	= .
	.globl	C$platform.c$290$2_0$318
;src\states\platform.c:290: edge_left = &scroll_x;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_edge_left
;fetchLitPair	hl
	ld	a, #<(_scroll_x)
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #>(_scroll_x)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00108$:
	C$platform.c$293$2_0$319	= .
	.globl	C$platform.c$293$2_0$319
;src\states\platform.c:293: edge_left = &mod_image_left;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_edge_left
	ld	(hl), #<(_mod_image_left)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_mod_image_left)
;	genLabel
00109$:
	C$platform.c$296$1_0$313	= .
	.globl	C$platform.c$296$1_0$313
;src\states\platform.c:296: if (plat_camera_block & 2){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_camera_block)
; common peephole 17 loaded a from (#_plat_camera_block) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00206$.
;	skipping generated iCode
	C$platform.c$297$2_0$320	= .
	.globl	C$platform.c$297$2_0$320
;src\states\platform.c:297: edge_right = &scroll_x;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_edge_right
;fetchLitPair	hl
	ld	a, #<(_scroll_x)
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #>(_scroll_x)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00111$:
	C$platform.c$300$2_0$321	= .
	.globl	C$platform.c$300$2_0$321
;src\states\platform.c:300: edge_right = &image_width;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_edge_right
	ld	(hl), #<(_image_width)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_image_width)
	C$platform.c$306$1_0$313	= .
	.globl	C$platform.c$306$1_0$313
;src\states\platform.c:306: while (32000 - (plat_jump_vel/MIN(15,plat_hold_jump_max)) - plat_jump_min < 0){
;	genLabel
00113$:
;	genCmpLt
	ld	a, #0x0f
;fetchLitPair	hl
	ld	hl, #_plat_hold_jump_max
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00127$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x000f
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00128$
;	genLabel
00127$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_hold_jump_max
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genLabel
00128$:
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_jump_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	__divsint
;	genMove_o size 2
;	genMinus
	xor	a, a
	sub	a, c
	ld	c, a
	ld	a, #0x7d
	sbc	a, b
	ld	b, a
;	genMinus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_plat_jump_min
	sub	a, (hl)
; common peephole 1 removed dead load from a into c.
;fetchLitPair	hl
; common peephole 96b move inc hl before ld a, b
	inc	hl
	ld	a, b
	sbc	a, (hl)
;	genCmpLt
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through b.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00115$
;	skipping generated iCode
	C$platform.c$307$2_0$322	= .
	.globl	C$platform.c$307$2_0$322
;src\states\platform.c:307: plat_hold_jump_max += 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_hold_jump_max
;	genPlus
;fetchLitPair	hl
	inc	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b inc (hl) directly to remove redundant load from a into (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00115$:
	C$platform.c$312$1_0$313	= .
	.globl	C$platform.c$312$1_0$313
;src\states\platform.c:312: if (plat_run_boost != 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_plat_run_boost)
; common peephole 17 loaded a from (#_plat_run_boost) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00120$
	C$platform.c$313$2_0$323	= .
	.globl	C$platform.c$313$2_0$323
;src\states\platform.c:313: while((32000/plat_run_boost) < ((plat_run_vel>>8)/plat_hold_jump_max)){
;	genLabel
00116$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_run_boost
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x7d00
;	genCall
;	AOP_STK for _platform_init_sloc0_1_0
;	genMove_o size 2
	call	__divsint
; peephole sp10c increased SP by 2 through pop
	pop	hl
	push	bc
;	genMove_o size 0
;	genRightShift
;fetchLitPair	hl
	ld	hl, #_plat_run_vel + 1
	ld	e, (hl)
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_hold_jump_max
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	__divsint
;	genMove_o size 2
;	genCmpLt
;	AOP_STK for _platform_init_sloc0_1_0
	ldhl	sp,	#0
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
	jr	Z, 00207$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00208$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00208$
00207$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00208$
	scf
00208$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00120$
;	skipping generated iCode
	C$platform.c$314$3_0$324	= .
	.globl	C$platform.c$314$3_0$324
;src\states\platform.c:314: plat_run_boost--;
;	genMinus
;fetchLitPair	hl
	ld	hl, #_plat_run_boost
	dec	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;	genLabel
00120$:
	C$platform.c$319$1_0$313	= .
	.globl	C$platform.c$319$1_0$313
;src\states\platform.c:319: jump_per_frame = plat_jump_vel / MIN(15, plat_hold_jump_max);   //jump force applied per frame in the JUMP_STATE
;	genCmpLt
	ld	a, #0x0f
;fetchLitPair	hl
	ld	hl, #_plat_hold_jump_max
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00129$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x000f
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00130$
;	genLabel
00129$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_hold_jump_max
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genLabel
00130$:
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_jump_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	__divsint
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_jump_per_frame
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$320$1_0$313	= .
	.globl	C$platform.c$320$1_0$313
;src\states\platform.c:320: jump_reduction = plat_jump_reduction / plat_hold_jump_max;      //Amount to reduce subequent jumps per frame in JUMP_STATE
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_hold_jump_max
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_jump_reduction
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	__divsint
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_jump_reduction
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$321$1_0$313	= .
	.globl	C$platform.c$321$1_0$313
;src\states\platform.c:321: dash_dist = plat_dash_dist / plat_dash_frames;                    //Dash distance per frame in the DASH_STATE
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_dash_frames
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_dash_dist
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	__divsint
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_dash_dist
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$322$1_0$313	= .
	.globl	C$platform.c$322$1_0$313
;src\states\platform.c:322: boost_val = plat_run_boost / plat_hold_jump_max;                  //Vertical boost from horizontal speed per frame in JUMP STATE
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_hold_jump_max
	ld	e, (hl)
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_run_boost)
; common peephole 17 loaded a from (#_plat_run_boost) directly instead of using hl.
;	genCall
	call	__divuchar
;	genMove_o size 1
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_boost_val
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x00
	C$platform.c$325$1_0$313	= .
	.globl	C$platform.c$325$1_0$313
;src\states\platform.c:325: plat_state = GROUND_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x04
	C$platform.c$326$1_0$313	= .
	.globl	C$platform.c$326$1_0$313
;src\states\platform.c:326: que_state = GROUND_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x04
	C$platform.c$327$1_0$313	= .
	.globl	C$platform.c$327$1_0$313
;src\states\platform.c:327: actor_attached = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x00
	C$platform.c$328$1_0$313	= .
	.globl	C$platform.c$328$1_0$313
;src\states\platform.c:328: run_stage = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0x00
	C$platform.c$329$1_0$313	= .
	.globl	C$platform.c$329$1_0$313
;src\states\platform.c:329: nocontrol_h = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_nocontrol_h
	ld	(hl), #0x00
	C$platform.c$330$1_0$313	= .
	.globl	C$platform.c$330$1_0$313
;src\states\platform.c:330: nocollide = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_nocollide
	ld	(hl), #0x00
	C$platform.c$331$1_0$313	= .
	.globl	C$platform.c$331$1_0$313
;src\states\platform.c:331: if (PLAYER.dir == DIR_UP || PLAYER.dir == DIR_DOWN || PLAYER.dir == DIR_NONE) {
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genCmpEq
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00209$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a,(#(_actors + 5) + 0)
	cp	a,#0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00121$
; common peephole 107 removed load from (#(_actors + 5) + 0) into a by replacing sub with cp
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00121$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 5) + 0)
;	genCmpEq
	sub	a, #0x04
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00210$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00122$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00211$.
;	skipping generated iCode
;	genLabel
00121$:
	C$platform.c$332$2_0$325	= .
	.globl	C$platform.c$332$2_0$325
;src\states\platform.c:332: PLAYER.dir = DIR_RIGHT;
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 5)
	ld	(hl), #0x01
;	genLabel
00122$:
	C$platform.c$336$1_0$313	= .
	.globl	C$platform.c$336$1_0$313
;src\states\platform.c:336: game_time = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_game_time
	ld	(hl), #0x00
	C$platform.c$337$1_0$313	= .
	.globl	C$platform.c$337$1_0$313
;src\states\platform.c:337: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$338$1_0$313	= .
	.globl	C$platform.c$338$1_0$313
;src\states\platform.c:338: pl_vel_y = 4000;                //Magic number for preventing a small glitch when loading into a scene
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	a, #0xa0
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x0f
	C$platform.c$339$1_0$313	= .
	.globl	C$platform.c$339$1_0$313
;src\states\platform.c:339: last_wall = 0;                  //This could be 1 bit
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_wall
	ld	(hl), #0x00
	C$platform.c$340$1_0$313	= .
	.globl	C$platform.c$340$1_0$313
;src\states\platform.c:340: hold_jump_val = plat_hold_jump_max;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_hold_jump_max)
; common peephole 17 loaded a from (#_plat_hold_jump_max) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_hold_jump_val),a
; common peephole 19 loaded (#_hold_jump_val) from a directly instead of using hl.
	C$platform.c$341$1_0$313	= .
	.globl	C$platform.c$341$1_0$313
;src\states\platform.c:341: dj_val = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_dj_val
	ld	(hl), #0x00
	C$platform.c$342$1_0$313	= .
	.globl	C$platform.c$342$1_0$313
;src\states\platform.c:342: wj_val = plat_wall_jump_max;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_wall_jump_max)
; common peephole 17 loaded a from (#_plat_wall_jump_max) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_wj_val),a
; common peephole 19 loaded (#_wj_val) from a directly instead of using hl.
	C$platform.c$343$1_0$313	= .
	.globl	C$platform.c$343$1_0$313
;src\states\platform.c:343: dash_end_clear = FALSE;         //could also be mixed into the collision bitmask
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_dash_end_clear
	ld	(hl), #0x00
	C$platform.c$344$1_0$313	= .
	.globl	C$platform.c$344$1_0$313
;src\states\platform.c:344: jump_type = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x00
	C$platform.c$345$1_0$313	= .
	.globl	C$platform.c$345$1_0$313
;src\states\platform.c:345: deltaX = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_deltaX
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$346$1_0$313	= .
	.globl	C$platform.c$346$1_0$313
;src\states\platform.c:346: deltaY = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_deltaY
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
; common peephole 158 removed unused label 00125$.
	C$platform.c$348$1_0$313	= .
	.globl	C$platform.c$348$1_0$313
;src\states\platform.c:348: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$platform.c$348$1_0$313	= .
	.globl	C$platform.c$348$1_0$313
	XG$platform_init$0$0	= .
	.globl	XG$platform_init$0$0
	ret
	G$platform_update$0$0	= .
	.globl	G$platform_update$0$0
	C$platform.c$350$1_0$327	= .
	.globl	C$platform.c$350$1_0$327
;src\states\platform.c:350: void platform_update(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function platform_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 24 bytes.
	b_platform_update	= 3
_platform_update::
;	adjustStack by -24
	add	sp, #-24
	C$platform.c$352$2_0$327	= .
	.globl	C$platform.c$352$2_0$327
;src\states\platform.c:352: WORD temp_y = 0;
;	genAssign
;	AOP_STK for _platform_update_sloc0_1_0
;	genMove_o size 2
	xor	a, a
	ldhl	sp,	#21
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$353$1_0$327	= .
	.globl	C$platform.c$353$1_0$327
;src\states\platform.c:353: col = 0;                   //tracks if there is a block left or right
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_col
	ld	(hl), #0x00
	C$platform.c$354$1_1$328	= .
	.globl	C$platform.c$354$1_1$328
;src\states\platform.c:354: UBYTE p_half_width = (PLAYER.bounds.right - PLAYER.bounds.left) >> 1;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genPointerGet
	ld	a, (#(_actors + 6) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
;	genCast
;	AOP_STK for _platform_update_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#20
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$362$1_1$328	= .
	.globl	C$platform.c$362$1_1$328
;src\states\platform.c:362: UBYTE dash_press = FALSE;
;	genAssign
;	AOP_STK for _platform_update_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), #0x00
	C$platform.c$363$1_1$328	= .
	.globl	C$platform.c$363$1_1$328
;src\states\platform.c:363: switch(plat_dash){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_dash)
; common peephole 17 loaded a from (#_plat_dash) directly instead of using hl.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02942$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
; common peephole 17 loaded a from (#_plat_dash) directly instead of using hl.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02943$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a,(#_plat_dash)
	cp	a,#0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
; common peephole 107 removed load from (#_plat_dash) into a by replacing sub with cp
; common peephole 17 loaded a from (#_plat_dash) directly instead of using hl.
	sub	a, #0x03
	jp	Z,00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02944$.
;	skipping generated iCode
;	genGoto
	jp	00122$
	C$platform.c$364$2_1$329	= .
	.globl	C$platform.c$364$2_1$329
;src\states\platform.c:364: case 1:
;	genLabel
00101$:
	C$platform.c$366$2_1$329	= .
	.globl	C$platform.c$366$2_1$329
;src\states\platform.c:366: if (INPUT_PRESSED(INPUT_PLATFORM_INTERACT)){
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
	ld	hl, #_frame_joy
	ld	a, (hl)
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
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	e, (hl)
;	genMove_o size 1
	ld	d, #0x00
;	genAnd
	ld	a, e
	and	a, #0x08
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
	jp	Z, 00122$
	C$platform.c$367$3_1$330	= .
	.globl	C$platform.c$367$3_1$330
;src\states\platform.c:367: dash_press = TRUE;
;	genAssign
;	AOP_STK for _platform_update_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), #0x01
	C$platform.c$369$2_1$329	= .
	.globl	C$platform.c$369$2_1$329
;src\states\platform.c:369: break;
;	genGoto
	jp	00122$
	C$platform.c$370$2_1$329	= .
	.globl	C$platform.c$370$2_1$329
;src\states\platform.c:370: case 2:
;	genLabel
00104$:
	C$platform.c$372$2_1$329	= .
	.globl	C$platform.c$372$2_1$329
;src\states\platform.c:372: if (INPUT_PRESSED(INPUT_LEFT)){
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
	ld	hl, #_frame_joy
	ld	a, (hl)
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
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	e, (hl)
;	genMove_o size 1
	ld	d, #0x00
;	genAnd
	ld	a, e
	and	a, #0x02
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
	jr	Z, 00114$
	C$platform.c$373$3_1$331	= .
	.globl	C$platform.c$373$3_1$331
;src\states\platform.c:373: if(tap_val < 0){
;	genCmpLt
;fetchLitPair	hl
	ld	a, (#_tap_val)
; common peephole 17 loaded a from (#_tap_val) directly instead of using hl.
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
;	skipping generated iCode
	C$platform.c$374$4_1$332	= .
	.globl	C$platform.c$374$4_1$332
;src\states\platform.c:374: dash_press = TRUE;
;	genAssign
;	AOP_STK for _platform_update_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), #0x01
;	genGoto
	jp	00122$
;	genLabel
00106$:
	C$platform.c$376$4_1$333	= .
	.globl	C$platform.c$376$4_1$333
;src\states\platform.c:376: tap_val = -15;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_tap_val
	ld	(hl), #0xf1
;	genGoto
	jp	00122$
;	genLabel
00114$:
	C$platform.c$378$2_1$329	= .
	.globl	C$platform.c$378$2_1$329
;src\states\platform.c:378: } else if (INPUT_PRESSED(INPUT_RIGHT)){
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
	ld	hl, #_frame_joy
	ld	a, (hl)
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
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	e, (hl)
;	genMove_o size 1
	ld	d, #0x00
;	genAnd
	ld	a, e
	and	a, #0x01
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
	jp	Z, 00122$
	C$platform.c$379$3_1$334	= .
	.globl	C$platform.c$379$3_1$334
;src\states\platform.c:379: if(tap_val > 0){
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_tap_val
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
; common peephole 9 loaded d from #0x00 directly instead of going through a.
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	d, a
;fetchLitPair	hl
	sub	a, (hl)
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 02945$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 02946$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	02946$
02945$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 02946$
	scf
02946$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00109$
;	skipping generated iCode
	C$platform.c$380$4_1$335	= .
	.globl	C$platform.c$380$4_1$335
;src\states\platform.c:380: dash_press = TRUE;
;	genAssign
;	AOP_STK for _platform_update_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00122$
;	genLabel
00109$:
	C$platform.c$382$4_1$336	= .
	.globl	C$platform.c$382$4_1$336
;src\states\platform.c:382: tap_val = 15;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_tap_val
	ld	(hl), #0x0f
	C$platform.c$385$2_1$329	= .
	.globl	C$platform.c$385$2_1$329
;src\states\platform.c:385: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00122$
	C$platform.c$386$2_1$329	= .
	.globl	C$platform.c$386$2_1$329
;src\states\platform.c:386: case 3:
;	genLabel
00116$:
	C$platform.c$388$2_1$329	= .
	.globl	C$platform.c$388$2_1$329
;src\states\platform.c:388: if ((INPUT_PRESSED(INPUT_DOWN) && INPUT_PLATFORM_JUMP) || (INPUT_DOWN && INPUT_PRESSED(INPUT_PLATFORM_JUMP))){
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
	ld	hl, #_frame_joy
	ld	a, (hl)
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
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	e, (hl)
;	genMove_o size 1
	ld	d, #0x00
;	genAnd
	ld	a, e
	and	a, #0x08
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
	jr	Z, 00121$
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genAnd
; common peephole 73 tested bit 4 of (hl) directly instead of going through a.
	bit	4, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02947$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00117$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02948$.
;	skipping generated iCode
;	genLabel
00121$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	3, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00122$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02949$.
;	skipping generated iCode
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
	ld	hl, #_frame_joy
	ld	a, (hl)
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
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	e, (hl)
;	genMove_o size 1
	ld	d, #0x00
;	genAnd
	ld	a, e
	and	a, #0x10
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
	jr	Z, 00122$
;	genLabel
00117$:
	C$platform.c$389$3_1$337	= .
	.globl	C$platform.c$389$3_1$337
;src\states\platform.c:389: dash_press = TRUE;
;	genAssign
;	AOP_STK for _platform_update_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), #0x01
	C$platform.c$392$1_1$328	= .
	.globl	C$platform.c$392$1_1$328
;src\states\platform.c:392: }
;	genLabel
00122$:
	C$platform.c$396$1_1$328	= .
	.globl	C$platform.c$396$1_1$328
;src\states\platform.c:396: plat_state = que_state;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), a
	C$platform.c$397$1_1$328	= .
	.globl	C$platform.c$397$1_1$328
;src\states\platform.c:397: switch(plat_state){
;	genCmpGt
	ld	a, #0x15
;fetchLitPair	hl
	sub	a, (hl)
	jp	C, 00275$
;	skipping generated iCode
;	genJumpTab
;fetchLitPair	hl
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #02950$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
02950$:
	jp	00123$
	jp	00124$
	jp	00275$
	jp	00142$
	jp	00143$
	jp	00275$
	jp	00159$
	jp	00160$
	jp	00275$
	jp	00181$
	jp	00182$
	jp	00275$
	jp	00253$
	jp	00254$
	jp	00275$
	jp	00255$
	jp	00256$
	jp	00275$
	jp	00266$
	jp	00267$
	jp	00273$
	jp	00471$
	C$platform.c$398$2_1$338	= .
	.globl	C$platform.c$398$2_1$338
;src\states\platform.c:398: case FALL_INIT:
;	genLabel
00123$:
	C$platform.c$399$2_1$338	= .
	.globl	C$platform.c$399$2_1$338
;src\states\platform.c:399: que_state = FALL_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x01
	C$platform.c$400$2_1$338	= .
	.globl	C$platform.c$400$2_1$338
;src\states\platform.c:400: case FALL_STATE: {
;	genLabel
00124$:
	C$platform.c$401$3_1$339	= .
	.globl	C$platform.c$401$3_1$339
;src\states\platform.c:401: jump_type = 0;  //Keep this here, rather than in init, so that we can easily track float as a jump type
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x00
	C$platform.c$405$3_1$339	= .
	.globl	C$platform.c$405$3_1$339
;src\states\platform.c:405: if (((plat_float_input == 1 && INPUT_PLATFORM_JUMP) || (plat_float_input == 2 && INPUT_UP)) && pl_vel_y >= 0){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_float_input)
; common peephole 17 loaded a from (#_plat_float_input) directly instead of using hl.
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02951$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00137$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02952$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	4, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02953$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00138$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02954$.
;	skipping generated iCode
;	genLabel
00137$:
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_float_input)
; common peephole 17 loaded a from (#_plat_float_input) directly instead of using hl.
	sub	a, #0x02
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02955$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00133$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02956$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	2, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00133$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02957$.
;	skipping generated iCode
;	genLabel
00138$:
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_y + 1)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00133$
;	skipping generated iCode
	C$platform.c$406$4_1$340	= .
	.globl	C$platform.c$406$4_1$340
;src\states\platform.c:406: jump_type = 4;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x04
	C$platform.c$407$4_1$340	= .
	.globl	C$platform.c$407$4_1$340
;src\states\platform.c:407: pl_vel_y = plat_float_grav;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_plat_float_grav)
; common peephole 17 loaded a from (#_plat_float_grav) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_pl_vel_y),a
; common peephole 19 loaded (#_pl_vel_y) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_plat_float_grav + 1)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
;	genGoto
	jp	00134$
;	genLabel
00133$:
	C$platform.c$408$3_1$339	= .
	.globl	C$platform.c$408$3_1$339
;src\states\platform.c:408: } else if (nocollide != 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_nocollide)
; common peephole 17 loaded a from (#_nocollide) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00130$
	C$platform.c$410$4_1$341	= .
	.globl	C$platform.c$410$4_1$341
;src\states\platform.c:410: pl_vel_y = 7000; 
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	a, #0x58
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x1b
;	genGoto
	jp	00134$
;	genLabel
00130$:
	C$platform.c$411$3_1$339	= .
	.globl	C$platform.c$411$3_1$339
;src\states\platform.c:411: } else if (INPUT_PLATFORM_JUMP && pl_vel_y < 0) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	4, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00126$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02958$.
;	skipping generated iCode
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_pl_vel_y + 1
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00126$
;	skipping generated iCode
	C$platform.c$413$4_1$342	= .
	.globl	C$platform.c$413$4_1$342
;src\states\platform.c:413: pl_vel_y += plat_hold_grav;
;	genPlus
;fetchLitPair	hl
	dec	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_hold_grav
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_hold_grav + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
	C$platform.c$414$4_1$342	= .
	.globl	C$platform.c$414$4_1$342
;src\states\platform.c:414: pl_vel_y = MIN(pl_vel_y,plat_max_fall_vel);
;	genCmpLt
;fetchLitPair	de
	ld	de, #_pl_vel_y
;fetchLitPair	hl
	ld	hl, #_plat_max_fall_vel
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
	jr	Z, 02959$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 02960$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	02960$
02959$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 02960$
	scf
02960$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00734$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00735$
;	genLabel
00734$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_max_fall_vel
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genLabel
00735$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00134$
;	genLabel
00126$:
	C$platform.c$417$4_1$343	= .
	.globl	C$platform.c$417$4_1$343
;src\states\platform.c:417: pl_vel_y += plat_grav;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_y)
; common peephole 17 loaded a from (#_pl_vel_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_grav
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_grav + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
	C$platform.c$418$4_1$343	= .
	.globl	C$platform.c$418$4_1$343
;src\states\platform.c:418: pl_vel_y = MIN(pl_vel_y,plat_max_fall_vel);
;	genCmpLt
;fetchLitPair	de
	ld	de, #_pl_vel_y
;fetchLitPair	hl
	ld	hl, #_plat_max_fall_vel
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
	jr	Z, 02961$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 02962$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	02962$
02961$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 02962$
	scf
02962$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00736$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00737$
;	genLabel
00736$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_max_fall_vel
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genLabel
00737$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genLabel
00134$:
	C$platform.c$423$3_1$339	= .
	.globl	C$platform.c$423$3_1$339
;src\states\platform.c:423: deltaY += pl_vel_y >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	hl, #_pl_vel_y + 1
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$424$3_1$339	= .
	.globl	C$platform.c$424$3_1$339
;src\states\platform.c:424: temp_y = PLAYER.pos.y;    
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#21
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$platform.c$427$3_1$339	= .
	.globl	C$platform.c$427$3_1$339
;src\states\platform.c:427: if (nocontrol_h != 0 || plat_air_control == 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_nocontrol_h)
; common peephole 17 loaded a from (#_nocontrol_h) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00139$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_plat_air_control)
; common peephole 17 loaded a from (#_plat_air_control) directly instead of using hl.
	or	a, a
	jp	NZ, 00275$
;	genLabel
00139$:
	C$platform.c$429$4_1$344	= .
	.globl	C$platform.c$429$4_1$344
;src\states\platform.c:429: deltaX += pl_vel_x >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	hl, #_pl_vel_x + 1
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaX
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$430$4_1$344	= .
	.globl	C$platform.c$430$4_1$344
;src\states\platform.c:430: goto gotoXCol;
;	genGoto
	jp	00319$
	C$platform.c$435$2_1$338	= .
	.globl	C$platform.c$435$2_1$338
;src\states\platform.c:435: case GROUND_INIT:
;	genLabel
00142$:
	C$platform.c$436$2_1$338	= .
	.globl	C$platform.c$436$2_1$338
;src\states\platform.c:436: que_state = GROUND_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x04
	C$platform.c$437$2_1$338	= .
	.globl	C$platform.c$437$2_1$338
;src\states\platform.c:437: pl_vel_y = 256;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x01
	C$platform.c$438$2_1$338	= .
	.globl	C$platform.c$438$2_1$338
;src\states\platform.c:438: jump_type = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x00
	C$platform.c$439$2_1$338	= .
	.globl	C$platform.c$439$2_1$338
;src\states\platform.c:439: wc_val = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_wc_val
	ld	(hl), #0x00
	C$platform.c$440$2_1$338	= .
	.globl	C$platform.c$440$2_1$338
;src\states\platform.c:440: ct_val = plat_coyote_max; 
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_coyote_max)
; common peephole 17 loaded a from (#_plat_coyote_max) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_ct_val),a
; common peephole 19 loaded (#_ct_val) from a directly instead of using hl.
	C$platform.c$441$2_1$338	= .
	.globl	C$platform.c$441$2_1$338
;src\states\platform.c:441: dj_val = plat_extra_jumps; 
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_extra_jumps)
; common peephole 17 loaded a from (#_plat_extra_jumps) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_dj_val),a
; common peephole 19 loaded (#_dj_val) from a directly instead of using hl.
	C$platform.c$442$2_1$338	= .
	.globl	C$platform.c$442$2_1$338
;src\states\platform.c:442: wj_val = plat_wall_jump_max;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_wall_jump_max)
; common peephole 17 loaded a from (#_plat_wall_jump_max) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_wj_val),a
; common peephole 19 loaded (#_wj_val) from a directly instead of using hl.
	C$platform.c$443$2_1$338	= .
	.globl	C$platform.c$443$2_1$338
;src\states\platform.c:443: jump_reduction_val = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_jump_reduction_val
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$445$2_1$338	= .
	.globl	C$platform.c$445$2_1$338
;src\states\platform.c:445: case GROUND_STATE:{
;	genLabel
00143$:
	C$platform.c$449$3_1$345	= .
	.globl	C$platform.c$449$3_1$345
;src\states\platform.c:449: grounded = true;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_grounded
	ld	(hl), #0x01
	C$platform.c$450$3_1$345	= .
	.globl	C$platform.c$450$3_1$345
;src\states\platform.c:450: if (actor_attached){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_actor_attached)
; common peephole 17 loaded a from (#_actor_attached) directly instead of using hl.
	or	a, a
	jp	Z, 00157$
	C$platform.c$452$4_1$346	= .
	.globl	C$platform.c$452$4_1$346
;src\states\platform.c:452: if(last_actor->disabled == TRUE){
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_last_actor + 1)
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
; common peephole 100 removed redundant or after and.
	rlca
; common peephole 90a removed and by changing jump condition.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00151$
	C$platform.c$453$5_1$347	= .
	.globl	C$platform.c$453$5_1$347
;src\states\platform.c:453: que_state = FALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
	C$platform.c$454$5_1$347	= .
	.globl	C$platform.c$454$5_1$347
;src\states\platform.c:454: actor_attached = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x00
;	genGoto
	jp	00152$
;	genLabel
00151$:
	C$platform.c$456$4_1$346	= .
	.globl	C$platform.c$456$4_1$346
;src\states\platform.c:456: } else if (PLAYER.pos.x + (PLAYER.bounds.left << 4) > last_actor->pos.x + 16 + (last_actor->bounds.right<< 4)) {
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
;	skipping iCode since result will be rematerialized
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
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_last_actor + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 2
	ld	e, a
	ld	d, l
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_last_actor + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	push	de
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0007
	add	hl, de
	pop	de
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
;	genLeftShift
;fetchPairLong
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
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
	jr	Z, 02963$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 02964$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	02964$
02963$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 02964$
	scf
02964$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00148$
;	skipping generated iCode
	C$platform.c$457$5_1$348	= .
	.globl	C$platform.c$457$5_1$348
;src\states\platform.c:457: que_state = FALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
	C$platform.c$458$5_1$348	= .
	.globl	C$platform.c$458$5_1$348
;src\states\platform.c:458: actor_attached = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x00
;	genGoto
	jp	00152$
;	genLabel
00148$:
	C$platform.c$460$4_1$346	= .
	.globl	C$platform.c$460$4_1$346
;src\states\platform.c:460: } else if (PLAYER.pos.x + 16 + (PLAYER.bounds.right << 4) < last_actor->pos.x + (last_actor->bounds.left << 4)){
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
;	genCast
;	(locations are the same)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
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
;	genPlus
;	AOP_STK for _platform_update_sloc3_1_0
;fetchPairLong
; common peephole 1 removed dead load from l into e.
; common peephole 1 removed dead load from h into d.
; common peephole 104 removed redundant load from de into hl
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#24
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#23
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_last_actor + 1)
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
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
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
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCmpLt
;	AOP_STK for _platform_update_sloc3_1_0
	ldhl	sp,	#22
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
	jr	Z, 02965$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 02966$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	02966$
02965$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 02966$
	scf
02966$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00145$
;	skipping generated iCode
	C$platform.c$461$5_1$349	= .
	.globl	C$platform.c$461$5_1$349
;src\states\platform.c:461: que_state = FALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
	C$platform.c$462$5_1$349	= .
	.globl	C$platform.c$462$5_1$349
;src\states\platform.c:462: actor_attached = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00152$
;	genLabel
00145$:
	C$platform.c$465$5_1$350	= .
	.globl	C$platform.c$465$5_1$350
;src\states\platform.c:465: deltaX += (last_actor->pos.x - mp_last_x);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_last_actor + 1)
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
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_mp_last_x
	sub	a, (hl)
;fetchLitPair	hl
; common peephole 96b move inc hl before ld a, b
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	ld	a, b
	sbc	a, (hl)
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaX
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$466$5_1$350	= .
	.globl	C$platform.c$466$5_1$350
;src\states\platform.c:466: mp_last_x = last_actor->pos.x;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_last_actor + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_mp_last_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genLabel
00152$:
	C$platform.c$470$4_1$346	= .
	.globl	C$platform.c$470$4_1$346
;src\states\platform.c:470: pl_vel_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$473$4_1$346	= .
	.globl	C$platform.c$473$4_1$346
;src\states\platform.c:473: deltaY += last_actor->pos.y - mp_last_y;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_last_actor + 1)
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
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_mp_last_y
	sub	a, (hl)
;fetchLitPair	hl
; common peephole 96b move inc hl before ld a, b
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	ld	a, b
	sbc	a, (hl)
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$477$4_1$346	= .
	.globl	C$platform.c$477$4_1$346
;src\states\platform.c:477: mp_last_y = last_actor->pos.y;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_last_actor + 1)
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
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_mp_last_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
	C$platform.c$478$4_1$346	= .
	.globl	C$platform.c$478$4_1$346
;src\states\platform.c:478: temp_y = last_actor->pos.y;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_last_actor + 1)
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
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#21
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00158$
;	genLabel
00157$:
	C$platform.c$479$3_1$345	= .
	.globl	C$platform.c$479$3_1$345
;src\states\platform.c:479: } else if (nocollide != 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_nocollide)
; common peephole 17 loaded a from (#_nocollide) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00154$
	C$platform.c$481$4_1$351	= .
	.globl	C$platform.c$481$4_1$351
;src\states\platform.c:481: pl_vel_y = 7000; //magic number, rough minimum for actually having the player descend through a platform
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	a, #0x58
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x1b
	C$platform.c$482$4_1$351	= .
	.globl	C$platform.c$482$4_1$351
;src\states\platform.c:482: temp_y = PLAYER.pos.y;
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#21
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00158$
;	genLabel
00154$:
	C$platform.c$485$4_1$352	= .
	.globl	C$platform.c$485$4_1$352
;src\states\platform.c:485: pl_vel_y += plat_grav;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_y)
; common peephole 17 loaded a from (#_pl_vel_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_grav
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_grav + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
	C$platform.c$486$4_1$352	= .
	.globl	C$platform.c$486$4_1$352
;src\states\platform.c:486: temp_y = PLAYER.pos.y;
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#21
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$platform.c$487$4_1$352	= .
	.globl	C$platform.c$487$4_1$352
;src\states\platform.c:487: que_state = FALL_INIT; //Use this to test for Falling, avoids an If test in YCollision
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
;	genLabel
00158$:
	C$platform.c$490$3_1$345	= .
	.globl	C$platform.c$490$3_1$345
;src\states\platform.c:490: deltaY += pl_vel_y >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	hl, #_pl_vel_y + 1
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$493$2_1$338	= .
	.globl	C$platform.c$493$2_1$338
;src\states\platform.c:493: break;
;	genGoto
	jp	00275$
	C$platform.c$495$2_1$338	= .
	.globl	C$platform.c$495$2_1$338
;src\states\platform.c:495: case JUMP_INIT:
;	genLabel
00159$:
	C$platform.c$498$2_1$338	= .
	.globl	C$platform.c$498$2_1$338
;src\states\platform.c:498: hold_jump_val = plat_hold_jump_max; 
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_hold_jump_max)
; common peephole 17 loaded a from (#_plat_hold_jump_max) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_hold_jump_val),a
; common peephole 19 loaded (#_hold_jump_val) from a directly instead of using hl.
	C$platform.c$499$2_1$338	= .
	.globl	C$platform.c$499$2_1$338
;src\states\platform.c:499: actor_attached = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x00
	C$platform.c$500$2_1$338	= .
	.globl	C$platform.c$500$2_1$338
;src\states\platform.c:500: pl_vel_y = -plat_jump_min;
;	genUminus
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_plat_jump_min
	sub	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y),a
; common peephole 19 loaded (#_pl_vel_y) from a directly instead of using hl.
	sbc	a, a
;fetchLitPair	hl
	ld	hl, #_plat_jump_min + 1
	sub	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
	C$platform.c$501$2_1$338	= .
	.globl	C$platform.c$501$2_1$338
;src\states\platform.c:501: jb_val = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jb_val
	ld	(hl), #0x00
	C$platform.c$502$2_1$338	= .
	.globl	C$platform.c$502$2_1$338
;src\states\platform.c:502: ct_val = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ct_val
	ld	(hl), #0x00
	C$platform.c$503$2_1$338	= .
	.globl	C$platform.c$503$2_1$338
;src\states\platform.c:503: wc_val = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_wc_val
	ld	(hl), #0x00
	C$platform.c$504$2_1$338	= .
	.globl	C$platform.c$504$2_1$338
;src\states\platform.c:504: que_state = JUMP_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x07
	C$platform.c$505$2_1$338	= .
	.globl	C$platform.c$505$2_1$338
;src\states\platform.c:505: case JUMP_STATE: {
;	genLabel
00160$:
	C$platform.c$508$3_1$353	= .
	.globl	C$platform.c$508$3_1$353
;src\states\platform.c:508: if (hold_jump_val !=0 && INPUT_PLATFORM_JUMP){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_hold_jump_val)
; common peephole 17 loaded a from (#_hold_jump_val) directly instead of using hl.
	or	a, a
	jp	Z, 00175$
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	4, a
	jp	Z,00175$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02967$.
;	skipping generated iCode
	C$platform.c$510$4_1$354	= .
	.globl	C$platform.c$510$4_1$354
;src\states\platform.c:510: pl_vel_y -= jump_per_frame;
;	genMinus
;fetchLitPair	hl
	ld	a, (#_pl_vel_y)
; common peephole 17 loaded a from (#_pl_vel_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_jump_per_frame
	sub	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_jump_per_frame + 1
	sbc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
	C$platform.c$512$4_1$354	= .
	.globl	C$platform.c$512$4_1$354
;src\states\platform.c:512: if (plat_jump_vel >= jump_reduction_val){
;	genCmpLt
;fetchLitPair	de
	ld	de, #_plat_jump_vel
;fetchLitPair	hl
	ld	hl, #_jump_reduction_val
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
	jr	Z, 02968$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 02969$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	02969$
02968$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 02969$
	scf
02969$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00162$
;	skipping generated iCode
	C$platform.c$513$5_1$355	= .
	.globl	C$platform.c$513$5_1$355
;src\states\platform.c:513: pl_vel_y += jump_reduction_val;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_y)
; common peephole 17 loaded a from (#_pl_vel_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_jump_reduction_val
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_jump_reduction_val + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00163$
;	genLabel
00162$:
	C$platform.c$516$5_1$356	= .
	.globl	C$platform.c$516$5_1$356
;src\states\platform.c:516: pl_vel_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00163$:
	C$platform.c$519$4_2$357	= .
	.globl	C$platform.c$519$4_2$357
;src\states\platform.c:519: WORD tempBoost = (pl_vel_x >> 8) * boost_val;
;	genRightShift
;fetchLitPair	hl
	ld	hl, #_pl_vel_x + 1
	ld	e, (hl)
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_boost_val
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genSend
;	genMove_o size 2
	C$platform.c$521$1_1$327	= .
	.globl	C$platform.c$521$1_1$327
;src\states\platform.c:521: tempBoost = MAX(tempBoost, -tempBoost);
;	genCall
	call	__mulint
;	genMove_o size 2
;	genUminus
	xor	a, a
	sub	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	sbc	a, a
	sub	a, b
	ld	h, a
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
	jr	Z, 02970$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 02971$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	02971$
02970$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 02971$
	scf
02971$:
;	skipping generated iCode
;	genAssign
;	(locations are the same)
;	genGoto
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00739$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00738$.
;	genUminus
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
;	genLabel
00739$:
;	genAssign
;	(locations are the same)
	C$platform.c$523$4_2$357	= .
	.globl	C$platform.c$523$4_2$357
;src\states\platform.c:523: if (tempBoost > 32767 + pl_vel_y){
;	genPlus
;	AOP_STK for _platform_update_sloc4_1_0
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_pl_vel_y
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x7fff
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#24
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#23
;	genMove_o size 0
;	genCmpGt
;	AOP_STK for _platform_update_sloc4_1_0
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
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
	jr	Z, 02972$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 02973$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	02973$
02972$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 02973$
	scf
02973$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00165$
;	skipping generated iCode
	C$platform.c$524$5_2$358	= .
	.globl	C$platform.c$524$5_2$358
;src\states\platform.c:524: pl_vel_y = -32767;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	a, #0x01
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x80
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00166$
;	genLabel
00165$:
	C$platform.c$527$5_2$359	= .
	.globl	C$platform.c$527$5_2$359
;src\states\platform.c:527: pl_vel_y += -tempBoost;
;	genUminus
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
;	genLabel
00166$:
	C$platform.c$529$4_2$357	= .
	.globl	C$platform.c$529$4_2$357
;src\states\platform.c:529: hold_jump_val -=1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_hold_jump_val
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00176$
;	genLabel
00175$:
	C$platform.c$530$3_1$353	= .
	.globl	C$platform.c$530$3_1$353
;src\states\platform.c:530: } else if (INPUT_PLATFORM_JUMP && pl_vel_y < 0){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	4, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00171$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02974$.
;	skipping generated iCode
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_pl_vel_y + 1
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00171$
;	skipping generated iCode
	C$platform.c$532$4_1$360	= .
	.globl	C$platform.c$532$4_1$360
;src\states\platform.c:532: pl_vel_y += plat_hold_grav;
;	genPlus
;fetchLitPair	hl
	dec	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_hold_grav
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_hold_grav + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00176$
;	genLabel
00171$:
	C$platform.c$533$3_1$353	= .
	.globl	C$platform.c$533$3_1$353
;src\states\platform.c:533: } else if (pl_vel_y >= 0){
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_y + 1)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00168$
;	skipping generated iCode
	C$platform.c$534$4_1$361	= .
	.globl	C$platform.c$534$4_1$361
;src\states\platform.c:534: que_state = FALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
	C$platform.c$535$4_1$361	= .
	.globl	C$platform.c$535$4_1$361
;src\states\platform.c:535: pl_vel_y += plat_grav;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_y)
; common peephole 17 loaded a from (#_pl_vel_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_grav
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_grav + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00176$
;	genLabel
00168$:
	C$platform.c$537$4_1$362	= .
	.globl	C$platform.c$537$4_1$362
;src\states\platform.c:537: pl_vel_y += plat_grav;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_y)
; common peephole 17 loaded a from (#_pl_vel_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_grav
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_grav + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
;	genLabel
00176$:
	C$platform.c$540$3_1$353	= .
	.globl	C$platform.c$540$3_1$353
;src\states\platform.c:540: temp_y = PLAYER.pos.y;
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#21
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$platform.c$542$3_1$353	= .
	.globl	C$platform.c$542$3_1$353
;src\states\platform.c:542: deltaY += pl_vel_y >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	hl, #_pl_vel_y + 1
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$545$3_1$353	= .
	.globl	C$platform.c$545$3_1$353
;src\states\platform.c:545: if (nocontrol_h != 0 || plat_air_control == 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_nocontrol_h)
; common peephole 17 loaded a from (#_nocontrol_h) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00178$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_plat_air_control)
; common peephole 17 loaded a from (#_plat_air_control) directly instead of using hl.
	or	a, a
	jp	NZ, 00275$
;	genLabel
00178$:
	C$platform.c$547$4_1$363	= .
	.globl	C$platform.c$547$4_1$363
;src\states\platform.c:547: deltaX += pl_vel_x >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	hl, #_pl_vel_x + 1
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaX
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$548$4_1$363	= .
	.globl	C$platform.c$548$4_1$363
;src\states\platform.c:548: goto gotoXCol;
;	genGoto
	jp	00319$
	C$platform.c$553$2_1$338	= .
	.globl	C$platform.c$553$2_1$338
;src\states\platform.c:553: case DASH_INIT:{
;	genLabel
00181$:
	C$platform.c$554$3_1$364	= .
	.globl	C$platform.c$554$3_1$364
;src\states\platform.c:554: dash_init_switch();
;	genCall
	ld	e, #b_dash_init_switch
	ld	hl, #_dash_init_switch
	call	___sdcc_bcall_ehl
	C$platform.c$556$2_1$338	= .
	.globl	C$platform.c$556$2_1$338
;src\states\platform.c:556: goto gotoCounters; //Dash Init has a return, unlike other initialization phases, because its calculations are time consuming and we don't want to deal with collision in the same frame.
;	genGoto
	jp	00654$
	C$platform.c$557$2_1$338	= .
	.globl	C$platform.c$557$2_1$338
;src\states\platform.c:557: case DASH_STATE: {
;	genLabel
00182$:
	C$platform.c$561$3_1$365	= .
	.globl	C$platform.c$561$3_1$365
;src\states\platform.c:561: UBYTE tile_start = (((PLAYER.pos.y >> 4) + PLAYER.bounds.top)    >> 3);
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
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
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	AOP_STK for _platform_update_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$562$3_1$365	= .
	.globl	C$platform.c$562$3_1$365
;src\states\platform.c:562: UBYTE tile_end   = (((PLAYER.pos.y >> 4) + PLAYER.bounds.bottom) >> 3) + 1;        
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 9) + 0)
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
;	genPlus
	add	hl, bc
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
	ld	a, l
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc6_1_0
	inc	a
	ldhl	sp,	#13
	ld	(hl), a
	C$platform.c$563$3_1$365	= .
	.globl	C$platform.c$563$3_1$365
;src\states\platform.c:563: col = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_col
	ld	(hl), #0x00
	C$platform.c$566$3_1$365	= .
	.globl	C$platform.c$566$3_1$365
;src\states\platform.c:566: if (PLAYER.dir == DIR_RIGHT){
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 5) + 0)
;	genCmpEq
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02975$.
	jp	NZ,00224$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02976$.
;	skipping generated iCode
	C$platform.c$568$4_1$366	= .
	.globl	C$platform.c$568$4_1$366
;src\states\platform.c:568: tile_current = ((PLAYER.pos.x >> 4) + PLAYER.bounds.right) >> 3;
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
;	genRightShift
;fetchPairLong
	ld	l, c
	ld	h, b
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
	ld	de, #_actors + 7
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
;	genRightShift
;fetchPairLong
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;	genCast
;	AOP_STK for _platform_update_sloc7_1_0
;	genMove_o size 1
	push	hl
	ld	a, l
	ldhl	sp,	#21
	ld	(hl), a
	pop	hl
;	genMove_o size 0
	C$platform.c$570$4_2$367	= .
	.globl	C$platform.c$570$4_2$367
;src\states\platform.c:570: UWORD new_x = PLAYER.pos.x + (dash_dist);
;	genCast
;	(locations are the same)
;	genPlus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_dash_dist
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
;	AOP_STK for _platform_update_sloc8_1_0
;	genMove_o size 2
	ldhl	sp,	#20
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genMove_o size 0
	C$platform.c$571$4_2$367	= .
	.globl	C$platform.c$571$4_2$367
;src\states\platform.c:571: UBYTE tile_x = (((new_x >> 4) + PLAYER.bounds.right) >> 3) + 1;
;	genRightShift
;	AOP_STK for _platform_update_sloc8_1_0
;fetchPairLong
	ld	a, b
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
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
;	genCast
;	(locations are the same)
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
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
;	genCast
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _platform_update_sloc9_1_0
	ld	a, l
	inc	a
	ldhl	sp,	#22
	ld	(hl), a
	C$platform.c$575$5_2$368	= .
	.globl	C$platform.c$575$5_2$368
;src\states\platform.c:575: while (tile_current != tile_x){
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00194$:
;	genCmpEq
;	AOP_STK for _platform_update_sloc7_1_0
;	AOP_STK for _platform_update_sloc9_1_0
	ldhl	sp,	#19
	ld	a, (hl)
	ldhl	sp,	#22
	sub	a, (hl)
	jp	Z,00197$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02977$.
;	skipping generated iCode
	C$platform.c$577$5_2$368	= .
	.globl	C$platform.c$577$5_2$368
;src\states\platform.c:577: if ((plat_camera_block & 2) && tile_current > (camera_x + SCREEN_WIDTH_HALF - 16) >> 3){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_camera_block)
; common peephole 17 loaded a from (#_plat_camera_block) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00831$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02978$.
;	skipping generated iCode
;	genPlus
;fetchLitPair	hl
	ld	hl, #_camera_x
;fetchLitPair	hl
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before add a, #0x50
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	add	a, #0x50
	ld	c, a
	ld	a, (hl)
	adc	a, #0x00
	ld	b, a
;	genMinus
	ld	a, c
	add	a, #0xf0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	AOP_STK for _platform_update_sloc7_1_0
;	AOP_STK for _platform_update_sloc10_1_0
;	genMove_o size 1
	ldhl	sp,	#19
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCmpGt
;	AOP_STK for _platform_update_sloc10_1_0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
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
	jr	Z, 02979$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 02980$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	02980$
02979$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 02980$
	scf
02980$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00831$
;	skipping generated iCode
	C$platform.c$578$6_2$369	= .
	.globl	C$platform.c$578$6_2$369
;src\states\platform.c:578: new_x = ((((tile_current) << 3) - PLAYER.bounds.right) << 4) -1;
;	genCast
;	AOP_STK for _platform_update_sloc7_1_0
;	genMove_o size 1
	ldhl	sp,	#19
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genLeftShift
;fetchPairLong
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genMinus
;	AOP_STK for _platform_update_sloc8_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#21
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
	C$platform.c$580$6_2$369	= .
	.globl	C$platform.c$580$6_2$369
;src\states\platform.c:580: goto endRcol;
;	genGoto
	jp	00197$
	C$platform.c$583$1_1$327	= .
	.globl	C$platform.c$583$1_1$327
;src\states\platform.c:583: while (tile_start != tile_end) {
;	genLabel
00831$:
;	genAssign
;	AOP_STK for _platform_update_sloc5_1_0
;	AOP_STK for _platform_update_sloc11_1_0
;	(locations are the same)
;	genLabel
00191$:
;	genCmpEq
;	AOP_STK for _platform_update_sloc6_1_0
;	AOP_STK for _platform_update_sloc11_1_0
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#23
	sub	a, (hl)
	jp	Z,00193$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02982$.
;	skipping generated iCode
	C$platform.c$585$6_2$370	= .
	.globl	C$platform.c$585$6_2$370
;src\states\platform.c:585: if(plat_dash_through != 3 || dash_end_clear == FALSE){                    
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_dash_through)
; common peephole 17 loaded a from (#_plat_dash_through) directly instead of using hl.
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02983$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00188$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02984$.
;	skipping generated iCode
;	genIfx
;fetchLitPair	hl
	ld	a, (#_dash_end_clear)
; common peephole 17 loaded a from (#_dash_end_clear) directly instead of using hl.
	or	a, a
	jp	NZ, 00189$
;	genLabel
00188$:
;src\states\platform.c:586: if (tile_at(tile_current, tile_start) & COLLISION_LEFT) {
;	genAssign
;	AOP_STK for _platform_update_sloc11_1_0
;	AOP_STK for _platform_update_sloc12_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#18
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _platform_update_sloc7_1_0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00669$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _platform_update_sloc12_1_0
	ldhl	sp,	#18
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00669$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _platform_update_sloc13_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#14
	ld	(hl), a
;	genCast
;	AOP_STK for _platform_update_sloc14_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	ldhl	sp,	#15
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCast
;	AOP_STK for _platform_update_sloc12_1_0
;	AOP_STK for _platform_update_sloc15_1_0
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
;	AOP_STK for _platform_update_sloc14_1_0
;	genMove_o size 2
	ldhl	sp,	#15
;	genMove_o size 0
;	genSend
;	AOP_STK for _platform_update_sloc15_1_0
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
;	AOP_STK for _platform_update_sloc7_1_0
;fetchPairLong
	ldhl	sp,	#19
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _platform_update_sloc13_1_0
;	genMove_o size 1
	ldhl	sp,	#14
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
	jr	00670$
;	genLabel
00669$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\states\platform.c:586: if (tile_at(tile_current, tile_start) & COLLISION_LEFT) {
;	genLabel
00670$:
;	genAnd
	bit	2, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00189$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02985$.
;	skipping generated iCode
	C$platform.c$588$8_2$372	= .
	.globl	C$platform.c$588$8_2$372
;src\states\platform.c:588: new_x = ((((tile_current) << 3) - PLAYER.bounds.right) << 4) -1;
;	genCast
;	AOP_STK for _platform_update_sloc7_1_0
;	genMove_o size 1
	ldhl	sp,	#19
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	b, a
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genMinus
;	AOP_STK for _platform_update_sloc8_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#21
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
	C$platform.c$589$8_2$372	= .
	.globl	C$platform.c$589$8_2$372
;src\states\platform.c:589: col = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_col
	ld	(hl), #0x01
	C$platform.c$590$8_2$372	= .
	.globl	C$platform.c$590$8_2$372
;src\states\platform.c:590: last_wall = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_wall
	ld	(hl), #0x01
	C$platform.c$591$8_2$372	= .
	.globl	C$platform.c$591$8_2$372
;src\states\platform.c:591: wc_val = plat_coyote_max;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_coyote_max)
; common peephole 17 loaded a from (#_plat_coyote_max) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_wc_val),a
; common peephole 19 loaded (#_wc_val) from a directly instead of using hl.
	C$platform.c$593$8_2$372	= .
	.globl	C$platform.c$593$8_2$372
;src\states\platform.c:593: goto endRcol;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00197$
;	genLabel
00189$:
	C$platform.c$602$6_2$370	= .
	.globl	C$platform.c$602$6_2$370
;src\states\platform.c:602: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc11_1_0
	ldhl	sp,	#23
	inc	(hl)
;	genGoto
	jp	00191$
;	genLabel
00193$:
	C$platform.c$605$5_2$368	= .
	.globl	C$platform.c$605$5_2$368
;src\states\platform.c:605: tile_start = (((PLAYER.pos.y >> 4) + PLAYER.bounds.top) >> 3);
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
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
	ld	a, (#(_actors + 8) + 0)
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
;	AOP_STK for _platform_update_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$606$5_2$368	= .
	.globl	C$platform.c$606$5_2$368
;src\states\platform.c:606: tile_current += 1;
;	genCast
;	AOP_STK for _platform_update_sloc7_1_0
;	genMove_o size 1
	ldhl	sp,	#19
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc7_1_0
	inc	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b inc (hl) directly to remove redundant load from a into (hl)
;	genGoto
	jp	00194$
	C$platform.c$608$4_2$367	= .
	.globl	C$platform.c$608$4_2$367
;src\states\platform.c:608: endRcol: 
;	genLabel
00197$:
	C$platform.c$609$4_2$367	= .
	.globl	C$platform.c$609$4_2$367
;src\states\platform.c:609: if(plat_dash_momentum == 1 || plat_dash_momentum == 3){           
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_dash_momentum)
; common peephole 17 loaded a from (#_plat_dash_momentum) directly instead of using hl.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00198$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02987$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_dash_momentum)
; common peephole 17 loaded a from (#_plat_dash_momentum) directly instead of using hl.
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02988$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00199$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02989$.
;	skipping generated iCode
;	genLabel
00198$:
	C$platform.c$611$5_2$373	= .
	.globl	C$platform.c$611$5_2$373
;src\states\platform.c:611: pl_vel_x = plat_run_vel;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_plat_run_vel)
; common peephole 17 loaded a from (#_plat_run_vel) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_pl_vel_x),a
; common peephole 19 loaded (#_pl_vel_x) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_plat_run_vel + 1)
;fetchLitPair	hl
	ld	(#_pl_vel_x + 1),a
; common peephole 20 loaded (#_pl_vel_x) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00200$
;	genLabel
00199$:
	C$platform.c$613$5_2$374	= .
	.globl	C$platform.c$613$5_2$374
;src\states\platform.c:613: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00200$:
	C$platform.c$615$4_2$367	= .
	.globl	C$platform.c$615$4_2$367
;src\states\platform.c:615: PLAYER.pos.x = MIN((image_width - 16) << 4, new_x);
;	genAddrOf
	ld	de, #_actors+1
;	genMinus
;fetchLitPair	hl
	ld	hl, #_image_width
;fetchLitPair	hl
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before add a, #0xf0
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	add	a, #0xf0
	ld	c, a
	ld	a, (hl)
	adc	a, #0xff
	ld	b, a
;	genLeftShift
;fetchPairLong
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
;	genCmpLt
;	AOP_STK for _platform_update_sloc8_1_0
	ldhl	sp,	#20
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00740$
;	skipping generated iCode
;	genMinus
;fetchLitPair	hl
	ld	hl, #_image_width
;fetchLitPair	hl
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before add a, #0xf0
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	add	a, #0xf0
	ld	c, a
	ld	a, (hl)
	adc	a, #0xff
	ld	b, a
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
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00741$
;	genLabel
00740$:
;	genAssign
;	AOP_STK for _platform_update_sloc8_1_0
;	genMove_o size 2
	ldhl	sp,	#20
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genLabel
00741$:
;	genCast
;	genMove_o size 2
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 9a loaded (de) from a directly instead of going through a.
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;	genGoto
	jp	00225$
;	genLabel
00224$:
	C$platform.c$619$3_1$365	= .
	.globl	C$platform.c$619$3_1$365
;src\states\platform.c:619: else if (PLAYER.dir == DIR_LEFT){
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 5) + 0)
;	genCmpEq
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02992$.
	jp	NZ,00225$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02993$.
;	skipping generated iCode
	C$platform.c$621$4_1$375	= .
	.globl	C$platform.c$621$4_1$375
;src\states\platform.c:621: tile_current = ((PLAYER.pos.x >> 4) + PLAYER.bounds.left) >> 3;
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
;	genRightShift
;fetchPairLong
	ld	e, c
	ld	d, b
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genPlus
;fetchLitPair	hl
;	genPointerGet
; common peephole 18 loaded 6 into a directly instead of using hl.
	ld	a, (#_actors + 6)
;	genCast
;	AOP_STK for _platform_update_sloc16_1_0
;	genMove_o size 0
;	genMove_o size 1
	ldhl	sp,	#21
; common peephole 96b move inc hl before sbc a, a
; common peephole 96a move inc hl before rlca
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	rlca
	sbc	a, a
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _platform_update_sloc16_1_0
;fetchPairLong
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	AOP_STK for _platform_update_sloc17_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$623$4_2$376	= .
	.globl	C$platform.c$623$4_2$376
;src\states\platform.c:623: WORD new_x = PLAYER.pos.x - (dash_dist);
;	genCast
;	(locations are the same)
;	genMinus
;	AOP_STK for _platform_update_sloc18_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_dash_dist
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#16
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	C$platform.c$624$4_2$376	= .
	.globl	C$platform.c$624$4_2$376
;src\states\platform.c:624: UBYTE tile_x = (((new_x >> 4) + PLAYER.bounds.left) >> 3)-1;
;	genRightShift
;	AOP_STK for _platform_update_sloc18_1_0
;fetchPairLong
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	dec	hl
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
;	genPlus
;	AOP_STK for _platform_update_sloc16_1_0
;fetchPairLong
	ldhl	sp,	#21
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
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
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genMinus
;	AOP_STK for _platform_update_sloc19_1_0
; common peephole 155c turned add into dec.
	dec	a
	ldhl	sp,	#17
	ld	(hl), a
	C$platform.c$626$5_2$377	= .
	.globl	C$platform.c$626$5_2$377
;src\states\platform.c:626: while (tile_current != tile_x){
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00213$:
;	genCmpEq
;	AOP_STK for _platform_update_sloc17_1_0
;	AOP_STK for _platform_update_sloc19_1_0
	ldhl	sp,	#14
	ld	a, (hl)
	ldhl	sp,	#17
	sub	a, (hl)
	jp	Z,00216$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02994$.
;	skipping generated iCode
	C$platform.c$628$5_2$377	= .
	.globl	C$platform.c$628$5_2$377
;src\states\platform.c:628: if ((plat_camera_block & 1) && tile_current < (camera_x - SCREEN_WIDTH_HALF) >> 3){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_camera_block)
; common peephole 17 loaded a from (#_plat_camera_block) directly instead of using hl.
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00844$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02995$.
;	skipping generated iCode
;	genMinus
;fetchLitPair	hl
	ld	hl, #_camera_x
;fetchLitPair	hl
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before add a, #0xb0
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	add	a, #0xb0
	ld	c, a
	ld	a, (hl)
	adc	a, #0xff
	ld	b, a
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	AOP_STK for _platform_update_sloc17_1_0
;	AOP_STK for _platform_update_sloc20_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	a, (hl)
	ldhl	sp,	#21
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCmpLt
;	AOP_STK for _platform_update_sloc20_1_0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
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
	jr	Z, 02996$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 02997$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	02997$
02996$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 02997$
	scf
02997$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00844$
;	skipping generated iCode
	C$platform.c$629$6_2$378	= .
	.globl	C$platform.c$629$6_2$378
;src\states\platform.c:629: new_x = ((((tile_current + 1) << 3) - PLAYER.bounds.left) << 4)+1;
;	genCast
;	AOP_STK for _platform_update_sloc17_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genPlus
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 6) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
;	AOP_STK for _platform_update_sloc18_1_0
; common peephole 69 incremented in hl instead of bc.
	inc	hl
	ld	c, l
	ld	b, h
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$platform.c$631$6_2$378	= .
	.globl	C$platform.c$631$6_2$378
;src\states\platform.c:631: goto endLcol;
;	genGoto
	jp	00216$
	C$platform.c$634$1_1$327	= .
	.globl	C$platform.c$634$1_1$327
;src\states\platform.c:634: while (tile_start != tile_end) {   
;	genLabel
00844$:
;	genAssign
;	AOP_STK for _platform_update_sloc5_1_0
;	AOP_STK for _platform_update_sloc21_1_0
;	(locations are the same)
;	genLabel
00210$:
;	genCmpEq
;	AOP_STK for _platform_update_sloc6_1_0
;	AOP_STK for _platform_update_sloc21_1_0
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#23
	sub	a, (hl)
	jp	Z,00212$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02998$.
;	skipping generated iCode
	C$platform.c$636$6_2$379	= .
	.globl	C$platform.c$636$6_2$379
;src\states\platform.c:636: if(plat_dash_through != 3 || dash_end_clear == FALSE){  //If you collide with walls
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_dash_through)
; common peephole 17 loaded a from (#_plat_dash_through) directly instead of using hl.
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 02999$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00207$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03000$.
;	skipping generated iCode
;	genIfx
;fetchLitPair	hl
	ld	a, (#_dash_end_clear)
; common peephole 17 loaded a from (#_dash_end_clear) directly instead of using hl.
	or	a, a
	jp	NZ, 00208$
;	genLabel
00207$:
;src\states\platform.c:637: if (tile_at(tile_current, tile_start) & COLLISION_RIGHT) {
;	genAssign
;	AOP_STK for _platform_update_sloc21_1_0
;	AOP_STK for _platform_update_sloc22_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	(hl), a
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _platform_update_sloc17_1_0
	ldhl	sp,	#14
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00674$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _platform_update_sloc22_1_0
	ldhl	sp,	#22
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00674$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _platform_update_sloc23_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#18
	ld	(hl), a
;	genCast
;	AOP_STK for _platform_update_sloc24_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	ldhl	sp,	#19
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCast
;	AOP_STK for _platform_update_sloc22_1_0
;	AOP_STK for _platform_update_sloc25_1_0
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
;	AOP_STK for _platform_update_sloc24_1_0
;	genMove_o size 2
	ldhl	sp,	#19
;	genMove_o size 0
;	genSend
;	AOP_STK for _platform_update_sloc25_1_0
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
;	AOP_STK for _platform_update_sloc17_1_0
;fetchPairLong
	ldhl	sp,	#14
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _platform_update_sloc23_1_0
;	genMove_o size 1
	ldhl	sp,	#18
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
	jr	00675$
;	genLabel
00674$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\states\platform.c:637: if (tile_at(tile_current, tile_start) & COLLISION_RIGHT) {
;	genLabel
00675$:
;	genAnd
	bit	3, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00208$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03001$.
;	skipping generated iCode
	C$platform.c$638$8_2$381	= .
	.globl	C$platform.c$638$8_2$381
;src\states\platform.c:638: new_x = ((((tile_current + 1) << 3) - PLAYER.bounds.left) << 4)+1;
;	genCast
;	AOP_STK for _platform_update_sloc17_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genPlus
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 6) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
;	AOP_STK for _platform_update_sloc18_1_0
; common peephole 69 incremented in hl instead of bc.
	inc	hl
	ld	c, l
	ld	b, h
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$platform.c$639$8_2$381	= .
	.globl	C$platform.c$639$8_2$381
;src\states\platform.c:639: col = -1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_col
	ld	(hl), #0xff
	C$platform.c$640$8_2$381	= .
	.globl	C$platform.c$640$8_2$381
;src\states\platform.c:640: last_wall = -1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_wall
	ld	(hl), #0xff
	C$platform.c$642$8_2$381	= .
	.globl	C$platform.c$642$8_2$381
;src\states\platform.c:642: wc_val = plat_coyote_max;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_coyote_max)
; common peephole 17 loaded a from (#_plat_coyote_max) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_wc_val),a
; common peephole 19 loaded (#_wc_val) from a directly instead of using hl.
	C$platform.c$643$8_2$381	= .
	.globl	C$platform.c$643$8_2$381
;src\states\platform.c:643: goto endLcol;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00216$
;	genLabel
00208$:
	C$platform.c$653$6_2$379	= .
	.globl	C$platform.c$653$6_2$379
;src\states\platform.c:653: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc21_1_0
	ldhl	sp,	#23
	inc	(hl)
;	genGoto
	jp	00210$
;	genLabel
00212$:
	C$platform.c$655$5_2$377	= .
	.globl	C$platform.c$655$5_2$377
;src\states\platform.c:655: tile_start = (((PLAYER.pos.y >> 4) + PLAYER.bounds.top) >> 3);
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
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
	ld	a, (#(_actors + 8) + 0)
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
;	AOP_STK for _platform_update_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$656$5_2$377	= .
	.globl	C$platform.c$656$5_2$377
;src\states\platform.c:656: tile_current -= 1;
;	genCast
;	AOP_STK for _platform_update_sloc17_1_0
;	genMove_o size 1
	ldhl	sp,	#14
;	genMove_o size 0
;	genMinus
;	AOP_STK for _platform_update_sloc17_1_0
; common peephole 155c turned add into dec.
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;	genGoto
	jp	00213$
	C$platform.c$658$4_2$376	= .
	.globl	C$platform.c$658$4_2$376
;src\states\platform.c:658: endLcol: 
;	genLabel
00216$:
	C$platform.c$659$4_2$376	= .
	.globl	C$platform.c$659$4_2$376
;src\states\platform.c:659: if(plat_dash_momentum == 1 || plat_dash_momentum == 3){            
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_dash_momentum)
; common peephole 17 loaded a from (#_plat_dash_momentum) directly instead of using hl.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00217$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03002$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_dash_momentum)
; common peephole 17 loaded a from (#_plat_dash_momentum) directly instead of using hl.
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03003$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00218$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03004$.
;	skipping generated iCode
;	genLabel
00217$:
	C$platform.c$660$5_2$382	= .
	.globl	C$platform.c$660$5_2$382
;src\states\platform.c:660: pl_vel_x = -plat_run_vel;
;	genUminus
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_plat_run_vel
	sub	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_x),a
; common peephole 19 loaded (#_pl_vel_x) from a directly instead of using hl.
	sbc	a, a
;fetchLitPair	hl
	ld	hl, #_plat_run_vel + 1
	sub	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_x + 1),a
; common peephole 20 loaded (#_pl_vel_x) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00219$
;	genLabel
00218$:
	C$platform.c$662$5_2$383	= .
	.globl	C$platform.c$662$5_2$383
;src\states\platform.c:662: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00219$:
	C$platform.c$664$4_2$376	= .
	.globl	C$platform.c$664$4_2$376
;src\states\platform.c:664: PLAYER.pos.x = MAX(0, new_x);
;	skipping iCode since result will be rematerialized
;	genCmpGt
;	AOP_STK for _platform_update_sloc18_1_0
	ldhl	sp,	#16
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00742$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	xor	a, a
	ld	b, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00743$
;	genLabel
00742$:
;	genAssign
;	AOP_STK for _platform_update_sloc18_1_0
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genLabel
00743$:
;	genCast
;	genMove_o size 2
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
; common peephole 1 removed dead load from a into c.
	ld	hl, #(_actors + 1)
; common peephole 0b removed redundant load from c back into a.
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00225$:
	C$platform.c$668$3_1$365	= .
	.globl	C$platform.c$668$3_1$365
;src\states\platform.c:668: if(plat_dash_momentum >= 2){
;	genCmpLt
;fetchLitPair	hl
	ld	a, (#_plat_dash_momentum)
; common peephole 17 loaded a from (#_plat_dash_momentum) directly instead of using hl.
	sub	a, #0x02
	jp	C, 00249$
;	skipping generated iCode
	C$platform.c$670$4_1$384	= .
	.globl	C$platform.c$670$4_1$384
;src\states\platform.c:670: pl_vel_y += plat_hold_grav;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_y)
; common peephole 17 loaded a from (#_pl_vel_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_hold_grav
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_hold_grav + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
	C$platform.c$673$4_1$384	= .
	.globl	C$platform.c$673$4_1$384
;src\states\platform.c:673: if (INPUT_PRESSED(INPUT_PLATFORM_JUMP)){
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
	ld	hl, #_frame_joy
	ld	a, (hl)
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
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into e.
;	genAnd
	and	a, #0x10
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
;	genMove_o size 0
;	genIfx
; common peephole 9 loaded a from a directly instead of going through e.
; common peephole 0a removed redundant load from a into a.
	or	a, c
	jp	Z, 00232$
	C$platform.c$675$5_1$385	= .
	.globl	C$platform.c$675$5_1$385
;src\states\platform.c:675: if (ct_val != 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_ct_val)
; common peephole 17 loaded a from (#_ct_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00229$
	C$platform.c$676$6_1$386	= .
	.globl	C$platform.c$676$6_1$386
;src\states\platform.c:676: actor_attached = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x00
	C$platform.c$677$6_1$386	= .
	.globl	C$platform.c$677$6_1$386
;src\states\platform.c:677: pl_vel_y = -(plat_jump_min + (plat_jump_vel/2));
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_jump_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genCmpLt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00744$
;	skipping generated iCode
;	genPlus
	inc	bc
;	genLabel
00744$:
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
;	genPlus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_plat_jump_min
	add	a, (hl)
;fetchLitPair	hl
; common peephole 96b move inc hl before ld a, b
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	ld	a, b
	adc	a, (hl)
	ld	b, a
;	genUminus
	xor	a, a
	sub	a, c
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
; common peephole 96b move inc hl before sub a, b
; common peephole 96b move inc hl before sbc a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	sbc	a, a
	sub	a, b
	ld	(hl), a
	C$platform.c$678$6_1$386	= .
	.globl	C$platform.c$678$6_1$386
;src\states\platform.c:678: jb_val = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jb_val
	ld	(hl), #0x00
	C$platform.c$679$6_1$386	= .
	.globl	C$platform.c$679$6_1$386
;src\states\platform.c:679: ct_val = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ct_val
	ld	(hl), #0x00
	C$platform.c$680$6_1$386	= .
	.globl	C$platform.c$680$6_1$386
;src\states\platform.c:680: jump_type = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00232$
;	genLabel
00229$:
	C$platform.c$681$5_1$385	= .
	.globl	C$platform.c$681$5_1$385
;src\states\platform.c:681: } else if (dj_val != 0){
;	genIfx
;fetchLitPair	hl
	ld	hl, #_dj_val
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00232$
	C$platform.c$683$6_1$387	= .
	.globl	C$platform.c$683$6_1$387
;src\states\platform.c:683: dj_val -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
	C$platform.c$684$6_1$387	= .
	.globl	C$platform.c$684$6_1$387
;src\states\platform.c:684: jump_reduction_val += jump_reduction;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_jump_reduction_val)
; common peephole 17 loaded a from (#_jump_reduction_val) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_jump_reduction
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_jump_reduction_val
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_jump_reduction + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_jump_reduction_val + 1),a
; common peephole 20 loaded (#_jump_reduction_val) from a directly instead of using hl.
	C$platform.c$685$6_1$387	= .
	.globl	C$platform.c$685$6_1$387
;src\states\platform.c:685: actor_attached = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x00
	C$platform.c$687$6_1$387	= .
	.globl	C$platform.c$687$6_1$387
;src\states\platform.c:687: pl_vel_y = -(plat_jump_min + (plat_jump_vel/2));    
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_jump_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genCmpLt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00745$
;	skipping generated iCode
;	genPlus
	inc	bc
;	genLabel
00745$:
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
;	genPlus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_plat_jump_min
	add	a, (hl)
;fetchLitPair	hl
; common peephole 96b move inc hl before ld a, b
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	ld	a, b
	adc	a, (hl)
	ld	b, a
;	genUminus
	xor	a, a
	sub	a, c
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
; common peephole 96b move inc hl before sub a, b
; common peephole 96b move inc hl before sbc a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	sbc	a, a
	sub	a, b
	ld	(hl), a
	C$platform.c$688$6_1$387	= .
	.globl	C$platform.c$688$6_1$387
;src\states\platform.c:688: jb_val = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jb_val
	ld	(hl), #0x00
	C$platform.c$689$6_1$387	= .
	.globl	C$platform.c$689$6_1$387
;src\states\platform.c:689: ct_val = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ct_val
	ld	(hl), #0x00
	C$platform.c$690$6_1$387	= .
	.globl	C$platform.c$690$6_1$387
;src\states\platform.c:690: jump_type = 2;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x02
;	genLabel
00232$:
	C$platform.c$695$4_1$384	= .
	.globl	C$platform.c$695$4_1$384
;src\states\platform.c:695: temp_y = PLAYER.pos.y;    
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#21
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$platform.c$696$4_1$384	= .
	.globl	C$platform.c$696$4_1$384
;src\states\platform.c:696: deltaY += pl_vel_y >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	hl, #_pl_vel_y + 1
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	C$platform.c$697$4_1$384	= .
	.globl	C$platform.c$697$4_1$384
;src\states\platform.c:697: deltaY = CLAMP(deltaY, -127, 127);
;	genCmpLt
;fetchLitPair	hl
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
; common peephole 96b move inc hl before sub a, #0x81
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, #0x81
	ld	a, (hl)
	sbc	a, #0xff
	ld	d, (hl)
	ld	a, #0xff
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through e.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03005$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03006$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03006$
03005$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03006$
	scf
03006$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00746$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0xff81
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00747$
;	genLabel
00746$:
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a, #0x7f
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03007$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03008$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03008$
03007$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03008$
	scf
03008$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00748$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x007f
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00749$
;	genLabel
00748$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_deltaY
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genLabel
00749$:
;	genAssign
;	(locations are the same)
;	genLabel
00747$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_deltaY
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
	C$platform.c$698$4_2$388	= .
	.globl	C$platform.c$698$4_2$388
;src\states\platform.c:698: UBYTE tile_start = (((PLAYER.pos.x >> 4) + PLAYER.bounds.left)  >> 3);
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
;	skipping iCode since result will be rematerialized
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
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	AOP_STK for _platform_update_sloc26_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$699$4_2$388	= .
	.globl	C$platform.c$699$4_2$388
;src\states\platform.c:699: UBYTE tile_end   = (((PLAYER.pos.x >> 4) + PLAYER.bounds.right) >> 3) + 1;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
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
;	genPlus
	add	hl, bc
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
	ld	a, l
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc27_1_0
	inc	a
	ldhl	sp,	#15
	ld	(hl), a
	C$platform.c$700$4_2$388	= .
	.globl	C$platform.c$700$4_2$388
;src\states\platform.c:700: if (deltaY > 0) {
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_deltaY
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03009$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03010$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03010$
03009$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03010$
	scf
03010$:
	jp	NC, 00246$
;	skipping generated iCode
	C$platform.c$703$5_2$389	= .
	.globl	C$platform.c$703$5_2$389
;src\states\platform.c:703: WORD new_y = PLAYER.pos.y + deltaY;
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
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _platform_update_sloc28_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#21
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#20
;	genMove_o size 0
	C$platform.c$704$5_2$389	= .
	.globl	C$platform.c$704$5_2$389
;src\states\platform.c:704: UBYTE tile_y = ((new_y >> 4) + PLAYER.bounds.bottom) >> 3;
;	genRightShift
;	AOP_STK for _platform_update_sloc28_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 9) + 0)
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
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
;	genMove_o size 0
;	genRightShift
;	genMove_o size 2
	sra	h
	rr	e
	sra	h
	rr	e
	sra	h
	rr	e
;	genCast
;	genMove_o size 1
	C$platform.c$705$1_1$327	= .
	.globl	C$platform.c$705$1_1$327
;src\states\platform.c:705: while (tile_start != tile_end) {
;	genAssign
;	AOP_STK for _platform_update_sloc26_1_0
;	AOP_STK for _platform_update_sloc29_1_0
;	(locations are the same)
;	genLabel
00235$:
;	genCmpEq
;	AOP_STK for _platform_update_sloc27_1_0
;	AOP_STK for _platform_update_sloc29_1_0
	ldhl	sp,	#15
	ld	a, (hl)
	ldhl	sp,	#23
	sub	a, (hl)
	jp	Z,00237$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03011$.
;	skipping generated iCode
;src\states\platform.c:706: if (tile_at(tile_start, tile_y) & COLLISION_TOP) {                    
;	genAssign
;	AOP_STK for _platform_update_sloc29_1_0
;	AOP_STK for _platform_update_sloc30_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#17
	ld	(hl), a
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _platform_update_sloc29_1_0
	ldhl	sp,	#23
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00679$
;	skipping generated iCode
;	genCmpLt
	ld	a, e
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00679$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _platform_update_sloc31_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#18
	ld	(hl), a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genCast
;	genMove_o size 1
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genSend
	push	de
;	genMove_o size 2
;	genSend
;	genMove_o size 2
	ld	e, l
;	genMove_o size 0
;	genCall
	call	__mulint
;	genMove_o size 2
	pop	de
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
;	AOP_STK for _platform_update_sloc30_1_0
;fetchPairLong
	ldhl	sp,	#17
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _platform_update_sloc31_1_0
	push	de
;	genMove_o size 1
	ldhl	sp,	#20
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	e, c
;	genMove_o size 0
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
	pop	de
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00680$
;	genLabel
00679$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	a, #0x0f
;src\states\platform.c:706: if (tile_at(tile_start, tile_y) & COLLISION_TOP) {                    
;	genLabel
00680$:
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00234$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03012$.
;	skipping generated iCode
	C$platform.c$708$7_2$391	= .
	.globl	C$platform.c$708$7_2$391
;src\states\platform.c:708: new_y = ((((tile_y) << 3) - PLAYER.bounds.bottom) << 4) - 1;
;	genCast
;	genMove_o size 1
	ld	l, e
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
;fetchPairLong
	ld	c, l
	ld	b, h
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 9) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genMinus
;	AOP_STK for _platform_update_sloc28_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#20
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
	C$platform.c$709$7_2$391	= .
	.globl	C$platform.c$709$7_2$391
;src\states\platform.c:709: actor_attached = FALSE; //Detach when MP moves through a solid tile.                                   
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x00
	C$platform.c$710$7_2$391	= .
	.globl	C$platform.c$710$7_2$391
;src\states\platform.c:710: pl_vel_y = 256;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x01
	C$platform.c$711$7_2$391	= .
	.globl	C$platform.c$711$7_2$391
;src\states\platform.c:711: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00237$
;	genLabel
00234$:
	C$platform.c$713$6_2$390	= .
	.globl	C$platform.c$713$6_2$390
;src\states\platform.c:713: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc29_1_0
	ldhl	sp,	#23
	inc	(hl)
;	genGoto
	jp	00235$
;	genLabel
00237$:
	C$platform.c$715$5_2$389	= .
	.globl	C$platform.c$715$5_2$389
;src\states\platform.c:715: PLAYER.pos.y = new_y;
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _platform_update_sloc28_1_0
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 3)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00247$
;	genLabel
00246$:
	C$platform.c$716$4_2$388	= .
	.globl	C$platform.c$716$4_2$388
;src\states\platform.c:716: } else if (deltaY < 0) {
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_deltaY + 1)
	bit	7, a
	jp	Z, 00247$
;	skipping generated iCode
	C$platform.c$719$5_2$392	= .
	.globl	C$platform.c$719$5_2$392
;src\states\platform.c:719: WORD new_y = PLAYER.pos.y + deltaY;
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
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _platform_update_sloc32_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#18
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#17
;	genMove_o size 0
	C$platform.c$720$5_2$392	= .
	.globl	C$platform.c$720$5_2$392
;src\states\platform.c:720: UBYTE tile_y = (((new_y >> 4) + PLAYER.bounds.top) >> 3);
;	genRightShift
;	AOP_STK for _platform_update_sloc32_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
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
;	AOP_STK for _platform_update_sloc33_1_0
;	genMove_o size 1
	ldhl	sp,	#18
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$721$1_1$327	= .
	.globl	C$platform.c$721$1_1$327
;src\states\platform.c:721: while (tile_start != tile_end) {
;	genAssign
;	AOP_STK for _platform_update_sloc26_1_0
;	AOP_STK for _platform_update_sloc34_1_0
;	(locations are the same)
;	genLabel
00240$:
;	genCmpEq
;	AOP_STK for _platform_update_sloc27_1_0
;	AOP_STK for _platform_update_sloc34_1_0
	ldhl	sp,	#15
	ld	a, (hl)
	ldhl	sp,	#23
	sub	a, (hl)
	jp	Z,00242$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03013$.
;	skipping generated iCode
;src\states\platform.c:722: if (tile_at(tile_start, tile_y) & COLLISION_BOTTOM) {
;	genAssign
;	AOP_STK for _platform_update_sloc34_1_0
;	AOP_STK for _platform_update_sloc35_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#19
	ld	(hl), a
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _platform_update_sloc34_1_0
	ldhl	sp,	#23
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00684$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _platform_update_sloc33_1_0
	ldhl	sp,	#18
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00684$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _platform_update_sloc36_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#20
	ld	(hl), a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genCast
;	AOP_STK for _platform_update_sloc33_1_0
;	genMove_o size 1
	ldhl	sp,	#18
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
;	AOP_STK for _platform_update_sloc35_1_0
;fetchPairLong
	ldhl	sp,	#19
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _platform_update_sloc36_1_0
;	genMove_o size 1
	ldhl	sp,	#20
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
	jr	00685$
;	genLabel
00684$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\states\platform.c:722: if (tile_at(tile_start, tile_y) & COLLISION_BOTTOM) {
;	genLabel
00685$:
;	genAnd
	bit	1, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00239$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03014$.
;	skipping generated iCode
	C$platform.c$723$7_2$394	= .
	.globl	C$platform.c$723$7_2$394
;src\states\platform.c:723: new_y = ((((UBYTE)(tile_y + 1) << 3) - PLAYER.bounds.top) << 4) + 1;
;	genCast
;	AOP_STK for _platform_update_sloc33_1_0
;	genMove_o size 1
	ldhl	sp,	#18
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	inc	l
;	genCast
;	(locations are the same)
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
;	AOP_STK for _platform_update_sloc32_1_0
; common peephole 69 incremented in hl instead of bc.
	inc	hl
	ld	c, l
	ld	b, h
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$platform.c$724$7_2$394	= .
	.globl	C$platform.c$724$7_2$394
;src\states\platform.c:724: pl_vel_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$725$7_2$394	= .
	.globl	C$platform.c$725$7_2$394
;src\states\platform.c:725: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00242$
;	genLabel
00239$:
	C$platform.c$727$6_2$393	= .
	.globl	C$platform.c$727$6_2$393
;src\states\platform.c:727: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc34_1_0
	ldhl	sp,	#23
	inc	(hl)
;	genGoto
	jp	00240$
;	genLabel
00242$:
	C$platform.c$729$5_2$392	= .
	.globl	C$platform.c$729$5_2$392
;src\states\platform.c:729: PLAYER.pos.y = new_y;
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _platform_update_sloc32_1_0
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 3)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00247$:
	C$platform.c$732$4_2$388	= .
	.globl	C$platform.c$732$4_2$388
;src\states\platform.c:732: pl_vel_y = CLAMP(pl_vel_y,-plat_max_fall_vel, plat_max_fall_vel);
;	genUminus
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_plat_max_fall_vel
	sub	a, (hl)
;fetchLitPair	hl
; common peephole 96b move inc hl before sbc a, a
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	sbc	a, a
	sub	a, (hl)
	ld	b, a
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
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
	jr	Z, 03015$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03016$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03016$
03015$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03016$
	scf
03016$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00750$
;	skipping generated iCode
;	genUminus
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_plat_max_fall_vel
	sub	a, (hl)
;fetchLitPair	hl
; common peephole 96b move inc hl before sbc a, a
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	sbc	a, a
	sub	a, (hl)
	ld	b, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00751$
;	genLabel
00750$:
;	genCmpGt
;fetchLitPair	de
	ld	de, #_plat_max_fall_vel
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
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
	jr	Z, 03017$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03018$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03018$
03017$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03018$
	scf
03018$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00752$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_max_fall_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00753$
;	genLabel
00752$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genLabel
00753$:
;	genAssign
;	(locations are the same)
;	genLabel
00751$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00250$
;	genLabel
00249$:
	C$platform.c$734$4_1$395	= .
	.globl	C$platform.c$734$4_1$395
;src\states\platform.c:734: temp_y = PLAYER.pos.y;  
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#21
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00250$:
	C$platform.c$739$2_1$338	= .
	.globl	C$platform.c$739$2_1$338
;src\states\platform.c:739: if (plat_dash_through >= 1){
;	genCmpLt
;fetchLitPair	hl
	ld	a, (#_plat_dash_through)
; common peephole 17 loaded a from (#_plat_dash_through) directly instead of using hl.
	sub	a, #0x01
	jp	C, 00471$
;	skipping generated iCode
	C$platform.c$740$3_1$396	= .
	.globl	C$platform.c$740$3_1$396
;src\states\platform.c:740: goto gotoSwitch2;
;	genGoto
	jp	00521$
	C$platform.c$744$2_1$338	= .
	.globl	C$platform.c$744$2_1$338
;src\states\platform.c:744: case LADDER_INIT:
;	genLabel
00253$:
	C$platform.c$745$2_1$338	= .
	.globl	C$platform.c$745$2_1$338
;src\states\platform.c:745: que_state = LADDER_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x0d
	C$platform.c$746$2_1$338	= .
	.globl	C$platform.c$746$2_1$338
;src\states\platform.c:746: jump_type = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x00
	C$platform.c$747$2_1$338	= .
	.globl	C$platform.c$747$2_1$338
;src\states\platform.c:747: case LADDER_STATE:{
;	genLabel
00254$:
	C$platform.c$748$3_1$397	= .
	.globl	C$platform.c$748$3_1$397
;src\states\platform.c:748: ladder_switch();
;	genCall
	ld	e, #b_ladder_switch
	ld	hl, #_ladder_switch
	call	___sdcc_bcall_ehl
	C$platform.c$750$2_1$338	= .
	.globl	C$platform.c$750$2_1$338
;src\states\platform.c:750: goto gotoActorCol;
;	genGoto
	jp	00471$
	C$platform.c$752$2_1$338	= .
	.globl	C$platform.c$752$2_1$338
;src\states\platform.c:752: case WALL_INIT:
;	genLabel
00255$:
	C$platform.c$753$2_1$338	= .
	.globl	C$platform.c$753$2_1$338
;src\states\platform.c:753: que_state = WALL_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x10
	C$platform.c$754$2_1$338	= .
	.globl	C$platform.c$754$2_1$338
;src\states\platform.c:754: jump_type = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x00
	C$platform.c$755$2_1$338	= .
	.globl	C$platform.c$755$2_1$338
;src\states\platform.c:755: run_stage = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0x00
	C$platform.c$756$2_1$338	= .
	.globl	C$platform.c$756$2_1$338
;src\states\platform.c:756: case WALL_STATE:{
;	genLabel
00256$:
	C$platform.c$759$3_1$398	= .
	.globl	C$platform.c$759$3_1$398
;src\states\platform.c:759: if (nocollide != 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_nocollide)
; common peephole 17 loaded a from (#_nocollide) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00264$
	C$platform.c$760$4_1$399	= .
	.globl	C$platform.c$760$4_1$399
;src\states\platform.c:760: pl_vel_y += 7000; //magic number, rough minimum for actually having the player descend through a platform
;	genPlus
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
	ld	a, (hl)
	add	a, #0x58
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, #0x1b
;fetchLitPair	hl
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00265$
;	genLabel
00264$:
	C$platform.c$761$3_1$398	= .
	.globl	C$platform.c$761$3_1$398
;src\states\platform.c:761: } else if (pl_vel_y < 0){
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_pl_vel_y + 1
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00261$
;	skipping generated iCode
	C$platform.c$763$4_1$400	= .
	.globl	C$platform.c$763$4_1$400
;src\states\platform.c:763: pl_vel_y += plat_grav;
;	genPlus
;fetchLitPair	hl
	dec	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_grav
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_grav + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00265$
;	genLabel
00261$:
	C$platform.c$764$3_1$398	= .
	.globl	C$platform.c$764$3_1$398
;src\states\platform.c:764: } else if (plat_wall_slide) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_plat_wall_slide)
; common peephole 17 loaded a from (#_plat_wall_slide) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00258$
	C$platform.c$766$4_1$401	= .
	.globl	C$platform.c$766$4_1$401
;src\states\platform.c:766: pl_vel_y = plat_wall_grav;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_plat_wall_grav)
; common peephole 17 loaded a from (#_plat_wall_grav) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_pl_vel_y),a
; common peephole 19 loaded (#_pl_vel_y) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_plat_wall_grav + 1)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00265$
;	genLabel
00258$:
	C$platform.c$769$4_1$402	= .
	.globl	C$platform.c$769$4_1$402
;src\states\platform.c:769: pl_vel_y += plat_grav;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_y)
; common peephole 17 loaded a from (#_pl_vel_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_grav
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_grav + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
;	genLabel
00265$:
	C$platform.c$774$3_1$398	= .
	.globl	C$platform.c$774$3_1$398
;src\states\platform.c:774: deltaY += pl_vel_y >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	hl, #_pl_vel_y + 1
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$775$3_1$398	= .
	.globl	C$platform.c$775$3_1$398
;src\states\platform.c:775: temp_y = PLAYER.pos.y;    
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#21
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$platform.c$777$2_1$338	= .
	.globl	C$platform.c$777$2_1$338
;src\states\platform.c:777: break;
;	genGoto
	jp	00275$
	C$platform.c$779$2_1$338	= .
	.globl	C$platform.c$779$2_1$338
;src\states\platform.c:779: case KNOCKBACK_INIT:
;	genLabel
00266$:
	C$platform.c$780$2_1$338	= .
	.globl	C$platform.c$780$2_1$338
;src\states\platform.c:780: run_stage = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0x00
	C$platform.c$781$2_1$338	= .
	.globl	C$platform.c$781$2_1$338
;src\states\platform.c:781: jump_type = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x00
	C$platform.c$782$2_1$338	= .
	.globl	C$platform.c$782$2_1$338
;src\states\platform.c:782: que_state = KNOCKBACK_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x13
	C$platform.c$783$2_1$338	= .
	.globl	C$platform.c$783$2_1$338
;src\states\platform.c:783: case KNOCKBACK_STATE: {
;	genLabel
00267$:
	C$platform.c$785$3_1$403	= .
	.globl	C$platform.c$785$3_1$403
;src\states\platform.c:785: if (pl_vel_x < 0) {
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_pl_vel_x + 1
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00271$
;	skipping generated iCode
	C$platform.c$786$4_1$404	= .
	.globl	C$platform.c$786$4_1$404
;src\states\platform.c:786: pl_vel_x += plat_air_dec;
;	genPlus
;fetchLitPair	hl
	dec	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_air_dec
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_air_dec + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_x + 1
	ld	(hl), a
	C$platform.c$787$4_1$404	= .
	.globl	C$platform.c$787$4_1$404
;src\states\platform.c:787: pl_vel_x = MIN(pl_vel_x, 0);
;	genCmpLt
;fetchLitPair	hl
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00754$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	dec	hl
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00755$
;	genLabel
00754$:
;	genAssign
;	genMove_o size 2
	xor	a, a
	ld	c, a
;	genLabel
00755$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00272$
;	genLabel
00271$:
	C$platform.c$788$3_1$403	= .
	.globl	C$platform.c$788$3_1$403
;src\states\platform.c:788: } else if (pl_vel_x > 0) {
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03019$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03020$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03020$
03019$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03020$
	scf
03020$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00272$
;	skipping generated iCode
	C$platform.c$789$4_1$405	= .
	.globl	C$platform.c$789$4_1$405
;src\states\platform.c:789: pl_vel_x -= plat_air_dec;
;	genMinus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_air_dec
	sub	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_air_dec + 1
	sbc	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_x + 1
	C$platform.c$790$4_1$405	= .
	.globl	C$platform.c$790$4_1$405
;src\states\platform.c:790: pl_vel_x = MAX(pl_vel_x, 0);
;	genCmpGt
;fetchLitPair	hl
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03021$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03022$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03022$
03021$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03022$
	scf
03022$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00756$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00757$
;	genLabel
00756$:
;	genAssign
;	genMove_o size 2
	xor	a, a
	ld	c, a
;	genLabel
00757$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genLabel
00272$:
	C$platform.c$792$3_1$403	= .
	.globl	C$platform.c$792$3_1$403
;src\states\platform.c:792: deltaX += pl_vel_x >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	hl, #_pl_vel_x + 1
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaX
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$796$3_1$403	= .
	.globl	C$platform.c$796$3_1$403
;src\states\platform.c:796: pl_vel_y += plat_grav;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_y)
; common peephole 17 loaded a from (#_pl_vel_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_grav
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_grav + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
	C$platform.c$797$3_1$403	= .
	.globl	C$platform.c$797$3_1$403
;src\states\platform.c:797: pl_vel_y = MIN(pl_vel_y,plat_max_fall_vel);
;	genCmpLt
;fetchLitPair	de
	ld	de, #_pl_vel_y
;fetchLitPair	hl
	ld	hl, #_plat_max_fall_vel
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
	jr	Z, 03023$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03024$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03024$
03023$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03024$
	scf
03024$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00758$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00759$
;	genLabel
00758$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_max_fall_vel
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genLabel
00759$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	C$platform.c$803$3_1$403	= .
	.globl	C$platform.c$803$3_1$403
;src\states\platform.c:803: deltaY += pl_vel_y >> 8;
;	genRightShift
;fetchLitPair	hl
; common peephole 176a remove unnecessary load back
	ld	a,c
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$804$3_1$403	= .
	.globl	C$platform.c$804$3_1$403
;src\states\platform.c:804: temp_y = PLAYER.pos.y;    
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#21
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$platform.c$806$3_1$403	= .
	.globl	C$platform.c$806$3_1$403
;src\states\platform.c:806: nocollide = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_nocollide
	ld	(hl), #0x00
	C$platform.c$808$2_1$338	= .
	.globl	C$platform.c$808$2_1$338
;src\states\platform.c:808: goto gotoXCol;
;	genGoto
	jp	00319$
	C$platform.c$810$2_1$338	= .
	.globl	C$platform.c$810$2_1$338
;src\states\platform.c:810: case BLANK_INIT:
;	genLabel
00273$:
	C$platform.c$811$2_1$338	= .
	.globl	C$platform.c$811$2_1$338
;src\states\platform.c:811: que_state = BLANK_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x15
	C$platform.c$812$2_1$338	= .
	.globl	C$platform.c$812$2_1$338
;src\states\platform.c:812: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$813$2_1$338	= .
	.globl	C$platform.c$813$2_1$338
;src\states\platform.c:813: pl_vel_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$814$2_1$338	= .
	.globl	C$platform.c$814$2_1$338
;src\states\platform.c:814: run_stage = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0x00
	C$platform.c$815$2_1$338	= .
	.globl	C$platform.c$815$2_1$338
;src\states\platform.c:815: jump_type = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x00
	C$platform.c$817$2_1$338	= .
	.globl	C$platform.c$817$2_1$338
;src\states\platform.c:817: goto gotoActorCol;
;	genGoto
	jp	00471$
	C$platform.c$818$1_1$328	= .
	.globl	C$platform.c$818$1_1$328
;src\states\platform.c:818: }
;	genLabel
00275$:
	C$platform.c$823$1_1$328	= .
	.globl	C$platform.c$823$1_1$328
;src\states\platform.c:823: if (INPUT_LEFT || INPUT_RIGHT){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03025$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00315$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03026$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	rrca
	jp	NC,00316$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03027$.
;	skipping generated iCode
;	genLabel
00315$:
	C$platform.c$824$3_1$406	= .
	.globl	C$platform.c$824$3_1$406
;src\states\platform.c:824: BYTE dir = 1;
;	genAssign
;	AOP_STK for _platform_update_sloc37_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	(hl), #0x01
	C$platform.c$825$2_1$406	= .
	.globl	C$platform.c$825$2_1$406
;src\states\platform.c:825: if (INPUT_LEFT){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00277$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03028$.
;	skipping generated iCode
	C$platform.c$826$3_1$407	= .
	.globl	C$platform.c$826$3_1$407
;src\states\platform.c:826: dir = -1;
;	genAssign
;	AOP_STK for _platform_update_sloc37_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	(hl), #0xff
	C$platform.c$827$3_1$407	= .
	.globl	C$platform.c$827$3_1$407
;src\states\platform.c:827: pl_vel_x = -pl_vel_x;
;	genUminus
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
	sub	a, (hl)
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 96b move inc hl before sbc a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	sbc	a, a
	sub	a, (hl)
;fetchLitPair	hl
	ld	(hl), a
;	genLabel
00277$:
	C$platform.c$830$2_1$406	= .
	.globl	C$platform.c$830$2_1$406
;src\states\platform.c:830: if (INPUT_PLATFORM_RUN){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	5, a
	jp	Z,00298$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03029$.
;	skipping generated iCode
	C$platform.c$831$3_1$408	= .
	.globl	C$platform.c$831$3_1$408
;src\states\platform.c:831: switch(plat_run_type){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_run_type)
; common peephole 17 loaded a from (#_plat_run_type) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00278$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03030$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_run_type)
; common peephole 17 loaded a from (#_plat_run_type) directly instead of using hl.
	dec	a
	jp	Z,00283$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03031$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
; common peephole 17 loaded a from (#_plat_run_type) directly instead of using hl.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03032$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a,(#_plat_run_type)
	cp	a,#0x02
	jp	Z,00284$
; common peephole 107 removed load from (#_plat_run_type) into a by replacing sub with cp
; common peephole 17 loaded a from (#_plat_run_type) directly instead of using hl.
	sub	a, #0x03
	jp	Z,00291$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03033$.
;	skipping generated iCode
;	genGoto
	jp	00319$
	C$platform.c$832$4_1$409	= .
	.globl	C$platform.c$832$4_1$409
;src\states\platform.c:832: case 0:
;	genLabel
00278$:
	C$platform.c$834$4_1$409	= .
	.globl	C$platform.c$834$4_1$409
;src\states\platform.c:834: if(pl_vel_x < 0 && plat_turn_acc != 0){
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00280$
;	skipping generated iCode
;	genIfx
;fetchLitPair	hl
	ld	hl, #_plat_turn_acc + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00280$
	C$platform.c$835$5_1$410	= .
	.globl	C$platform.c$835$5_1$410
;src\states\platform.c:835: pl_vel_x += plat_turn_acc;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_turn_acc
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_turn_acc + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_x + 1),a
; common peephole 20 loaded (#_pl_vel_x) from a directly instead of using hl.
	C$platform.c$836$5_1$410	= .
	.globl	C$platform.c$836$5_1$410
;src\states\platform.c:836: run_stage = -1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0xff
;	genGoto
	jp	00281$
;	genLabel
00280$:
	C$platform.c$838$5_1$411	= .
	.globl	C$platform.c$838$5_1$411
;src\states\platform.c:838: run_stage = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0x00
	C$platform.c$839$5_1$411	= .
	.globl	C$platform.c$839$5_1$411
;src\states\platform.c:839: pl_vel_x = CLAMP(pl_vel_x + plat_walk_acc, plat_min_vel, plat_walk_vel); 
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_walk_acc
	add	a, (hl)
	ld	c, a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
;fetchLitPair	hl
	ld	hl, #_plat_walk_acc + 1
	adc	a, (hl)
	ld	b, a
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_plat_min_vel
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
	jr	Z, 03034$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03035$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03035$
03034$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03035$
	scf
03035$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00760$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_min_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00761$
;	genLabel
00760$:
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_walk_acc
	add	a, (hl)
	ld	c, a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
;fetchLitPair	hl
	ld	hl, #_plat_walk_acc + 1
	adc	a, (hl)
	ld	b, a
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_plat_walk_vel
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
	jr	Z, 03036$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03037$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03037$
03036$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03037$
	scf
03037$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00762$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_walk_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00763$
;	genLabel
00762$:
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_walk_acc
	add	a, (hl)
	ld	c, a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
;fetchLitPair	hl
	ld	hl, #_plat_walk_acc + 1
	adc	a, (hl)
	ld	b, a
;	genLabel
00763$:
;	genAssign
;	(locations are the same)
;	genLabel
00761$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00281$:
	C$platform.c$841$4_1$409	= .
	.globl	C$platform.c$841$4_1$409
;src\states\platform.c:841: pl_vel_x *= dir;
;	genCast
;	AOP_STK for _platform_update_sloc37_1_0
;	genMove_o size 0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
;	genMove_o size 0
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	__mulint
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$842$4_1$409	= .
	.globl	C$platform.c$842$4_1$409
;src\states\platform.c:842: deltaX += pl_vel_x >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaX
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$844$4_1$409	= .
	.globl	C$platform.c$844$4_1$409
;src\states\platform.c:844: break;
;	genGoto
	jp	00319$
	C$platform.c$845$4_1$409	= .
	.globl	C$platform.c$845$4_1$409
;src\states\platform.c:845: case 1:
;	genLabel
00283$:
	C$platform.c$847$4_1$409	= .
	.globl	C$platform.c$847$4_1$409
;src\states\platform.c:847: pl_vel_x = CLAMP(pl_vel_x + plat_run_acc, plat_min_vel, plat_run_vel);
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_run_acc
	add	a, (hl)
	ld	c, a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
;fetchLitPair	hl
	ld	hl, #_plat_run_acc + 1
	adc	a, (hl)
	ld	b, a
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_plat_min_vel
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
	jr	Z, 03038$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03039$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03039$
03038$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03039$
	scf
03039$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00764$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_min_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00765$
;	genLabel
00764$:
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_run_acc
	add	a, (hl)
	ld	c, a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
;fetchLitPair	hl
	ld	hl, #_plat_run_acc + 1
	adc	a, (hl)
	ld	b, a
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_plat_run_vel
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
	jr	Z, 03040$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03041$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03041$
03040$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03041$
	scf
03041$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00766$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_run_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00767$
;	genLabel
00766$:
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_run_acc
	add	a, (hl)
	ld	c, a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
;fetchLitPair	hl
	ld	hl, #_plat_run_acc + 1
	adc	a, (hl)
	ld	b, a
;	genLabel
00767$:
;	genAssign
;	(locations are the same)
;	genLabel
00765$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$848$4_1$409	= .
	.globl	C$platform.c$848$4_1$409
;src\states\platform.c:848: pl_vel_x *= dir;
;	genCast
;	AOP_STK for _platform_update_sloc37_1_0
;	genMove_o size 0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
;	genMove_o size 0
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	__mulint
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$849$4_1$409	= .
	.globl	C$platform.c$849$4_1$409
;src\states\platform.c:849: deltaX += pl_vel_x >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaX
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$850$4_1$409	= .
	.globl	C$platform.c$850$4_1$409
;src\states\platform.c:850: run_stage = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0x01
	C$platform.c$851$4_1$409	= .
	.globl	C$platform.c$851$4_1$409
;src\states\platform.c:851: break;
;	genGoto
	jp	00319$
	C$platform.c$852$4_1$409	= .
	.globl	C$platform.c$852$4_1$409
;src\states\platform.c:852: case 2:
;	genLabel
00284$:
	C$platform.c$854$4_1$409	= .
	.globl	C$platform.c$854$4_1$409
;src\states\platform.c:854: if(pl_vel_x < 0){
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_pl_vel_x + 1
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00289$
;	skipping generated iCode
	C$platform.c$855$5_1$412	= .
	.globl	C$platform.c$855$5_1$412
;src\states\platform.c:855: pl_vel_x += plat_turn_acc;
;	genPlus
;fetchLitPair	hl
	dec	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_turn_acc
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_turn_acc + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_x + 1),a
; common peephole 20 loaded (#_pl_vel_x) from a directly instead of using hl.
	C$platform.c$856$5_1$412	= .
	.globl	C$platform.c$856$5_1$412
;src\states\platform.c:856: run_stage = -1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0xff
;	genGoto
	jp	00290$
;	genLabel
00289$:
	C$platform.c$858$4_1$409	= .
	.globl	C$platform.c$858$4_1$409
;src\states\platform.c:858: else if (pl_vel_x < plat_walk_vel){
;	genCmpLt
;fetchLitPair	de
	ld	de, #_pl_vel_x
;fetchLitPair	hl
	ld	hl, #_plat_walk_vel
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
	jr	Z, 03042$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03043$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03043$
03042$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03043$
	scf
03043$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00286$
;	skipping generated iCode
	C$platform.c$859$5_1$413	= .
	.globl	C$platform.c$859$5_1$413
;src\states\platform.c:859: pl_vel_x = MAX(pl_vel_x + plat_walk_acc, plat_min_vel);
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_walk_acc
	add	a, (hl)
	ld	c, a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
;fetchLitPair	hl
	ld	hl, #_plat_walk_acc + 1
	adc	a, (hl)
	ld	b, a
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_plat_min_vel
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
	jr	Z, 03044$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03045$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03045$
03044$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03045$
	scf
03045$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00768$
;	skipping generated iCode
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_walk_acc
	add	a, (hl)
	ld	e, a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
;fetchLitPair	hl
	ld	hl, #_plat_walk_acc + 1
	adc	a, (hl)
	ld	c, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00769$
;	genLabel
00768$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_min_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	c, (hl)
;	genLabel
00769$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), c
	C$platform.c$860$5_1$413	= .
	.globl	C$platform.c$860$5_1$413
;src\states\platform.c:860: run_stage = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00290$
;	genLabel
00286$:
	C$platform.c$863$5_1$414	= .
	.globl	C$platform.c$863$5_1$414
;src\states\platform.c:863: pl_vel_x = MIN(pl_vel_x + plat_run_acc, plat_run_vel);
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_run_acc
	add	a, (hl)
	ld	c, a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
;fetchLitPair	hl
	ld	hl, #_plat_run_acc + 1
	adc	a, (hl)
	ld	b, a
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_plat_run_vel
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
	jr	Z, 03046$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03047$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03047$
03046$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03047$
	scf
03047$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00770$
;	skipping generated iCode
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_run_acc
	add	a, (hl)
	ld	e, a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
;fetchLitPair	hl
	ld	hl, #_plat_run_acc + 1
	adc	a, (hl)
	ld	c, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00771$
;	genLabel
00770$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_run_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	c, (hl)
;	genLabel
00771$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), c
	C$platform.c$864$5_1$414	= .
	.globl	C$platform.c$864$5_1$414
;src\states\platform.c:864: run_stage = 2;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0x02
;	genLabel
00290$:
	C$platform.c$866$4_1$409	= .
	.globl	C$platform.c$866$4_1$409
;src\states\platform.c:866: pl_vel_x *= dir;
;	genCast
;	AOP_STK for _platform_update_sloc37_1_0
;	genMove_o size 0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
;	genMove_o size 0
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	__mulint
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$867$4_1$409	= .
	.globl	C$platform.c$867$4_1$409
;src\states\platform.c:867: deltaX += pl_vel_x >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaX
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$868$4_1$409	= .
	.globl	C$platform.c$868$4_1$409
;src\states\platform.c:868: break;
;	genGoto
	jp	00319$
	C$platform.c$869$4_1$409	= .
	.globl	C$platform.c$869$4_1$409
;src\states\platform.c:869: case 3:
;	genLabel
00291$:
	C$platform.c$871$4_1$409	= .
	.globl	C$platform.c$871$4_1$409
;src\states\platform.c:871: run_stage = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0x01
	C$platform.c$872$4_1$409	= .
	.globl	C$platform.c$872$4_1$409
;src\states\platform.c:872: pl_vel_x = plat_run_vel * dir;
;	genCast
;	AOP_STK for _platform_update_sloc37_1_0
;	genMove_o size 0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
;	genMove_o size 0
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_run_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	__mulint
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$873$4_1$409	= .
	.globl	C$platform.c$873$4_1$409
;src\states\platform.c:873: deltaX += pl_vel_x >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaX
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$875$2_1$406	= .
	.globl	C$platform.c$875$2_1$406
;src\states\platform.c:875: }
;	genGoto
	jp	00319$
;	genLabel
00298$:
	C$platform.c$878$3_1$415	= .
	.globl	C$platform.c$878$3_1$415
;src\states\platform.c:878: if(pl_vel_x < 0 && plat_turn_acc != 0){
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00294$
;	skipping generated iCode
;	genIfx
;fetchLitPair	hl
	ld	hl, #_plat_turn_acc + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00294$
	C$platform.c$879$4_1$416	= .
	.globl	C$platform.c$879$4_1$416
;src\states\platform.c:879: pl_vel_x += plat_turn_acc;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_turn_acc
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_turn_acc + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_x + 1),a
; common peephole 20 loaded (#_pl_vel_x) from a directly instead of using hl.
	C$platform.c$880$4_1$416	= .
	.globl	C$platform.c$880$4_1$416
;src\states\platform.c:880: run_stage = -1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0xff
;	genGoto
; common peephole 162a changed absolute to relative unconditional jump.
	jr	00295$
;	genLabel
00294$:
	C$platform.c$882$4_1$417	= .
	.globl	C$platform.c$882$4_1$417
;src\states\platform.c:882: run_stage = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0x00
	C$platform.c$883$4_1$417	= .
	.globl	C$platform.c$883$4_1$417
;src\states\platform.c:883: pl_vel_x += plat_walk_acc;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_walk_acc
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_walk_acc + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_x + 1),a
; common peephole 20 loaded (#_pl_vel_x) from a directly instead of using hl.
	C$platform.c$884$4_1$417	= .
	.globl	C$platform.c$884$4_1$417
;src\states\platform.c:884: pl_vel_x = CLAMP(pl_vel_x, plat_min_vel, plat_walk_vel); 
;	genCmpLt
;fetchLitPair	de
	ld	de, #_pl_vel_x
;fetchLitPair	hl
	ld	hl, #_plat_min_vel
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
	jr	Z, 03048$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03049$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03049$
03048$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03049$
	scf
03049$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00772$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_min_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00773$
;	genLabel
00772$:
;	genCmpGt
;fetchLitPair	de
	ld	de, #_plat_walk_vel
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
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
	jr	Z, 03050$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03051$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03051$
03050$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03051$
	scf
03051$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00774$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_plat_walk_vel
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00775$
;	genLabel
00774$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genLabel
00775$:
;	genAssign
;	(locations are the same)
;	genLabel
00773$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
	ld	(hl), c
;fetchLitPair	hl
	inc	hl
	ld	(hl), a
;	genLabel
00295$:
	C$platform.c$886$3_1$415	= .
	.globl	C$platform.c$886$3_1$415
;src\states\platform.c:886: pl_vel_x *= dir;
;	genCast
;	AOP_STK for _platform_update_sloc37_1_0
;	genMove_o size 0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
;	genMove_o size 0
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	__mulint
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$887$3_1$415	= .
	.globl	C$platform.c$887$3_1$415
;src\states\platform.c:887: deltaX += pl_vel_x >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaX
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
;	genGoto
	jp	00319$
;	genLabel
00316$:
	C$platform.c$892$2_1$418	= .
	.globl	C$platform.c$892$2_1$418
;src\states\platform.c:892: if (pl_vel_x < 0) {
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00313$
;	skipping generated iCode
	C$platform.c$893$3_1$419	= .
	.globl	C$platform.c$893$3_1$419
;src\states\platform.c:893: if (plat_state == GROUND_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_state)
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
	sub	a, #0x04
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03052$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00301$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03053$.
;	skipping generated iCode
	C$platform.c$894$4_1$420	= .
	.globl	C$platform.c$894$4_1$420
;src\states\platform.c:894: pl_vel_x += plat_dec;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_dec
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_dec + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_x + 1),a
; common peephole 20 loaded (#_pl_vel_x) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00302$
;	genLabel
00301$:
	C$platform.c$896$4_1$421	= .
	.globl	C$platform.c$896$4_1$421
;src\states\platform.c:896: pl_vel_x += plat_air_dec;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_air_dec
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_air_dec + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_x + 1),a
; common peephole 20 loaded (#_pl_vel_x) from a directly instead of using hl.
;	genLabel
00302$:
	C$platform.c$898$3_1$419	= .
	.globl	C$platform.c$898$3_1$419
;src\states\platform.c:898: if (pl_vel_x > 0) {
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03054$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03055$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03055$
03054$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03055$
	scf
03055$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00314$
;	skipping generated iCode
	C$platform.c$899$4_1$422	= .
	.globl	C$platform.c$899$4_1$422
;src\states\platform.c:899: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00314$
;	genLabel
00313$:
	C$platform.c$901$2_1$418	= .
	.globl	C$platform.c$901$2_1$418
;src\states\platform.c:901: } else if (pl_vel_x > 0) {
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03056$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03057$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03057$
03056$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03057$
	scf
03057$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00314$
;	skipping generated iCode
	C$platform.c$902$3_1$423	= .
	.globl	C$platform.c$902$3_1$423
;src\states\platform.c:902: if (plat_state == GROUND_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_state)
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
	sub	a, #0x04
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03058$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00306$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03059$.
;	skipping generated iCode
	C$platform.c$903$4_1$424	= .
	.globl	C$platform.c$903$4_1$424
;src\states\platform.c:903: pl_vel_x -= plat_dec;
;	genMinus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_dec
	sub	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_dec + 1
	sbc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_x + 1),a
; common peephole 20 loaded (#_pl_vel_x) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00307$
;	genLabel
00306$:
	C$platform.c$906$4_1$425	= .
	.globl	C$platform.c$906$4_1$425
;src\states\platform.c:906: pl_vel_x -= plat_air_dec;
;	genMinus
;fetchLitPair	hl
	ld	a, (#_pl_vel_x)
; common peephole 17 loaded a from (#_pl_vel_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_air_dec
	sub	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_air_dec + 1
	sbc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_x + 1),a
; common peephole 20 loaded (#_pl_vel_x) from a directly instead of using hl.
;	genLabel
00307$:
	C$platform.c$908$3_1$423	= .
	.globl	C$platform.c$908$3_1$423
;src\states\platform.c:908: if (pl_vel_x < 0) {
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_pl_vel_x + 1
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00314$
;	skipping generated iCode
	C$platform.c$909$4_1$426	= .
	.globl	C$platform.c$909$4_1$426
;src\states\platform.c:909: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
; common peephole 96b move dec hl before xor a, a
	dec	hl
	xor	a, a
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00314$:
	C$platform.c$912$2_1$418	= .
	.globl	C$platform.c$912$2_1$418
;src\states\platform.c:912: run_stage = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0x00
	C$platform.c$913$2_1$418	= .
	.globl	C$platform.c$913$2_1$418
;src\states\platform.c:913: deltaX += pl_vel_x >> 8;
;	genRightShift
;fetchLitPair	hl
	ld	hl, #_pl_vel_x + 1
	ld	c, (hl)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaX
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$918$1_1$328	= .
	.globl	C$platform.c$918$1_1$328
;src\states\platform.c:918: gotoXCol:
;	genLabel
00319$:
	C$platform.c$920$2_1$427	= .
	.globl	C$platform.c$920$2_1$427
;src\states\platform.c:920: deltaX = CLAMP(deltaX, -127, 127);
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_deltaX
; common peephole 96b move inc hl before sub a, #0x81
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, #0x81
	ld	a, (hl)
	sbc	a, #0xff
	ld	d, (hl)
	ld	a, #0xff
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through e.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03060$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03061$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03061$
03060$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03061$
	scf
03061$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00776$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0xff81
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00777$
;	genLabel
00776$:
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_deltaX
	ld	a, #0x7f
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03062$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03063$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03063$
03062$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03063$
	scf
03063$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00778$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x007f
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00779$
;	genLabel
00778$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_deltaX
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genLabel
00779$:
;	genAssign
;	(locations are the same)
;	genLabel
00777$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_deltaX
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
	C$platform.c$921$2_1$427	= .
	.globl	C$platform.c$921$2_1$427
;src\states\platform.c:921: prev_on_slope = on_slope;
;	genCast
;	AOP_STK for _platform_update_sloc38_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_on_slope)
; common peephole 17 loaded a from (#_on_slope) directly instead of using hl.
	ldhl	sp,	#23
	ld	(hl), a
	C$platform.c$922$2_1$427	= .
	.globl	C$platform.c$922$2_1$427
;src\states\platform.c:922: old_x = PLAYER.pos.x;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	bc
	ld	bc, #_actors + 1
;	genPointerGet
;	AOP_STK for _platform_update_sloc39_1_0
	ld	a, (bc)
;	genMove_o size 1
	ldhl	sp,	#2
	ld	(hl), a
;	genMove_o size 0
	C$platform.c$923$2_1$427	= .
	.globl	C$platform.c$923$2_1$427
;src\states\platform.c:923: on_slope = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_on_slope
	ld	(hl), #0x00
	C$platform.c$924$2_2$428	= .
	.globl	C$platform.c$924$2_2$428
;src\states\platform.c:924: UBYTE tile_start = (((PLAYER.pos.y >> 4) + PLAYER.bounds.top)    >> 3);
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
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
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	AOP_STK for _platform_update_sloc40_1_0
;	genMove_o size 1
	ldhl	sp,	#19
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$925$2_2$428	= .
	.globl	C$platform.c$925$2_2$428
;src\states\platform.c:925: UBYTE tile_end   = (((PLAYER.pos.y >> 4) + PLAYER.bounds.bottom) >> 3) + 1;       
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 9) + 0)
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
;	genPlus
	add	hl, bc
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
	ld	a, l
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc41_1_0
	inc	a
	ldhl	sp,	#7
	ld	(hl), a
	C$platform.c$926$2_2$428	= .
	.globl	C$platform.c$926$2_2$428
;src\states\platform.c:926: UWORD new_x = PLAYER.pos.x + deltaX;
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genPlus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_deltaX
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
;	AOP_STK for _platform_update_sloc42_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$platform.c$933$2_2$428	= .
	.globl	C$platform.c$933$2_2$428
;src\states\platform.c:933: if (new_x > (*edge_right + SCREEN_WIDTH - 16) <<4){
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_edge_right
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_edge_right + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genMinus
	add	a, #0x90
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genCast
;	(locations are the same)
;	genCmpGt
;	AOP_STK for _platform_update_sloc42_1_0
	ldhl	sp,	#8
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	jp	NC, 00329$
;	skipping generated iCode
	C$platform.c$935$3_2$429	= .
	.globl	C$platform.c$935$3_2$429
;src\states\platform.c:935: if (new_x > PLAYER.pos.x){
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc42_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genCmpGt
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00321$
;	skipping generated iCode
	C$platform.c$936$4_2$430	= .
	.globl	C$platform.c$936$4_2$430
;src\states\platform.c:936: new_x = PLAYER.pos.x;
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc42_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$platform.c$937$4_2$430	= .
	.globl	C$platform.c$937$4_2$430
;src\states\platform.c:937: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genGoto
	jp	00330$
;	genLabel
00321$:
	C$platform.c$940$4_2$431	= .
	.globl	C$platform.c$940$4_2$431
;src\states\platform.c:940: new_x = PLAYER.pos.x - MIN(PLAYER.pos.x - ((*edge_right + SCREEN_WIDTH - 16)<<4), 16);
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_edge_right
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_edge_right + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	h, (hl)
;	spillPairReg hl
;	genMinus
	add	a, #0x90
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #0x00
;	genLeftShift
;fetchPairLong
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	genMove_o size 2
	ld	a, c
	ld	e, b
;	genMove_o size 0
;	genMinus
	sub	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	sbc	a, h
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCmpLt
	ld	a, l
	sub	a, #0x10
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00780$
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _platform_update_sloc43_1_0
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_actors + 1)
	ld	a, (de)
	ldhl	sp,	#17
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_edge_right
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_edge_right + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genMinus
	add	a, #0x90
	ld	e, a
	ld	a, l
	adc	a, #0x00
;	genLeftShift
;	AOP_STK for _platform_update_sloc44_1_0
	sla	e
	adc	a, a
	sla	e
	adc	a, a
	sla	e
	adc	a, a
	sla	e
	adc	a, a
;	genMove_o size 2
	ldhl	sp,	#13
	ld	(hl), e
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	AOP_STK for _platform_update_sloc43_1_0
;	AOP_STK for _platform_update_sloc45_1_0
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
;	genMove_o size 0
;	genMinus
;	AOP_STK for _platform_update_sloc45_1_0
;	AOP_STK for _platform_update_sloc44_1_0
;	AOP_STK for _platform_update_sloc46_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#18
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00781$
;	genLabel
00780$:
;	genAssign
;	AOP_STK for _platform_update_sloc46_1_0
;	genMove_o size 2
	ldhl	sp,	#17
; common peephole 96b move inc hl before xor a, a
	ld	a, #0x10
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	xor	a, a
	ld	(hl), a
;	genLabel
00781$:
;	genCast
;	(locations are the same)
;	genMinus
;	AOP_STK for _platform_update_sloc46_1_0
;fetchPairLong
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#17
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ld	c, e
;	genAssign
;	AOP_STK for _platform_update_sloc42_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00330$
;	genLabel
00329$:
	C$platform.c$943$2_2$428	= .
	.globl	C$platform.c$943$2_2$428
;src\states\platform.c:943: } else if (new_x < *edge_left << 4){
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_edge_left
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_edge_left + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCmpLt
;	AOP_STK for _platform_update_sloc42_1_0
	ldhl	sp,	#8
; common peephole 96b move inc hl before sub a, c
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	jp	NC, 00330$
;	skipping generated iCode
	C$platform.c$944$3_2$432	= .
	.globl	C$platform.c$944$3_2$432
;src\states\platform.c:944: if (deltaX < 0){
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_deltaX + 1)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00324$
;	skipping generated iCode
	C$platform.c$945$4_2$433	= .
	.globl	C$platform.c$945$4_2$433
;src\states\platform.c:945: new_x = PLAYER.pos.x;
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc42_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$platform.c$946$4_2$433	= .
	.globl	C$platform.c$946$4_2$433
;src\states\platform.c:946: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genGoto
	jp	00330$
;	genLabel
00324$:
	C$platform.c$948$4_2$434	= .
	.globl	C$platform.c$948$4_2$434
;src\states\platform.c:948: new_x = PLAYER.pos.x + MIN(((*edge_left+8)<<4)-PLAYER.pos.x, 16);
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_edge_left
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_edge_left + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0008
	add	hl, de
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genCast
;	genMove_o size 2
	ld	a, l
;	genMove_o size 0
;	genMinus
	sub	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	sbc	a, b
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCmpLt
	ld	a, l
	sub	a, #0x10
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00782$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_edge_left
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_edge_left + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genPlus
	add	a, #0x08
	ld	e, a
	ld	a, l
	adc	a, #0x00
;	genLeftShift
;	AOP_STK for _platform_update_sloc47_1_0
	sla	e
	adc	a, a
	sla	e
	adc	a, a
	sla	e
	adc	a, a
	sla	e
	adc	a, a
;	genMove_o size 2
	ldhl	sp,	#17
	ld	(hl), e
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _platform_update_sloc48_1_0
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_actors + 1)
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genCast
;	AOP_STK for _platform_update_sloc47_1_0
;	AOP_STK for _platform_update_sloc49_1_0
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
;	genMove_o size 0
;	genMinus
;	AOP_STK for _platform_update_sloc49_1_0
;	AOP_STK for _platform_update_sloc48_1_0
;	AOP_STK for _platform_update_sloc50_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#18
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
;	genCast
;	AOP_STK for _platform_update_sloc50_1_0
;	genMove_o size 2
; sm83 peephole 2 used ldi to increment hl after load
	ld	(hl), e
	ld	a, (hl+)
; common peephole 0b removed redundant load from (hl) back into e.
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00783$
;	genLabel
00782$:
;	genAssign
;	genMove_o size 2
	ld	a, #0x10
	ld	e, #0x00
;	genLabel
00783$:
;	genCast
;	(locations are the same)
;	genPlus
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
;	genAssign
;	AOP_STK for _platform_update_sloc42_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00330$:
	C$platform.c$953$2_2$428	= .
	.globl	C$platform.c$953$2_2$428
;src\states\platform.c:953: if (new_x > PLAYER.pos.x) {
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc42_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genCmpGt
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	NC, 00390$
;	skipping generated iCode
	C$platform.c$954$3_2$435	= .
	.globl	C$platform.c$954$3_2$435
;src\states\platform.c:954: tile_x = ((new_x >> 4) + PLAYER.bounds.right) >> 3;
;	genRightShift
;	AOP_STK for _platform_update_sloc42_1_0
;fetchPairLong
	dec	hl
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
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
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
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	ld	d, h
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
;	genCast
;	AOP_STK for _platform_update_sloc51_1_0
;	genMove_o size 1
	ldhl	sp,	#10
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$957$3_2$435	= .
	.globl	C$platform.c$957$3_2$435
;src\states\platform.c:957: tile_y   = (((PLAYER.pos.y >> 4) + PLAYER.bounds.bottom) >> 3);
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 3
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
;	genPlus
;fetchLitPair	de
	ld	de, #_actors + 9
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
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	AOP_STK for _platform_update_sloc52_1_0
;	genMove_o size 1
	ldhl	sp,	#16
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$958$3_3$436	= .
	.globl	C$platform.c$958$3_3$436
;src\states\platform.c:958: UBYTE tile_x_mid = ((new_x >> 4) + PLAYER.bounds.left + p_half_width + 1) >> 3; 
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
;	genCast
;	AOP_STK for _platform_update_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#20
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	add	hl, bc
;	genPlus
	inc	hl
;	genMove_o size 2
	ld	c, l
;	genMove_o size 0
;	genRightShift
;	genMove_o size 2
	srl	h
	rr	c
	srl	h
	rr	c
	srl	h
	rr	c
;	genCast
;	genMove_o size 1
;src\states\platform.c:959: col_mid = tile_at(tile_x_mid, tile_y);
;	genAssign
;	AOP_STK for _platform_update_sloc52_1_0
;	genMove_o size 1
	ldhl	sp,	#16
;	genMove_o size 0
;	genAssign
;	AOP_STK for _platform_update_sloc53_1_0
;	genMove_o size 1
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
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
	jr	NC, 00689$
;	skipping generated iCode
;	genCmpLt
	ld	a, e
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00689$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _platform_update_sloc54_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#18
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
;	AOP_STK for _platform_update_sloc53_1_0
;fetchPairLong
	ldhl	sp,	#17
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _platform_update_sloc54_1_0
;	genMove_o size 1
	ldhl	sp,	#18
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
;src\states\platform.c:67: 
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00690$
;	genLabel
00689$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	a, #0x0f
;src\states\platform.c:959: col_mid = tile_at(tile_x_mid, tile_y);
;	genLabel
00690$:
;	genAssign
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$platform.c$960$3_3$436	= .
	.globl	C$platform.c$960$3_3$436
;src\states\platform.c:960: if (IS_ON_SLOPE(col_mid)) {
;	genAnd
	and	a, #0x60
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00332$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03066$.
;	skipping generated iCode
	C$platform.c$961$4_3$437	= .
	.globl	C$platform.c$961$4_3$437
;src\states\platform.c:961: on_slope = col_mid;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_on_slope
	ld	(hl), c
	C$platform.c$962$4_3$437	= .
	.globl	C$platform.c$962$4_3$437
;src\states\platform.c:962: slope_y = tile_y;
;	genAssign
;	AOP_STK for _platform_update_sloc52_1_0
;	genMove_o size 1
	ldhl	sp,	#16
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_slope_y),a
; common peephole 19 loaded (#_slope_y) from a directly instead of using hl.
;	genLabel
00332$:
	C$platform.c$964$4_3$438	= .
	.globl	C$platform.c$964$4_3$438
;src\states\platform.c:964: UBYTE slope_on_y = FALSE;
;	genAssign
;	AOP_STK for _platform_update_sloc55_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	(hl), #0x00
	C$platform.c$967$6_4$442	= .
	.globl	C$platform.c$967$6_4$442
;src\states\platform.c:967: while (tile_start != tile_end) {
;	genAnd
;	AOP_STK for _platform_update_sloc38_1_0
;	AOP_STK for _platform_update_sloc56_1_0
	ldhl	sp,	#23
	ld	a, (hl)
	and	a, #0x60
;	genMove_o size 1
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
;	genAnd
;	AOP_STK for _platform_update_sloc38_1_0
;	AOP_STK for _platform_update_sloc57_1_0
	ldhl	sp,	#23
	ld	a, (hl)
	and	a, #0x10
;	genMove_o size 1
	ldhl	sp,	#13
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00356$:
;	genCmpEq
;	AOP_STK for _platform_update_sloc40_1_0
;	AOP_STK for _platform_update_sloc41_1_0
	ldhl	sp,	#19
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
	jp	Z,00391$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03067$.
;	skipping generated iCode
;src\states\platform.c:970: col = tile_at(tile_x, tile_start);
;	genAssign
;	AOP_STK for _platform_update_sloc40_1_0
;	AOP_STK for _platform_update_sloc58_1_0
;	genMove_o size 1
	ldhl	sp,	#19
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	(hl), a
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _platform_update_sloc51_1_0
	ldhl	sp,	#10
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00694$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _platform_update_sloc58_1_0
	ldhl	sp,	#18
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00694$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _platform_update_sloc59_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#14
	ld	(hl), a
;	genCast
;	AOP_STK for _platform_update_sloc60_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	ldhl	sp,	#15
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCast
;	AOP_STK for _platform_update_sloc58_1_0
;	AOP_STK for _platform_update_sloc61_1_0
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
;	AOP_STK for _platform_update_sloc60_1_0
;	genMove_o size 2
	ldhl	sp,	#15
;	genMove_o size 0
;	genSend
;	AOP_STK for _platform_update_sloc61_1_0
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
;	AOP_STK for _platform_update_sloc51_1_0
;fetchPairLong
	ldhl	sp,	#10
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _platform_update_sloc59_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
;src\states\platform.c:67: 
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00695$
;	genLabel
00694$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\states\platform.c:970: col = tile_at(tile_x, tile_start);
;	genLabel
00695$:
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_col
	ld	(hl), c
	C$platform.c$971$4_4$439	= .
	.globl	C$platform.c$971$4_4$439
;src\states\platform.c:971: if (IS_ON_SLOPE(col)) {
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;	genAnd
	and	a, #0x60
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00334$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03068$.
;	skipping generated iCode
	C$platform.c$972$5_4$440	= .
	.globl	C$platform.c$972$5_4$440
;src\states\platform.c:972: slope_on_y = TRUE;
;	genAssign
;	AOP_STK for _platform_update_sloc55_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	(hl), #0x01
;	genLabel
00334$:
	C$platform.c$974$4_4$439	= .
	.globl	C$platform.c$974$4_4$439
;src\states\platform.c:974: if (col & COLLISION_LEFT) {
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_col)
; common peephole 17 loaded a from (#_col) directly instead of using hl.
;	genAnd
	bit	2, a
	jp	Z,00355$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03069$.
;	skipping generated iCode
	C$platform.c$976$5_4$441	= .
	.globl	C$platform.c$976$5_4$441
;src\states\platform.c:976: if (slope_on_y || tile_start == slope_y) {
;	genIfx
;	AOP_STK for _platform_update_sloc55_1_0
	ldhl	sp,	#11
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00342$
;	genCmpEq
;	AOP_STK for _platform_update_sloc40_1_0
;fetchLitPair	hl
	ld	a, (#_slope_y)
; common peephole 17 loaded a from (#_slope_y) directly instead of using hl.
	ldhl	sp,	#19
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03070$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00343$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03071$.
;	skipping generated iCode
;	genLabel
00342$:
	C$platform.c$978$6_4$442	= .
	.globl	C$platform.c$978$6_4$442
;src\states\platform.c:978: if ((IS_ON_SLOPE(on_slope) && IS_SLOPE_RIGHT(on_slope)) ||
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_on_slope)
; common peephole 17 loaded a from (#_on_slope) directly instead of using hl.
;	genAnd
	and	a, #0x60
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00341$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03072$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_on_slope)
; common peephole 17 loaded a from (#_on_slope) directly instead of using hl.
;	genAnd
	bit	4, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00337$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03073$.
;	skipping generated iCode
;	genLabel
00341$:
	C$platform.c$979$6_4$442	= .
	.globl	C$platform.c$979$6_4$442
;src\states\platform.c:979: (IS_ON_SLOPE(prev_on_slope) && IS_SLOPE_RIGHT(prev_on_slope))
;	genIfx
;	AOP_STK for _platform_update_sloc56_1_0
	ldhl	sp,	#12
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00343$
;	genIfx
;	AOP_STK for _platform_update_sloc57_1_0
	inc	hl
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00343$
;	genLabel
00337$:
	C$platform.c$982$7_4$443	= .
	.globl	C$platform.c$982$7_4$443
;src\states\platform.c:982: if (tile_start <= slope_y) {
;	genCmpGt
;	AOP_STK for _platform_update_sloc40_1_0
;fetchLitPair	hl
	ld	a, (#_slope_y)
; common peephole 17 loaded a from (#_slope_y) directly instead of using hl.
	ldhl	sp,	#19
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00343$
;	skipping generated iCode
	C$platform.c$983$8_4$444	= .
	.globl	C$platform.c$983$8_4$444
;src\states\platform.c:983: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc40_1_0
	inc	(hl)
	C$platform.c$984$8_4$444	= .
	.globl	C$platform.c$984$8_4$444
;src\states\platform.c:984: continue;
;	genGoto
	jp	00356$
;	genLabel
00343$:
	C$platform.c$988$5_4$441	= .
	.globl	C$platform.c$988$5_4$441
;src\states\platform.c:988: if (slope_on_y) {
;	genIfx
;	AOP_STK for _platform_update_sloc55_1_0
	ldhl	sp,	#11
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00353$
	C$platform.c$990$6_4$445	= .
	.globl	C$platform.c$990$6_4$445
;src\states\platform.c:990: if ((IS_ON_SLOPE(on_slope) && IS_SLOPE_LEFT(on_slope)) ||
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_on_slope)
; common peephole 17 loaded a from (#_on_slope) directly instead of using hl.
;	genAnd
	and	a, #0x60
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00351$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03074$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_on_slope)
; common peephole 17 loaded a from (#_on_slope) directly instead of using hl.
;	genAnd
	bit	4, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03075$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00347$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03076$.
;	skipping generated iCode
;	genLabel
00351$:
	C$platform.c$991$6_4$445	= .
	.globl	C$platform.c$991$6_4$445
;src\states\platform.c:991: (IS_ON_SLOPE(prev_on_slope) && IS_SLOPE_LEFT(prev_on_slope))
;	genIfx
;	AOP_STK for _platform_update_sloc56_1_0
	ldhl	sp,	#12
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00353$
;	genIfx
;	AOP_STK for _platform_update_sloc57_1_0
	inc	hl
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00353$
;	genLabel
00347$:
	C$platform.c$994$7_4$446	= .
	.globl	C$platform.c$994$7_4$446
;src\states\platform.c:994: if (tile_start >= slope_y) {
;	genCmpLt
;	AOP_STK for _platform_update_sloc40_1_0
	ldhl	sp,	#19
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_slope_y
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00353$
;	skipping generated iCode
	C$platform.c$995$8_4$447	= .
	.globl	C$platform.c$995$8_4$447
;src\states\platform.c:995: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc40_1_0
	ldhl	sp,	#19
	inc	(hl)
	C$platform.c$996$8_4$447	= .
	.globl	C$platform.c$996$8_4$447
;src\states\platform.c:996: continue;
;	genGoto
	jp	00356$
;	genLabel
00353$:
	C$platform.c$1001$5_4$441	= .
	.globl	C$platform.c$1001$5_4$441
;src\states\platform.c:1001: new_x = (((tile_x << 3) - PLAYER.bounds.right) << 4) - 1;
;	genCast
;	AOP_STK for _platform_update_sloc51_1_0
;	genMove_o size 1
	ldhl	sp,	#10
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	b, a
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genMinus
;	AOP_STK for _platform_update_sloc42_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#9
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
	C$platform.c$1002$5_4$441	= .
	.globl	C$platform.c$1002$5_4$441
;src\states\platform.c:1002: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$1003$5_4$441	= .
	.globl	C$platform.c$1003$5_4$441
;src\states\platform.c:1003: col = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_col
	ld	(hl), #0x01
	C$platform.c$1004$5_4$441	= .
	.globl	C$platform.c$1004$5_4$441
;src\states\platform.c:1004: last_wall = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_wall
	ld	(hl), #0x01
	C$platform.c$1005$5_4$441	= .
	.globl	C$platform.c$1005$5_4$441
;src\states\platform.c:1005: wc_val = plat_coyote_max + 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_coyote_max)
; common peephole 17 loaded a from (#_plat_coyote_max) directly instead of using hl.
;	genPlus
	inc	a
;fetchLitPair	hl
	ld	(#_wc_val),a
; common peephole 19 loaded (#_wc_val) from a directly instead of using hl.
	C$platform.c$1006$5_4$441	= .
	.globl	C$platform.c$1006$5_4$441
;src\states\platform.c:1006: break;
;	genGoto
	jp	00391$
;	genLabel
00355$:
	C$platform.c$1008$4_4$439	= .
	.globl	C$platform.c$1008$4_4$439
;src\states\platform.c:1008: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc40_1_0
	ldhl	sp,	#19
	inc	(hl)
;	genGoto
	jp	00356$
;	genLabel
00390$:
	C$platform.c$1010$2_2$428	= .
	.globl	C$platform.c$1010$2_2$428
;src\states\platform.c:1010: } else if (new_x < PLAYER.pos.x) {
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc42_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genCmpLt
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	NC, 00391$
;	skipping generated iCode
	C$platform.c$1012$3_2$448	= .
	.globl	C$platform.c$1012$3_2$448
;src\states\platform.c:1012: tile_x = ((new_x >> 4) + PLAYER.bounds.left) >> 3;
;	genRightShift
;	AOP_STK for _platform_update_sloc42_1_0
;fetchPairLong
	dec	hl
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
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
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
	ld	e, l
	ld	d, h
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
;	genCast
;	AOP_STK for _platform_update_sloc62_1_0
;	genMove_o size 1
	ldhl	sp,	#10
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$1013$3_2$448	= .
	.globl	C$platform.c$1013$3_2$448
;src\states\platform.c:1013: tile_y   = (((PLAYER.pos.y >> 4) + PLAYER.bounds.bottom) >> 3);
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
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	de
	ld	de, #_actors + 9
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
;	genRightShift
;fetchPairLong
	ld	e, l
	ld	d, h
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	AOP_STK for _platform_update_sloc63_1_0
;	genMove_o size 1
	ldhl	sp,	#17
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$1014$3_3$449	= .
	.globl	C$platform.c$1014$3_3$449
;src\states\platform.c:1014: UBYTE tile_x_mid = ((new_x >> 4) + PLAYER.bounds.left + p_half_width + 1) >> 3; 
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
;	genCast
;	AOP_STK for _platform_update_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#20
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	add	hl, bc
;	genPlus
	inc	hl
;	genRightShift
;	genMove_o size 2
	ld	b, l
;	genMove_o size 0
	srl	h
	rr	b
	srl	h
	rr	b
	srl	h
	rr	b
;	genCast
;	genMove_o size 1
;src\states\platform.c:1015: col_mid = tile_at(tile_x_mid, tile_y);
;	genAssign
;	AOP_STK for _platform_update_sloc63_1_0
;	genMove_o size 1
	ldhl	sp,	#17
;	genMove_o size 0
;	genAssign
;	AOP_STK for _platform_update_sloc64_1_0
;	genMove_o size 1
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
	ld	a,b
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00699$
;	skipping generated iCode
;	genCmpLt
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00699$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _platform_update_sloc65_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#19
	ld	(hl), a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	genMove_o size 1
	ld	e, c
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genSend
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
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
;	AOP_STK for _platform_update_sloc64_1_0
;fetchPairLong
	ldhl	sp,	#18
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _platform_update_sloc65_1_0
;	genMove_o size 1
	ldhl	sp,	#19
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
;src\states\platform.c:67: 
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00700$
;	genLabel
00699$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	a, #0x0f
;src\states\platform.c:1015: col_mid = tile_at(tile_x_mid, tile_y);
;	genLabel
00700$:
;	genAssign
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$platform.c$1016$3_3$449	= .
	.globl	C$platform.c$1016$3_3$449
;src\states\platform.c:1016: if (IS_ON_SLOPE(col_mid)) {
;	genAnd
	and	a, #0x60
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00360$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03078$.
;	skipping generated iCode
	C$platform.c$1017$4_3$450	= .
	.globl	C$platform.c$1017$4_3$450
;src\states\platform.c:1017: on_slope = col_mid;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_on_slope
	ld	(hl), c
	C$platform.c$1018$4_3$450	= .
	.globl	C$platform.c$1018$4_3$450
;src\states\platform.c:1018: slope_y = tile_y;
;	genAssign
;	AOP_STK for _platform_update_sloc63_1_0
;	genMove_o size 1
	ldhl	sp,	#17
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_slope_y),a
; common peephole 19 loaded (#_slope_y) from a directly instead of using hl.
;	genLabel
00360$:
	C$platform.c$1021$3_3$449	= .
	.globl	C$platform.c$1021$3_3$449
;src\states\platform.c:1021: tile_start = (((PLAYER.pos.y >> 4) + PLAYER.bounds.top)    >> 3);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
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
;	genRightShift
;fetchPairLong
	ld	c, l
	ld	b, h
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	AOP_STK for _platform_update_sloc66_1_0
;	genMove_o size 1
	ldhl	sp,	#19
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$1022$4_3$451	= .
	.globl	C$platform.c$1022$4_3$451
;src\states\platform.c:1022: UBYTE slope_on_y = FALSE;
;	genAssign
;	AOP_STK for _platform_update_sloc67_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	(hl), #0x00
	C$platform.c$1025$6_4$455	= .
	.globl	C$platform.c$1025$6_4$455
;src\states\platform.c:1025: while (tile_start != tile_end) {
;	genAnd
;	AOP_STK for _platform_update_sloc38_1_0
;	AOP_STK for _platform_update_sloc68_1_0
	ldhl	sp,	#23
	ld	a, (hl)
	and	a, #0x60
;	genMove_o size 1
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
;	genAnd
;	AOP_STK for _platform_update_sloc38_1_0
;	AOP_STK for _platform_update_sloc69_1_0
	ldhl	sp,	#23
	ld	a, (hl)
	and	a, #0x10
;	genMove_o size 1
	ldhl	sp,	#13
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00384$:
;	genCmpEq
;	AOP_STK for _platform_update_sloc41_1_0
;	AOP_STK for _platform_update_sloc66_1_0
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#19
	sub	a, (hl)
	jp	Z,00391$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03079$.
;	skipping generated iCode
;src\states\platform.c:1027: col = tile_at(tile_x, tile_start);
;	genAssign
;	AOP_STK for _platform_update_sloc66_1_0
;	AOP_STK for _platform_update_sloc70_1_0
;	genMove_o size 1
	ldhl	sp,	#19
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	(hl), a
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _platform_update_sloc62_1_0
	ldhl	sp,	#10
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00704$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _platform_update_sloc70_1_0
	ldhl	sp,	#18
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00704$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _platform_update_sloc71_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#14
	ld	(hl), a
;	genCast
;	AOP_STK for _platform_update_sloc72_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	ldhl	sp,	#15
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCast
;	AOP_STK for _platform_update_sloc70_1_0
;	AOP_STK for _platform_update_sloc73_1_0
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
;	AOP_STK for _platform_update_sloc72_1_0
;	genMove_o size 2
	ldhl	sp,	#15
;	genMove_o size 0
;	genSend
;	AOP_STK for _platform_update_sloc73_1_0
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
;	AOP_STK for _platform_update_sloc62_1_0
;fetchPairLong
	ldhl	sp,	#10
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _platform_update_sloc71_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
;src\states\platform.c:67: 
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00705$
;	genLabel
00704$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\states\platform.c:1027: col = tile_at(tile_x, tile_start);
;	genLabel
00705$:
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_col
	ld	(hl), c
	C$platform.c$1028$4_4$452	= .
	.globl	C$platform.c$1028$4_4$452
;src\states\platform.c:1028: if (IS_ON_SLOPE(col)) {
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;	genAnd
	and	a, #0x60
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00362$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03080$.
;	skipping generated iCode
	C$platform.c$1029$5_4$453	= .
	.globl	C$platform.c$1029$5_4$453
;src\states\platform.c:1029: slope_on_y = TRUE;
;	genAssign
;	AOP_STK for _platform_update_sloc67_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	(hl), #0x01
;	genLabel
00362$:
	C$platform.c$1032$4_4$452	= .
	.globl	C$platform.c$1032$4_4$452
;src\states\platform.c:1032: if (col & COLLISION_RIGHT) {
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_col)
; common peephole 17 loaded a from (#_col) directly instead of using hl.
;	genAnd
	bit	3, a
	jp	Z,00383$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03081$.
;	skipping generated iCode
	C$platform.c$1034$5_4$454	= .
	.globl	C$platform.c$1034$5_4$454
;src\states\platform.c:1034: if (slope_on_y || tile_start == slope_y) {
;	genIfx
;	AOP_STK for _platform_update_sloc67_1_0
	ldhl	sp,	#11
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00370$
;	genCmpEq
;	AOP_STK for _platform_update_sloc66_1_0
;fetchLitPair	hl
	ld	a, (#_slope_y)
; common peephole 17 loaded a from (#_slope_y) directly instead of using hl.
	ldhl	sp,	#19
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03082$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00371$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03083$.
;	skipping generated iCode
;	genLabel
00370$:
	C$platform.c$1036$6_4$455	= .
	.globl	C$platform.c$1036$6_4$455
;src\states\platform.c:1036: if ((IS_ON_SLOPE(on_slope) && IS_SLOPE_LEFT(on_slope)) ||
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_on_slope)
; common peephole 17 loaded a from (#_on_slope) directly instead of using hl.
;	genAnd
	and	a, #0x60
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00369$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03084$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_on_slope)
; common peephole 17 loaded a from (#_on_slope) directly instead of using hl.
;	genAnd
	bit	4, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03085$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00365$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03086$.
;	skipping generated iCode
;	genLabel
00369$:
	C$platform.c$1037$6_4$455	= .
	.globl	C$platform.c$1037$6_4$455
;src\states\platform.c:1037: (IS_ON_SLOPE(prev_on_slope) && IS_SLOPE_LEFT(prev_on_slope))                            
;	genIfx
;	AOP_STK for _platform_update_sloc68_1_0
	ldhl	sp,	#12
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00371$
;	genIfx
;	AOP_STK for _platform_update_sloc69_1_0
	inc	hl
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00371$
;	genLabel
00365$:
	C$platform.c$1040$7_4$456	= .
	.globl	C$platform.c$1040$7_4$456
;src\states\platform.c:1040: if (tile_start <= slope_y) {
;	genCmpGt
;	AOP_STK for _platform_update_sloc66_1_0
;fetchLitPair	hl
	ld	a, (#_slope_y)
; common peephole 17 loaded a from (#_slope_y) directly instead of using hl.
	ldhl	sp,	#19
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00371$
;	skipping generated iCode
	C$platform.c$1041$8_4$457	= .
	.globl	C$platform.c$1041$8_4$457
;src\states\platform.c:1041: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc66_1_0
	inc	(hl)
	C$platform.c$1042$8_4$457	= .
	.globl	C$platform.c$1042$8_4$457
;src\states\platform.c:1042: continue;
;	genGoto
	jp	00384$
;	genLabel
00371$:
	C$platform.c$1046$5_4$454	= .
	.globl	C$platform.c$1046$5_4$454
;src\states\platform.c:1046: if (slope_on_y) {
;	genIfx
;	AOP_STK for _platform_update_sloc67_1_0
	ldhl	sp,	#11
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00381$
	C$platform.c$1048$6_4$458	= .
	.globl	C$platform.c$1048$6_4$458
;src\states\platform.c:1048: if ((IS_ON_SLOPE(on_slope) && IS_SLOPE_RIGHT(on_slope)) ||
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_on_slope)
; common peephole 17 loaded a from (#_on_slope) directly instead of using hl.
;	genAnd
	and	a, #0x60
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00379$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03087$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_on_slope)
; common peephole 17 loaded a from (#_on_slope) directly instead of using hl.
;	genAnd
	bit	4, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00375$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03088$.
;	skipping generated iCode
;	genLabel
00379$:
	C$platform.c$1049$6_4$458	= .
	.globl	C$platform.c$1049$6_4$458
;src\states\platform.c:1049: (IS_ON_SLOPE(prev_on_slope) && IS_SLOPE_RIGHT(prev_on_slope))
;	genIfx
;	AOP_STK for _platform_update_sloc68_1_0
	ldhl	sp,	#12
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00381$
;	genIfx
;	AOP_STK for _platform_update_sloc69_1_0
	inc	hl
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00381$
;	genLabel
00375$:
	C$platform.c$1052$7_4$459	= .
	.globl	C$platform.c$1052$7_4$459
;src\states\platform.c:1052: if (tile_start >= slope_y) {
;	genCmpLt
;	AOP_STK for _platform_update_sloc66_1_0
	ldhl	sp,	#19
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_slope_y
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00381$
;	skipping generated iCode
	C$platform.c$1053$8_4$460	= .
	.globl	C$platform.c$1053$8_4$460
;src\states\platform.c:1053: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc66_1_0
	ldhl	sp,	#19
	inc	(hl)
	C$platform.c$1054$8_4$460	= .
	.globl	C$platform.c$1054$8_4$460
;src\states\platform.c:1054: continue;
;	genGoto
	jp	00384$
;	genLabel
00381$:
	C$platform.c$1058$5_4$454	= .
	.globl	C$platform.c$1058$5_4$454
;src\states\platform.c:1058: new_x = ((((tile_x + 1) << 3) - PLAYER.bounds.left) << 4) + 1;
;	genCast
;	AOP_STK for _platform_update_sloc62_1_0
;	genMove_o size 1
	ldhl	sp,	#10
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genPlus
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 6) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
;	AOP_STK for _platform_update_sloc42_1_0
; common peephole 69 incremented in hl instead of bc.
	inc	hl
	ld	c, l
	ld	b, h
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$platform.c$1059$5_4$454	= .
	.globl	C$platform.c$1059$5_4$454
;src\states\platform.c:1059: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$1060$5_4$454	= .
	.globl	C$platform.c$1060$5_4$454
;src\states\platform.c:1060: col = -1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_col
	ld	(hl), #0xff
	C$platform.c$1061$5_4$454	= .
	.globl	C$platform.c$1061$5_4$454
;src\states\platform.c:1061: last_wall = -1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_wall
	ld	(hl), #0xff
	C$platform.c$1062$5_4$454	= .
	.globl	C$platform.c$1062$5_4$454
;src\states\platform.c:1062: wc_val = plat_coyote_max + 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_coyote_max)
; common peephole 17 loaded a from (#_plat_coyote_max) directly instead of using hl.
;	genPlus
	inc	a
;fetchLitPair	hl
	ld	(#_wc_val),a
; common peephole 19 loaded (#_wc_val) from a directly instead of using hl.
	C$platform.c$1063$5_4$454	= .
	.globl	C$platform.c$1063$5_4$454
;src\states\platform.c:1063: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00391$
;	genLabel
00383$:
	C$platform.c$1065$4_4$452	= .
	.globl	C$platform.c$1065$4_4$452
;src\states\platform.c:1065: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc66_1_0
	ldhl	sp,	#19
	inc	(hl)
;	genGoto
	jp	00384$
;	genLabel
00391$:
	C$platform.c$1068$2_2$428	= .
	.globl	C$platform.c$1068$2_2$428
;src\states\platform.c:1068: PLAYER.pos.x = new_x;
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _platform_update_sloc42_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 1)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$1074$2_1$461	= .
	.globl	C$platform.c$1074$2_1$461
;src\states\platform.c:1074: deltaY = CLAMP(deltaY, -127, 127);
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_deltaY
; common peephole 96b move inc hl before sub a, #0x81
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	sub	a, #0x81
	ld	a, (hl)
	sbc	a, #0xff
	ld	d, (hl)
	ld	a, #0xff
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through e.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03089$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03090$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03090$
03089$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03090$
	scf
03090$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00784$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0xff81
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00785$
;	genLabel
00784$:
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a, #0x7f
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03091$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03092$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03092$
03091$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03092$
	scf
03092$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00786$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x007f
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00787$
;	genLabel
00786$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_deltaY
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genLabel
00787$:
;	genAssign
;	(locations are the same)
;	genLabel
00785$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_deltaY
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$1077$3_1$462	= .
	.globl	C$platform.c$1077$3_1$462
;src\states\platform.c:1077: UBYTE prev_grounded = grounded;
;	genAssign
;	AOP_STK for _platform_update_sloc74_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_grounded)
; common peephole 17 loaded a from (#_grounded) directly instead of using hl.
	ldhl	sp,	#3
	ld	(hl), a
	C$platform.c$1078$2_2$462	= .
	.globl	C$platform.c$1078$2_2$462
;src\states\platform.c:1078: UWORD old_y = PLAYER.pos.y;
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc75_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$platform.c$1079$2_2$462	= .
	.globl	C$platform.c$1079$2_2$462
;src\states\platform.c:1079: grounded = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_grounded
	ld	(hl), #0x00
	C$platform.c$1081$2_2$462	= .
	.globl	C$platform.c$1081$2_2$462
;src\states\platform.c:1081: if (prev_on_slope) grounded = TRUE;
;	genIfx
;	AOP_STK for _platform_update_sloc38_1_0
	ldhl	sp,	#23
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00394$
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_grounded
	ld	(hl), #0x01
;	genLabel
00394$:
	C$platform.c$1084$2_3$463	= .
	.globl	C$platform.c$1084$2_3$463
;src\states\platform.c:1084: UBYTE tile_start = (((PLAYER.pos.x >> 4) + PLAYER.bounds.left)  >> 3);
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
;	skipping iCode since result will be rematerialized
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
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	AOP_STK for _platform_update_sloc76_1_0
;	genMove_o size 1
	ldhl	sp,	#6
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$1085$2_3$463	= .
	.globl	C$platform.c$1085$2_3$463
;src\states\platform.c:1085: UBYTE tile_end   = (((PLAYER.pos.x >> 4) + PLAYER.bounds.right) >> 3) + 1;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
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
;	genPlus
	add	hl, bc
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
	ld	a, l
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc77_1_0
	inc	a
	ldhl	sp,	#7
	ld	(hl), a
	C$platform.c$1086$2_3$463	= .
	.globl	C$platform.c$1086$2_3$463
;src\states\platform.c:1086: if (deltaY > 0) {
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_deltaY
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03093$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03094$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03094$
03093$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03094$
	scf
03094$:
	jp	NC, 00469$
;	skipping generated iCode
	C$platform.c$1088$3_3$464	= .
	.globl	C$platform.c$1088$3_3$464
;src\states\platform.c:1088: WORD new_y = PLAYER.pos.y + deltaY;
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
;	genCast
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc78_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
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
	C$platform.c$1091$3_3$464	= .
	.globl	C$platform.c$1091$3_3$464
;src\states\platform.c:1091: UBYTE tile_y = (((PLAYER.pos.y >> 4) + PLAYER.bounds.bottom) >> 3) - 1;
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 9) + 0)
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
;	genMinus
;	AOP_STK for _platform_update_sloc79_1_0
; common peephole 155c turned add into dec.
	dec	a
	ldhl	sp,	#23
	ld	(hl), a
	C$platform.c$1092$3_3$464	= .
	.globl	C$platform.c$1092$3_3$464
;src\states\platform.c:1092: UBYTE new_tile_y = ((new_y >> 4) + PLAYER.bounds.bottom) >> 3;
;	genRightShift
;	AOP_STK for _platform_update_sloc78_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
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
;	genMove_o size 2
	ld	c, h
;	genMove_o size 0
	sra	c
	rr	l
	sra	c
	rr	l
	sra	c
	rr	l
;	genCast
;	AOP_STK for _platform_update_sloc80_1_0
;	genMove_o size 1
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
;	genMove_o size 0
	C$platform.c$1095$3_3$464	= .
	.globl	C$platform.c$1095$3_3$464
;src\states\platform.c:1095: if (prev_grounded && new_tile_y == (tile_y + 1)) new_tile_y += 1;
;	genIfx
;	AOP_STK for _platform_update_sloc74_1_0
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00396$
;	genCast
;	AOP_STK for _platform_update_sloc79_1_0
;	AOP_STK for _platform_update_sloc81_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#16
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genPlus
;	AOP_STK for _platform_update_sloc81_1_0
;	AOP_STK for _platform_update_sloc82_1_0
;fetchPairLong
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
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
	ldhl	sp,	#20
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#19
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	AOP_STK for _platform_update_sloc80_1_0
;	genMove_o size 1
	ldhl	sp,	#10
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genCmpEq
;	AOP_STK for _platform_update_sloc82_1_0
	ldhl	sp,	#18
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00396$
; common peephole 84 jumped to 00396$ directly instead of via 03095$.
	inc	hl
	ld	a, (hl)
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03095$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00396$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03096$.
;	skipping generated iCode
;	genCast
;	AOP_STK for _platform_update_sloc80_1_0
;	genMove_o size 1
	ldhl	sp,	#10
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc80_1_0
	inc	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b inc (hl) directly to remove redundant load from a into (hl)
;	genLabel
00396$:
	C$platform.c$1096$3_4$465	= .
	.globl	C$platform.c$1096$3_4$465
;src\states\platform.c:1096: UWORD x_mid_coord = ((PLAYER.pos.x >> 4) + PLAYER.bounds.left + p_half_width + 1);
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
;	skipping iCode since result will be rematerialized
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
;	genCast
;	AOP_STK for _platform_update_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#20
	ld	a, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	e, #0x00
;	genPlus
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
;	genPlus
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	inc	bc
;src\states\platform.c:1097: while (tile_y <= new_tile_y) {
;	genRightShift
;	AOP_STK for _platform_update_sloc83_1_0
;	genMove_o size 2
	ldhl	sp,	#11
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
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for _platform_update_sloc83_1_0
;	AOP_STK for _platform_update_sloc84_1_0
;	genMove_o size 2
	ld	a, (hl)
	ldhl	sp,	#19
	ld	(hl), a
	ldhl	sp,	#12
	ld	a, (hl)
	ldhl	sp,	#20
	ld	(hl), a
;	genMove_o size 0
	ld	a, #0x03
03097$:
	ldhl	sp,	#19
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03097$
;	genMinus
;	AOP_STK for _platform_update_sloc84_1_0
;	AOP_STK for _platform_update_sloc85_1_0
;fetchPairLong
;fetchPairLong
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#14
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genLabel
00433$:
;	genCmpGt
;	AOP_STK for _platform_update_sloc79_1_0
;	AOP_STK for _platform_update_sloc80_1_0
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#23
	sub	a, (hl)
	jp	C, 00435$
;	skipping generated iCode
;src\states\platform.c:1098: UBYTE col = tile_at(x_mid_coord >> 3, tile_y);
;	genCast
;	AOP_STK for _platform_update_sloc83_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	c, (hl)
;	genMove_o size 0
;	genAssign
;	AOP_STK for _platform_update_sloc79_1_0
;	AOP_STK for _platform_update_sloc86_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#20
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	AOP_STK for _platform_update_sloc87_1_0
;	genMove_o size 1
	ldhl	sp,	#15
;	genMove_o size 0
;	genCmpLt
	ld	a,c
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00709$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _platform_update_sloc86_1_0
	ldhl	sp,	#20
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00709$
;	skipping generated iCode
;	genAssign
;	AOP_STK for _platform_update_sloc88_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#16
	ld	(hl), a
;	genCast
;	AOP_STK for _platform_update_sloc89_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	ldhl	sp,	#17
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCast
;	AOP_STK for _platform_update_sloc86_1_0
;	AOP_STK for _platform_update_sloc90_1_0
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
;	AOP_STK for _platform_update_sloc89_1_0
;	genMove_o size 2
	ldhl	sp,	#17
;	genMove_o size 0
;	genSend
;	AOP_STK for _platform_update_sloc90_1_0
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
;	AOP_STK for _platform_update_sloc87_1_0
;fetchPairLong
	ldhl	sp,	#15
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genSend
;	AOP_STK for _platform_update_sloc88_1_0
;	genMove_o size 1
	ldhl	sp,	#16
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00710$
;	genLabel
00709$:
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;	genLabel
00710$:
;	genAssign
;	AOP_STK for _platform_update_sloc91_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$1101$4_4$466	= .
	.globl	C$platform.c$1101$4_4$466
;src\states\platform.c:1101: UWORD slope_y_coord = 0;
;	genAssign
;	AOP_STK for _platform_update_sloc92_1_0
;	genMove_o size 2
	xor	a, a
	ldhl	sp,	#18
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$1102$4_4$466	= .
	.globl	C$platform.c$1102$4_4$466
;src\states\platform.c:1102: if (IS_ON_SLOPE(col)) {
;	genAnd
	ld	a, c
	and	a, #0x60
	jp	Z,00416$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03098$.
;	skipping generated iCode
	C$platform.c$1103$5_4$467	= .
	.globl	C$platform.c$1103$5_4$467
;src\states\platform.c:1103: if ((col & COLLISION_SLOPE) == COLLISION_SLOPE_45_RIGHT) {
;	genCast
;	AOP_STK for _platform_update_sloc91_1_0
;	AOP_STK for _platform_update_sloc93_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#20
;	genMove_o size 0
;	genAnd
;	AOP_STK for _platform_update_sloc93_1_0
	ld	(hl), a
; common peephole 98 removed redundant load from (hl) into a.
	and	a, #0xf0
;	genMove_o size 1
;	genCmpEq
	sub	a, #0x20
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03099$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00413$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03100$.
;	skipping generated iCode
	C$platform.c$1104$6_4$468	= .
	.globl	C$platform.c$1104$6_4$468
;src\states\platform.c:1104: slope_y_coord = (((tile_y << 3) + (8 - x_offset) - PLAYER.bounds.bottom) << 4) - 1;
;	genCast
;	AOP_STK for _platform_update_sloc79_1_0
;	AOP_STK for _platform_update_sloc94_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#19
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genLeftShift
;	AOP_STK for _platform_update_sloc94_1_0
;	AOP_STK for _platform_update_sloc95_1_0
;	genMove_o size 2
	ld	a, #0x03
03101$:
	ldhl	sp,	#19
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03101$
;	genMinus
;	AOP_STK for _platform_update_sloc85_1_0
;	AOP_STK for _platform_update_sloc96_1_0
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0008
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#16
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genCast
;	AOP_STK for _platform_update_sloc95_1_0
;	AOP_STK for _platform_update_sloc97_1_0
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	ld	(hl), a
	ldhl	sp,	#20
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc96_1_0
;	AOP_STK for _platform_update_sloc97_1_0
;	AOP_STK for _platform_update_sloc98_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
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
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#21
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#20
;	genMove_o size 0
;	genPointerGet
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;	genCast
;	genMove_o size 2
;	genMove_o size 0
;	genMinus
;	AOP_STK for _platform_update_sloc98_1_0
;fetchPairLong
; common peephole 96b move dec hl before ld b, a
; common peephole 96b move dec hl before sbc a, a
; common peephole 96a move dec hl before rlca
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before ld a, (#(_actors + 9) + 0)
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (#(_actors + 9) + 0)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
	ld	a, e
	sub	a, c
	ld	e, a
	ld	a, d
	sbc	a, b
	ld	c, e
;	genLeftShift
;	genMove_o size 2
	ld	b, a
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
;	genMinus
;	AOP_STK for _platform_update_sloc92_1_0
;fetchPairLong
	ld	e, a
	ld	d, b
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0001
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#19
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genGoto
	jp	00416$
;	genLabel
00413$:
	C$platform.c$1105$5_4$467	= .
	.globl	C$platform.c$1105$5_4$467
;src\states\platform.c:1105: } else if ((col & COLLISION_SLOPE) == COLLISION_SLOPE_225_RIGHT_BOT) {
;	genCast
;	AOP_STK for _platform_update_sloc91_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	and	a, #0xf0
;	genMove_o size 1
;	genCmpEq
	sub	a, #0x40
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03103$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00410$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03104$.
;	skipping generated iCode
	C$platform.c$1106$6_4$469	= .
	.globl	C$platform.c$1106$6_4$469
;src\states\platform.c:1106: slope_y_coord = (((tile_y << 3) + (8 - (x_offset >> 1)) - PLAYER.bounds.bottom) << 4) - 1;
;	genCast
;	AOP_STK for _platform_update_sloc79_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	b, a
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
;	genRightShift
;	AOP_STK for _platform_update_sloc85_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#13
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	srl	d
	rr	e
;	genMinus
	ld	a, #0x08
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	sbc	a, a
	sub	a, d
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
	ld	a, (#(_actors + 9) + 0)
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
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genMinus
;	AOP_STK for _platform_update_sloc92_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#19
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genGoto
	jp	00416$
;	genLabel
00410$:
	C$platform.c$1107$5_4$467	= .
	.globl	C$platform.c$1107$5_4$467
;src\states\platform.c:1107: } else if ((col & COLLISION_SLOPE) == COLLISION_SLOPE_225_RIGHT_TOP) {
;	genCast
;	AOP_STK for _platform_update_sloc91_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	and	a, #0xf0
;	genMove_o size 1
;	genCmpEq
	sub	a, #0x60
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03106$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00407$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03107$.
;	skipping generated iCode
	C$platform.c$1108$6_4$470	= .
	.globl	C$platform.c$1108$6_4$470
;src\states\platform.c:1108: slope_y_coord = (((tile_y << 3) + (4 - (x_offset >> 1)) - PLAYER.bounds.bottom) << 4) - 1;
;	genCast
;	AOP_STK for _platform_update_sloc79_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	b, a
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
;	genRightShift
;	AOP_STK for _platform_update_sloc85_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#13
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	srl	d
	rr	e
;	genMinus
	ld	a, #0x04
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	sbc	a, a
	sub	a, d
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
	ld	a, (#(_actors + 9) + 0)
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
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genMinus
;	AOP_STK for _platform_update_sloc92_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#19
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genGoto
	jp	00416$
;	genLabel
00407$:
	C$platform.c$1111$5_4$467	= .
	.globl	C$platform.c$1111$5_4$467
;src\states\platform.c:1111: else if ((col & COLLISION_SLOPE) == COLLISION_SLOPE_45_LEFT) {
;	genCast
;	AOP_STK for _platform_update_sloc91_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	and	a, #0xf0
;	genMove_o size 1
;	genCmpEq
	sub	a, #0x30
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03109$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00404$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03110$.
;	skipping generated iCode
	C$platform.c$1112$6_4$471	= .
	.globl	C$platform.c$1112$6_4$471
;src\states\platform.c:1112: slope_y_coord = (((tile_y << 3) + (x_offset) - PLAYER.bounds.bottom) << 4) - 1;
;	genCast
;	AOP_STK for _platform_update_sloc79_1_0
;	genMove_o size 1
	ldhl	sp,	#23
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
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc85_1_0
;fetchPairLong
	ldhl	sp,	#13
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (#(_actors + 9) + 0)
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
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genMinus
;	AOP_STK for _platform_update_sloc92_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#19
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genGoto
	jp	00416$
;	genLabel
00404$:
	C$platform.c$1113$5_4$467	= .
	.globl	C$platform.c$1113$5_4$467
;src\states\platform.c:1113: } else if ((col & COLLISION_SLOPE) == COLLISION_SLOPE_225_LEFT_BOT) {
;	genCast
;	AOP_STK for _platform_update_sloc91_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	and	a, #0xf0
;	genMove_o size 1
;	genCmpEq
	sub	a, #0x50
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03111$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00401$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03112$.
;	skipping generated iCode
	C$platform.c$1114$6_4$472	= .
	.globl	C$platform.c$1114$6_4$472
;src\states\platform.c:1114: slope_y_coord = (((tile_y << 3) + (x_offset >> 1) - PLAYER.bounds.bottom + 4) << 4) - 1;
;	genCast
;	AOP_STK for _platform_update_sloc79_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	d, a
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
;	genRightShift
;	AOP_STK for _platform_update_sloc85_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#13
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	srl	b
	rr	c
;	genCast
;	genMove_o size 2
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (#(_actors + 9) + 0)
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
;	genMinus
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, bc
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genMinus
;	AOP_STK for _platform_update_sloc92_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#19
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00416$
;	genLabel
00401$:
	C$platform.c$1115$5_4$467	= .
	.globl	C$platform.c$1115$5_4$467
;src\states\platform.c:1115: } else if ((col & COLLISION_SLOPE) == COLLISION_SLOPE_225_LEFT_TOP) {
;	genCast
;	AOP_STK for _platform_update_sloc91_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	and	a, #0xf0
;	genMove_o size 1
;	genCmpEq
	sub	a, #0x70
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03114$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00416$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03115$.
;	skipping generated iCode
	C$platform.c$1116$6_4$473	= .
	.globl	C$platform.c$1116$6_4$473
;src\states\platform.c:1116: slope_y_coord = (((tile_y << 3) + (x_offset >> 1) - PLAYER.bounds.bottom) << 4) - 1;
;	genCast
;	AOP_STK for _platform_update_sloc79_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	d, a
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
;	genRightShift
;	AOP_STK for _platform_update_sloc85_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#13
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	srl	b
	rr	c
;	genCast
;	genMove_o size 2
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (#(_actors + 9) + 0)
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
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genMinus
;	AOP_STK for _platform_update_sloc92_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#19
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genLabel
00416$:
	C$platform.c$1120$4_4$466	= .
	.globl	C$platform.c$1120$4_4$466
;src\states\platform.c:1120: if (slope_y_coord) {
;	genIfx
;	AOP_STK for _platform_update_sloc92_1_0
	ldhl	sp,	#19
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00432$
	C$platform.c$1122$5_4$474	= .
	.globl	C$platform.c$1122$5_4$474
;src\states\platform.c:1122: if (!prev_grounded && slope_y_coord > new_y) {
;	genIfx
;	AOP_STK for _platform_update_sloc74_1_0
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00418$
;	genCast
;	AOP_STK for _platform_update_sloc78_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genCmpGt
;	AOP_STK for _platform_update_sloc92_1_0
	ldhl	sp,	#18
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00418$
;	skipping generated iCode
	C$platform.c$1123$6_4$475	= .
	.globl	C$platform.c$1123$6_4$475
;src\states\platform.c:1123: tile_y++;
;	genPlus
;	AOP_STK for _platform_update_sloc79_1_0
	ldhl	sp,	#23
	inc	(hl)
	C$platform.c$1124$6_4$475	= .
	.globl	C$platform.c$1124$6_4$475
;src\states\platform.c:1124: continue;
;	genGoto
	jp	00433$
;	genLabel
00418$:
	C$platform.c$1127$5_5$476	= .
	.globl	C$platform.c$1127$5_5$476
;src\states\platform.c:1127: UBYTE slope_top_tile_y = (((slope_y_coord >> 4) + PLAYER.bounds.top) >> 3);
;	genRightShift
;	AOP_STK for _platform_update_sloc92_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#18
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
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
;	genCast
;	AOP_STK for _platform_update_sloc99_1_0
;	genMove_o size 1
	ldhl	sp,	#20
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$1128$1_1$327	= .
	.globl	C$platform.c$1128$1_1$327
;src\states\platform.c:1128: while (tile_start != tile_end) {
;	genAssign
;	AOP_STK for _platform_update_sloc76_1_0
;	genMove_o size 1
	ldhl	sp,	#6
	ld	e, (hl)
;	genMove_o size 0
;	genLabel
00422$:
;	genCmpEq
;	AOP_STK for _platform_update_sloc77_1_0
	ldhl	sp,	#7
	ld	a, (hl)
	sub	a, e
	jp	Z,00424$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03117$.
;	skipping generated iCode
;src\states\platform.c:1129: if (tile_at(tile_start, slope_top_tile_y) & COLLISION_BOTTOM) {
;	genAssign
;	AOP_STK for _platform_update_sloc100_1_0
;	genMove_o size 1
	ldhl	sp,	#15
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
	ld	a,e
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00714$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _platform_update_sloc99_1_0
	ldhl	sp,	#20
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00714$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_collision_bank
	ld	d, (hl)
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genCast
;	AOP_STK for _platform_update_sloc99_1_0
;	AOP_STK for _platform_update_sloc101_1_0
;	genMove_o size 1
	ldhl	sp,	#20
	ld	a, (hl)
	ldhl	sp,	#16
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genSend
;	genMove_o size 2
;	genSend
;	AOP_STK for _platform_update_sloc101_1_0
;	genMove_o size 2
; common peephole 96d move dec hl before push (de)
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	push	de
	ld	e, (hl)
	ld	d, #0x00
;	genMove_o size 0
;	genCall
	call	__mulint
;	genMove_o size 2
	pop	de
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
;	AOP_STK for _platform_update_sloc100_1_0
;fetchPairLong
	ldhl	sp,	#15
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
	push	de
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
	pop	de
;	genCast
;	genMove_o size 1
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00715$
;	genLabel
00714$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\states\platform.c:1129: if (tile_at(tile_start, slope_top_tile_y) & COLLISION_BOTTOM) {
;	genLabel
00715$:
;	genAnd
	bit	1, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00421$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03118$.
;	skipping generated iCode
	C$platform.c$1130$7_5$478	= .
	.globl	C$platform.c$1130$7_5$478
;src\states\platform.c:1130: pl_vel_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$1131$7_5$478	= .
	.globl	C$platform.c$1131$7_5$478
;src\states\platform.c:1131: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$1132$7_5$478	= .
	.globl	C$platform.c$1132$7_5$478
;src\states\platform.c:1132: PLAYER.pos.y = old_y;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	bc
	ld	bc, #_actors + 3
;	genCast
;	AOP_STK for _platform_update_sloc75_1_0
;	AOP_STK for _platform_update_sloc102_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#19
	ld	(hl), a
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#20
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _platform_update_sloc102_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$platform.c$1133$7_5$478	= .
	.globl	C$platform.c$1133$7_5$478
;src\states\platform.c:1133: PLAYER.pos.x = old_x;
;	genCast
;	AOP_STK for _platform_update_sloc39_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 1)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$1134$7_5$478	= .
	.globl	C$platform.c$1134$7_5$478
;src\states\platform.c:1134: grounded = TRUE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_grounded
	ld	(hl), #0x01
	C$platform.c$1135$7_5$478	= .
	.globl	C$platform.c$1135$7_5$478
;src\states\platform.c:1135: on_slope = col;
;	genAssign
;	AOP_STK for _platform_update_sloc91_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_on_slope),a
; common peephole 19 loaded (#_on_slope) from a directly instead of using hl.
	C$platform.c$1136$7_5$478	= .
	.globl	C$platform.c$1136$7_5$478
;src\states\platform.c:1136: slope_y = tile_y;
;	genAssign
;	AOP_STK for _platform_update_sloc79_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_slope_y),a
; common peephole 19 loaded (#_slope_y) from a directly instead of using hl.
	C$platform.c$1137$7_5$478	= .
	.globl	C$platform.c$1137$7_5$478
;src\states\platform.c:1137: goto gotoActorCol;
;	genGoto
	jp	00471$
;	genLabel
00421$:
	C$platform.c$1139$6_5$477	= .
	.globl	C$platform.c$1139$6_5$477
;src\states\platform.c:1139: tile_start++;
;	genPlus
	inc	e
;	genGoto
	jp	00422$
;	genLabel
00424$:
	C$platform.c$1142$5_5$476	= .
	.globl	C$platform.c$1142$5_5$476
;src\states\platform.c:1142: PLAYER.pos.y = slope_y_coord;
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _platform_update_sloc92_1_0
;	genMove_o size 2
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 3)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$1143$5_5$476	= .
	.globl	C$platform.c$1143$5_5$476
;src\states\platform.c:1143: pl_vel_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$1144$5_5$476	= .
	.globl	C$platform.c$1144$5_5$476
;src\states\platform.c:1144: grounded = TRUE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_grounded
	ld	(hl), #0x01
	C$platform.c$1145$5_5$476	= .
	.globl	C$platform.c$1145$5_5$476
;src\states\platform.c:1145: if(plat_state == GROUND_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_state)
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
	sub	a, #0x04
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03119$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00429$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03120$.
;	skipping generated iCode
	C$platform.c$1146$6_5$479	= .
	.globl	C$platform.c$1146$6_5$479
;src\states\platform.c:1146: que_state = GROUND_STATE; 
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x04
	C$platform.c$1147$6_5$479	= .
	.globl	C$platform.c$1147$6_5$479
;src\states\platform.c:1147: pl_vel_y = 256;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00430$
;	genLabel
00429$:
	C$platform.c$1148$5_5$476	= .
	.globl	C$platform.c$1148$5_5$476
;src\states\platform.c:1148: } else if(plat_state == GROUND_INIT){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_state)
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03121$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00426$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03122$.
;	skipping generated iCode
	C$platform.c$1149$6_5$480	= .
	.globl	C$platform.c$1149$6_5$480
;src\states\platform.c:1149: que_state = GROUND_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x04
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00430$
;	genLabel
00426$:
	C$platform.c$1150$6_5$481	= .
	.globl	C$platform.c$1150$6_5$481
;src\states\platform.c:1150: } else {que_state = GROUND_INIT;}
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x03
;	genLabel
00430$:
	C$platform.c$1151$5_5$476	= .
	.globl	C$platform.c$1151$5_5$476
;src\states\platform.c:1151: on_slope = col;
;	genAssign
;	AOP_STK for _platform_update_sloc91_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_on_slope),a
; common peephole 19 loaded (#_on_slope) from a directly instead of using hl.
	C$platform.c$1152$5_5$476	= .
	.globl	C$platform.c$1152$5_5$476
;src\states\platform.c:1152: slope_y = tile_y;
;	genAssign
;	AOP_STK for _platform_update_sloc79_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_slope_y),a
; common peephole 19 loaded (#_slope_y) from a directly instead of using hl.
	C$platform.c$1153$5_5$476	= .
	.globl	C$platform.c$1153$5_5$476
;src\states\platform.c:1153: goto gotoActorCol;
;	genGoto
	jp	00471$
;	genLabel
00432$:
	C$platform.c$1155$4_4$466	= .
	.globl	C$platform.c$1155$4_4$466
;src\states\platform.c:1155: tile_y++;
;	genPlus
;	AOP_STK for _platform_update_sloc79_1_0
	ldhl	sp,	#23
	inc	(hl)
;	genGoto
	jp	00433$
;	genLabel
00435$:
	C$platform.c$1158$3_4$465	= .
	.globl	C$platform.c$1158$3_4$465
;src\states\platform.c:1158: tile_start = (((PLAYER.pos.x >> 4) + PLAYER.bounds.left)  >> 3);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
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
;	skipping iCode since result will be rematerialized
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
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	AOP_STK for _platform_update_sloc103_1_0
;	genMove_o size 1
	ldhl	sp,	#12
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$1159$3_4$465	= .
	.globl	C$platform.c$1159$3_4$465
;src\states\platform.c:1159: tile_end   = (((PLAYER.pos.x >> 4) + PLAYER.bounds.right) >> 3) + 1;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
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
;	genPlus
	add	hl, bc
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
	ld	a, l
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc104_1_0
	inc	a
	ldhl	sp,	#13
	ld	(hl), a
	C$platform.c$1160$3_4$465	= .
	.globl	C$platform.c$1160$3_4$465
;src\states\platform.c:1160: tile_y = ((new_y >> 4) + PLAYER.bounds.bottom) >> 3;
;	genRightShift
;	AOP_STK for _platform_update_sloc78_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 9) + 0)
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
;	AOP_STK for _platform_update_sloc105_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$1164$3_4$465	= .
	.globl	C$platform.c$1164$3_4$465
;src\states\platform.c:1164: if (nocollide == 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_nocollide)
; common peephole 17 loaded a from (#_nocollide) directly instead of using hl.
	or	a, a
	jp	NZ, 00456$
	C$platform.c$1166$1_1$327	= .
	.globl	C$platform.c$1166$1_1$327
;src\states\platform.c:1166: while (tile_start != tile_end) {
;	genAssign
;	AOP_STK for _platform_update_sloc103_1_0
;	AOP_STK for _platform_update_sloc106_1_0
;	genMove_o size 1
	ldhl	sp,	#12
	ld	a, (hl)
	ldhl	sp,	#23
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00452$:
;	genCmpEq
;	AOP_STK for _platform_update_sloc104_1_0
;	AOP_STK for _platform_update_sloc106_1_0
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#23
	sub	a, (hl)
	jp	Z,00456$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03123$.
;	skipping generated iCode
;src\states\platform.c:1167: if (tile_at(tile_start, tile_y) & COLLISION_TOP) {
;	genAssign
;	AOP_STK for _platform_update_sloc106_1_0
;	AOP_STK for _platform_update_sloc107_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#15
	ld	(hl), a
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _platform_update_sloc106_1_0
	ldhl	sp,	#23
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00719$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _platform_update_sloc105_1_0
	ldhl	sp,	#14
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00719$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _platform_update_sloc108_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#16
	ld	(hl), a
;	genCast
;	AOP_STK for _platform_update_sloc109_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	ldhl	sp,	#17
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genCast
;	AOP_STK for _platform_update_sloc105_1_0
;	AOP_STK for _platform_update_sloc110_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	a, (hl)
	ldhl	sp,	#19
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genSend
;	AOP_STK for _platform_update_sloc109_1_0
;	genMove_o size 2
	ldhl	sp,	#17
;	genMove_o size 0
;	genSend
;	AOP_STK for _platform_update_sloc110_1_0
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
;	AOP_STK for _platform_update_sloc107_1_0
;fetchPairLong
	ldhl	sp,	#15
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _platform_update_sloc108_1_0
;	genMove_o size 1
	ldhl	sp,	#16
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
	jr	00720$
;	genLabel
00719$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	a, #0x0f
;src\states\platform.c:1167: if (tile_at(tile_start, tile_y) & COLLISION_TOP) {
;	genLabel
00720$:
;	genAnd
	rrca
	jp	NC,00451$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03124$.
;	skipping generated iCode
	C$platform.c$1169$6_4$484	= .
	.globl	C$platform.c$1169$6_4$484
;src\states\platform.c:1169: if (drop_press()){
;	genCall
	ld	e, #b_drop_press
	ld	hl, #_drop_press
	call	___sdcc_bcall_ehl
;	genMove_o size 1
;	genIfx
	or	a, a
	jp	Z, 00443$
	C$platform.c$1171$1_1$327	= .
	.globl	C$platform.c$1171$1_1$327
;src\states\platform.c:1171: while (tile_start != tile_end) {
;	genAssign
;	AOP_STK for _platform_update_sloc103_1_0
;	AOP_STK for _platform_update_sloc111_1_0
;	genMove_o size 1
	ldhl	sp,	#12
	ld	a, (hl)
	ldhl	sp,	#23
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00438$:
;	genCmpEq
;	AOP_STK for _platform_update_sloc104_1_0
;	AOP_STK for _platform_update_sloc111_1_0
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#23
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00440$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03125$.
;	skipping generated iCode
;src\states\platform.c:1172: if (tile_at(tile_start, tile_y) & COLLISION_BOTTOM){
;	genAssign
;	AOP_STK for _platform_update_sloc111_1_0
;	AOP_STK for _platform_update_sloc112_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#15
	ld	(hl), a
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _platform_update_sloc111_1_0
	ldhl	sp,	#23
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00724$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _platform_update_sloc105_1_0
	ldhl	sp,	#14
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00724$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _platform_update_sloc113_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#16
	ld	(hl), a
;	genCast
;	AOP_STK for _platform_update_sloc114_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	ldhl	sp,	#17
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genCast
;	AOP_STK for _platform_update_sloc105_1_0
;	AOP_STK for _platform_update_sloc115_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	a, (hl)
	ldhl	sp,	#19
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genSend
;	AOP_STK for _platform_update_sloc114_1_0
;	genMove_o size 2
	ldhl	sp,	#17
;	genMove_o size 0
;	genSend
;	AOP_STK for _platform_update_sloc115_1_0
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
;	AOP_STK for _platform_update_sloc112_1_0
;fetchPairLong
	ldhl	sp,	#15
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _platform_update_sloc113_1_0
;	genMove_o size 1
	ldhl	sp,	#16
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
	jr	00725$
;	genLabel
00724$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\states\platform.c:1172: if (tile_at(tile_start, tile_y) & COLLISION_BOTTOM){
;	genLabel
00725$:
;	genAnd
	bit	1, c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03126$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00443$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03127$.
;	skipping generated iCode
	C$platform.c$1176$8_4$486	= .
	.globl	C$platform.c$1176$8_4$486
;src\states\platform.c:1176: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc111_1_0
	ldhl	sp,	#23
	inc	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00438$
;	genLabel
00440$:
	C$platform.c$1178$7_4$485	= .
	.globl	C$platform.c$1178$7_4$485
;src\states\platform.c:1178: nocollide = 5; //Magic Number, how many frames to steal vertical control
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_nocollide
	ld	(hl), #0x05
	C$platform.c$1179$7_4$485	= .
	.globl	C$platform.c$1179$7_4$485
;src\states\platform.c:1179: pl_vel_y += plat_grav;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_pl_vel_y)
; common peephole 17 loaded a from (#_pl_vel_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_grav
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_plat_grav + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
	C$platform.c$1180$7_4$485	= .
	.globl	C$platform.c$1180$7_4$485
;src\states\platform.c:1180: break; 
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00456$
	C$platform.c$1183$6_4$484	= .
	.globl	C$platform.c$1183$6_4$484
;src\states\platform.c:1183: land:
;	genLabel
00443$:
	C$platform.c$1184$6_4$484	= .
	.globl	C$platform.c$1184$6_4$484
;src\states\platform.c:1184: new_y = ((((tile_y) << 3) - PLAYER.bounds.bottom) << 4) - 1;
;	genCast
;	AOP_STK for _platform_update_sloc105_1_0
;	genMove_o size 1
	ldhl	sp,	#14
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	b, a
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 9) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genMinus
;	AOP_STK for _platform_update_sloc78_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0001
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ldhl	sp,	#9
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
	C$platform.c$1185$6_4$484	= .
	.globl	C$platform.c$1185$6_4$484
;src\states\platform.c:1185: actor_attached = FALSE; //Detach when MP moves through a solid tile.
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x00
	C$platform.c$1187$6_4$484	= .
	.globl	C$platform.c$1187$6_4$484
;src\states\platform.c:1187: if(plat_state == GROUND_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_state)
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
	sub	a, #0x04
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03129$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00448$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03130$.
;	skipping generated iCode
	C$platform.c$1188$7_4$488	= .
	.globl	C$platform.c$1188$7_4$488
;src\states\platform.c:1188: que_state = GROUND_STATE; 
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x04
	C$platform.c$1189$7_4$488	= .
	.globl	C$platform.c$1189$7_4$488
;src\states\platform.c:1189: pl_vel_y = 256;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00456$
;	genLabel
00448$:
	C$platform.c$1190$6_4$484	= .
	.globl	C$platform.c$1190$6_4$484
;src\states\platform.c:1190: } else if(plat_state == GROUND_INIT){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_state)
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03131$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00445$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03132$.
;	skipping generated iCode
	C$platform.c$1191$7_4$489	= .
	.globl	C$platform.c$1191$7_4$489
;src\states\platform.c:1191: que_state = GROUND_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x04
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00456$
;	genLabel
00445$:
	C$platform.c$1192$7_4$490	= .
	.globl	C$platform.c$1192$7_4$490
;src\states\platform.c:1192: } else {que_state = GROUND_INIT;}
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x03
	C$platform.c$1193$6_4$484	= .
	.globl	C$platform.c$1193$6_4$484
;src\states\platform.c:1193: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00456$
;	genLabel
00451$:
	C$platform.c$1195$5_4$483	= .
	.globl	C$platform.c$1195$5_4$483
;src\states\platform.c:1195: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc106_1_0
	ldhl	sp,	#23
	inc	(hl)
;	genAssign
;	AOP_STK for _platform_update_sloc106_1_0
;	AOP_STK for _platform_update_sloc103_1_0
;	genMove_o size 1
	ld	a, (hl)
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00452$
;	genLabel
00456$:
	C$platform.c$1198$3_4$465	= .
	.globl	C$platform.c$1198$3_4$465
;src\states\platform.c:1198: PLAYER.pos.y = new_y;
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _platform_update_sloc78_1_0
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 3)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00471$
;	genLabel
00469$:
	C$platform.c$1200$2_3$463	= .
	.globl	C$platform.c$1200$2_3$463
;src\states\platform.c:1200: } else if (deltaY < 0) {
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_deltaY + 1)
	bit	7, a
	jp	Z, 00471$
;	skipping generated iCode
	C$platform.c$1202$3_3$491	= .
	.globl	C$platform.c$1202$3_3$491
;src\states\platform.c:1202: WORD new_y = PLAYER.pos.y + deltaY;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _platform_update_sloc116_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#20
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#19
;	genMove_o size 0
	C$platform.c$1203$3_3$491	= .
	.globl	C$platform.c$1203$3_3$491
;src\states\platform.c:1203: UBYTE tile_y = (((new_y >> 4) + PLAYER.bounds.top) >> 3);
;	genRightShift
;	AOP_STK for _platform_update_sloc116_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
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
;	AOP_STK for _platform_update_sloc117_1_0
;	genMove_o size 1
	ldhl	sp,	#20
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$1204$1_1$327	= .
	.globl	C$platform.c$1204$1_1$327
;src\states\platform.c:1204: while (tile_start != tile_end) {
;	genAssign
;	AOP_STK for _platform_update_sloc76_1_0
;	AOP_STK for _platform_update_sloc118_1_0
;	genMove_o size 1
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#23
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00463$:
;	genCmpEq
;	AOP_STK for _platform_update_sloc77_1_0
;	AOP_STK for _platform_update_sloc118_1_0
	ldhl	sp,	#7
	ld	a, (hl)
	ldhl	sp,	#23
	sub	a, (hl)
	jp	Z,00465$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03133$.
;	skipping generated iCode
;src\states\platform.c:1205: if (tile_at(tile_start, tile_y) & COLLISION_BOTTOM) {
;	genAssign
;	AOP_STK for _platform_update_sloc118_1_0
;	AOP_STK for _platform_update_sloc119_1_0
;	genMove_o size 1
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#16
	ld	(hl), a
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _platform_update_sloc118_1_0
	ldhl	sp,	#23
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00729$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _platform_update_sloc117_1_0
	ldhl	sp,	#20
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00729$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _platform_update_sloc120_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#17
	ld	(hl), a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genCast
;	AOP_STK for _platform_update_sloc117_1_0
;	genMove_o size 1
	ldhl	sp,	#20
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
;	AOP_STK for _platform_update_sloc119_1_0
;fetchPairLong
	ldhl	sp,	#16
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _platform_update_sloc120_1_0
;	genMove_o size 1
	ldhl	sp,	#17
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
	jr	00730$
;	genLabel
00729$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\states\platform.c:1205: if (tile_at(tile_start, tile_y) & COLLISION_BOTTOM) {
;	genLabel
00730$:
;	genAnd
	bit	1, c
	jp	Z,00462$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03134$.
;	skipping generated iCode
	C$platform.c$1206$5_3$493	= .
	.globl	C$platform.c$1206$5_3$493
;src\states\platform.c:1206: new_y = ((((UBYTE)(tile_y + 1) << 3) - PLAYER.bounds.top) << 4) + 1;
;	genCast
;	AOP_STK for _platform_update_sloc117_1_0
;	genMove_o size 1
	ldhl	sp,	#20
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	inc	l
;	genCast
;	(locations are the same)
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genPlus
;	AOP_STK for _platform_update_sloc116_1_0
; common peephole 69 incremented in hl instead of bc.
	inc	hl
	ld	c, l
	ld	b, h
;	genMove_o size 2
	ldhl	sp,	#18
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$platform.c$1207$5_3$493	= .
	.globl	C$platform.c$1207$5_3$493
;src\states\platform.c:1207: pl_vel_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$1209$5_3$493	= .
	.globl	C$platform.c$1209$5_3$493
;src\states\platform.c:1209: if(actor_attached){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_actor_attached)
; common peephole 17 loaded a from (#_actor_attached) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00460$
	C$platform.c$1210$6_3$494	= .
	.globl	C$platform.c$1210$6_3$494
;src\states\platform.c:1210: temp_y = last_actor->pos.y;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_last_actor + 1)
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
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	AOP_STK for _platform_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#21
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$1211$6_3$494	= .
	.globl	C$platform.c$1211$6_3$494
;src\states\platform.c:1211: if (last_actor->bounds.top > 0){
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
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
	jr	Z, 03135$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03136$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03136$
03135$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03136$
	scf
03136$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00458$
;	skipping generated iCode
	C$platform.c$1212$7_3$495	= .
	.globl	C$platform.c$1212$7_3$495
;src\states\platform.c:1212: temp_y += last_actor->bounds.top + last_actor->bounds.bottom << 5;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_last_actor
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0009
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
;	genPlus
	add	hl, bc
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	AOP_STK for _platform_update_sloc0_1_0
;fetchPairLong
	ldhl	sp,	#21
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#23
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#22
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00458$:
	C$platform.c$1214$6_3$494	= .
	.globl	C$platform.c$1214$6_3$494
;src\states\platform.c:1214: new_y = temp_y;
;	genAssign
;	AOP_STK for _platform_update_sloc0_1_0
;	AOP_STK for _platform_update_sloc116_1_0
;	genMove_o size 2
	ldhl	sp,	#21
	ld	a, (hl)
	ldhl	sp,	#18
	ld	(hl), a
	ldhl	sp,	#22
	ld	a, (hl)
	ldhl	sp,	#19
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00460$:
	C$platform.c$1216$5_3$493	= .
	.globl	C$platform.c$1216$5_3$493
;src\states\platform.c:1216: ct_val = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ct_val
	ld	(hl), #0x00
	C$platform.c$1217$5_3$493	= .
	.globl	C$platform.c$1217$5_3$493
;src\states\platform.c:1217: que_state = FALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
	C$platform.c$1218$5_3$493	= .
	.globl	C$platform.c$1218$5_3$493
;src\states\platform.c:1218: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00465$
;	genLabel
00462$:
	C$platform.c$1220$4_3$492	= .
	.globl	C$platform.c$1220$4_3$492
;src\states\platform.c:1220: tile_start++;
;	genPlus
;	AOP_STK for _platform_update_sloc118_1_0
	ldhl	sp,	#23
	inc	(hl)
;	genGoto
	jp	00463$
;	genLabel
00465$:
	C$platform.c$1222$3_3$491	= .
	.globl	C$platform.c$1222$3_3$491
;src\states\platform.c:1222: PLAYER.pos.y = new_y;
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _platform_update_sloc116_1_0
;	genMove_o size 2
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 3)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$1228$1_1$328	= .
	.globl	C$platform.c$1228$1_1$328
;src\states\platform.c:1228: gotoActorCol:
;	genLabel
00471$:
	C$platform.c$1230$2_1$496	= .
	.globl	C$platform.c$1230$2_1$496
;src\states\platform.c:1230: deltaX = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_deltaX
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$1231$2_1$496	= .
	.globl	C$platform.c$1231$2_1$496
;src\states\platform.c:1231: deltaY = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_deltaY
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$1233$2_2$497	= .
	.globl	C$platform.c$1233$2_2$497
;src\states\platform.c:1233: hit_actor = actor_overlapping_player(FALSE);
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
;	AOP_STK for _platform_update_sloc121_1_0
	ld	e, #b_actor_overlapping_player
	ld	hl, #_actor_overlapping_player
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$platform.c$1234$2_2$497	= .
	.globl	C$platform.c$1234$2_2$497
;src\states\platform.c:1234: if (hit_actor != NULL && hit_actor->collision_group) {
;	genIfx
;	AOP_STK for _platform_update_sloc121_1_0
	ldhl	sp,	#20
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00518$
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;fetchPairLong
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002f
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genIfx
	or	a, a
	jp	Z, 00518$
	C$platform.c$1236$3_2$498	= .
	.globl	C$platform.c$1236$3_2$498
;src\states\platform.c:1236: if (hit_actor->collision_group == plat_solid_group){
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002f
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_solid_group)
; common peephole 17 loaded a from (#_plat_solid_group) directly instead of using hl.
	sub	a, c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03137$.
	jp	NZ,00507$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03138$.
;	skipping generated iCode
	C$platform.c$1237$4_2$499	= .
	.globl	C$platform.c$1237$4_2$499
;src\states\platform.c:1237: if(!actor_attached || hit_actor != last_actor){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_actor_attached)
; common peephole 17 loaded a from (#_actor_attached) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00495$
;	genCmpEq
;	AOP_STK for _platform_update_sloc121_1_0
;fetchLitPair	hl
	ld	a, (#_last_actor)
; common peephole 17 loaded a from (#_last_actor) directly instead of using hl.
	ldhl	sp,	#19
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03139$
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_last_actor + 1)
	ldhl	sp,	#20
	sub	a, (hl)
	jp	Z,00508$
; common peephole 81 removed jp by using inverse jump logic
03139$:
;	skipping generated iCode
;	genLabel
00495$:
	C$platform.c$1238$5_2$500	= .
	.globl	C$platform.c$1238$5_2$500
;src\states\platform.c:1238: if (temp_y < (hit_actor->pos.y + (hit_actor->bounds.top << 4)) && pl_vel_y >= 0){
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
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
;	genPlus
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
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
; common peephole 69 incremented in hl instead of de.
; common peephole 129a moved increment of hl to constant.
; common peephole 69 incremented in hl instead of de.
	ld	hl,#0x8
	add	hl,de
; common peephole 129a moved increment of hl to constant.
	ld	e, l
	ld	d, h
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
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCmpLt
;	AOP_STK for _platform_update_sloc0_1_0
	ldhl	sp,	#21
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
	jr	Z, 03140$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03141$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03141$
03140$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03141$
	scf
03141$:
	jp	NC, 00492$
;	skipping generated iCode
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_y + 1)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00492$
;	skipping generated iCode
	C$platform.c$1240$6_2$501	= .
	.globl	C$platform.c$1240$6_2$501
;src\states\platform.c:1240: last_actor = hit_actor;
;	genAssign
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_last_actor),a
; common peephole 19 loaded (#_last_actor) from a directly instead of using hl.
	ldhl	sp,	#20
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_last_actor + 1),a
; common peephole 20 loaded (#_last_actor) from a directly instead of using hl.
	C$platform.c$1241$6_2$501	= .
	.globl	C$platform.c$1241$6_2$501
;src\states\platform.c:1241: mp_last_x = hit_actor->pos.x;
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
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
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_mp_last_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
	C$platform.c$1242$6_2$501	= .
	.globl	C$platform.c$1242$6_2$501
;src\states\platform.c:1242: mp_last_y = hit_actor->pos.y;
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	genMove_o size 2
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
;fetchLitPair	hl
	ld	hl, #_mp_last_y
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
	C$platform.c$1243$6_2$501	= .
	.globl	C$platform.c$1243$6_2$501
;src\states\platform.c:1243: PLAYER.pos.y = hit_actor->pos.y + (hit_actor->bounds.top << 4) - (PLAYER.bounds.bottom << 4) - 4;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
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
;	AOP_STK for _platform_update_sloc121_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
; common peephole 69 incremented in hl instead of de.
; common peephole 129a moved increment of hl to constant.
; common peephole 69 incremented in hl instead of de.
	ld	hl,#0x8
	add	hl,de
; common peephole 129a moved increment of hl to constant.
	ld	e, l
	ld	d, h
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
	ld	a, (#(_actors + 9) + 0)
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
;	genMinus
	ld	a, c
	add	a, #0xfc
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 3)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$1245$6_2$501	= .
	.globl	C$platform.c$1245$6_2$501
;src\states\platform.c:1245: pl_vel_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$1246$6_2$501	= .
	.globl	C$platform.c$1246$6_2$501
;src\states\platform.c:1246: actor_attached = TRUE;                        
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x01
	C$platform.c$1247$6_2$501	= .
	.globl	C$platform.c$1247$6_2$501
;src\states\platform.c:1247: que_state = GROUND_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x03
;	genGoto
	jp	00508$
;	genLabel
00492$:
	C$platform.c$1249$5_2$500	= .
	.globl	C$platform.c$1249$5_2$500
;src\states\platform.c:1249: } else if (temp_y + (PLAYER.bounds.top << 4) > hit_actor->pos.y + (hit_actor->bounds.bottom<<4)){
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
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
	ld	c, l
	ld	b, h
;	genPlus
;	AOP_STK for _platform_update_sloc0_1_0
;	AOP_STK for _platform_update_sloc122_1_0
;fetchPairLong
	ldhl	sp,	#21
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#19
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#18
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
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
;	genPlus
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
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
; common peephole 69 incremented in hl instead of de.
; common peephole 129a moved increment of hl to constant.
; common peephole 69 incremented in hl instead of de.
; common peephole 129a moved increment of hl to constant.
; common peephole 69 incremented in hl instead of de.
	ld	hl,#0x9
	add	hl,de
; common peephole 129a moved increment of hl to constant.
	ld	e, l
	ld	d, h
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
;	genLeftShift
;fetchPairLong
	ld	h, a
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
;	genCmpGt
;	AOP_STK for _platform_update_sloc122_1_0
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
	jr	Z, 03142$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03143$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03143$
03142$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03143$
	scf
03143$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00489$
;	skipping generated iCode
	C$platform.c$1250$6_2$502	= .
	.globl	C$platform.c$1250$6_2$502
;src\states\platform.c:1250: deltaY += (hit_actor->pos.y - PLAYER.pos.y) + ((-PLAYER.bounds.top + hit_actor->bounds.bottom)<<4) + 32;
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
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
;	genPlus
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
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 3
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genUminus
	xor	a, a
	sub	a, e
	ld	e, a
	sbc	a, a
	sub	a, d
	ld	d, a
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	AOP_STK for _platform_update_sloc123_1_0
	push	de
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#21
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
	pop	de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#24
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#23
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc123_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
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
	inc	hl
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
;	genPlus
	add	hl, de
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genPlus
	ld	bc, #0x20
	add	hl,bc
; common peephole 113 used 16-bit addition.
	ld	c, l
	ld	b, h
; common peephole 1 removed dead load from h into a.
;	genPlus
;fetchLitPair	hl
	ld	hl, #_deltaY
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$1251$6_2$502	= .
	.globl	C$platform.c$1251$6_2$502
;src\states\platform.c:1251: pl_vel_y = plat_grav;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_plat_grav)
; common peephole 17 loaded a from (#_plat_grav) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_pl_vel_y),a
; common peephole 19 loaded (#_pl_vel_y) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_plat_grav + 1)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
	C$platform.c$1253$6_2$502	= .
	.globl	C$platform.c$1253$6_2$502
;src\states\platform.c:1253: if(que_state == JUMP_STATE || actor_attached){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x07
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00472$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03144$.
;	skipping generated iCode
;	genIfx
;fetchLitPair	hl
	ld	a, (#_actor_attached)
; common peephole 17 loaded a from (#_actor_attached) directly instead of using hl.
	or	a, a
	jp	Z, 00508$
;	genLabel
00472$:
	C$platform.c$1254$7_2$503	= .
	.globl	C$platform.c$1254$7_2$503
;src\states\platform.c:1254: que_state = FALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
;	genGoto
	jp	00508$
;	genLabel
00489$:
	C$platform.c$1257$5_2$500	= .
	.globl	C$platform.c$1257$5_2$500
;src\states\platform.c:1257: } else if (PLAYER.pos.x < hit_actor->pos.x){
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
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
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
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
	jr	Z, 03145$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03146$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03146$
03145$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03146$
	scf
03146$:
	jp	NC, 00486$
;	skipping generated iCode
	C$platform.c$1258$6_2$504	= .
	.globl	C$platform.c$1258$6_2$504
;src\states\platform.c:1258: deltaX = (hit_actor->pos.x - PLAYER.pos.x) - ((PLAYER.bounds.right + -hit_actor->bounds.left)<<4);
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
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
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 1
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
;	genCast
;	AOP_STK for _platform_update_sloc124_1_0
;	genMove_o size 0
;	genMove_o size 1
	ldhl	sp,	#22
; common peephole 96b move inc hl before sbc a, a
; common peephole 96a move inc hl before rlca
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	rlca
	sbc	a, a
	ld	(hl), a
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
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
;	genUminus
	xor	a, a
	sub	a, e
	ld	e, a
	sbc	a, a
	sub	a, d
	ld	d, a
;	genPlus
;	AOP_STK for _platform_update_sloc124_1_0
;fetchPairLong
;fetchPairLong
	ldhl	sp,	#22
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genLeftShift
;fetchPairLong
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
;	genCast
;	(locations are the same)
;	genMinus
	ld	a, c
	sub	a, e
;fetchLitPair	hl
	ld	hl, #_deltaX
;fetchLitPair	hl
; common peephole 96b move inc hl before sbc a, d
; common peephole 96b move inc hl before ld a, b
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, b
	sbc	a, d
	ld	(hl), a
	C$platform.c$1259$6_2$504	= .
	.globl	C$platform.c$1259$6_2$504
;src\states\platform.c:1259: col = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_col
	ld	(hl), #0x01
	C$platform.c$1260$6_2$504	= .
	.globl	C$platform.c$1260$6_2$504
;src\states\platform.c:1260: last_wall = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_wall
	ld	(hl), #0x01
	C$platform.c$1261$6_2$504	= .
	.globl	C$platform.c$1261$6_2$504
;src\states\platform.c:1261: wc_val = plat_coyote_max + 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_coyote_max)
; common peephole 17 loaded a from (#_plat_coyote_max) directly instead of using hl.
;	genPlus
	inc	a
;fetchLitPair	hl
	ld	(#_wc_val),a
; common peephole 19 loaded (#_wc_val) from a directly instead of using hl.
	C$platform.c$1262$6_2$504	= .
	.globl	C$platform.c$1262$6_2$504
;src\states\platform.c:1262: if(!INPUT_RIGHT){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	rrca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03148$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00476$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03149$.
;	skipping generated iCode
	C$platform.c$1263$7_2$505	= .
	.globl	C$platform.c$1263$7_2$505
;src\states\platform.c:1263: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00476$:
	C$platform.c$1265$6_2$504	= .
	.globl	C$platform.c$1265$6_2$504
;src\states\platform.c:1265: if(que_state == DASH_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x0a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03150$.
	jp	NZ,00508$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03151$.
;	skipping generated iCode
	C$platform.c$1266$7_2$506	= .
	.globl	C$platform.c$1266$7_2$506
;src\states\platform.c:1266: que_state = FALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
;	genGoto
	jp	00508$
;	genLabel
00486$:
	C$platform.c$1268$5_2$500	= .
	.globl	C$platform.c$1268$5_2$500
;src\states\platform.c:1268: } else if (PLAYER.pos.x > hit_actor->pos.x){
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
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
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
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
	jr	Z, 03152$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03153$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03153$
03152$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03153$
	scf
03153$:
	jp	NC, 00508$
;	skipping generated iCode
	C$platform.c$1269$6_2$507	= .
	.globl	C$platform.c$1269$6_2$507
;src\states\platform.c:1269: deltaX = (hit_actor->pos.x - PLAYER.pos.x) + ((-PLAYER.bounds.left + hit_actor->bounds.right)<<4)+16;
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
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
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 1
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 6) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genUminus
	xor	a, a
	sub	a, e
	ld	e, a
	sbc	a, a
	sub	a, d
	ld	d, a
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	AOP_STK for _platform_update_sloc125_1_0
	push	de
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#21
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, de
	pop	de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#24
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#23
;	genMove_o size 0
;	genPlus
;	AOP_STK for _platform_update_sloc125_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
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
;	genPlus
	add	hl, de
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, de
;	genMove_o size 2
	ld	a, l
	ld	(_deltaX), a
	ld	a, h
	ld	(_deltaX + 1), a
	C$platform.c$1270$6_2$507	= .
	.globl	C$platform.c$1270$6_2$507
;src\states\platform.c:1270: col = -1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_col
	ld	(hl), #0xff
	C$platform.c$1271$6_2$507	= .
	.globl	C$platform.c$1271$6_2$507
;src\states\platform.c:1271: last_wall = -1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_last_wall
	ld	(hl), #0xff
	C$platform.c$1272$6_2$507	= .
	.globl	C$platform.c$1272$6_2$507
;src\states\platform.c:1272: wc_val = plat_coyote_max  + 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_coyote_max)
; common peephole 17 loaded a from (#_plat_coyote_max) directly instead of using hl.
;	genPlus
	inc	a
;fetchLitPair	hl
	ld	(#_wc_val),a
; common peephole 19 loaded (#_wc_val) from a directly instead of using hl.
	C$platform.c$1273$6_2$507	= .
	.globl	C$platform.c$1273$6_2$507
;src\states\platform.c:1273: if (!INPUT_LEFT){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03154$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00480$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03155$.
;	skipping generated iCode
	C$platform.c$1274$7_2$508	= .
	.globl	C$platform.c$1274$7_2$508
;src\states\platform.c:1274: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00480$:
	C$platform.c$1276$6_2$507	= .
	.globl	C$platform.c$1276$6_2$507
;src\states\platform.c:1276: if(que_state == DASH_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x0a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03156$.
	jp	NZ,00508$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03157$.
;	skipping generated iCode
	C$platform.c$1277$7_2$509	= .
	.globl	C$platform.c$1277$7_2$509
;src\states\platform.c:1277: que_state = FALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
;	genGoto
	jp	00508$
;	genLabel
00507$:
	C$platform.c$1282$3_2$498	= .
	.globl	C$platform.c$1282$3_2$498
;src\states\platform.c:1282: } else if (hit_actor->collision_group == plat_mp_group){
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002f
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_mp_group)
; common peephole 17 loaded a from (#_plat_mp_group) directly instead of using hl.
	sub	a, c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03158$.
	jp	NZ,00508$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03159$.
;	skipping generated iCode
	C$platform.c$1284$4_2$510	= .
	.globl	C$platform.c$1284$4_2$510
;src\states\platform.c:1284: if(!actor_attached || hit_actor != last_actor){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_actor_attached)
; common peephole 17 loaded a from (#_actor_attached) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00501$
;	genCmpEq
;	AOP_STK for _platform_update_sloc121_1_0
	ldhl	sp,	#19
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_last_actor
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03160$
	ldhl	sp,	#20
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_last_actor + 1
	sub	a, (hl)
	jp	Z,00508$
; common peephole 81 removed jp by using inverse jump logic
03160$:
;	skipping generated iCode
;	genLabel
00501$:
	C$platform.c$1285$5_2$511	= .
	.globl	C$platform.c$1285$5_2$511
;src\states\platform.c:1285: if (temp_y < hit_actor->pos.y + (hit_actor->bounds.top << 4) && pl_vel_y >= 0){
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
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
;	genPlus
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
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
; common peephole 69 incremented in hl instead of de.
; common peephole 129a moved increment of hl to constant.
; common peephole 69 incremented in hl instead of de.
	ld	hl,#0x8
	add	hl,de
; common peephole 129a moved increment of hl to constant.
	ld	e, l
	ld	d, h
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
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCmpLt
;	AOP_STK for _platform_update_sloc0_1_0
	ldhl	sp,	#21
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
	jr	Z, 03161$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03162$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03162$
03161$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03162$
	scf
03162$:
	jp	NC, 00508$
;	skipping generated iCode
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_y + 1)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00508$
;	skipping generated iCode
	C$platform.c$1287$6_2$512	= .
	.globl	C$platform.c$1287$6_2$512
;src\states\platform.c:1287: last_actor = hit_actor;
;	genAssign
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_last_actor),a
; common peephole 19 loaded (#_last_actor) from a directly instead of using hl.
	ldhl	sp,	#20
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_last_actor + 1),a
; common peephole 20 loaded (#_last_actor) from a directly instead of using hl.
	C$platform.c$1288$6_2$512	= .
	.globl	C$platform.c$1288$6_2$512
;src\states\platform.c:1288: mp_last_x = hit_actor->pos.x;
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
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
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_mp_last_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
	C$platform.c$1289$6_2$512	= .
	.globl	C$platform.c$1289$6_2$512
;src\states\platform.c:1289: mp_last_y = hit_actor->pos.y;
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	genMove_o size 2
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
;fetchLitPair	hl
	ld	hl, #_mp_last_y
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
	C$platform.c$1290$6_2$512	= .
	.globl	C$platform.c$1290$6_2$512
;src\states\platform.c:1290: PLAYER.pos.y = hit_actor->pos.y + (hit_actor->bounds.top << 4) - (PLAYER.bounds.bottom << 4) - 4;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
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
;	AOP_STK for _platform_update_sloc121_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
; common peephole 69 incremented in hl instead of de.
; common peephole 129a moved increment of hl to constant.
; common peephole 69 incremented in hl instead of de.
	ld	hl,#0x8
	add	hl,de
; common peephole 129a moved increment of hl to constant.
	ld	e, l
	ld	d, h
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
	ld	a, (#(_actors + 9) + 0)
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
;	genMinus
	ld	a, c
	add	a, #0xfc
	ld	c, a
	ld	a, b
	adc	a, #0xff
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 3)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$1292$6_2$512	= .
	.globl	C$platform.c$1292$6_2$512
;src\states\platform.c:1292: pl_vel_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$1293$6_2$512	= .
	.globl	C$platform.c$1293$6_2$512
;src\states\platform.c:1293: actor_attached = TRUE;                        
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x01
	C$platform.c$1294$6_2$512	= .
	.globl	C$platform.c$1294$6_2$512
;src\states\platform.c:1294: que_state = GROUND_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x03
;	genLabel
00508$:
;include/actor.h:73: player_collision_actor = actor;
;	genAssign
;	AOP_STK for _platform_update_sloc121_1_0
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_player_collision_actor),a
; common peephole 19 loaded (#_player_collision_actor) from a directly instead of using hl.
	ldhl	sp,	#20
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_player_collision_actor + 1),a
; common peephole 20 loaded (#_player_collision_actor) from a directly instead of using hl.
	C$platform.c$1299$2_2$497	= .
	.globl	C$platform.c$1299$2_2$497
;src\states\platform.c:1299: player_register_collision_with(hit_actor);
;	genGoto
	jp	00521$
;	genLabel
00518$:
	C$platform.c$1300$2_2$497	= .
	.globl	C$platform.c$1300$2_2$497
;src\states\platform.c:1300: } else if (INPUT_PRESSED(INPUT_PLATFORM_INTERACT)) {
;	genCast
;	AOP_STK for _platform_update_sloc126_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
	ldhl	sp,	#22
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCpl
;	AOP_STK for _platform_update_sloc126_1_0
;	AOP_STK for _platform_update_sloc127_1_0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl)
	cpl
;	genMove_o size 1
	ldhl	sp,	#17
;	genMove_o size 0
;	genMove_o size 1
; common peephole 96a move inc hl before cpl
; common peephole 96b move inc hl before ld a, #0x00
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	cpl
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	AOP_STK for _platform_update_sloc128_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
	ldhl	sp,	#22
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genAnd
;	AOP_STK for _platform_update_sloc128_1_0
;	AOP_STK for _platform_update_sloc127_1_0
;	AOP_STK for _platform_update_sloc129_1_0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl)
	ldhl	sp,	#17
	and	a, (hl)
;	genMove_o size 1
	dec	hl
	dec	hl
	ld	(hl), a
;	genMove_o size 0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldhl	sp,	#18
	and	a, (hl)
;	genMove_o size 1
	dec	hl
	dec	hl
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	AOP_STK for _platform_update_sloc130_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
	ldhl	sp,	#22
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genAnd
;	AOP_STK for _platform_update_sloc130_1_0
;	AOP_STK for _platform_update_sloc131_1_0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl)
	and	a, #0x08
;	genMove_o size 1
	ldhl	sp,	#17
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genAnd
;	AOP_STK for _platform_update_sloc129_1_0
;	AOP_STK for _platform_update_sloc131_1_0
;	AOP_STK for _platform_update_sloc132_1_0
	ldhl	sp,	#15
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
	and	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#22
	ld	(hl), a
;	genMove_o size 0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldhl	sp,	#18
	and	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#23
;	genMove_o size 0
;	genIfx
;	AOP_STK for _platform_update_sloc132_1_0
; common peephole 96b move dec hl before ld a, #0x00
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00521$
	C$platform.c$1301$3_2$513	= .
	.globl	C$platform.c$1301$3_2$513
;src\states\platform.c:1301: if (!hit_actor) {
;	genIfx
;	AOP_STK for _platform_update_sloc121_1_0
	dec	hl
	dec	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00510$
	C$platform.c$1302$4_2$514	= .
	.globl	C$platform.c$1302$4_2$514
;src\states\platform.c:1302: hit_actor = actor_in_front_of_player(8, TRUE);
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
	ld	a, #0x08
	push	af
	inc	sp
;	genCall
;	AOP_STK for _platform_update_sloc121_1_0
	ld	e, #b_actor_in_front_of_player
	ld	hl, #_actor_in_front_of_player
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genLabel
00510$:
	C$platform.c$1304$3_2$513	= .
	.globl	C$platform.c$1304$3_2$513
;src\states\platform.c:1304: if (hit_actor && !hit_actor->collision_group && hit_actor->script.bank) {
;	genIfx
;	AOP_STK for _platform_update_sloc121_1_0
	ldhl	sp,	#20
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00521$
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;fetchPairLong
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x002f
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00521$
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0025
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00521$
	C$platform.c$1305$4_2$515	= .
	.globl	C$platform.c$1305$4_2$515
;src\states\platform.c:1305: script_execute(hit_actor->script.bank, hit_actor->script.ptr, 0, 1, 0);
;	genPlus
;	AOP_STK for _platform_update_sloc121_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#19
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0025
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;	spillPairReg hl
;	spillPairReg hl
	ld	c,l
	ld	b,h
; common peephole 104 removed redundant load from bc into hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
	push	hl
;	genIpush
	push	bc
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 8
	add	sp, #8
	C$platform.c$1313$1_1$328	= .
	.globl	C$platform.c$1313$1_1$328
;src\states\platform.c:1313: gotoSwitch2:
;	genLabel
00521$:
	C$platform.c$1315$1_1$328	= .
	.globl	C$platform.c$1315$1_1$328
;src\states\platform.c:1315: switch(plat_state){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_state)
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00522$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03163$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_state)
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00523$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03164$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03165$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a,(#_plat_state)
	cp	a,#0x03
	jp	Z,00568$
; common peephole 107 removed load from (#_plat_state) into a by replacing sub with cp
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03166$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	cp	a,#0x04
	jp	Z,00568$
; common peephole 108 removed load from (#_plat_state) into a by replacing sub with cp
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
	sub	a, #0x06
	jp	Z,00595$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03167$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_state)
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
	sub	a, #0x07
	jp	Z,00595$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03168$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_state)
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
	sub	a, #0x0a
	jp	Z,00616$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03169$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03170$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a,(#_plat_state)
	cp	a,#0x0f
	jp	Z,00625$
; common peephole 107 removed load from (#_plat_state) into a by replacing sub with cp
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03171$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03172$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	cp	a,#0x10
	jp	Z,00625$
; common peephole 108 removed load from (#_plat_state) into a by replacing sub with cp
	cp	a,#0x12
	jp	Z,00649$
; common peephole 107 removed load from (#_plat_state) into a by replacing sub with cp
; common peephole 17 loaded a from (#_plat_state) directly instead of using hl.
	sub	a, #0x13
	jp	Z,00649$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03173$.
;	skipping generated iCode
;	genGoto
	jp	00653$
	C$platform.c$1316$2_1$516	= .
	.globl	C$platform.c$1316$2_1$516
;src\states\platform.c:1316: case FALL_INIT:
;	genLabel
00522$:
	C$platform.c$1317$2_1$516	= .
	.globl	C$platform.c$1317$2_1$516
;src\states\platform.c:1317: actor_attached = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x00
	C$platform.c$1318$2_1$516	= .
	.globl	C$platform.c$1318$2_1$516
;src\states\platform.c:1318: case FALL_STATE: {
;	genLabel
00523$:
	C$platform.c$1320$3_1$517	= .
	.globl	C$platform.c$1320$3_1$517
;src\states\platform.c:1320: basic_anim();
;	genCall
	ld	e, #b_basic_anim
	ld	hl, #_basic_anim
	call	___sdcc_bcall_ehl
	C$platform.c$1326$3_1$517	= .
	.globl	C$platform.c$1326$3_1$517
;src\states\platform.c:1326: wall_check();
;	genCall
	ld	e, #b_wall_check
	ld	hl, #_wall_check
	call	___sdcc_bcall_ehl
	C$platform.c$1329$3_1$517	= .
	.globl	C$platform.c$1329$3_1$517
;src\states\platform.c:1329: if(dash_press && dash_ready_val == 0){
;	genIfx
;	AOP_STK for _platform_update_sloc2_1_0
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00537$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_dash_ready_val)
; common peephole 17 loaded a from (#_dash_ready_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00537$
	C$platform.c$1330$4_1$518	= .
	.globl	C$platform.c$1330$4_1$518
;src\states\platform.c:1330: if (plat_dash_style != 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_plat_dash_style)
; common peephole 17 loaded a from (#_plat_dash_style) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00534$
	C$platform.c$1331$5_1$519	= .
	.globl	C$platform.c$1331$5_1$519
;src\states\platform.c:1331: if (col == 0 || (col == 1 && !INPUT_RIGHT) || (col == -1 && !INPUT_LEFT)){
;	genIfx
;fetchLitPair	hl
	ld	hl, #_col
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00524$
;	genCmpEq
;fetchLitPair	hl
	ld	a, (hl)
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03174$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00529$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03175$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00524$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03176$.
;	skipping generated iCode
;	genLabel
00529$:
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_col)
; common peephole 17 loaded a from (#_col) directly instead of using hl.
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03177$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00537$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03178$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03179$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00537$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03180$.
;	skipping generated iCode
;	genLabel
00524$:
	C$platform.c$1332$6_1$520	= .
	.globl	C$platform.c$1332$6_1$520
;src\states\platform.c:1332: que_state = DASH_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x09
	C$platform.c$1333$6_1$520	= .
	.globl	C$platform.c$1333$6_1$520
;src\states\platform.c:1333: plat_state = FALL_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x02
	C$platform.c$1334$6_1$520	= .
	.globl	C$platform.c$1334$6_1$520
;src\states\platform.c:1334: break;
;	genGoto
	jp	00653$
;	genLabel
00534$:
	C$platform.c$1337$4_1$518	= .
	.globl	C$platform.c$1337$4_1$518
;src\states\platform.c:1337: else if (que_state == GROUND_INIT && plat_dash_style != 1){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03181$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00537$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03182$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_dash_style)
; common peephole 17 loaded a from (#_plat_dash_style) directly instead of using hl.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00537$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03183$.
;	skipping generated iCode
	C$platform.c$1338$5_1$521	= .
	.globl	C$platform.c$1338$5_1$521
;src\states\platform.c:1338: que_state = DASH_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x09
	C$platform.c$1339$5_1$521	= .
	.globl	C$platform.c$1339$5_1$521
;src\states\platform.c:1339: plat_state = FALL_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x02
	C$platform.c$1340$5_1$521	= .
	.globl	C$platform.c$1340$5_1$521
;src\states\platform.c:1340: break;
;	genGoto
	jp	00653$
;	genLabel
00537$:
	C$platform.c$1345$3_1$517	= .
	.globl	C$platform.c$1345$3_1$517
;src\states\platform.c:1345: if (INPUT_PRESSED(INPUT_PLATFORM_JUMP)){
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
	ld	d, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_frame_joy
	ld	a, (hl)
;	genMove_o size 1
	ld	c, #0x00
;	genAnd
	and	a, e
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, c
	and	a, d
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genAnd
	ld	a, c
	and	a, #0x10
;	genMove_o size 1
;	genMove_o size 1
	ld	c, #0x00
;	genAnd
	and	a, e
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, c
	and	a, d
;	genMove_o size 1
;	genMove_o size 0
;	genIfx
	ld	d, a
; common peephole 98 removed redundant load from d into a.
	or	a, e
	jp	Z, 00552$
	C$platform.c$1347$4_1$522	= .
	.globl	C$platform.c$1347$4_1$522
;src\states\platform.c:1347: if(wc_val != 0 && wj_val != 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_wc_val)
; common peephole 17 loaded a from (#_wc_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00548$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_wj_val)
; common peephole 17 loaded a from (#_wj_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00548$
	C$platform.c$1348$5_1$523	= .
	.globl	C$platform.c$1348$5_1$523
;src\states\platform.c:1348: jump_type = 3;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x03
	C$platform.c$1349$5_1$523	= .
	.globl	C$platform.c$1349$5_1$523
;src\states\platform.c:1349: wj_val -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_wj_val
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
	C$platform.c$1350$5_1$523	= .
	.globl	C$platform.c$1350$5_1$523
;src\states\platform.c:1350: nocontrol_h = 5;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_nocontrol_h
	ld	(hl), #0x05
	C$platform.c$1351$5_1$523	= .
	.globl	C$platform.c$1351$5_1$523
;src\states\platform.c:1351: pl_vel_x += (plat_wall_kick + plat_walk_vel)*-last_wall;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_plat_wall_kick)
; common peephole 17 loaded a from (#_plat_wall_kick) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_walk_vel
	add	a, (hl)
	ld	e, a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_plat_wall_kick + 1)
;fetchLitPair	hl
	ld	hl, #_plat_walk_vel + 1
	adc	a, (hl)
	ld	d, a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_wall)
; common peephole 17 loaded a from (#_last_wall) directly instead of using hl.
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genUminus
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	__mulint
;	genMove_o size 2
;	genPlus
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
	ld	a, (hl)
	add	a, c
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, b
;fetchLitPair	hl
	ld	(hl), a
	C$platform.c$1352$5_1$523	= .
	.globl	C$platform.c$1352$5_1$523
;src\states\platform.c:1352: que_state = JUMP_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x06
	C$platform.c$1353$5_1$523	= .
	.globl	C$platform.c$1353$5_1$523
;src\states\platform.c:1353: plat_state = FALL_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x02
	C$platform.c$1354$5_1$523	= .
	.globl	C$platform.c$1354$5_1$523
;src\states\platform.c:1354: break;
;	genGoto
	jp	00653$
;	genLabel
00548$:
	C$platform.c$1355$4_1$522	= .
	.globl	C$platform.c$1355$4_1$522
;src\states\platform.c:1355: } else if (ct_val != 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_ct_val)
; common peephole 17 loaded a from (#_ct_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00545$
	C$platform.c$1357$5_1$524	= .
	.globl	C$platform.c$1357$5_1$524
;src\states\platform.c:1357: jump_type = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x01
	C$platform.c$1358$5_1$524	= .
	.globl	C$platform.c$1358$5_1$524
;src\states\platform.c:1358: que_state = JUMP_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x06
	C$platform.c$1359$5_1$524	= .
	.globl	C$platform.c$1359$5_1$524
;src\states\platform.c:1359: plat_state = FALL_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x02
	C$platform.c$1360$5_1$524	= .
	.globl	C$platform.c$1360$5_1$524
;src\states\platform.c:1360: break;
;	genGoto
	jp	00653$
;	genLabel
00545$:
	C$platform.c$1361$4_1$522	= .
	.globl	C$platform.c$1361$4_1$522
;src\states\platform.c:1361: } else if (dj_val != 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_dj_val)
; common peephole 17 loaded a from (#_dj_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00542$
	C$platform.c$1363$5_1$525	= .
	.globl	C$platform.c$1363$5_1$525
;src\states\platform.c:1363: jump_type = 2;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x02
	C$platform.c$1364$5_1$525	= .
	.globl	C$platform.c$1364$5_1$525
;src\states\platform.c:1364: if (dj_val != 255){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_dj_val)
; common peephole 17 loaded a from (#_dj_val) directly instead of using hl.
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00540$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03184$.
;	skipping generated iCode
	C$platform.c$1365$6_1$526	= .
	.globl	C$platform.c$1365$6_1$526
;src\states\platform.c:1365: dj_val -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_dj_val
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;	genLabel
00540$:
	C$platform.c$1367$5_1$525	= .
	.globl	C$platform.c$1367$5_1$525
;src\states\platform.c:1367: jump_reduction_val += jump_reduction;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_jump_reduction_val)
; common peephole 17 loaded a from (#_jump_reduction_val) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_jump_reduction
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_jump_reduction_val
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_jump_reduction + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_jump_reduction_val + 1),a
; common peephole 20 loaded (#_jump_reduction_val) from a directly instead of using hl.
	C$platform.c$1368$5_1$525	= .
	.globl	C$platform.c$1368$5_1$525
;src\states\platform.c:1368: que_state = JUMP_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x06
	C$platform.c$1369$5_1$525	= .
	.globl	C$platform.c$1369$5_1$525
;src\states\platform.c:1369: plat_state = FALL_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x02
	C$platform.c$1370$5_1$525	= .
	.globl	C$platform.c$1370$5_1$525
;src\states\platform.c:1370: break;
;	genGoto
	jp	00653$
;	genLabel
00542$:
	C$platform.c$1373$5_1$527	= .
	.globl	C$platform.c$1373$5_1$527
;src\states\platform.c:1373: jb_val = plat_buffer_max; 
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_buffer_max)
; common peephole 17 loaded a from (#_plat_buffer_max) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_jb_val),a
; common peephole 19 loaded (#_jb_val) from a directly instead of using hl.
;	genLabel
00552$:
	C$platform.c$1377$3_1$517	= .
	.globl	C$platform.c$1377$3_1$517
;src\states\platform.c:1377: ladder_check();
;	genCall
	ld	e, #b_ladder_check
	ld	hl, #_ladder_check
	call	___sdcc_bcall_ehl
	C$platform.c$1380$3_1$517	= .
	.globl	C$platform.c$1380$3_1$517
;src\states\platform.c:1380: if (que_state != FALL_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00554$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03185$.
;	skipping generated iCode
	C$platform.c$1381$4_1$528	= .
	.globl	C$platform.c$1381$4_1$528
;src\states\platform.c:1381: plat_state = FALL_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x02
;	genLabel
00554$:
	C$platform.c$1387$3_1$517	= .
	.globl	C$platform.c$1387$3_1$517
;src\states\platform.c:1387: if (jb_val != 0){
;	genIfx
;fetchLitPair	hl
	ld	hl, #_jb_val
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00556$
	C$platform.c$1388$4_1$529	= .
	.globl	C$platform.c$1388$4_1$529
;src\states\platform.c:1388: jb_val -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;	genLabel
00556$:
	C$platform.c$1393$3_1$517	= .
	.globl	C$platform.c$1393$3_1$517
;src\states\platform.c:1393: if (nocontrol_h != 0){
;	genIfx
;fetchLitPair	hl
	ld	hl, #_nocontrol_h
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00558$
	C$platform.c$1394$4_1$530	= .
	.globl	C$platform.c$1394$4_1$530
;src\states\platform.c:1394: nocontrol_h -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;	genLabel
00558$:
	C$platform.c$1399$3_1$517	= .
	.globl	C$platform.c$1399$3_1$517
;src\states\platform.c:1399: if (ct_val != 0 && que_state != GROUND_STATE){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_ct_val)
; common peephole 17 loaded a from (#_ct_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00560$
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00560$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03186$.
;	skipping generated iCode
	C$platform.c$1400$4_1$531	= .
	.globl	C$platform.c$1400$4_1$531
;src\states\platform.c:1400: ct_val -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_ct_val
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;	genLabel
00560$:
	C$platform.c$1404$3_1$517	= .
	.globl	C$platform.c$1404$3_1$517
;src\states\platform.c:1404: if (wc_val !=0 && col == 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_wc_val)
; common peephole 17 loaded a from (#_wc_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00563$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_col)
; common peephole 17 loaded a from (#_col) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00563$
	C$platform.c$1405$4_1$532	= .
	.globl	C$platform.c$1405$4_1$532
;src\states\platform.c:1405: wc_val -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_wc_val
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;	genLabel
00563$:
	C$platform.c$1409$3_1$517	= .
	.globl	C$platform.c$1409$3_1$517
;src\states\platform.c:1409: if (nocollide != 0){
;	genIfx
;fetchLitPair	hl
	ld	hl, #_nocollide
	ld	a, (hl)
	or	a, a
	jp	Z, 00653$
	C$platform.c$1410$4_1$533	= .
	.globl	C$platform.c$1410$4_1$533
;src\states\platform.c:1410: nocollide -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
	C$platform.c$1413$2_1$516	= .
	.globl	C$platform.c$1413$2_1$516
;src\states\platform.c:1413: break;
;	genGoto
	jp	00653$
	C$platform.c$1416$2_1$516	= .
	.globl	C$platform.c$1416$2_1$516
;src\states\platform.c:1416: case GROUND_STATE:{
;	genLabel
00568$:
	C$platform.c$1419$3_1$534	= .
	.globl	C$platform.c$1419$3_1$534
;src\states\platform.c:1419: if (INPUT_LEFT){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00579$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03187$.
;	skipping generated iCode
	C$platform.c$1420$4_1$535	= .
	.globl	C$platform.c$1420$4_1$535
;src\states\platform.c:1420: actor_set_dir(&PLAYER, DIR_LEFT, TRUE);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
	ld	a, #0x03
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	push	de
;	genCall
	ld	e, #b_actor_set_dir
	ld	hl, #_actor_set_dir
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genGoto
	jp	00580$
;	genLabel
00579$:
	C$platform.c$1421$3_1$534	= .
	.globl	C$platform.c$1421$3_1$534
;src\states\platform.c:1421: } else if (INPUT_RIGHT){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00576$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03188$.
;	skipping generated iCode
	C$platform.c$1422$4_1$536	= .
	.globl	C$platform.c$1422$4_1$536
;src\states\platform.c:1422: actor_set_dir(&PLAYER, DIR_RIGHT, TRUE);
;	genAddrOf
	ld	bc, #_actors+0
;	genCast
;	(locations are the same)
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
	push	bc
;	genCall
	ld	e, #b_actor_set_dir
	ld	hl, #_actor_set_dir
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00580$
;	genLabel
00576$:
	C$platform.c$1423$3_1$534	= .
	.globl	C$platform.c$1423$3_1$534
;src\states\platform.c:1423: } else if (pl_vel_x < 0) {
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00573$
;	skipping generated iCode
	C$platform.c$1424$4_1$537	= .
	.globl	C$platform.c$1424$4_1$537
;src\states\platform.c:1424: actor_set_dir(&PLAYER, DIR_LEFT, TRUE);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
	ld	a, #0x03
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	push	de
;	genCall
	ld	e, #b_actor_set_dir
	ld	hl, #_actor_set_dir
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00580$
;	genLabel
00573$:
	C$platform.c$1425$3_1$534	= .
	.globl	C$platform.c$1425$3_1$534
;src\states\platform.c:1425: } else if (pl_vel_x > 0) {
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03189$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03190$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03190$
03189$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03190$
	scf
03190$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00570$
;	skipping generated iCode
	C$platform.c$1426$4_1$538	= .
	.globl	C$platform.c$1426$4_1$538
;src\states\platform.c:1426: actor_set_dir(&PLAYER, DIR_RIGHT, TRUE);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	push	de
;	genCall
	ld	e, #b_actor_set_dir
	ld	hl, #_actor_set_dir
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00580$
;	genLabel
00570$:
	C$platform.c$1428$4_1$539	= .
	.globl	C$platform.c$1428$4_1$539
;src\states\platform.c:1428: actor_set_anim_idle(&PLAYER);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	push	de
;	genCall
	ld	e, #b_actor_set_anim_idle
	ld	hl, #_actor_set_anim_idle
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genLabel
00580$:
	C$platform.c$1433$3_1$534	= .
	.globl	C$platform.c$1433$3_1$534
;src\states\platform.c:1433: if (dash_press && plat_dash_style != 1 && dash_ready_val == 0) {
;	genIfx
;	AOP_STK for _platform_update_sloc2_1_0
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00582$
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_dash_style)
; common peephole 17 loaded a from (#_plat_dash_style) directly instead of using hl.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00582$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03191$.
;	skipping generated iCode
;	genIfx
;fetchLitPair	hl
	ld	a, (#_dash_ready_val)
; common peephole 17 loaded a from (#_dash_ready_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00582$
	C$platform.c$1434$4_1$540	= .
	.globl	C$platform.c$1434$4_1$540
;src\states\platform.c:1434: que_state = DASH_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x09
	C$platform.c$1435$4_1$540	= .
	.globl	C$platform.c$1435$4_1$540
;src\states\platform.c:1435: plat_state = GROUND_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x05
	C$platform.c$1436$4_1$540	= .
	.globl	C$platform.c$1436$4_1$540
;src\states\platform.c:1436: break;
;	genGoto
	jp	00653$
;	genLabel
00582$:
	C$platform.c$1440$3_1$534	= .
	.globl	C$platform.c$1440$3_1$534
;src\states\platform.c:1440: if (INPUT_PRESSED(INPUT_PLATFORM_JUMP) || jb_val != 0){
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
	ld	d, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_frame_joy
	ld	a, (hl)
;	genMove_o size 1
	ld	c, #0x00
;	genAnd
	and	a, e
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, c
	and	a, d
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genAnd
	ld	a, c
	and	a, #0x10
;	genMove_o size 1
;	genMove_o size 1
	ld	c, #0x00
;	genAnd
	and	a, e
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, c
	and	a, d
;	genMove_o size 1
;	genMove_o size 0
;	genIfx
	ld	d, a
; common peephole 98 removed redundant load from d into a.
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00587$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_jb_val)
; common peephole 17 loaded a from (#_jb_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00588$
;	genLabel
00587$:
	C$platform.c$1441$4_1$541	= .
	.globl	C$platform.c$1441$4_1$541
;src\states\platform.c:1441: if (nocollide == 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_nocollide)
; common peephole 17 loaded a from (#_nocollide) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00588$
	C$platform.c$1443$5_1$542	= .
	.globl	C$platform.c$1443$5_1$542
;src\states\platform.c:1443: jump_type = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x01
	C$platform.c$1444$5_1$542	= .
	.globl	C$platform.c$1444$5_1$542
;src\states\platform.c:1444: que_state = JUMP_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x06
	C$platform.c$1445$5_1$542	= .
	.globl	C$platform.c$1445$5_1$542
;src\states\platform.c:1445: plat_state = GROUND_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x05
	C$platform.c$1446$5_1$542	= .
	.globl	C$platform.c$1446$5_1$542
;src\states\platform.c:1446: break;
;	genGoto
	jp	00653$
;	genLabel
00588$:
	C$platform.c$1449$3_1$534	= .
	.globl	C$platform.c$1449$3_1$534
;src\states\platform.c:1449: jb_val = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jb_val
	ld	(hl), #0x00
	C$platform.c$1452$3_1$534	= .
	.globl	C$platform.c$1452$3_1$534
;src\states\platform.c:1452: ladder_check();
;	genCall
	ld	e, #b_ladder_check
	ld	hl, #_ladder_check
	call	___sdcc_bcall_ehl
	C$platform.c$1455$3_1$534	= .
	.globl	C$platform.c$1455$3_1$534
;src\states\platform.c:1455: if (que_state != GROUND_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00591$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03192$.
;	skipping generated iCode
	C$platform.c$1456$4_1$543	= .
	.globl	C$platform.c$1456$4_1$543
;src\states\platform.c:1456: plat_state = GROUND_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x05
;	genLabel
00591$:
	C$platform.c$1462$3_1$534	= .
	.globl	C$platform.c$1462$3_1$534
;src\states\platform.c:1462: if (nocollide != 0){
;	genIfx
;fetchLitPair	hl
	ld	hl, #_nocollide
	ld	a, (hl)
	or	a, a
	jp	Z, 00653$
	C$platform.c$1463$4_1$544	= .
	.globl	C$platform.c$1463$4_1$544
;src\states\platform.c:1463: nocollide -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
	C$platform.c$1466$2_1$516	= .
	.globl	C$platform.c$1466$2_1$516
;src\states\platform.c:1466: break;
;	genGoto
	jp	00653$
	C$platform.c$1469$2_1$516	= .
	.globl	C$platform.c$1469$2_1$516
;src\states\platform.c:1469: case JUMP_STATE: {
;	genLabel
00595$:
	C$platform.c$1471$3_1$545	= .
	.globl	C$platform.c$1471$3_1$545
;src\states\platform.c:1471: basic_anim();
;	genCall
	ld	e, #b_basic_anim
	ld	hl, #_basic_anim
	call	___sdcc_bcall_ehl
	C$platform.c$1476$3_1$545	= .
	.globl	C$platform.c$1476$3_1$545
;src\states\platform.c:1476: wall_check();
;	genCall
	ld	e, #b_wall_check
	ld	hl, #_wall_check
	call	___sdcc_bcall_ehl
	C$platform.c$1479$3_1$545	= .
	.globl	C$platform.c$1479$3_1$545
;src\states\platform.c:1479: if(dash_press && dash_ready_val == 0){
;	genIfx
;	AOP_STK for _platform_update_sloc2_1_0
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00600$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_dash_ready_val)
; common peephole 17 loaded a from (#_dash_ready_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00600$
	C$platform.c$1480$4_1$546	= .
	.globl	C$platform.c$1480$4_1$546
;src\states\platform.c:1480: if(plat_dash_style != 0 || ct_val != 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_plat_dash_style)
; common peephole 17 loaded a from (#_plat_dash_style) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00596$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_ct_val)
; common peephole 17 loaded a from (#_ct_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00600$
;	genLabel
00596$:
	C$platform.c$1481$5_1$547	= .
	.globl	C$platform.c$1481$5_1$547
;src\states\platform.c:1481: que_state = DASH_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x09
	C$platform.c$1482$5_1$547	= .
	.globl	C$platform.c$1482$5_1$547
;src\states\platform.c:1482: plat_state = JUMP_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x08
	C$platform.c$1483$5_1$547	= .
	.globl	C$platform.c$1483$5_1$547
;src\states\platform.c:1483: break;
;	genGoto
	jp	00653$
;	genLabel
00600$:
	C$platform.c$1488$3_1$545	= .
	.globl	C$platform.c$1488$3_1$545
;src\states\platform.c:1488: if (INPUT_PRESSED(INPUT_PLATFORM_JUMP)){
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
	ld	d, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_frame_joy
	ld	a, (hl)
;	genMove_o size 1
	ld	c, #0x00
;	genAnd
	and	a, e
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, c
	and	a, d
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into b.
;	genAnd
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (hl)
	and	a, #0x10
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genAnd
	ld	a, e
	and	a, c
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	ld	a, d
	and	a, b
;	genMove_o size 1
;	genIfx
	or	a, c
	jp	Z, 00611$
	C$platform.c$1490$4_1$548	= .
	.globl	C$platform.c$1490$4_1$548
;src\states\platform.c:1490: if(wc_val != 0 && wj_val != 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_wc_val)
; common peephole 17 loaded a from (#_wc_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00607$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_wj_val)
; common peephole 17 loaded a from (#_wj_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00607$
	C$platform.c$1491$5_1$549	= .
	.globl	C$platform.c$1491$5_1$549
;src\states\platform.c:1491: jump_type = 3;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x03
	C$platform.c$1492$5_1$549	= .
	.globl	C$platform.c$1492$5_1$549
;src\states\platform.c:1492: wj_val -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_wj_val
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
	C$platform.c$1493$5_1$549	= .
	.globl	C$platform.c$1493$5_1$549
;src\states\platform.c:1493: nocontrol_h = 5;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_nocontrol_h
	ld	(hl), #0x05
	C$platform.c$1494$5_1$549	= .
	.globl	C$platform.c$1494$5_1$549
;src\states\platform.c:1494: pl_vel_x = (plat_wall_kick + plat_walk_vel)*-last_wall;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_plat_wall_kick)
; common peephole 17 loaded a from (#_plat_wall_kick) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_walk_vel
	add	a, (hl)
	ld	e, a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_plat_wall_kick + 1)
;fetchLitPair	hl
	ld	hl, #_plat_walk_vel + 1
	adc	a, (hl)
	ld	d, a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_wall)
; common peephole 17 loaded a from (#_last_wall) directly instead of using hl.
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genUminus
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	__mulint
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$1495$5_1$549	= .
	.globl	C$platform.c$1495$5_1$549
;src\states\platform.c:1495: que_state = JUMP_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x06
	C$platform.c$1496$5_1$549	= .
	.globl	C$platform.c$1496$5_1$549
;src\states\platform.c:1496: plat_state = JUMP_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x08
;	genGoto
	jp	00653$
;	genLabel
00607$:
	C$platform.c$1497$4_1$548	= .
	.globl	C$platform.c$1497$4_1$548
;src\states\platform.c:1497: }  else if (dj_val != 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_dj_val)
; common peephole 17 loaded a from (#_dj_val) directly instead of using hl.
	or	a, a
	jp	Z, 00653$
	C$platform.c$1499$5_1$550	= .
	.globl	C$platform.c$1499$5_1$550
;src\states\platform.c:1499: jump_type = 2;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x02
	C$platform.c$1500$5_1$550	= .
	.globl	C$platform.c$1500$5_1$550
;src\states\platform.c:1500: if (dj_val != 255){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_dj_val)
; common peephole 17 loaded a from (#_dj_val) directly instead of using hl.
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00603$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03193$.
;	skipping generated iCode
	C$platform.c$1501$6_1$551	= .
	.globl	C$platform.c$1501$6_1$551
;src\states\platform.c:1501: dj_val -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_dj_val
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;	genLabel
00603$:
	C$platform.c$1503$5_1$550	= .
	.globl	C$platform.c$1503$5_1$550
;src\states\platform.c:1503: jump_reduction_val += jump_reduction;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_jump_reduction_val)
; common peephole 17 loaded a from (#_jump_reduction_val) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_jump_reduction
	add	a, (hl)
;fetchLitPair	hl
	ld	hl, #_jump_reduction_val
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_jump_reduction + 1
	adc	a, (hl)
;fetchLitPair	hl
	ld	(#_jump_reduction_val + 1),a
; common peephole 20 loaded (#_jump_reduction_val) from a directly instead of using hl.
	C$platform.c$1504$5_1$550	= .
	.globl	C$platform.c$1504$5_1$550
;src\states\platform.c:1504: que_state = JUMP_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x06
	C$platform.c$1505$5_1$550	= .
	.globl	C$platform.c$1505$5_1$550
;src\states\platform.c:1505: plat_state = JUMP_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x08
	C$platform.c$1507$4_1$548	= .
	.globl	C$platform.c$1507$4_1$548
;src\states\platform.c:1507: break;
;	genGoto
	jp	00653$
;	genLabel
00611$:
	C$platform.c$1511$3_1$545	= .
	.globl	C$platform.c$1511$3_1$545
;src\states\platform.c:1511: ladder_check();
;	genCall
	ld	e, #b_ladder_check
	ld	hl, #_ladder_check
	call	___sdcc_bcall_ehl
	C$platform.c$1515$3_1$545	= .
	.globl	C$platform.c$1515$3_1$545
;src\states\platform.c:1515: if (que_state != JUMP_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x07
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00613$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03194$.
;	skipping generated iCode
	C$platform.c$1516$4_1$552	= .
	.globl	C$platform.c$1516$4_1$552
;src\states\platform.c:1516: plat_state = JUMP_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x08
;	genLabel
00613$:
	C$platform.c$1523$3_1$545	= .
	.globl	C$platform.c$1523$3_1$545
;src\states\platform.c:1523: if (nocontrol_h != 0){
;	genIfx
;fetchLitPair	hl
	ld	hl, #_nocontrol_h
	ld	a, (hl)
	or	a, a
	jp	Z, 00653$
	C$platform.c$1524$4_1$553	= .
	.globl	C$platform.c$1524$4_1$553
;src\states\platform.c:1524: nocontrol_h -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
	C$platform.c$1527$2_1$516	= .
	.globl	C$platform.c$1527$2_1$516
;src\states\platform.c:1527: break;
;	genGoto
	jp	00653$
	C$platform.c$1529$2_1$516	= .
	.globl	C$platform.c$1529$2_1$516
;src\states\platform.c:1529: case DASH_STATE: {
;	genLabel
00616$:
	C$platform.c$1532$3_1$554	= .
	.globl	C$platform.c$1532$3_1$554
;src\states\platform.c:1532: basic_anim();
;	genCall
	ld	e, #b_basic_anim
	ld	hl, #_basic_anim
	call	___sdcc_bcall_ehl
	C$platform.c$1537$3_1$554	= .
	.globl	C$platform.c$1537$3_1$554
;src\states\platform.c:1537: if (dash_currentframe == 0){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_dash_currentframe)
; common peephole 17 loaded a from (#_dash_currentframe) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00618$
	C$platform.c$1538$4_1$555	= .
	.globl	C$platform.c$1538$4_1$555
;src\states\platform.c:1538: que_state = FALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00619$
;	genLabel
00618$:
	C$platform.c$1540$4_1$556	= .
	.globl	C$platform.c$1540$4_1$556
;src\states\platform.c:1540: dash_currentframe -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_dash_currentframe
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;	genLabel
00619$:
	C$platform.c$1544$3_1$554	= .
	.globl	C$platform.c$1544$3_1$554
;src\states\platform.c:1544: if (que_state != DASH_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00621$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03195$.
;	skipping generated iCode
	C$platform.c$1545$4_1$557	= .
	.globl	C$platform.c$1545$4_1$557
;src\states\platform.c:1545: plat_state = DASH_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x0b
;	genLabel
00621$:
	C$platform.c$1548$3_1$554	= .
	.globl	C$platform.c$1548$3_1$554
;src\states\platform.c:1548: if(plat_dash_through >= 2){
;	genCmpLt
;fetchLitPair	hl
	ld	a, (#_plat_dash_through)
; common peephole 17 loaded a from (#_plat_dash_through) directly instead of using hl.
	sub	a, #0x02
	jp	C, 00653$
;	skipping generated iCode
	C$platform.c$1549$4_1$558	= .
	.globl	C$platform.c$1549$4_1$558
;src\states\platform.c:1549: goto gotoCounters;
;	genGoto
	jp	00654$
	C$platform.c$1558$2_1$516	= .
	.globl	C$platform.c$1558$2_1$516
;src\states\platform.c:1558: case WALL_STATE:{
;	genLabel
00625$:
	C$platform.c$1561$3_1$559	= .
	.globl	C$platform.c$1561$3_1$559
;src\states\platform.c:1561: if (col == 1){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_col)
; common peephole 17 loaded a from (#_col) directly instead of using hl.
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03196$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00629$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03197$.
;	skipping generated iCode
	C$platform.c$1562$4_1$560	= .
	.globl	C$platform.c$1562$4_1$560
;src\states\platform.c:1562: actor_set_dir(&PLAYER, DIR_LEFT, TRUE);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
	ld	a, #0x03
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	push	de
;	genCall
	ld	e, #b_actor_set_dir
	ld	hl, #_actor_set_dir
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00630$
;	genLabel
00629$:
	C$platform.c$1563$3_1$559	= .
	.globl	C$platform.c$1563$3_1$559
;src\states\platform.c:1563: } else if (col == -1){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_col)
; common peephole 17 loaded a from (#_col) directly instead of using hl.
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03198$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00630$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03199$.
;	skipping generated iCode
	C$platform.c$1564$4_1$561	= .
	.globl	C$platform.c$1564$4_1$561
;src\states\platform.c:1564: actor_set_dir(&PLAYER, DIR_RIGHT, TRUE);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	push	de
;	genCall
	ld	e, #b_actor_set_dir
	ld	hl, #_actor_set_dir
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genLabel
00630$:
	C$platform.c$1571$3_1$559	= .
	.globl	C$platform.c$1571$3_1$559
;src\states\platform.c:1571: wall_check();
;	genCall
	ld	e, #b_wall_check
	ld	hl, #_wall_check
	call	___sdcc_bcall_ehl
	C$platform.c$1574$3_1$559	= .
	.globl	C$platform.c$1574$3_1$559
;src\states\platform.c:1574: if(dash_press && plat_dash_style != 0 && dash_ready_val == 0){
;	genIfx
;	AOP_STK for _platform_update_sloc2_1_0
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00637$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_plat_dash_style)
; common peephole 17 loaded a from (#_plat_dash_style) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00637$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_dash_ready_val)
; common peephole 17 loaded a from (#_dash_ready_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00637$
	C$platform.c$1575$4_1$562	= .
	.globl	C$platform.c$1575$4_1$562
;src\states\platform.c:1575: if ((col == 1 && !INPUT_RIGHT) || (col == -1 && !INPUT_LEFT)){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_col)
; common peephole 17 loaded a from (#_col) directly instead of using hl.
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03200$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00635$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03201$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00631$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03202$.
;	skipping generated iCode
;	genLabel
00635$:
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_col)
; common peephole 17 loaded a from (#_col) directly instead of using hl.
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03203$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00637$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03204$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03205$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00637$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03206$.
;	skipping generated iCode
;	genLabel
00631$:
	C$platform.c$1576$5_1$563	= .
	.globl	C$platform.c$1576$5_1$563
;src\states\platform.c:1576: que_state = DASH_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x09
	C$platform.c$1577$5_1$563	= .
	.globl	C$platform.c$1577$5_1$563
;src\states\platform.c:1577: plat_state = WALL_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x11
	C$platform.c$1578$5_1$563	= .
	.globl	C$platform.c$1578$5_1$563
;src\states\platform.c:1578: break;
;	genGoto
	jp	00653$
;	genLabel
00637$:
	C$platform.c$1583$3_1$559	= .
	.globl	C$platform.c$1583$3_1$559
;src\states\platform.c:1583: if ((INPUT_PRESSED(INPUT_PLATFORM_JUMP) || jb_val != 0) && wj_val != 0){
;	genCast
;	AOP_STK for _platform_update_sloc133_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
	ldhl	sp,	#22
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCpl
;	AOP_STK for _platform_update_sloc133_1_0
;	AOP_STK for _platform_update_sloc134_1_0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
;	genMove_o size 1
; common peephole 96a move dec hl before cpl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
; common peephole 96a move dec hl before cpl
	dec	hl
	cpl
;	genMove_o size 0
;	genMove_o size 1
; common peephole 96a move inc hl before cpl
; common peephole 96b move inc hl before ld a, #0x00
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	cpl
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	AOP_STK for _platform_update_sloc135_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
	ldhl	sp,	#22
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genAnd
;	AOP_STK for _platform_update_sloc135_1_0
;	AOP_STK for _platform_update_sloc134_1_0
;	AOP_STK for _platform_update_sloc136_1_0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	and	a, (hl)
;	genMove_o size 1
	dec	hl
	dec	hl
	ld	(hl), a
;	genMove_o size 0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldhl	sp,	#21
	and	a, (hl)
;	genMove_o size 1
	dec	hl
	dec	hl
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	AOP_STK for _platform_update_sloc137_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
	ldhl	sp,	#22
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genAnd
;	AOP_STK for _platform_update_sloc137_1_0
;	AOP_STK for _platform_update_sloc138_1_0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
;	genMove_o size 1
; common peephole 96b move dec hl before and a, #0x10
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
; common peephole 96b move dec hl before and a, #0x10
	dec	hl
	and	a, #0x10
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genAnd
;	AOP_STK for _platform_update_sloc136_1_0
;	AOP_STK for _platform_update_sloc138_1_0
;	AOP_STK for _platform_update_sloc139_1_0
	ldhl	sp,	#18
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
	and	a, (hl)
;	genMove_o size 1
	inc	hl
	inc	hl
;	genMove_o size 0
; common peephole 96b move dec hl before ld a, #0x00
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	and	a, (hl)
;	genMove_o size 1
	inc	hl
	inc	hl
;	genMove_o size 0
;	genIfx
;	AOP_STK for _platform_update_sloc139_1_0
; common peephole 96b move dec hl before ld a, #0x00
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00643$
;	genIfx
;fetchLitPair	hl
	ld	a, (#_jb_val)
; common peephole 17 loaded a from (#_jb_val) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00641$
;	genLabel
00643$:
;	genIfx
;fetchLitPair	hl
	ld	hl, #_wj_val
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00641$
	C$platform.c$1585$4_1$564	= .
	.globl	C$platform.c$1585$4_1$564
;src\states\platform.c:1585: wj_val -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
	C$platform.c$1586$4_1$564	= .
	.globl	C$platform.c$1586$4_1$564
;src\states\platform.c:1586: nocontrol_h = 5;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_nocontrol_h
	ld	(hl), #0x05
	C$platform.c$1587$4_1$564	= .
	.globl	C$platform.c$1587$4_1$564
;src\states\platform.c:1587: pl_vel_x = (plat_wall_kick + plat_walk_vel)*-last_wall;
;	genPlus
;	AOP_STK for _platform_update_sloc140_1_0
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_plat_wall_kick
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_plat_walk_vel
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#20
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#19
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	AOP_STK for _platform_update_sloc141_1_0
;	genMove_o size 0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_wall)
; common peephole 17 loaded a from (#_last_wall) directly instead of using hl.
	ldhl	sp,	#20
; common peephole 96b move inc hl before sbc a, a
; common peephole 96a move inc hl before rlca
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	rlca
	sbc	a, a
	ld	(hl), a
;	genUminus
;	AOP_STK for _platform_update_sloc141_1_0
;	AOP_STK for _platform_update_sloc142_1_0
;fetchPairLong
;fetchLitPair	de
	ld	de, #0x0000
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#23
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genSend
;	AOP_STK for _platform_update_sloc142_1_0
;	genMove_o size 2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genSend
;	AOP_STK for _platform_update_sloc140_1_0
;	genMove_o size 2
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	__mulint
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$platform.c$1588$4_1$564	= .
	.globl	C$platform.c$1588$4_1$564
;src\states\platform.c:1588: jump_type = 3;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x03
	C$platform.c$1589$4_1$564	= .
	.globl	C$platform.c$1589$4_1$564
;src\states\platform.c:1589: que_state = JUMP_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x06
	C$platform.c$1590$4_1$564	= .
	.globl	C$platform.c$1590$4_1$564
;src\states\platform.c:1590: plat_state = WALL_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x11
	C$platform.c$1591$4_1$564	= .
	.globl	C$platform.c$1591$4_1$564
;src\states\platform.c:1591: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00653$
;	genLabel
00641$:
	C$platform.c$1595$3_1$559	= .
	.globl	C$platform.c$1595$3_1$559
;src\states\platform.c:1595: ladder_check();
;	genCall
	ld	e, #b_ladder_check
	ld	hl, #_ladder_check
	call	___sdcc_bcall_ehl
	C$platform.c$1598$3_1$559	= .
	.globl	C$platform.c$1598$3_1$559
;src\states\platform.c:1598: if (que_state != WALL_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00645$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03207$.
;	skipping generated iCode
	C$platform.c$1599$4_1$565	= .
	.globl	C$platform.c$1599$4_1$565
;src\states\platform.c:1599: plat_state = WALL_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x11
;	genLabel
00645$:
	C$platform.c$1605$3_1$559	= .
	.globl	C$platform.c$1605$3_1$559
;src\states\platform.c:1605: if (nocollide != 0){
;	genIfx
;fetchLitPair	hl
	ld	hl, #_nocollide
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00653$
	C$platform.c$1606$4_1$566	= .
	.globl	C$platform.c$1606$4_1$566
;src\states\platform.c:1606: nocollide -= 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
	C$platform.c$1609$2_1$516	= .
	.globl	C$platform.c$1609$2_1$516
;src\states\platform.c:1609: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00653$
	C$platform.c$1612$2_1$516	= .
	.globl	C$platform.c$1612$2_1$516
;src\states\platform.c:1612: case KNOCKBACK_STATE:
;	genLabel
00649$:
	C$platform.c$1613$2_1$516	= .
	.globl	C$platform.c$1613$2_1$516
;src\states\platform.c:1613: if (que_state == GROUND_INIT){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03208$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00651$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 03209$.
;	skipping generated iCode
	C$platform.c$1614$3_1$567	= .
	.globl	C$platform.c$1614$3_1$567
;src\states\platform.c:1614: pl_vel_y = 256;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x01
;	genLabel
00651$:
	C$platform.c$1616$2_1$516	= .
	.globl	C$platform.c$1616$2_1$516
;src\states\platform.c:1616: que_state = KNOCKBACK_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x13
	C$platform.c$1619$1_1$328	= .
	.globl	C$platform.c$1619$1_1$328
;src\states\platform.c:1619: gotoTriggerCol:
;	genLabel
00653$:
	C$platform.c$1621$1_1$328	= .
	.globl	C$platform.c$1621$1_1$328
;src\states\platform.c:1621: trigger_activate_at_intersection(&PLAYER.bounds, &PLAYER.pos, INPUT_UP_PRESSED);
;	genCpl
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
	cpl
;	genMove_o size 1
;	genAnd
;fetchLitPair	hl
	ld	hl, #_frame_joy
	and	a, (hl)
;	genMove_o size 1
;	genAnd
;	AOP_STK for _platform_update_sloc143_1_0
	and	a, #0x04
;	genMove_o size 1
	ldhl	sp,	#23
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for _platform_update_sloc143_1_0
;	genMove_o size 1
	ld	(hl), a
; common peephole 98 removed redundant load from (hl) into a.
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_actors + 1)
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_actors + 6)
	push	de
;	genCall
	ld	e, #b_trigger_activate_at_intersection
	ld	hl, #_trigger_activate_at_intersection
	call	___sdcc_bcall_ehl
;	adjustStack by 5
	add	sp, #5
	C$platform.c$1623$1_1$328	= .
	.globl	C$platform.c$1623$1_1$328
;src\states\platform.c:1623: gotoCounters:
;	genLabel
00654$:
	C$platform.c$1627$1_1$328	= .
	.globl	C$platform.c$1627$1_1$328
;src\states\platform.c:1627: if (dash_ready_val != 0){
;	genIfx
;fetchLitPair	hl
	ld	hl, #_dash_ready_val
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00656$
	C$platform.c$1628$2_1$568	= .
	.globl	C$platform.c$1628$2_1$568
;src\states\platform.c:1628: dash_ready_val -=1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMinus
; common peephole 155c turned add into dec.
;fetchLitPair	hl
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
;	genLabel
00656$:
	C$platform.c$1632$1_1$328	= .
	.globl	C$platform.c$1632$1_1$328
;src\states\platform.c:1632: if (tap_val > 0){
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_tap_val
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
; common peephole 9 loaded d from #0x00 directly instead of going through a.
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	d, a
;fetchLitPair	hl
	sub	a, (hl)
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03210$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03211$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03211$
03210$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03211$
	scf
03211$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00660$
;	skipping generated iCode
	C$platform.c$1633$2_1$569	= .
	.globl	C$platform.c$1633$2_1$569
;src\states\platform.c:1633: tap_val -= 1;
;	genMinus
;fetchLitPair	hl
	ld	hl, #_tap_val
	dec	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00661$
;	genLabel
00660$:
	C$platform.c$1634$1_1$328	= .
	.globl	C$platform.c$1634$1_1$328
;src\states\platform.c:1634: } else if (tap_val < 0){
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_tap_val
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00661$
;	skipping generated iCode
	C$platform.c$1635$2_1$570	= .
	.globl	C$platform.c$1635$2_1$570
;src\states\platform.c:1635: tap_val += 1;
;	genPlus
;fetchLitPair	hl
	inc	(hl)
;	genLabel
00661$:
	C$platform.c$1639$1_1$328	= .
	.globl	C$platform.c$1639$1_1$328
;src\states\platform.c:1639: if (camera_deadzone_x > plat_camera_deadzone_x){
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_camera_deadzone_x
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
;fetchLitPair	hl
; common peephole 9 loaded d from (hl) directly instead of going through a.
;fetchLitPair	hl
	ld	a, (#_plat_camera_deadzone_x)
; common peephole 17 loaded a from (#_plat_camera_deadzone_x) directly instead of using hl.
	ld	d,a
; common peephole 103 loaded value in a first and used it next
;fetchLitPair	hl
	ld	hl, #_camera_deadzone_x
	sub	a, (hl)
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03212$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 03213$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	03213$
03212$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 03213$
	scf
03213$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00663$
;	skipping generated iCode
	C$platform.c$1640$2_1$571	= .
	.globl	C$platform.c$1640$2_1$571
;src\states\platform.c:1640: camera_deadzone_x -= 1;
;	genMinus
;fetchLitPair	hl
	ld	hl, #_camera_deadzone_x
	dec	(hl)
;	genLabel
00663$:
	C$platform.c$1653$1_1$328	= .
	.globl	C$platform.c$1653$1_1$328
;src\states\platform.c:1653: if(state_events[plat_state].script_addr != 0){
;	skipping iCode since result will be rematerialized
;	genMult
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_plat_state
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
	ld	bc,#_state_events
	add	hl,bc
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
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00732$
	C$platform.c$1654$2_1$572	= .
	.globl	C$platform.c$1654$2_1$572
;src\states\platform.c:1654: script_execute(state_events[plat_state].script_bank, state_events[plat_state].script_addr, 0, 0);
;	skipping iCode since result will be rematerialized
;	genMult
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_plat_state
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
	ld	bc,#_state_events
	add	hl,bc
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;	spillPairReg hl
;	spillPairReg hl
	ld	c,l
	ld	b,h
; common peephole 104 removed redundant load from bc into hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 6
	add	sp, #6
;	genLabel
00732$:
	C$platform.c$1656$1_1$327	= .
	.globl	C$platform.c$1656$1_1$327
;src\states\platform.c:1656: }
;	genEndFunction
;	adjustStack by 24
	add	sp, #24
	C$platform.c$1656$1_1$327	= .
	.globl	C$platform.c$1656$1_1$327
	XG$platform_update$0$0	= .
	.globl	XG$platform_update$0$0
	ret
	G$basic_anim$0$0	= .
	.globl	G$basic_anim$0$0
	C$platform.c$1659$1_1$655	= .
	.globl	C$platform.c$1659$1_1$655
;src\states\platform.c:1659: void basic_anim(void) BANKED{
;	genLabel
;	genFunction
;	---------------------------------
; Function basic_anim
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_basic_anim	= 3
_basic_anim::
	C$platform.c$1662$1_0$655	= .
	.globl	C$platform.c$1662$1_0$655
;src\states\platform.c:1662: if(plat_turn_control){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_plat_turn_control)
; common peephole 17 loaded a from (#_plat_turn_control) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
	C$platform.c$1663$2_0$656	= .
	.globl	C$platform.c$1663$2_0$656
;src\states\platform.c:1663: if (INPUT_LEFT){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00157$.
;	skipping generated iCode
	C$platform.c$1664$3_0$657	= .
	.globl	C$platform.c$1664$3_0$657
;src\states\platform.c:1664: PLAYER.dir = DIR_LEFT;
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 5)
	ld	(hl), #0x03
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00110$:
	C$platform.c$1665$2_0$656	= .
	.globl	C$platform.c$1665$2_0$656
;src\states\platform.c:1665: } else if (INPUT_RIGHT){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00107$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00158$.
;	skipping generated iCode
	C$platform.c$1666$3_0$658	= .
	.globl	C$platform.c$1666$3_0$658
;src\states\platform.c:1666: PLAYER.dir = DIR_RIGHT;
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 5)
	ld	(hl), #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00107$:
	C$platform.c$1667$2_0$656	= .
	.globl	C$platform.c$1667$2_0$656
;src\states\platform.c:1667: } else if (pl_vel_x < 0) {
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_x + 1)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
;	skipping generated iCode
	C$platform.c$1668$3_0$659	= .
	.globl	C$platform.c$1668$3_0$659
;src\states\platform.c:1668: PLAYER.dir = DIR_LEFT;
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 5)
	ld	(hl), #0x03
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00104$:
	C$platform.c$1669$2_0$656	= .
	.globl	C$platform.c$1669$2_0$656
;src\states\platform.c:1669: } else if (pl_vel_x > 0) {
;	genCmpGt
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00159$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00160$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00160$
00159$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00160$
	scf
00160$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00113$
;	skipping generated iCode
	C$platform.c$1670$3_0$660	= .
	.globl	C$platform.c$1670$3_0$660
;src\states\platform.c:1670: PLAYER.dir = DIR_RIGHT;
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 5)
	ld	(hl), #0x01
;	genLabel
00113$:
	C$platform.c$1674$1_0$655	= .
	.globl	C$platform.c$1674$1_0$655
;src\states\platform.c:1674: if (PLAYER.dir == DIR_LEFT){
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 5) + 0)
;	genCmpEq
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00161$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00115$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00162$.
;	skipping generated iCode
;src\states\platform.c:1675: actor_set_anim(&PLAYER, ANIM_JUMP_LEFT);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;include/actor.h:62: actor->animation = anim;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 16
;	genAssign (pointer)
	ld	(hl), #0x00
;include/actor.h:63: actor_set_frames(actor, actor->animations[anim].start, actor->animations[anim].end + 1);
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 19
;	genPointerGet
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genPlus
	inc	b
;	genPointerGet
	ld	a, (#(_actors + 18) + 0)
;	genIpush
	push	bc
	inc	sp
;	genIpush
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	push	de
;	genCall
	ld	e, #b_actor_set_frames
	ld	hl, #_actor_set_frames
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
	C$platform.c$1675$1_0$655	= .
	.globl	C$platform.c$1675$1_0$655
;src\states\platform.c:1675: actor_set_anim(&PLAYER, ANIM_JUMP_LEFT);
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00115$:
;src\states\platform.c:1677: actor_set_anim(&PLAYER, ANIM_JUMP_RIGHT);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;include/actor.h:62: actor->animation = anim;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 16
;	genAssign (pointer)
	ld	(hl), #0x02
;include/actor.h:63: actor_set_frames(actor, actor->animations[anim].start, actor->animations[anim].end + 1);
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 23
;	genPointerGet
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genPlus
	inc	b
;	genPointerGet
	ld	a, (#(_actors + 22) + 0)
;	genIpush
	push	bc
	inc	sp
;	genIpush
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	push	de
;	genCall
	ld	e, #b_actor_set_frames
	ld	hl, #_actor_set_frames
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
	C$platform.c$1677$1_0$655	= .
	.globl	C$platform.c$1677$1_0$655
;src\states\platform.c:1677: actor_set_anim(&PLAYER, ANIM_JUMP_RIGHT);
;	genLabel
; common peephole 158 removed unused label 00119$.
	C$platform.c$1679$1_0$655	= .
	.globl	C$platform.c$1679$1_0$655
;src\states\platform.c:1679: }
;	genEndFunction
	C$platform.c$1679$1_0$655	= .
	.globl	C$platform.c$1679$1_0$655
	XG$basic_anim$0$0	= .
	.globl	XG$basic_anim$0$0
	ret
	G$wall_check$0$0	= .
	.globl	G$wall_check$0$0
	C$platform.c$1681$1_0$670	= .
	.globl	C$platform.c$1681$1_0$670
;src\states\platform.c:1681: void wall_check(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function wall_check
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_wall_check	= 3
_wall_check::
	C$platform.c$1682$1_0$670	= .
	.globl	C$platform.c$1682$1_0$670
;src\states\platform.c:1682: if(col != 0 && pl_vel_y >= 0 && plat_wall_slide){
;	genIfx
;fetchLitPair	hl
	ld	a, (#_col)
; common peephole 17 loaded a from (#_col) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
;	genCmpLt
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_pl_vel_y + 1)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00106$
;	skipping generated iCode
;	genIfx
;fetchLitPair	hl
	ld	a, (#_plat_wall_slide)
; common peephole 17 loaded a from (#_plat_wall_slide) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
	C$platform.c$1683$2_0$671	= .
	.globl	C$platform.c$1683$2_0$671
;src\states\platform.c:1683: if (que_state != WALL_STATE ){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x10
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00142$.
;	skipping generated iCode
	C$platform.c$1684$3_0$672	= .
	.globl	C$platform.c$1684$3_0$672
;src\states\platform.c:1684: que_state = WALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x0f
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00106$:
	C$platform.c$1686$1_0$670	= .
	.globl	C$platform.c$1686$1_0$670
;src\states\platform.c:1686: } else if (que_state == WALL_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x10
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00143$.
	ret	NZ
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00144$.
;	skipping generated iCode
	C$platform.c$1687$2_0$673	= .
	.globl	C$platform.c$1687$2_0$673
;src\states\platform.c:1687: que_state = FALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
;	genLabel
; common peephole 158 removed unused label 00110$.
	C$platform.c$1689$1_0$670	= .
	.globl	C$platform.c$1689$1_0$670
;src\states\platform.c:1689: }
;	genEndFunction
	C$platform.c$1689$1_0$670	= .
	.globl	C$platform.c$1689$1_0$670
	XG$wall_check$0$0	= .
	.globl	XG$wall_check$0$0
	ret
	G$ladder_check$0$0	= .
	.globl	G$ladder_check$0$0
	C$platform.c$1691$1_0$675	= .
	.globl	C$platform.c$1691$1_0$675
;src\states\platform.c:1691: void ladder_check(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function ladder_check
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
	b_ladder_check	= 3
_ladder_check::
;	adjustStack by -8
	add	sp, #-8
	C$platform.c$1692$1_0$675	= .
	.globl	C$platform.c$1692$1_0$675
;src\states\platform.c:1692: UBYTE p_half_width = (PLAYER.bounds.right - PLAYER.bounds.left) >> 1;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genPointerGet
	ld	a, (#(_actors + 6) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genMinus
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
;	genCast
;	AOP_STK for _ladder_check_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$1693$1_0$675	= .
	.globl	C$platform.c$1693$1_0$675
;src\states\platform.c:1693: if (INPUT_UP || INPUT_DOWN) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	2, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00137$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00103$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00138$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	3, a
	jp	Z,00111$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00139$.
;	skipping generated iCode
;	genLabel
00103$:
	C$platform.c$1695$2_0$676	= .
	.globl	C$platform.c$1695$2_0$676
;src\states\platform.c:1695: UBYTE tile_x_mid = ((PLAYER.pos.x >> 4) + PLAYER.bounds.left + p_half_width) >> 3;
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
;	skipping iCode since result will be rematerialized
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
;	genCast
;	AOP_STK for _ladder_check_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
;	genMove_o size 0
;	genMove_o size 1
;	genPlus
;	genRightShift
;fetchPairLong
;	genCast
;	AOP_STK for _ladder_check_sloc1_1_0
;	genMove_o size 1
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96c move inc hl before rr c
; common peephole 96c move inc hl before sra b
; common peephole 96b move inc hl before ld b, a
; common peephole 96b move inc hl before adc a, b
; common peephole 96b move inc hl before ld a, e
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before add a, c
; common peephole 96b move inc hl before ld e, #0x00
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, #0x00
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	b, a
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$1696$2_0$676	= .
	.globl	C$platform.c$1696$2_0$676
;src\states\platform.c:1696: UBYTE tile_y = ((PLAYER.pos.y >> 4) + PLAYER.bounds.top + 1) >> 3;
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
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
;	genMove_o size 0
;	genPlus
; common peephole 69 incremented in hl instead of bc.
	inc	hl
	ld	c, l
	ld	b, h
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	AOP_STK for _ladder_check_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#7
	ld	(hl), c
;	genMove_o size 0
;src\states\platform.c:1697: if (IS_LADDER(tile_at(tile_x_mid, tile_y))) {
;	genAssign
;	AOP_STK for _ladder_check_sloc1_1_0
;	AOP_STK for _ladder_check_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _ladder_check_sloc1_1_0
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00109$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _ladder_check_sloc2_1_0
	ldhl	sp,	#7
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00109$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _ladder_check_sloc4_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#3
	ld	(hl), a
;	genCast
;	AOP_STK for _ladder_check_sloc5_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	ldhl	sp,	#4
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCast
;	AOP_STK for _ladder_check_sloc2_1_0
;	AOP_STK for _ladder_check_sloc6_1_0
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
;	AOP_STK for _ladder_check_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#4
;	genMove_o size 0
;	genSend
;	AOP_STK for _ladder_check_sloc6_1_0
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
;	AOP_STK for _ladder_check_sloc7_1_0
	call	__mulint
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genPlus
;	AOP_STK for _ladder_check_sloc7_1_0
;	AOP_STK for _ladder_check_sloc8_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_collision_ptr
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;	genMove_o size 0
;	genPlus
;	AOP_STK for _ladder_check_sloc8_1_0
;	AOP_STK for _ladder_check_sloc3_1_0
;	AOP_STK for _ladder_check_sloc9_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
	ldhl	sp,	#2
	ld	l, (hl)
	ld	h, #0x00
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
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _ladder_check_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	AOP_STK for _ladder_check_sloc9_1_0
;	genMove_o size 2
	ldhl	sp,	#6
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genCall
;	AOP_STK for _ladder_check_sloc10_1_0
	call	_ReadBankedUWORD
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genCast
;	AOP_STK for _ladder_check_sloc10_1_0
;	AOP_STK for _ladder_check_sloc11_1_0
;	genMove_o size 1
	ldhl	sp,	#6
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	(hl), a
;	genMove_o size 0
;src\states\platform.c:67: 
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00109$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	AOP_STK for _ladder_check_sloc11_1_0
;	genMove_o size 1
	ldhl	sp,	#7
	ld	(hl), #0x0f
;src\states\platform.c:1697: if (IS_LADDER(tile_at(tile_x_mid, tile_y))) {
;	genLabel
00110$:
;	genCast
;	AOP_STK for _ladder_check_sloc11_1_0
;	genMove_o size 1
	ldhl	sp,	#7
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	and	a, #0xf0
;	genMove_o size 1
;	genCmpEq
	sub	a, #0x10
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00140$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00111$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00141$.
;	skipping generated iCode
	C$platform.c$1698$3_0$677	= .
	.globl	C$platform.c$1698$3_0$677
;src\states\platform.c:1698: PLAYER.pos.x = (((tile_x_mid << 3) + 4 - (PLAYER.bounds.left + p_half_width) << 4));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _ladder_check_sloc1_1_0
;	AOP_STK for _ladder_check_sloc12_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	a, (hl)
	ldhl	sp,	#6
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genLeftShift
;	AOP_STK for _ladder_check_sloc12_1_0
;	AOP_STK for _ladder_check_sloc13_1_0
;	genMove_o size 2
	ld	a, #0x03
00142$:
	ldhl	sp,	#6
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00142$
;	genPlus
;	AOP_STK for _ladder_check_sloc13_1_0
;	AOP_STK for _ladder_check_sloc14_1_0
;fetchPairLong
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _ladder_check_sloc15_1_0
;	_moveFrom_tpair_()
; common peephole 18 loaded 0 into a directly instead of using hl.
	ld	a, (#(_actors + 6) + 0)
;	genCast
;	AOP_STK for _ladder_check_sloc15_1_0
;	AOP_STK for _ladder_check_sloc16_1_0
;	genMove_o size 0
;	genMove_o size 1
; sm83 peephole 10a removed redundant ldhl.
	ldhl	sp,#7
	ld	(hl), a
; common peephole 98 removed redundant load from (hl) into a.
;	genMove_o size 0
	ldhl	sp,	#4
; common peephole 96b move inc hl before sbc a, a
; common peephole 96a move inc hl before rlca
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	rlca
	sbc	a, a
	ld	(hl), a
;	genCast
;	AOP_STK for _ladder_check_sloc0_1_0
;	AOP_STK for _ladder_check_sloc17_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#6
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genPlus
;	AOP_STK for _ladder_check_sloc17_1_0
;	AOP_STK for _ladder_check_sloc16_1_0
;	AOP_STK for _ladder_check_sloc18_1_0
;fetchPairLong
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
;	genMinus
;	AOP_STK for _ladder_check_sloc14_1_0
;	AOP_STK for _ladder_check_sloc18_1_0
;	AOP_STK for _ladder_check_sloc19_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
	pop	hl
	push	hl
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#7
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genLeftShift
;	AOP_STK for _ladder_check_sloc19_1_0
;	AOP_STK for _ladder_check_sloc20_1_0
;	genMove_o size 2
	ld	a, #0x04
00143$:
	ldhl	sp,	#6
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00143$
;	genCast
;	AOP_STK for _ladder_check_sloc20_1_0
;	AOP_STK for _ladder_check_sloc21_1_0
;	(locations are the same)
;	genAssign (pointer)
;	AOP_STK for _ladder_check_sloc21_1_0
;fetchPairLong
;fetchLitPair	de
; common peephole 96b move dec hl before ld de, #(_actors + 1)
	dec	hl
	ld	de, #(_actors + 1)
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
	C$platform.c$1699$3_0$677	= .
	.globl	C$platform.c$1699$3_0$677
;src\states\platform.c:1699: que_state = LADDER_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x0c
	C$platform.c$1700$3_0$677	= .
	.globl	C$platform.c$1700$3_0$677
;src\states\platform.c:1700: pl_vel_x = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_x
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00111$:
	C$platform.c$1703$1_0$675	= .
	.globl	C$platform.c$1703$1_0$675
;src\states\platform.c:1703: }
;	genEndFunction
;	adjustStack by 8
	add	sp, #8
	C$platform.c$1703$1_0$675	= .
	.globl	C$platform.c$1703$1_0$675
	XG$ladder_check$0$0	= .
	.globl	XG$ladder_check$0$0
	ret
	G$ladder_switch$0$0	= .
	.globl	G$ladder_switch$0$0
	C$platform.c$1705$1_0$685	= .
	.globl	C$platform.c$1705$1_0$685
;src\states\platform.c:1705: void ladder_switch(void) BANKED{
;	genLabel
;	genFunction
;	---------------------------------
; Function ladder_switch
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
	b_ladder_switch	= 3
_ladder_switch::
;	adjustStack by -5
	add	sp, #-5
	C$platform.c$1707$1_0$685	= .
	.globl	C$platform.c$1707$1_0$685
;src\states\platform.c:1707: UBYTE p_half_width = (PLAYER.bounds.right - PLAYER.bounds.left) >> 1;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	bc
	ld	bc, #_actors + 6
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genMinus
	ld	a, e
	sub	a, c
	ld	e, a
	ld	a, d
	sbc	a, b
	ld	d, a
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
;	genCast
;	AOP_STK for _ladder_switch_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$1708$1_0$685	= .
	.globl	C$platform.c$1708$1_0$685
;src\states\platform.c:1708: UBYTE tile_x_mid = ((PLAYER.pos.x >> 4) + PLAYER.bounds.left + p_half_width) >> 3; 
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 1
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
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _ladder_switch_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	a, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	e, #0x00
;	genPlus
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	b, a
;	genRightShift
;fetchPairLong
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;	genCast
;	AOP_STK for _ladder_switch_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$1709$1_0$685	= .
	.globl	C$platform.c$1709$1_0$685
;src\states\platform.c:1709: pl_vel_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$platform.c$1710$1_0$685	= .
	.globl	C$platform.c$1710$1_0$685
;src\states\platform.c:1710: if (INPUT_UP) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	2, a
	jp	Z,00124$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00294$.
;	skipping generated iCode
	C$platform.c$1712$2_0$686	= .
	.globl	C$platform.c$1712$2_0$686
;src\states\platform.c:1712: UBYTE tile_y = ((PLAYER.pos.y >> 4) + PLAYER.bounds.top + 1) >> 3;
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
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
;	genPlus
	inc	hl
;	genMove_o size 2
	ld	e, l
;	genMove_o size 0
;	genRightShift
;	genMove_o size 2
	sra	h
	rr	e
	sra	h
	rr	e
	sra	h
	rr	e
;	genCast
;	genMove_o size 1
;src\states\platform.c:1714: if (IS_LADDER(tile_at(tile_x_mid, tile_y))) {
;	genAssign
;	AOP_STK for _ladder_switch_sloc1_1_0
;	AOP_STK for _ladder_switch_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _ladder_switch_sloc1_1_0
	ldhl	sp,	#1
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00135$
;	skipping generated iCode
;	genCmpLt
	ld	a, e
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00135$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_collision_bank
	ld	d, (hl)
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
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
;	genSend
	push	de
;	genMove_o size 2
;	genSend
;	genMove_o size 2
	ld	d, l
;	genMove_o size 0
;	genCall
	call	__mulint
;	genMove_o size 2
	pop	de
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
;	AOP_STK for _ladder_switch_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#4
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	c, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	d, c
;	genMove_o size 0
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;src\states\platform.c:67: 
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00136$
;	genLabel
00135$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	a, #0x0f
;src\states\platform.c:1714: if (IS_LADDER(tile_at(tile_x_mid, tile_y))) {
;	genLabel
00136$:
;	genCast
;	(locations are the same)
;	genAnd
	and	a, #0xf0
;	genMove_o size 1
;	genCmpEq
	sub	a, #0x10
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00295$.
	jp	NZ,00125$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00296$.
;	skipping generated iCode
	C$platform.c$1715$3_0$687	= .
	.globl	C$platform.c$1715$3_0$687
;src\states\platform.c:1715: pl_vel_y = -plat_climb_vel;
;	genUminus
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_plat_climb_vel
	sub	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y),a
; common peephole 19 loaded (#_pl_vel_y) from a directly instead of using hl.
	sbc	a, a
;fetchLitPair	hl
	ld	hl, #_plat_climb_vel + 1
	sub	a, (hl)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
;	genGoto
	jp	00125$
;	genLabel
00124$:
	C$platform.c$1717$1_0$685	= .
	.globl	C$platform.c$1717$1_0$685
;src\states\platform.c:1717: } else if (INPUT_DOWN) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	3, a
	jp	Z,00121$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00297$.
;	skipping generated iCode
	C$platform.c$1719$2_0$688	= .
	.globl	C$platform.c$1719$2_0$688
;src\states\platform.c:1719: UBYTE tile_y = ((PLAYER.pos.y >> 4) + PLAYER.bounds.bottom + 1) >> 3;
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 9) + 0)
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
;	genPlus
	inc	hl
;	genMove_o size 2
	ld	e, l
;	genMove_o size 0
;	genRightShift
;	genMove_o size 2
	sra	h
	rr	e
	sra	h
	rr	e
	sra	h
	rr	e
;	genCast
;	genMove_o size 1
;src\states\platform.c:1720: if (IS_LADDER(tile_at(tile_x_mid, tile_y))) {
;	genAssign
;	AOP_STK for _ladder_switch_sloc1_1_0
;	AOP_STK for _ladder_switch_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _ladder_switch_sloc1_1_0
	ldhl	sp,	#1
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00140$
;	skipping generated iCode
;	genCmpLt
	ld	a, e
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00140$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_collision_bank
	ld	d, (hl)
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
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
;	genSend
	push	de
;	genMove_o size 2
;	genSend
;	genMove_o size 2
	ld	d, l
;	genMove_o size 0
;	genCall
	call	__mulint
;	genMove_o size 2
	pop	de
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
;	AOP_STK for _ladder_switch_sloc3_1_0
;fetchPairLong
	ldhl	sp,	#4
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	c, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	d, c
;	genMove_o size 0
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;src\states\platform.c:67: 
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00141$
;	genLabel
00140$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	a, #0x0f
;src\states\platform.c:1720: if (IS_LADDER(tile_at(tile_x_mid, tile_y))) {
;	genLabel
00141$:
;	genCast
;	(locations are the same)
;	genAnd
	and	a, #0xf0
;	genMove_o size 1
;	genCmpEq
	sub	a, #0x10
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00298$.
	jp	NZ,00125$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00299$.
;	skipping generated iCode
	C$platform.c$1721$3_0$689	= .
	.globl	C$platform.c$1721$3_0$689
;src\states\platform.c:1721: pl_vel_y = plat_climb_vel;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_plat_climb_vel)
; common peephole 17 loaded a from (#_plat_climb_vel) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_pl_vel_y),a
; common peephole 19 loaded (#_pl_vel_y) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_plat_climb_vel + 1)
;fetchLitPair	hl
	ld	(#_pl_vel_y + 1),a
; common peephole 20 loaded (#_pl_vel_y) from a directly instead of using hl.
;	genGoto
	jp	00125$
;	genLabel
00121$:
	C$platform.c$1723$1_0$685	= .
	.globl	C$platform.c$1723$1_0$685
;src\states\platform.c:1723: } else if (INPUT_LEFT) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	1, a
	jp	Z,00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00300$.
;	skipping generated iCode
	C$platform.c$1724$2_0$690	= .
	.globl	C$platform.c$1724$2_0$690
;src\states\platform.c:1724: que_state = FALL_INIT; //Assume we're going to leave the ladder state, 
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
	C$platform.c$1726$2_1$691	= .
	.globl	C$platform.c$1726$2_1$691
;src\states\platform.c:1726: UBYTE tile_start = (((PLAYER.pos.y >> 4) + PLAYER.bounds.top)    >> 3);
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
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
	ld	e, l
;	genMove_o size 0
;	genRightShift
;	genMove_o size 2
	sra	h
	rr	e
	sra	h
	rr	e
	sra	h
	rr	e
;	genCast
;	genMove_o size 1
	C$platform.c$1727$2_1$691	= .
	.globl	C$platform.c$1727$2_1$691
;src\states\platform.c:1727: UBYTE tile_end   = (((PLAYER.pos.y >> 4) + PLAYER.bounds.bottom) >> 3) + 1;
;	genPlus
;fetchLitPair	hl
;	genPointerGet
; common peephole 18 loaded 9 into a directly instead of using hl.
	ld	a, (#_actors + 9)
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
;	genPlus
	add	hl, bc
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
	ld	a, l
;	genMove_o size 0
;	genPlus
;	AOP_STK for _ladder_switch_sloc4_1_0
	inc	a
	ldhl	sp,	#0
	ld	(hl), a
	C$platform.c$1728$2_1$691	= .
	.globl	C$platform.c$1728$2_1$691
;src\states\platform.c:1728: while (tile_start != tile_end) {
;	genLabel
00107$:
;	genCmpEq
;	AOP_STK for _ladder_switch_sloc4_1_0
	ld	a, e
	ldhl	sp,	#0
	sub	a, (hl)
	jp	Z,00125$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00301$.
;	skipping generated iCode
;src\states\platform.c:1729: if (tile_at(tile_x_mid - 1, tile_start) & COLLISION_RIGHT) {
;	genCast
;	AOP_STK for _ladder_switch_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#1
;	genMove_o size 0
;	genMinus
;	genAssign
;	genMove_o size 1
;	genMove_o size 0
;	genAssign
;	AOP_STK for _ladder_switch_sloc5_1_0
;	genMove_o size 1
; common peephole 96b move inc hl before ld b, e
; common peephole 96c move inc hl before dec c
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	dec	c
	ld	b, e
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
	jr	NC, 00145$
;	skipping generated iCode
;	genCmpLt
	ld	a, b
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00145$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_collision_bank
	ld	d, (hl)
;	genCast
;	AOP_STK for _ladder_switch_sloc6_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	ldhl	sp,	#3
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genCast
;	genMove_o size 1
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genSend
;	AOP_STK for _ladder_switch_sloc6_1_0
	push	de
;	genMove_o size 2
	push	hl
	ldhl	sp,	#7
	ld	c, (hl)
; common peephole 50a eliminated dead pop/push hl pair.
	ld	b, #0x00
;	genMove_o size 0
;	genSend
;	genMove_o size 2
; common peephole 31 popped de directly instead of going through hl.
	pop	de
;	genMove_o size 0
;	genCall
	call	__mulint
;	genMove_o size 2
	pop	de
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
;	AOP_STK for _ladder_switch_sloc5_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
	push	de
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
	pop	de
;	genCast
;	genMove_o size 1
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00146$
;	genLabel
00145$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\states\platform.c:1729: if (tile_at(tile_x_mid - 1, tile_start) & COLLISION_RIGHT) {
;	genLabel
00146$:
;	genAnd
	bit	3, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00302$.
;	skipping generated iCode
	C$platform.c$1730$4_1$693	= .
	.globl	C$platform.c$1730$4_1$693
;src\states\platform.c:1730: que_state = LADDER_STATE; //If there is a wall, stay on the ladder.
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x0d
	C$platform.c$1731$4_1$693	= .
	.globl	C$platform.c$1731$4_1$693
;src\states\platform.c:1731: break;
;	genGoto
	jp	00125$
;	genLabel
00106$:
	C$platform.c$1733$3_1$692	= .
	.globl	C$platform.c$1733$3_1$692
;src\states\platform.c:1733: tile_start++;
;	genPlus
	inc	e
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00118$:
	C$platform.c$1735$1_0$685	= .
	.globl	C$platform.c$1735$1_0$685
;src\states\platform.c:1735: } else if (INPUT_RIGHT) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	rrca
	jp	NC,00125$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00303$.
;	skipping generated iCode
	C$platform.c$1736$2_0$694	= .
	.globl	C$platform.c$1736$2_0$694
;src\states\platform.c:1736: que_state = FALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
	C$platform.c$1738$2_1$695	= .
	.globl	C$platform.c$1738$2_1$695
;src\states\platform.c:1738: UBYTE tile_start = (((PLAYER.pos.y >> 4) + PLAYER.bounds.top)    >> 3);
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
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
	ld	e, l
;	genMove_o size 0
;	genRightShift
;	genMove_o size 2
	sra	h
	rr	e
	sra	h
	rr	e
	sra	h
	rr	e
;	genCast
;	genMove_o size 1
	C$platform.c$1739$2_1$695	= .
	.globl	C$platform.c$1739$2_1$695
;src\states\platform.c:1739: UBYTE tile_end   = (((PLAYER.pos.y >> 4) + PLAYER.bounds.bottom) >> 3) + 1;
;	genPlus
;fetchLitPair	hl
;	genPointerGet
; common peephole 18 loaded 9 into a directly instead of using hl.
	ld	a, (#_actors + 9)
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
;	genPlus
	add	hl, bc
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
	ld	a, l
;	genMove_o size 0
;	genPlus
;	AOP_STK for _ladder_switch_sloc7_1_0
	inc	a
	ldhl	sp,	#2
	ld	(hl), a
	C$platform.c$1740$2_1$695	= .
	.globl	C$platform.c$1740$2_1$695
;src\states\platform.c:1740: while (tile_start != tile_end) {
;	genLabel
00112$:
;	genCmpEq
;	AOP_STK for _ladder_switch_sloc7_1_0
	ld	a, e
	ldhl	sp,	#2
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00125$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00304$.
;	skipping generated iCode
;src\states\platform.c:1741: if (tile_at(tile_x_mid + 1, tile_start) & COLLISION_LEFT) {
;	genCast
;	AOP_STK for _ladder_switch_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#1
;	genMove_o size 0
;	genPlus
; common peephole 9 loaded b from (hl) directly instead of going through a.
;	genAssign
;	genMove_o size 1
;	genMove_o size 0
;	genAssign
;	AOP_STK for _ladder_switch_sloc8_1_0
;	genMove_o size 1
; common peephole 96b move inc hl before ld c, e
; common peephole 96c move inc hl before inc b
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld c, e
; common peephole 96c move inc hl before inc b
; common peephole 96b move inc hl before ld b, a
	inc	hl
	ld	b, a
	inc	b
	ld	c, e
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
	ld	a,b
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00150$
;	skipping generated iCode
;	genCmpLt
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00150$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _ladder_switch_sloc9_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#4
	ld	(hl), a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	ld	b, #0x00
;	genCast
;	genMove_o size 1
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genSend
	push	de
;	genMove_o size 2
	ld	c, l
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	e, h
;	genMove_o size 0
;	genCall
	call	__mulint
;	genMove_o size 2
	pop	de
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
;	AOP_STK for _ladder_switch_sloc8_1_0
;fetchPairLong
	ldhl	sp,	#3
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _ladder_switch_sloc9_1_0
	push	de
;	genMove_o size 1
	ldhl	sp,	#6
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
	pop	de
;	genCast
;	genMove_o size 1
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00151$
;	genLabel
00150$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	c, #0x0f
;src\states\platform.c:1741: if (tile_at(tile_x_mid + 1, tile_start) & COLLISION_LEFT) {
;	genLabel
00151$:
;	genAnd
	bit	2, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00305$.
;	skipping generated iCode
	C$platform.c$1742$4_1$697	= .
	.globl	C$platform.c$1742$4_1$697
;src\states\platform.c:1742: que_state = LADDER_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x0d
	C$platform.c$1743$4_1$697	= .
	.globl	C$platform.c$1743$4_1$697
;src\states\platform.c:1743: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00125$
;	genLabel
00111$:
	C$platform.c$1745$3_1$696	= .
	.globl	C$platform.c$1745$3_1$696
;src\states\platform.c:1745: tile_start++;
;	genPlus
	inc	e
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00125$:
	C$platform.c$1748$1_0$685	= .
	.globl	C$platform.c$1748$1_0$685
;src\states\platform.c:1748: PLAYER.pos.y += (pl_vel_y >> 8);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRightShift
;fetchLitPair	hl
	ld	hl, #_pl_vel_y + 1
	ld	e, (hl)
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
;	genCast
;	(locations are the same)
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
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 3)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;src\states\platform.c:1751: actor_set_anim(&PLAYER, ANIM_CLIMB);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;include/actor.h:62: actor->animation = anim;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 16
;	genAssign (pointer)
	ld	(hl), #0x06
;include/actor.h:63: actor_set_frames(actor, actor->animations[anim].start, actor->animations[anim].end + 1);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 31) + 0)
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 30)
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genIpush
	push	af
	inc	sp
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	push	de
;	genCall
	ld	e, #b_actor_set_frames
	ld	hl, #_actor_set_frames
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
	C$platform.c$1752$1_0$685	= .
	.globl	C$platform.c$1752$1_0$685
;src\states\platform.c:1752: if (pl_vel_y == 0) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_pl_vel_y + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00127$
;src\states\platform.c:1753: actor_stop_anim(&PLAYER);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;include/actor.h:69: actor->frame_start = actor->frame;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	bc
	ld	bc, #_actors + 11
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	(#(_actors + 12)),a
; common peephole 19 loaded (#(_actors + 12)) from a directly instead of using hl.
;include/actor.h:70: actor->frame_end = actor->frame + 1;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	(#(_actors + 13)),a
; common peephole 19 loaded (#(_actors + 13)) from a directly instead of using hl.
	C$platform.c$1753$1_0$685	= .
	.globl	C$platform.c$1753$1_0$685
;src\states\platform.c:1753: actor_stop_anim(&PLAYER);
;	genLabel
00127$:
	C$platform.c$1760$1_0$685	= .
	.globl	C$platform.c$1760$1_0$685
;src\states\platform.c:1760: if (INPUT_PRESSED(INPUT_PLATFORM_JUMP)){
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
	ld	d, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_frame_joy
	ld	a, (hl)
;	genMove_o size 1
	ld	c, #0x00
;	genAnd
	and	a, e
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, c
	and	a, d
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genAnd
	ld	a, c
	and	a, #0x10
;	genMove_o size 1
;	genMove_o size 1
	ld	c, #0x00
;	genAnd
	and	a, e
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, c
	and	a, d
;	genMove_o size 1
;	genMove_o size 0
;	genIfx
	ld	d, a
; common peephole 98 removed redundant load from d into a.
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00129$
	C$platform.c$1761$2_0$699	= .
	.globl	C$platform.c$1761$2_0$699
;src\states\platform.c:1761: que_state = FALL_INIT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x00
;	genLabel
00129$:
	C$platform.c$1764$1_0$685	= .
	.globl	C$platform.c$1764$1_0$685
;src\states\platform.c:1764: if (que_state != LADDER_STATE){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_que_state)
; common peephole 17 loaded a from (#_que_state) directly instead of using hl.
	sub	a, #0x0d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00154$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00306$.
;	skipping generated iCode
	C$platform.c$1765$2_0$700	= .
	.globl	C$platform.c$1765$2_0$700
;src\states\platform.c:1765: plat_state = LADDER_END;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_state
	ld	(hl), #0x0e
;	genLabel
00154$:
	C$platform.c$1767$1_0$685	= .
	.globl	C$platform.c$1767$1_0$685
;src\states\platform.c:1767: }
;	genEndFunction
;	adjustStack by 5
	add	sp, #5
	C$platform.c$1767$1_0$685	= .
	.globl	C$platform.c$1767$1_0$685
	XG$ladder_switch$0$0	= .
	.globl	XG$ladder_switch$0$0
	ret
	G$dash_init_switch$0$0	= .
	.globl	G$dash_init_switch$0$0
	C$platform.c$1769$1_0$732	= .
	.globl	C$platform.c$1769$1_0$732
;src\states\platform.c:1769: void dash_init_switch(void) BANKED{
;	genLabel
;	genFunction
;	---------------------------------
; Function dash_init_switch
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 11 bytes.
	b_dash_init_switch	= 3
_dash_init_switch::
;	adjustStack by -11
	add	sp, #-11
	C$platform.c$1772$1_0$732	= .
	.globl	C$platform.c$1772$1_0$732
;src\states\platform.c:1772: if (INPUT_RIGHT){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00104$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00296$.
;	skipping generated iCode
	C$platform.c$1773$2_0$733	= .
	.globl	C$platform.c$1773$2_0$733
;src\states\platform.c:1773: PLAYER.dir = DIR_RIGHT;
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 5)
	ld	(hl), #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00104$:
	C$platform.c$1775$1_0$732	= .
	.globl	C$platform.c$1775$1_0$732
;src\states\platform.c:1775: else if(INPUT_LEFT){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00297$.
;	skipping generated iCode
	C$platform.c$1776$2_0$734	= .
	.globl	C$platform.c$1776$2_0$734
;src\states\platform.c:1776: PLAYER.dir = DIR_LEFT;
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 5)
	ld	(hl), #0x03
;	genLabel
00105$:
	C$platform.c$1780$1_0$732	= .
	.globl	C$platform.c$1780$1_0$732
;src\states\platform.c:1780: if (PLAYER.dir == DIR_RIGHT){
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 5) + 0)
;	genCmpEq
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00298$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00107$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00299$.
;	skipping generated iCode
	C$platform.c$1781$2_0$735	= .
	.globl	C$platform.c$1781$2_0$735
;src\states\platform.c:1781: new_x = PLAYER.pos.x + (dash_dist*plat_dash_frames);
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 1)
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_dash_frames
	ld	e, (hl)
;	genMove_o size 1
	ld	d, #0x00
;	genSend
	push	bc
;	genMove_o size 2
	ld	c, e
	ld	b, d
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_dash_dist
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	__mulint
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	pop	bc
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _dash_init_switch_sloc0_1_0
;fetchPairLong
	ld	l, e
	ld	h, d
	add	hl, bc
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
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00107$:
	C$platform.c$1784$2_0$736	= .
	.globl	C$platform.c$1784$2_0$736
;src\states\platform.c:1784: new_x = PLAYER.pos.x + (-dash_dist*plat_dash_frames);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _dash_init_switch_sloc1_1_0
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_actors + 1)
	ld	a, (de)
	ldhl	sp,	#9
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genUminus
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_dash_dist
	sub	a, (hl)
;fetchLitPair	hl
; common peephole 96b move inc hl before sbc a, a
; common peephole 96b move inc hl before ld e, a
	inc	hl
	ld	e, a
	sbc	a, a
	sub	a, (hl)
	ld	d, a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_dash_frames
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	__mulint
;	genMove_o size 2
;	genCast
;	AOP_STK for _dash_init_switch_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _dash_init_switch_sloc0_1_0
;fetchPairLong
	ld	l, a
	ld	h, e
	add	hl, bc
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
;	genLabel
00108$:
	C$platform.c$1788$1_0$732	= .
	.globl	C$platform.c$1788$1_0$732
;src\states\platform.c:1788: if(plat_dash_through == 3 && plat_dash_momentum < 2){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_dash_through)
; common peephole 17 loaded a from (#_plat_dash_through) directly instead of using hl.
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00300$.
	jp	NZ,00139$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00301$.
;	skipping generated iCode
;	genCmpLt
;fetchLitPair	hl
	ld	a, (#_plat_dash_momentum)
; common peephole 17 loaded a from (#_plat_dash_momentum) directly instead of using hl.
	sub	a, #0x02
	jp	NC, 00139$
;	skipping generated iCode
	C$platform.c$1789$2_0$737	= .
	.globl	C$platform.c$1789$2_0$737
;src\states\platform.c:1789: dash_end_clear = true;                              //Assume that the landing spot is clear, and disable if we collide below
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_dash_end_clear
	ld	(hl), #0x01
	C$platform.c$1790$2_1$738	= .
	.globl	C$platform.c$1790$2_1$738
;src\states\platform.c:1790: UBYTE tile_start = (((PLAYER.pos.y >> 4) + PLAYER.bounds.top)    >> 3);
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 8) + 0)
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
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	AOP_STK for _dash_init_switch_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#10
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$1791$2_1$738	= .
	.globl	C$platform.c$1791$2_1$738
;src\states\platform.c:1791: UBYTE tile_end   = (((PLAYER.pos.y >> 4) + PLAYER.bounds.bottom) >> 3) + 1;     
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 9) + 0)
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
;	genPlus
	add	hl, bc
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
	ld	a, l
;	genMove_o size 0
;	genPlus
;	AOP_STK for _dash_init_switch_sloc3_1_0
	inc	a
	ldhl	sp,	#2
	ld	(hl), a
	C$platform.c$1794$2_1$738	= .
	.globl	C$platform.c$1794$2_1$738
;src\states\platform.c:1794: if (PLAYER.dir == DIR_RIGHT){
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 5) + 0)
;	genCmpEq
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00302$.
	jp	NZ,00134$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00303$.
;	skipping generated iCode
	C$platform.c$1796$3_1$739	= .
	.globl	C$platform.c$1796$3_1$739
;src\states\platform.c:1796: if (PLAYER.pos.x + (PLAYER.bounds.right <<4) + (dash_dist*(plat_dash_frames)) > (image_width -16) << 4){   
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
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
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
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_dash_frames
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genSend
	push	de
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_dash_dist
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	__mulint
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	pop	de
;	genPlus
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genMinus
;fetchLitPair	hl
	ld	hl, #_image_width
;fetchLitPair	hl
; common peephole 96b move inc hl before ld e, a
; common peephole 96b move inc hl before add a, #0xf0
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	add	a, #0xf0
	ld	e, a
	ld	a, (hl)
	adc	a, #0xff
	ld	d, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genCast
;	(locations are the same)
;	genCmpGt
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00118$
;	skipping generated iCode
	C$platform.c$1797$4_1$740	= .
	.globl	C$platform.c$1797$4_1$740
;src\states\platform.c:1797: dash_end_clear = false;                                     
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_dash_end_clear
	ld	(hl), #0x00
;	genGoto
	jp	00139$
;	genLabel
00118$:
	C$platform.c$1799$4_1$741	= .
	.globl	C$platform.c$1799$4_1$741
;src\states\platform.c:1799: UBYTE tile_xr = (((new_x >> 4) + PLAYER.bounds.right) >> 3) +1;  
;	genRightShift
;	AOP_STK for _dash_init_switch_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
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
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
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
;	genPlus
	add	hl, bc
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
	ld	a, l
;	genMove_o size 0
;	genPlus
;	AOP_STK for _dash_init_switch_sloc4_1_0
	inc	a
	ldhl	sp,	#3
	ld	(hl), a
	C$platform.c$1800$4_1$741	= .
	.globl	C$platform.c$1800$4_1$741
;src\states\platform.c:1800: UBYTE tile_xl = ((new_x >> 4) + PLAYER.bounds.left) >> 3;   
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
;	AOP_STK for _dash_init_switch_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#9
	ld	(hl), c
;	genMove_o size 0
	C$platform.c$1801$5_1$742	= .
	.globl	C$platform.c$1801$5_1$742
;src\states\platform.c:1801: while (tile_xl != tile_xr){                                             //This checks all the tiles between the left bounds and the right bounds
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00114$:
;	genCmpEq
;	AOP_STK for _dash_init_switch_sloc4_1_0
;	AOP_STK for _dash_init_switch_sloc5_1_0
	ldhl	sp,	#3
	ld	a, (hl)
	ldhl	sp,	#9
	sub	a, (hl)
	jp	Z,00139$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00304$.
;	skipping generated iCode
	C$platform.c$1802$1_0$732	= .
	.globl	C$platform.c$1802$1_0$732
;src\states\platform.c:1802: while (tile_start != tile_end) {                                    //This checks all the tiles that the character occupies in height
;	genAssign
;	AOP_STK for _dash_init_switch_sloc2_1_0
;	AOP_STK for _dash_init_switch_sloc6_1_0
;	(locations are the same)
;	genLabel
00111$:
;	genCmpEq
;	AOP_STK for _dash_init_switch_sloc3_1_0
;	AOP_STK for _dash_init_switch_sloc6_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	ldhl	sp,	#10
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00305$.
;	skipping generated iCode
;src\states\platform.c:1803: if (tile_at(tile_xl, tile_start) & COLLISION_ALL) {
;	genAssign
;	AOP_STK for _dash_init_switch_sloc6_1_0
;	AOP_STK for _dash_init_switch_sloc7_1_0
;	genMove_o size 1
	ldhl	sp,	#10
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _dash_init_switch_sloc5_1_0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00145$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for _dash_init_switch_sloc7_1_0
	ldhl	sp,	#8
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00145$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _dash_init_switch_sloc8_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#4
	ld	(hl), a
;	genCast
;	AOP_STK for _dash_init_switch_sloc9_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
	ldhl	sp,	#5
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genCast
;	AOP_STK for _dash_init_switch_sloc7_1_0
;	AOP_STK for _dash_init_switch_sloc10_1_0
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
;	AOP_STK for _dash_init_switch_sloc9_1_0
;	genMove_o size 2
	ldhl	sp,	#5
;	genMove_o size 0
;	genSend
;	AOP_STK for _dash_init_switch_sloc10_1_0
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
;	AOP_STK for _dash_init_switch_sloc5_1_0
;fetchPairLong
	ldhl	sp,	#9
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _dash_init_switch_sloc8_1_0
;	genMove_o size 1
	ldhl	sp,	#4
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
	jr	00146$
;	genLabel
00145$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	a, #0x0f
;src\states\platform.c:1803: if (tile_at(tile_xl, tile_start) & COLLISION_ALL) {
;	genLabel
00146$:
;	genAnd
	and	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00306$.
;	skipping generated iCode
	C$platform.c$1804$7_1$744	= .
	.globl	C$platform.c$1804$7_1$744
;src\states\platform.c:1804: dash_end_clear = false;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_dash_end_clear
	ld	(hl), #0x00
	C$platform.c$1805$7_1$744	= .
	.globl	C$platform.c$1805$7_1$744
;src\states\platform.c:1805: goto initDash;                                          //Gotos are still good for breaking embedded loops.
;	genGoto
	jp	00139$
;	genLabel
00110$:
	C$platform.c$1807$6_1$743	= .
	.globl	C$platform.c$1807$6_1$743
;src\states\platform.c:1807: tile_start++;
;	genPlus
;	AOP_STK for _dash_init_switch_sloc6_1_0
	ldhl	sp,	#10
	inc	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;	genLabel
00113$:
	C$platform.c$1809$5_1$742	= .
	.globl	C$platform.c$1809$5_1$742
;src\states\platform.c:1809: tile_start = (((PLAYER.pos.y >> 4) + PLAYER.bounds.top)    >> 3);   //Reset the height after each loop
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
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
	ld	a, (#(_actors + 8) + 0)
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
;	genRightShift
;	genMove_o size 2
	ld	c, h
;	genMove_o size 0
	sra	c
	rr	l
	sra	c
	rr	l
	sra	c
	rr	l
;	genCast
;	AOP_STK for _dash_init_switch_sloc2_1_0
;	genMove_o size 1
	ld	a, l
	ldhl	sp,	#10
;	genMove_o size 0
	C$platform.c$1810$5_1$742	= .
	.globl	C$platform.c$1810$5_1$742
;src\states\platform.c:1810: tile_xl++;
;	genPlus
;	AOP_STK for _dash_init_switch_sloc5_1_0
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	inc	(hl)
;	genGoto
	jp	00114$
;	genLabel
00134$:
	C$platform.c$1813$2_1$738	= .
	.globl	C$platform.c$1813$2_1$738
;src\states\platform.c:1813: } else if(PLAYER.dir == DIR_LEFT) {
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 5) + 0)
;	genCmpEq
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00307$.
	jp	NZ,00139$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00308$.
;	skipping generated iCode
	C$platform.c$1815$3_1$745	= .
	.globl	C$platform.c$1815$3_1$745
;src\states\platform.c:1815: if (PLAYER.pos.x <= ((dash_dist*plat_dash_frames)+(PLAYER.bounds.left << 4))+(8<<4)){
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
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_plat_dash_frames
	ld	e, (hl)
;	genMove_o size 1
	ld	d, #0x00
;	genSend
	push	bc
;	genMove_o size 2
	ld	c, e
	ld	b, d
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_dash_dist
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCall
	call	__mulint
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	pop	bc
;	genPlus
;fetchLitPair	hl
;	genPointerGet
; common peephole 18 loaded 6 into a directly instead of using hl.
	ld	a, (#_actors + 6)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
	add	hl, de
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0080
	add	hl, de
;	genCast
;	(locations are the same)
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
	jr	Z, 00309$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00310$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00310$
00309$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00310$
	scf
00310$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00129$
;	skipping generated iCode
	C$platform.c$1816$4_1$746	= .
	.globl	C$platform.c$1816$4_1$746
;src\states\platform.c:1816: dash_end_clear = false;         //To get around unsigned position, test if the player's current position is less than the total dist.
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_dash_end_clear
	ld	(hl), #0x00
;	genGoto
	jp	00139$
;	genLabel
00129$:
	C$platform.c$1818$4_1$747	= .
	.globl	C$platform.c$1818$4_1$747
;src\states\platform.c:1818: UBYTE tile_xl = ((new_x >> 4) + PLAYER.bounds.left) >> 3;
;	genRightShift
;	AOP_STK for _dash_init_switch_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
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
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
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
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genRightShift
;fetchPairLong
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;	genCast
;	AOP_STK for _dash_init_switch_sloc11_1_0
;	genMove_o size 1
	ldhl	sp,	#9
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$1819$4_1$747	= .
	.globl	C$platform.c$1819$4_1$747
;src\states\platform.c:1819: UBYTE tile_xr = (((new_x >> 4) + PLAYER.bounds.right) >> 3) +1;  
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_actors + 7) + 0)
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
;	genPlus
	add	hl, bc
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
	ld	a, l
;	genMove_o size 0
;	genPlus
;	AOP_STK for _dash_init_switch_sloc12_1_0
	inc	a
	ldhl	sp,	#6
	ld	(hl), a
	C$platform.c$1821$5_1$748	= .
	.globl	C$platform.c$1821$5_1$748
;src\states\platform.c:1821: while (tile_xl != tile_xr){   
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00125$:
;	genCmpEq
;	AOP_STK for _dash_init_switch_sloc11_1_0
;	AOP_STK for _dash_init_switch_sloc12_1_0
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#6
	sub	a, (hl)
	jp	Z,00139$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00311$.
;	skipping generated iCode
	C$platform.c$1822$1_0$732	= .
	.globl	C$platform.c$1822$1_0$732
;src\states\platform.c:1822: while (tile_start != tile_end) {
;	genAssign
;	AOP_STK for _dash_init_switch_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#10
	ld	e, (hl)
;	genMove_o size 0
;	genLabel
00122$:
;	genCmpEq
;	AOP_STK for _dash_init_switch_sloc3_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00124$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00312$.
;	skipping generated iCode
;src\states\platform.c:1823: if (tile_at(tile_xl, tile_start) & COLLISION_ALL) {
;	genAssign
;	genMove_o size 1
	ld	c, e
;	genMove_o size 0
;include/collision.h:66: if ((tx < image_tile_width) && (ty < image_tile_height)) 
;	genCmpLt
;	AOP_STK for _dash_init_switch_sloc11_1_0
	ldhl	sp,	#9
	ld	a, (hl)
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00150$
;	skipping generated iCode
;	genCmpLt
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00150$
;	skipping generated iCode
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genAssign
;	AOP_STK for _dash_init_switch_sloc13_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_collision_bank)
; common peephole 17 loaded a from (#_collision_bank) directly instead of using hl.
	ldhl	sp,	#10
	ld	(hl), a
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	ld	b, #0x00
;	genCast
;	genMove_o size 1
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genSend
	push	de
;	genMove_o size 2
	ld	c, l
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	e, h
;	genMove_o size 0
;	genCall
	call	__mulint
;	genMove_o size 2
	pop	de
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
;	AOP_STK for _dash_init_switch_sloc11_1_0
;fetchPairLong
	ldhl	sp,	#9
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _dash_init_switch_sloc13_1_0
	push	de
;	genMove_o size 1
	ldhl	sp,	#12
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
	pop	de
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;include/collision.h:67: return ReadBankedUBYTE(collision_ptr + (ty * (UINT16)image_tile_width) + tx, collision_bank);
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00151$
;	genLabel
00150$:
;include/collision.h:68: return COLLISION_ALL;
;	genAssign
;	genMove_o size 1
	ld	a, #0x0f
;src\states\platform.c:1823: if (tile_at(tile_xl, tile_start) & COLLISION_ALL) {
;	genLabel
00151$:
;	genAnd
	and	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00121$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00313$.
;	skipping generated iCode
	C$platform.c$1824$7_1$750	= .
	.globl	C$platform.c$1824$7_1$750
;src\states\platform.c:1824: dash_end_clear = false;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_dash_end_clear
	ld	(hl), #0x00
	C$platform.c$1825$7_1$750	= .
	.globl	C$platform.c$1825$7_1$750
;src\states\platform.c:1825: goto initDash;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00139$
;	genLabel
00121$:
	C$platform.c$1827$6_1$749	= .
	.globl	C$platform.c$1827$6_1$749
;src\states\platform.c:1827: tile_start++;
;	genPlus
	inc	e
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00122$
;	genLabel
00124$:
	C$platform.c$1829$5_1$748	= .
	.globl	C$platform.c$1829$5_1$748
;src\states\platform.c:1829: tile_start = (((PLAYER.pos.y >> 4) + PLAYER.bounds.top)    >> 3);
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_actors + 3)
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
	ld	a, (#(_actors + 8) + 0)
;	genCast
;	AOP_STK for _dash_init_switch_sloc14_1_0
;	genMove_o size 0
;	genMove_o size 1
	ldhl	sp,	#0
; common peephole 96b move inc hl before sbc a, a
; common peephole 96a move inc hl before rlca
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	rlca
	sbc	a, a
	ld	(hl), a
;	genCast
;	AOP_STK for _dash_init_switch_sloc15_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genPlus
;	AOP_STK for _dash_init_switch_sloc14_1_0
;	AOP_STK for _dash_init_switch_sloc15_1_0
;	AOP_STK for _dash_init_switch_sloc16_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl), a
;	genMove_o size 0
;	genRightShift
;	AOP_STK for _dash_init_switch_sloc16_1_0
;	AOP_STK for _dash_init_switch_sloc17_1_0
;	genMove_o size 2
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
;	genCast
;	AOP_STK for _dash_init_switch_sloc17_1_0
;	AOP_STK for _dash_init_switch_sloc2_1_0
;	genMove_o size 1
	ld	a, (hl)
	ldhl	sp,	#10
;	genMove_o size 0
	C$platform.c$1830$5_1$748	= .
	.globl	C$platform.c$1830$5_1$748
;src\states\platform.c:1830: tile_xl++;
;	genPlus
;	AOP_STK for _dash_init_switch_sloc11_1_0
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	inc	(hl)
;	genGoto
	jp	00125$
	C$platform.c$1835$1_0$732	= .
	.globl	C$platform.c$1835$1_0$732
;src\states\platform.c:1835: initDash:
;	genLabel
00139$:
	C$platform.c$1836$1_0$732	= .
	.globl	C$platform.c$1836$1_0$732
;src\states\platform.c:1836: actor_attached = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actor_attached
	ld	(hl), #0x00
	C$platform.c$1837$1_0$732	= .
	.globl	C$platform.c$1837$1_0$732
;src\states\platform.c:1837: camera_deadzone_x = plat_dash_deadzone;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_dash_deadzone)
; common peephole 17 loaded a from (#_plat_dash_deadzone) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_camera_deadzone_x),a
; common peephole 19 loaded (#_camera_deadzone_x) from a directly instead of using hl.
	C$platform.c$1838$1_0$732	= .
	.globl	C$platform.c$1838$1_0$732
;src\states\platform.c:1838: dash_ready_val = plat_dash_ready_max + plat_dash_frames;
;	genPlus
;fetchLitPair	hl
	ld	a, (#_plat_dash_ready_max)
; common peephole 17 loaded a from (#_plat_dash_ready_max) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_plat_dash_frames
	add	a, (hl)
;fetchLitPair	hl
	ld	(#_dash_ready_val),a
; common peephole 19 loaded (#_dash_ready_val) from a directly instead of using hl.
	C$platform.c$1839$1_0$732	= .
	.globl	C$platform.c$1839$1_0$732
;src\states\platform.c:1839: if(plat_dash_momentum < 2){
;	genCmpLt
;fetchLitPair	hl
	ld	a, (#_plat_dash_momentum)
; common peephole 17 loaded a from (#_plat_dash_momentum) directly instead of using hl.
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00141$
;	skipping generated iCode
	C$platform.c$1840$2_0$751	= .
	.globl	C$platform.c$1840$2_0$751
;src\states\platform.c:1840: pl_vel_y = 0;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_pl_vel_y
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00141$:
	C$platform.c$1842$1_0$732	= .
	.globl	C$platform.c$1842$1_0$732
;src\states\platform.c:1842: dash_currentframe = plat_dash_frames;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_plat_dash_frames)
; common peephole 17 loaded a from (#_plat_dash_frames) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_dash_currentframe),a
; common peephole 19 loaded (#_dash_currentframe) from a directly instead of using hl.
	C$platform.c$1843$1_0$732	= .
	.globl	C$platform.c$1843$1_0$732
;src\states\platform.c:1843: tap_val = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_tap_val
	ld	(hl), #0x00
	C$platform.c$1844$1_0$732	= .
	.globl	C$platform.c$1844$1_0$732
;src\states\platform.c:1844: jump_type = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_jump_type
	ld	(hl), #0x00
	C$platform.c$1845$1_0$732	= .
	.globl	C$platform.c$1845$1_0$732
;src\states\platform.c:1845: run_stage = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_run_stage
	ld	(hl), #0x00
	C$platform.c$1846$1_0$732	= .
	.globl	C$platform.c$1846$1_0$732
;src\states\platform.c:1846: que_state = DASH_STATE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_que_state
	ld	(hl), #0x0a
;	genLabel
; common peephole 158 removed unused label 00152$.
	C$platform.c$1848$1_0$732	= .
	.globl	C$platform.c$1848$1_0$732
;src\states\platform.c:1848: }
;	genEndFunction
;	adjustStack by 11
	add	sp, #11
	C$platform.c$1848$1_0$732	= .
	.globl	C$platform.c$1848$1_0$732
	XG$dash_init_switch$0$0	= .
	.globl	XG$dash_init_switch$0$0
	ret
	G$drop_press$0$0	= .
	.globl	G$drop_press$0$0
	C$platform.c$1850$1_0$765	= .
	.globl	C$platform.c$1850$1_0$765
;src\states\platform.c:1850: UBYTE drop_press(void) BANKED{
;	genLabel
;	genFunction
;	---------------------------------
; Function drop_press
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_drop_press	= 3
_drop_press::
	C$platform.c$1851$1_0$765	= .
	.globl	C$platform.c$1851$1_0$765
;src\states\platform.c:1851: switch(plat_drop_through){
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_plat_drop_through)
; common peephole 17 loaded a from (#_plat_drop_through) directly instead of using hl.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00180$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
; common peephole 17 loaded a from (#_plat_drop_through) directly instead of using hl.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00181$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a,(#_plat_drop_through)
	cp	a,#0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
; common peephole 107 removed load from (#_plat_drop_through) into a by replacing sub with cp
; common peephole 17 loaded a from (#_plat_drop_through) directly instead of using hl.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00182$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	cp	a,#0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
; common peephole 108 removed load from (#_plat_drop_through) into a by replacing sub with cp
; common peephole 17 loaded a from (#_plat_drop_through) directly instead of using hl.
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00183$.
;	skipping generated iCode
;	genGoto
	jp	00117$
	C$platform.c$1852$2_0$766	= .
	.globl	C$platform.c$1852$2_0$766
;src\states\platform.c:1852: case 1:
;	genLabel
00101$:
	C$platform.c$1853$2_0$766	= .
	.globl	C$platform.c$1853$2_0$766
;src\states\platform.c:1853: if(INPUT_DOWN){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	3, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00184$.
;	skipping generated iCode
	C$platform.c$1854$3_0$767	= .
	.globl	C$platform.c$1854$3_0$767
;src\states\platform.c:1854: return 1;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00103$:
	C$platform.c$1856$2_0$766	= .
	.globl	C$platform.c$1856$2_0$766
;src\states\platform.c:1856: return 0;
;	genRet
;	genMove_o size 1
	xor	a, a
	ret
; common peephole 160 replaced jump by return.
	C$platform.c$1857$2_0$766	= .
	.globl	C$platform.c$1857$2_0$766
;src\states\platform.c:1857: case 2:
;	genLabel
00104$:
	C$platform.c$1858$2_0$766	= .
	.globl	C$platform.c$1858$2_0$766
;src\states\platform.c:1858: if (INPUT_PRESSED(INPUT_DOWN)){
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
	ld	hl, #_frame_joy
	ld	a, (hl)
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
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into d.
;	genAnd
; common peephole 9 loaded a from (hl) directly instead of going through e.
	ld	a, (hl)
	and	a, #0x08
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
	jr	Z, 00106$
	C$platform.c$1859$3_0$768	= .
	.globl	C$platform.c$1859$3_0$768
;src\states\platform.c:1859: return 1;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00106$:
	C$platform.c$1861$2_0$766	= .
	.globl	C$platform.c$1861$2_0$766
;src\states\platform.c:1861: return 0;
;	genRet
;	genMove_o size 1
	xor	a, a
	ret
; common peephole 160 replaced jump by return.
	C$platform.c$1862$2_0$766	= .
	.globl	C$platform.c$1862$2_0$766
;src\states\platform.c:1862: case 3:
;	genLabel
00107$:
	C$platform.c$1863$2_0$766	= .
	.globl	C$platform.c$1863$2_0$766
;src\states\platform.c:1863: if (INPUT_DOWN && INPUT_PLATFORM_JUMP){
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	3, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00185$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	4, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00186$.
;	skipping generated iCode
	C$platform.c$1864$3_0$769	= .
	.globl	C$platform.c$1864$3_0$769
;src\states\platform.c:1864: return 1;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00109$:
	C$platform.c$1866$2_0$766	= .
	.globl	C$platform.c$1866$2_0$766
;src\states\platform.c:1866: return 0;
;	genRet
;	genMove_o size 1
	xor	a, a
	ret
; common peephole 160 replaced jump by return.
	C$platform.c$1867$2_0$766	= .
	.globl	C$platform.c$1867$2_0$766
;src\states\platform.c:1867: case 4:
;	genLabel
00111$:
	C$platform.c$1868$2_0$766	= .
	.globl	C$platform.c$1868$2_0$766
;src\states\platform.c:1868: if ((INPUT_PRESSED(INPUT_DOWN) && INPUT_PLATFORM_JUMP) || (INPUT_DOWN && INPUT_PRESSED(INPUT_PLATFORM_JUMP))){
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
	ld	hl, #_frame_joy
	ld	a, (hl)
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
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into d.
;	genAnd
; common peephole 9 loaded a from (hl) directly instead of going through e.
	ld	a, (hl)
	and	a, #0x08
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
	jr	Z, 00116$
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genAnd
; common peephole 73 tested bit 4 of (hl) directly instead of going through a.
	bit	4, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00187$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00112$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00188$.
;	skipping generated iCode
;	genLabel
00116$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genAnd
	bit	3, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00189$.
;	skipping generated iCode
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
	ld	hl, #_frame_joy
	ld	a, (hl)
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
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into d.
;	genAnd
; common peephole 9 loaded a from (hl) directly instead of going through e.
	ld	a, (hl)
	and	a, #0x10
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
	jr	Z, 00113$
;	genLabel
00112$:
	C$platform.c$1869$3_0$770	= .
	.globl	C$platform.c$1869$3_0$770
;src\states\platform.c:1869: return 1;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00113$:
	C$platform.c$1871$2_0$766	= .
	.globl	C$platform.c$1871$2_0$766
;src\states\platform.c:1871: return 0;
;	genRet
;	genMove_o size 1
	xor	a, a
	ret
; common peephole 160 replaced jump by return.
	C$platform.c$1872$1_0$765	= .
	.globl	C$platform.c$1872$1_0$765
;src\states\platform.c:1872: }
;	genLabel
00117$:
	C$platform.c$1873$1_0$765	= .
	.globl	C$platform.c$1873$1_0$765
;src\states\platform.c:1873: return 0;
;	genRet
;	genMove_o size 1
	xor	a, a
;	genLabel
; common peephole 158 removed unused label 00118$.
	C$platform.c$1874$1_0$765	= .
	.globl	C$platform.c$1874$1_0$765
;src\states\platform.c:1874: }
;	genEndFunction
	C$platform.c$1874$1_0$765	= .
	.globl	C$platform.c$1874$1_0$765
	XG$drop_press$0$0	= .
	.globl	XG$drop_press$0$0
	ret
	G$assign_state_script$0$0	= .
	.globl	G$assign_state_script$0$0
	C$platform.c$1877$1_0$772	= .
	.globl	C$platform.c$1877$1_0$772
;src\states\platform.c:1877: void assign_state_script(SCRIPT_CTX * THIS) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function assign_state_script
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
	b_assign_state_script	= 3
_assign_state_script::
;	adjustStack by -6
	add	sp, #-6
	C$platform.c$1878$1_0$772	= .
	.globl	C$platform.c$1878$1_0$772
;src\states\platform.c:1878: UWORD *slot = VM_REF_TO_PTR(FN_ARG2);
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
	ld	hl, #0x0008
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
	ld	hl, #0xfffa
	add	hl, bc
;	genCast
;	genMove_o size 2
	ld	a, l
	ld	e, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _assign_state_script_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$1879$1_0$772	= .
	.globl	C$platform.c$1879$1_0$772
;src\states\platform.c:1879: UBYTE *bank = VM_REF_TO_PTR(FN_ARG1);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0xfffc
	add	hl, bc
;	genCast
;	genMove_o size 2
	ld	a, l
	ld	e, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _assign_state_script_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), e
;	genMove_o size 0
	C$platform.c$1880$1_0$772	= .
	.globl	C$platform.c$1880$1_0$772
;src\states\platform.c:1880: UBYTE **ptr = VM_REF_TO_PTR(FN_ARG0);
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0xfffe
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genCast
;	AOP_STK for _assign_state_script_sloc2_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$platform.c$1881$1_0$772	= .
	.globl	C$platform.c$1881$1_0$772
;src\states\platform.c:1881: state_events[*slot].script_bank = *bank;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _assign_state_script_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genMult
;fetchPairLong
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
;	genPlus
	ld	a, #<(_state_events)
	add	a, l
	ld	c, a
	ld	a, #>(_state_events)
	adc	a, h
	ld	b, a
;	genPointerGet
;	AOP_STK for _assign_state_script_sloc1_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genAssign (pointer)
	ld	(bc), a
	C$platform.c$1882$1_0$772	= .
	.globl	C$platform.c$1882$1_0$772
;src\states\platform.c:1882: state_events[*slot].script_addr = *ptr;
;	genPointerGet
;	AOP_STK for _assign_state_script_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genMult
;fetchPairLong
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_state_events
	add	hl, de
;	genPlus
;	genMove_o size 2
;	genMove_o size 0
; common peephole 69 incremented in hl instead of bc.
	inc	hl
	ld	c, l
	ld	b, h
;	genPointerGet
;	AOP_STK for _assign_state_script_sloc2_1_0
;	AOP_STK for _assign_state_script_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move dec hl before ld a, (de)
	ld	a, (hl-)
	ld	d, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genAssign (pointer)
;	AOP_STK for _assign_state_script_sloc3_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$platform.c$1883$1_0$772	= .
	.globl	C$platform.c$1883$1_0$772
;src\states\platform.c:1883: }
;	genEndFunction
;	adjustStack by 6
	add	sp, #6
	C$platform.c$1883$1_0$772	= .
	.globl	C$platform.c$1883$1_0$772
	XG$assign_state_script$0$0	= .
	.globl	XG$assign_state_script$0$0
	ret
	G$clear_state_script$0$0	= .
	.globl	G$clear_state_script$0$0
	C$platform.c$1885$1_0$774	= .
	.globl	C$platform.c$1885$1_0$774
;src\states\platform.c:1885: void clear_state_script(SCRIPT_CTX * THIS) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function clear_state_script
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_clear_state_script	= 3
_clear_state_script::
	C$platform.c$1886$1_0$774	= .
	.globl	C$platform.c$1886$1_0$774
;src\states\platform.c:1886: UWORD *slot = VM_REF_TO_PTR(FN_ARG0);
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
	ld	hl, #0x0008
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
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0xfffe
	add	hl, bc
;	genMove_o size 2
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
	C$platform.c$1887$1_0$774	= .
	.globl	C$platform.c$1887$1_0$774
;src\states\platform.c:1887: state_events[*slot].script_bank = NULL;
;	skipping iCode since result will be rematerialized
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
;	genMult
;fetchPairLong
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_state_events
	add	hl, de
;	genAssign (pointer)
	ld	(hl), #0x00
	C$platform.c$1888$1_0$774	= .
	.globl	C$platform.c$1888$1_0$774
;src\states\platform.c:1888: state_events[*slot].script_addr = NULL;
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
;	genMult
;fetchPairLong
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_state_events
	add	hl, de
;	genPlus
	inc	hl
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$platform.c$1891$1_0$774	= .
	.globl	C$platform.c$1891$1_0$774
;src\states\platform.c:1891: }
;	genEndFunction
	C$platform.c$1891$1_0$774	= .
	.globl	C$platform.c$1891$1_0$774
	XG$clear_state_script$0$0	= .
	.globl	XG$clear_state_script$0$0
	ret
	.area _CODE_3
	.area _INITIALIZER
	.area _CABS (ABS)
