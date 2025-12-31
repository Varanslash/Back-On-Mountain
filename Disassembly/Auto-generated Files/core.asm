;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module core
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_core_run
	.globl _core_run
	.globl _process_VM
	.globl b_core_reset
	.globl _core_reset
	.globl _core_reset_hook
	.globl b_palette_init
	.globl _palette_init
	.globl b_SIO_init
	.globl _SIO_init
	.globl b_data_load
	.globl _data_load
	.globl b_data_save
	.globl _data_save
	.globl b_data_init
	.globl _data_init
	.globl _state_update
	.globl _state_init
	.globl b_scroll_repaint
	.globl _scroll_repaint
	.globl b_scroll_update
	.globl _scroll_update
	.globl b_scroll_init
	.globl _scroll_init
	.globl b_fade_out_modal
	.globl _fade_out_modal
	.globl b_fade_in_modal
	.globl _fade_in_modal
	.globl b_fade_init
	.globl _fade_init
	.globl _music_events_update
	.globl b_music_init_events
	.globl _music_init_events
	.globl b_music_init_driver
	.globl _music_init_driver
	.globl b_load_player
	.globl _load_player
	.globl b_load_scene
	.globl _load_scene
	.globl b_load_init
	.globl _load_init
	.globl _timers_update
	.globl b_timers_init
	.globl _timers_init
	.globl _events_update
	.globl b_events_init
	.globl _events_init
	.globl _script_runner_update
	.globl b_script_execute
	.globl _script_execute
	.globl b_script_runner_init
	.globl _script_runner_init
	.globl _input_update
	.globl b_input_init
	.globl _input_init
	.globl _ui_update
	.globl b_ui_init
	.globl _ui_init
	.globl _camera_update
	.globl b_camera_init
	.globl _camera_init
	.globl _projectiles_update
	.globl b_player_init
	.globl _player_init
	.globl b_actors_handle_player_collision
	.globl _actors_handle_player_collision
	.globl _actors_update
	.globl b_actors_init
	.globl _actors_init
	.globl _parallax_LCD_isr
	.globl b_parallax_init
	.globl _parallax_init
	.globl _hide_sprites_range
	.globl _ReadBankedUWORD
	.globl _ReadBankedFarPtr
	.globl b_remove_LCD_ISRs
	.globl _remove_LCD_ISRs
	.globl _VBL_isr
	.globl _fullscreen_LCD_isr
	.globl _simple_LCD_isr
	.globl _initrand
	.globl _memset
	.globl _cpu_fast
	.globl _display_off
	.globl _wait_vbl_done
	.globl _add_LCD
	.globl _add_VBL
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
	G$core_reset$0$0	= .
	.globl	G$core_reset$0$0
	C$core.c$42$0_0$452	= .
	.globl	C$core.c$42$0_0$452
;src\core\core.c:42: void core_reset(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function core_reset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_core_reset	= 255
_core_reset::
	C$core.c$44$1_0$452	= .
	.globl	C$core.c$44$1_0$452
;src\core\core.c:44: SIO_init();
;	genCall
	ld	e, #b_SIO_init
	ld	hl, #_SIO_init
	call	___sdcc_bcall_ehl
	C$core.c$45$1_0$452	= .
	.globl	C$core.c$45$1_0$452
;src\core\core.c:45: input_init();
;	genCall
	ld	e, #b_input_init
	ld	hl, #_input_init
	call	___sdcc_bcall_ehl
	C$core.c$46$1_0$452	= .
	.globl	C$core.c$46$1_0$452
;src\core\core.c:46: load_init();
;	genCall
	ld	e, #b_load_init
	ld	hl, #_load_init
	call	___sdcc_bcall_ehl
	C$core.c$47$1_0$452	= .
	.globl	C$core.c$47$1_0$452
;src\core\core.c:47: music_init_driver();
;	genCall
	ld	e, #b_music_init_driver
	ld	hl, #_music_init_driver
	call	___sdcc_bcall_ehl
	C$core.c$48$1_0$452	= .
	.globl	C$core.c$48$1_0$452
;src\core\core.c:48: parallax_init();
;	genCall
	ld	e, #b_parallax_init
	ld	hl, #_parallax_init
	call	___sdcc_bcall_ehl
	C$core.c$49$1_0$452	= .
	.globl	C$core.c$49$1_0$452
;src\core\core.c:49: scroll_init();
;	genCall
	ld	e, #b_scroll_init
	ld	hl, #_scroll_init
	call	___sdcc_bcall_ehl
	C$core.c$50$1_0$452	= .
	.globl	C$core.c$50$1_0$452
;src\core\core.c:50: fade_init();
;	genCall
	ld	e, #b_fade_init
	ld	hl, #_fade_init
	call	___sdcc_bcall_ehl
	C$core.c$51$1_0$452	= .
	.globl	C$core.c$51$1_0$452
;src\core\core.c:51: camera_init();
;	genCall
	ld	e, #b_camera_init
	ld	hl, #_camera_init
	call	___sdcc_bcall_ehl
	C$core.c$52$1_0$452	= .
	.globl	C$core.c$52$1_0$452
;src\core\core.c:52: actors_init();
;	genCall
	ld	e, #b_actors_init
	ld	hl, #_actors_init
	call	___sdcc_bcall_ehl
	C$core.c$53$1_0$452	= .
	.globl	C$core.c$53$1_0$452
;src\core\core.c:53: ui_init();
;	genCall
	ld	e, #b_ui_init
	ld	hl, #_ui_init
	call	___sdcc_bcall_ehl
	C$core.c$54$1_0$452	= .
	.globl	C$core.c$54$1_0$452
;src\core\core.c:54: events_init(FALSE);
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	ld	e, #b_events_init
	ld	hl, #_events_init
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	C$core.c$55$1_0$452	= .
	.globl	C$core.c$55$1_0$452
;src\core\core.c:55: timers_init(FALSE);
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	ld	e, #b_timers_init
	ld	hl, #_timers_init
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	C$core.c$56$1_0$452	= .
	.globl	C$core.c$56$1_0$452
;src\core\core.c:56: music_init_events(FALSE);
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	ld	e, #b_music_init_events
	ld	hl, #_music_init_events
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$core.c$57$1_0$452	= .
	.globl	C$core.c$57$1_0$452
;src\core\core.c:57: }
;	genEndFunction
	C$core.c$57$1_0$452	= .
	.globl	C$core.c$57$1_0$452
	XG$core_reset$0$0	= .
	.globl	XG$core_reset$0$0
	ret
	G$process_VM$0$0	= .
	.globl	G$process_VM$0$0
	C$core.c$59$1_0$454	= .
	.globl	C$core.c$59$1_0$454
;src\core\core.c:59: void process_VM(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function process_VM
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_process_VM::
;	adjustStack by -4
	add	sp, #-4
	C$core.c$60$1_0$454	= .
	.globl	C$core.c$60$1_0$454
;src\core\core.c:60: while (TRUE) {
;	genLabel
00129$:
	C$core.c$61$2_0$455	= .
	.globl	C$core.c$61$2_0$455
;src\core\core.c:61: switch (script_runner_update()) {
;	genCall
	call	_script_runner_update
;	genMove_o size 1
;	genCmpEq
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00260$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00261$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00129$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00262$.
;	skipping generated iCode
;	genCmpEq
	sub	a, #0x03
	jp	Z,00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00263$.
;	skipping generated iCode
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00129$
	C$core.c$63$3_0$456	= .
	.globl	C$core.c$63$3_0$456
;src\core\core.c:63: case RUNNER_IDLE: {                
;	genLabel
00102$:
	C$core.c$64$4_0$457	= .
	.globl	C$core.c$64$4_0$457
;src\core\core.c:64: input_update();
;	genCall
	call	_input_update
	C$core.c$65$4_0$457	= .
	.globl	C$core.c$65$4_0$457
;src\core\core.c:65: if (INPUT_SOFT_RESTART) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
	sub	a, #0xf0
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00264$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00265$.
;	skipping generated iCode
	C$core.c$67$5_0$458	= .
	.globl	C$core.c$67$5_0$458
;src\core\core.c:67: script_runner_init(TRUE);
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_runner_init
	ld	hl, #_script_runner_init
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	C$core.c$69$5_0$458	= .
	.globl	C$core.c$69$5_0$458
;src\core\core.c:69: script_execute(BANK(bootstrap_script), bootstrap_script, 0, 0);
;	genAddrOf
	ld	de, #_bootstrap_script+0
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 1
	ld	b, #<(___bank_bootstrap_script)
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0000
	push	hl
;	genIpush
	push	de
;	genIpush
	push	bc
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 6
	add	sp, #6
	C$core.c$70$5_0$458	= .
	.globl	C$core.c$70$5_0$458
;src\core\core.c:70: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00129$
;	genLabel
00104$:
;include/vm.h:158: return (vm_lock_state != 0);
;	genNot
;fetchLitPair	hl
	ld	hl, #_vm_lock_state
	ld	a, (hl)
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genNot
;	genCast
;	(locations are the same)
	C$core.c$72$6_0$471	= .
	.globl	C$core.c$72$6_0$471
;src\core\core.c:72: if (!VM_ISLOCKED()) {
;	genIfx
	xor	a,#0x01
; common peephole 101 removed redundant or after xor.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00110$
	C$core.c$73$5_0$459	= .
	.globl	C$core.c$73$5_0$459
;src\core\core.c:73: if (joy != 0) events_update();                      // update joypad events (must be the first)
;	genIfx
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
;	genCall
	call	_events_update
;	genLabel
00106$:
	C$core.c$74$5_0$459	= .
	.globl	C$core.c$74$5_0$459
;src\core\core.c:74: state_update();                                     // update current scene, depending on its type
;	genCall
	call	_state_update
	C$core.c$75$5_0$459	= .
	.globl	C$core.c$75$5_0$459
;src\core\core.c:75: if ((game_time & 0x0F) == 0x00) timers_update();    // update timers
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_game_time)
; common peephole 17 loaded a from (#_game_time) directly instead of using hl.
;	genAnd
	and	a, #0x0f
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00266$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00108$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00267$.
;	skipping generated iCode
;	genCall
	call	_timers_update
;	genLabel
00108$:
	C$core.c$76$5_0$459	= .
	.globl	C$core.c$76$5_0$459
;src\core\core.c:76: music_events_update();                              // update music events
;	genCall
	call	_music_events_update
;	genLabel
00110$:
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
; common peephole 158 removed unused label 00268$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00133$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00269$.
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
	jr	00134$
;	genLabel
00133$:
;include/shadow.h:12: __render_shadow_OAM = (UBYTE)((UWORD)&shadow_OAM >> 8);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genGetByte
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #___render_shadow_OAM
	ld	(hl), #>(_shadow_OAM)
;	genLabel
00134$:
;include/shadow.h:14: allocated_hardware_sprites = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_allocated_hardware_sprites
	ld	(hl), #0x00
	C$core.c$81$4_0$457	= .
	.globl	C$core.c$81$4_0$457
;src\core\core.c:81: camera_update();
;	genCall
	call	_camera_update
	C$core.c$82$4_0$457	= .
	.globl	C$core.c$82$4_0$457
;src\core\core.c:82: scroll_update();
;	genCall
	ld	e, #b_scroll_update
	ld	hl, #_scroll_update
	call	___sdcc_bcall_ehl
	C$core.c$83$4_0$457	= .
	.globl	C$core.c$83$4_0$457
;src\core\core.c:83: actors_update();
;	genCall
	call	_actors_update
	C$core.c$84$4_0$457	= .
	.globl	C$core.c$84$4_0$457
;src\core\core.c:84: projectiles_update();                                   // update and render projectiles
;	genCall
	call	_projectiles_update
	C$core.c$86$4_0$457	= .
	.globl	C$core.c$86$4_0$457
;src\core\core.c:86: ui_update();
;	genCall
	call	_ui_update
	C$core.c$87$4_0$457	= .
	.globl	C$core.c$87$4_0$457
;src\core\core.c:87: actors_handle_player_collision();
;	genCall
	ld	e, #b_actors_handle_player_collision
	ld	hl, #_actors_handle_player_collision
	call	___sdcc_bcall_ehl
	C$core.c$89$4_0$457	= .
	.globl	C$core.c$89$4_0$457
;src\core\core.c:89: game_time++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_game_time
	inc	(hl)
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
	C$core.c$93$4_0$457	= .
	.globl	C$core.c$93$4_0$457
;src\core\core.c:93: wait_vbl_done();
;	genCall
	call	_wait_vbl_done
	C$core.c$94$4_0$457	= .
	.globl	C$core.c$94$4_0$457
;src\core\core.c:94: break;
;	genGoto
	jp	00129$
	C$core.c$97$3_0$456	= .
	.globl	C$core.c$97$3_0$456
;src\core\core.c:97: case RUNNER_EXCEPTION: {
;	genLabel
00112$:
	C$core.c$99$4_0$460	= .
	.globl	C$core.c$99$4_0$460
;src\core\core.c:99: switch (vm_exception_code) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_vm_exception_code)
; common peephole 17 loaded a from (#_vm_exception_code) directly instead of using hl.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00270$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_vm_exception_code)
; common peephole 17 loaded a from (#_vm_exception_code) directly instead of using hl.
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00271$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_vm_exception_code)
; common peephole 17 loaded a from (#_vm_exception_code) directly instead of using hl.
	sub	a, #0x03
	jp	Z,00115$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00272$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_vm_exception_code)
; common peephole 17 loaded a from (#_vm_exception_code) directly instead of using hl.
	sub	a, #0x04
	jp	Z,00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00273$.
;	skipping generated iCode
;	genGoto
	jp	00129$
	C$core.c$100$5_0$461	= .
	.globl	C$core.c$100$5_0$461
;src\core\core.c:100: case EXCEPTION_RESET: {
;	genLabel
00113$:
	C$core.c$102$6_0$462	= .
	.globl	C$core.c$102$6_0$462
;src\core\core.c:102: remove_LCD_ISRs();
;	genCall
	ld	e, #b_remove_LCD_ISRs
	ld	hl, #_remove_LCD_ISRs
	call	___sdcc_bcall_ehl
	C$core.c$104$6_0$462	= .
	.globl	C$core.c$104$6_0$462
;src\core\core.c:104: core_reset_hook();
;	genCall
	call	_core_reset_hook
	C$core.c$106$6_0$462	= .
	.globl	C$core.c$106$6_0$462
;src\core\core.c:106: script_runner_init(FALSE);
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_runner_init
	ld	hl, #_script_runner_init
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	C$core.c$108$6_0$462	= .
	.globl	C$core.c$108$6_0$462
;src\core\core.c:108: fade_in = !(load_scene(start_scene.ptr, start_scene.bank, TRUE));
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_start_scene
;	_moveFrom_tpair_()
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_start_scene + 1)
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
	push	bc
	inc	sp
;	genIpush
	push	hl
;	genCall
	ld	e, #b_load_scene
	ld	hl, #_load_scene
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genMove_o size 1
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genCast
;	AOP_STK for _process_VM_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
	C$core.c$110$6_0$462	= .
	.globl	C$core.c$110$6_0$462
;src\core\core.c:110: load_player();
;	genCall
	ld	e, #b_load_player
	ld	hl, #_load_player
	call	___sdcc_bcall_ehl
	C$core.c$111$6_0$462	= .
	.globl	C$core.c$111$6_0$462
;src\core\core.c:111: break;
;	genGoto
	jp	00118$
	C$core.c$113$5_0$461	= .
	.globl	C$core.c$113$5_0$461
;src\core\core.c:113: case EXCEPTION_CHANGE_SCENE: {
;	genLabel
00114$:
	C$core.c$115$6_0$463	= .
	.globl	C$core.c$115$6_0$463
;src\core\core.c:115: remove_LCD_ISRs();
;	genCall
	ld	e, #b_remove_LCD_ISRs
	ld	hl, #_remove_LCD_ISRs
	call	___sdcc_bcall_ehl
	C$core.c$117$6_0$463	= .
	.globl	C$core.c$117$6_0$463
;src\core\core.c:117: script_runner_init(FALSE);
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_runner_init
	ld	hl, #_script_runner_init
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	C$core.c$119$6_0$463	= .
	.globl	C$core.c$119$6_0$463
;src\core\core.c:119: timers_init(FALSE);
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	ld	e, #b_timers_init
	ld	hl, #_timers_init
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	C$core.c$121$6_0$463	= .
	.globl	C$core.c$121$6_0$463
;src\core\core.c:121: events_init(FALSE);
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	ld	e, #b_events_init
	ld	hl, #_events_init
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	C$core.c$123$6_0$463	= .
	.globl	C$core.c$123$6_0$463
;src\core\core.c:123: music_init_events(FALSE);
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	ld	e, #b_music_init_events
	ld	hl, #_music_init_events
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	C$core.c$126$6_1$464	= .
	.globl	C$core.c$126$6_1$464
;src\core\core.c:126: ReadBankedFarPtr(&scene, vm_exception_params_offset, vm_exception_params_bank);
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_vm_exception_params_offset
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vm_exception_params_bank)
; common peephole 17 loaded a from (#_vm_exception_params_bank) directly instead of using hl.
	push	af
	inc	sp
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
	ld	hl, #1
	add	hl, sp
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCall
	call	_ReadBankedFarPtr
	C$core.c$127$6_1$464	= .
	.globl	C$core.c$127$6_1$464
;src\core\core.c:127: fade_in = !(load_scene(scene.ptr, scene.bank, TRUE));
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#0
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genIpush
;	genMove_o size 1
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
;	genIpush
	ld	l, b
; common peephole 38 combined pushing of h and b.
	push	hl
;	genIpush
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	push	bc
;	genCall
	ld	e, #b_load_scene
	ld	hl, #_load_scene
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genMove_o size 1
;	genNot
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genCast
;	AOP_STK for _process_VM_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
	C$core.c$128$6_1$464	= .
	.globl	C$core.c$128$6_1$464
;src\core\core.c:128: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00118$
	C$core.c$130$5_0$461	= .
	.globl	C$core.c$130$5_0$461
;src\core\core.c:130: case EXCEPTION_SAVE: {
;	genLabel
00115$:
;src\core\core.c:131: data_save(ReadBankedUBYTE(vm_exception_params_offset, vm_exception_params_bank));
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vm_exception_params_bank
	ld	c, (hl)
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_vm_exception_params_offset
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
	C$core.c$131$8_0$482	= .
	.globl	C$core.c$131$8_0$482
;src\core\core.c:131: data_save(ReadBankedUBYTE(vm_exception_params_offset, vm_exception_params_bank));
;	genIpush
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_data_save
	ld	hl, #_data_save
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	C$core.c$132$6_0$465	= .
	.globl	C$core.c$132$6_0$465
;src\core\core.c:132: continue;
;	genGoto
	jp	00129$
	C$core.c$134$5_0$461	= .
	.globl	C$core.c$134$5_0$461
;src\core\core.c:134: case EXCEPTION_LOAD: {
;	genLabel
00116$:
	C$core.c$135$6_0$466	= .
	.globl	C$core.c$135$6_0$466
;src\core\core.c:135: fade_out_modal();
;	genCall
	ld	e, #b_fade_out_modal
	ld	hl, #_fade_out_modal
	call	___sdcc_bcall_ehl
	C$core.c$137$6_0$466	= .
	.globl	C$core.c$137$6_0$466
;src\core\core.c:137: remove_LCD_ISRs();
;	genCall
	ld	e, #b_remove_LCD_ISRs
	ld	hl, #_remove_LCD_ISRs
	call	___sdcc_bcall_ehl
;src\core\core.c:139: vm_loaded_state = data_load(ReadBankedUBYTE(vm_exception_params_offset, vm_exception_params_bank));
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vm_exception_params_bank
	ld	c, (hl)
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_vm_exception_params_offset
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	genMove_o size 1
	ld	a, c
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
	C$core.c$139$8_0$485	= .
	.globl	C$core.c$139$8_0$485
;src\core\core.c:139: vm_loaded_state = data_load(ReadBankedUBYTE(vm_exception_params_offset, vm_exception_params_bank));
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_data_load
	ld	hl, #_data_load
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_vm_loaded_state),a
; common peephole 19 loaded (#_vm_loaded_state) from a directly instead of using hl.
	C$core.c$140$6_0$466	= .
	.globl	C$core.c$140$6_0$466
;src\core\core.c:140: load_scene(current_scene.ptr, current_scene.bank, FALSE);
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_current_scene
;	_moveFrom_tpair_()
	ld	c, (hl)
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #(_current_scene + 1)
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
	push	hl
;	genCall
	ld	e, #b_load_scene
	ld	hl, #_load_scene
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
	C$core.c$141$6_0$466	= .
	.globl	C$core.c$141$6_0$466
;src\core\core.c:141: fade_in = FALSE;
;	genAssign
;	AOP_STK for _process_VM_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), #0x00
	C$core.c$148$4_0$460	= .
	.globl	C$core.c$148$4_0$460
;src\core\core.c:148: }
;	genLabel
00118$:
	C$core.c$163$4_0$460	= .
	.globl	C$core.c$163$4_0$460
;src\core\core.c:163: }
;	genCritical
	di
	C$core.c$151$5_0$468	= .
	.globl	C$core.c$151$5_0$468
;src\core\core.c:151: switch (scene_LCD_type) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_scene_LCD_type)
; common peephole 17 loaded a from (#_scene_LCD_type) directly instead of using hl.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00119$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00275$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_scene_LCD_type)
; common peephole 17 loaded a from (#_scene_LCD_type) directly instead of using hl.
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00120$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00276$.
;	skipping generated iCode
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00121$
	C$core.c$152$6_0$469	= .
	.globl	C$core.c$152$6_0$469
;src\core\core.c:152: case LCD_parallax: 
;	genLabel
00119$:
	C$core.c$153$6_0$469	= .
	.globl	C$core.c$153$6_0$469
;src\core\core.c:153: add_LCD(parallax_LCD_isr);
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_parallax_LCD_isr
;	genCall
	call	_add_LCD
	C$core.c$154$6_0$469	= .
	.globl	C$core.c$154$6_0$469
;src\core\core.c:154: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00122$
	C$core.c$155$6_0$469	= .
	.globl	C$core.c$155$6_0$469
;src\core\core.c:155: case LCD_fullscreen:
;	genLabel
00120$:
	C$core.c$156$6_0$469	= .
	.globl	C$core.c$156$6_0$469
;src\core\core.c:156: add_LCD(fullscreen_LCD_isr);
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_fullscreen_LCD_isr
;	genCall
	call	_add_LCD
	C$core.c$157$6_0$469	= .
	.globl	C$core.c$157$6_0$469
;src\core\core.c:157: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00122$
	C$core.c$158$6_0$469	= .
	.globl	C$core.c$158$6_0$469
;src\core\core.c:158: default:
;	genLabel
00121$:
	C$core.c$159$6_0$469	= .
	.globl	C$core.c$159$6_0$469
;src\core\core.c:159: add_LCD(simple_LCD_isr);
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_simple_LCD_isr
;	genCall
	call	_add_LCD
	C$core.c$161$5_0$468	= .
	.globl	C$core.c$161$5_0$468
;src\core\core.c:161: }
;	genLabel
00122$:
	C$core.c$162$5_0$468	= .
	.globl	C$core.c$162$5_0$468
;src\core\core.c:162: LYC_REG = 0u;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_LYC_REG + 0), a
;	genEndCritical
	ei
	C$core.c$164$4_0$460	= .
	.globl	C$core.c$164$4_0$460
;src\core\core.c:164: if (!hide_sprites) SHOW_SPRITES;    // show sprites back if we switched LCD ISR while sprites were hidden 
;	genIfx
;fetchLitPair	hl
	ld	a, (#_hide_sprites)
; common peephole 17 loaded a from (#_hide_sprites) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00124$
;	genOr
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genLabel
00124$:
	C$core.c$166$4_0$460	= .
	.globl	C$core.c$166$4_0$460
;src\core\core.c:166: player_init();
;	genCall
	ld	e, #b_player_init
	ld	hl, #_player_init
	call	___sdcc_bcall_ehl
	C$core.c$167$4_0$460	= .
	.globl	C$core.c$167$4_0$460
;src\core\core.c:167: state_init();
;	genCall
	call	_state_init
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
; common peephole 158 removed unused label 00278$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00140$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00279$.
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
	jr	00141$
;	genLabel
00140$:
;include/shadow.h:12: __render_shadow_OAM = (UBYTE)((UWORD)&shadow_OAM >> 8);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genGetByte
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #___render_shadow_OAM
	ld	(hl), #>(_shadow_OAM)
;	genLabel
00141$:
;include/shadow.h:14: allocated_hardware_sprites = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_allocated_hardware_sprites
	ld	(hl), #0x00
	C$core.c$169$4_0$460	= .
	.globl	C$core.c$169$4_0$460
;src\core\core.c:169: camera_update();
;	genCall
	call	_camera_update
	C$core.c$170$4_0$460	= .
	.globl	C$core.c$170$4_0$460
;src\core\core.c:170: scroll_repaint();
;	genCall
	ld	e, #b_scroll_repaint
	ld	hl, #_scroll_repaint
	call	___sdcc_bcall_ehl
	C$core.c$171$4_0$460	= .
	.globl	C$core.c$171$4_0$460
;src\core\core.c:171: actors_update();
;	genCall
	call	_actors_update
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
	C$core.c$175$4_0$460	= .
	.globl	C$core.c$175$4_0$460
;src\core\core.c:175: if (fade_in) fade_in_modal();
;	genIfx
;	AOP_STK for _process_VM_sloc0_1_0
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	jp	Z, 00129$
;	genCall
	ld	e, #b_fade_in_modal
	ld	hl, #_fade_in_modal
	call	___sdcc_bcall_ehl
	C$core.c$177$1_0$454	= .
	.globl	C$core.c$177$1_0$454
;src\core\core.c:177: }
;	genGoto
	jp	00129$
;	genLabel
; common peephole 158 removed unused label 00144$.
	C$core.c$179$1_0$454	= .
	.globl	C$core.c$179$1_0$454
;src\core\core.c:179: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$core.c$179$1_0$454	= .
	.globl	C$core.c$179$1_0$454
	XG$process_VM$0$0	= .
	.globl	XG$process_VM$0$0
	ret
	G$core_run$0$0	= .
	.globl	G$core_run$0$0
	C$core.c$181$1_0$496	= .
	.globl	C$core.c$181$1_0$496
;src\core\core.c:181: void core_run(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function core_run
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_core_run	= 255
_core_run::
	C$core.c$191$1_0$496	= .
	.globl	C$core.c$191$1_0$496
;src\core\core.c:191: _is_SGB = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #__is_SGB
	ld	(hl), #0x00
	C$core.c$192$1_0$496	= .
	.globl	C$core.c$192$1_0$496
;src\core\core.c:192: _is_CGB = ((_cpu == CGB_TYPE) && (*(UBYTE *)0x0143 & 0x80));
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#__cpu)
; common peephole 17 loaded a from (#__cpu) directly instead of using hl.
	sub	a, #0x11
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00146$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00106$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00147$.
;	skipping generated iCode
;	genPointerGet
;fetchPairLong
;fetchLitPair	hl
;	_moveFrom_tpair_()
;	genGetAbit
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (#0x0143)
; common peephole 17 loaded a from (#0x0143) directly instead of using hl.
;	genMove_o size 0
;	genIfx
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 0a removed redundant load from a into a.
; common peephole 100 removed redundant or after and.
; common peephole 90b removed and by changing jump condition.
	rlca
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00107$
;	genLabel
00106$:
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00107$:
;	genAssign
;	genMove_o size 1
	ld	a, #0x01
;	genLabel
00108$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#__is_CGB),a
; common peephole 19 loaded (#__is_CGB) from a directly instead of using hl.
	C$core.c$195$1_0$496	= .
	.globl	C$core.c$195$1_0$496
;src\core\core.c:195: _is_GBA = (_is_GBA && _is_CGB);
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_GBA)
; common peephole 17 loaded a from (#__is_GBA) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00110$
;	genLabel
00109$:
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;	genLabel
00110$:
;	genAssign
;	genMove_o size 1
	ld	a, #0x01
;	genLabel
00111$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#__is_GBA),a
; common peephole 19 loaded (#__is_GBA) from a directly instead of using hl.
	C$core.c$198$1_0$496	= .
	.globl	C$core.c$198$1_0$496
;src\core\core.c:198: if (_is_CGB) cpu_fast();
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	genCall
	call	_cpu_fast
;	genLabel
00102$:
	C$core.c$201$1_0$496	= .
	.globl	C$core.c$201$1_0$496
;src\core\core.c:201: memset(shadow_OAM2, 0, sizeof(shadow_OAM2));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
; sm83 peephole 18d pushed #0x00a0 faster
	xor	a, a
	and	a
	push	af
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_shadow_OAM2
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
	C$core.c$203$1_0$496	= .
	.globl	C$core.c$203$1_0$496
;src\core\core.c:203: data_init();
;	genCall
	ld	e, #b_data_init
	ld	hl, #_data_init
	call	___sdcc_bcall_ehl
	C$core.c$205$1_0$496	= .
	.globl	C$core.c$205$1_0$496
;src\core\core.c:205: display_off();
;	genCall
	call	_display_off
	C$core.c$206$1_0$496	= .
	.globl	C$core.c$206$1_0$496
;src\core\core.c:206: palette_init();
;	genCall
	ld	e, #b_palette_init
	ld	hl, #_palette_init
	call	___sdcc_bcall_ehl
	C$core.c$208$1_0$496	= .
	.globl	C$core.c$208$1_0$496
;src\core\core.c:208: LCDC_REG = LCDCF_OFF | LCDCF_WIN9C00 | LCDCF_WINON | LCDCF_BG8800 | LCDCF_BG9800 | LCDCF_OBJ16 | LCDCF_OBJON | LCDCF_BGON;
;	genAssign
	ld	a, #0x67
	ldh	(_LCDC_REG + 0), a
	C$core.c$210$1_0$496	= .
	.globl	C$core.c$210$1_0$496
;src\core\core.c:210: WX_REG = DEVICE_WINDOW_PX_OFFSET_X;
;	genAssign
	ld	a, #0x07
	ldh	(_WX_REG + 0), a
	C$core.c$211$1_0$496	= .
	.globl	C$core.c$211$1_0$496
;src\core\core.c:211: WY_REG = MENU_CLOSED_Y;
;	genAssign
	ld	a, #0x90
	ldh	(_WY_REG + 0), a
	C$core.c$213$1_0$496	= .
	.globl	C$core.c$213$1_0$496
;src\core\core.c:213: initrand(DIV_REG);
;	genCast
;	genMove_o size 1
	ldh	a, (_DIV_REG + 0)
;	genMove_o size 1
	ld	b, #0x00
;	genIpush
;	genMove_o size 2
	ld	c, a
;	genMove_o size 0
	push	bc
;	genCall
;	adjustStack by 2
	call	_initrand
; peephole sp10c increased SP by 2 through pop
	pop	hl
	C$core.c$216$1_0$496	= .
	.globl	C$core.c$216$1_0$496
;src\core\core.c:216: core_reset_hook();
;	genCall
	call	_core_reset_hook
	C$core.c$218$1_0$496	= .
	.globl	C$core.c$218$1_0$496
;src\core\core.c:218: script_runner_init(TRUE);
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_runner_init
	ld	hl, #_script_runner_init
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	C$core.c$229$1_0$496	= .
	.globl	C$core.c$229$1_0$496
;src\core\core.c:229: }
;	genCritical
	di
	C$core.c$221$2_0$497	= .
	.globl	C$core.c$221$2_0$497
;src\core\core.c:221: parallax_row = parallax_rows;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_parallax_row
	ld	(hl), #<(_parallax_rows)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_parallax_rows)
	C$core.c$222$2_0$497	= .
	.globl	C$core.c$222$2_0$497
;src\core\core.c:222: LYC_REG = 0u;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_LYC_REG + 0), a
	C$core.c$224$2_0$497	= .
	.globl	C$core.c$224$2_0$497
;src\core\core.c:224: add_VBL(VBL_isr);
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_VBL_isr
;	genCall
	call	_add_VBL
	C$core.c$225$2_0$497	= .
	.globl	C$core.c$225$2_0$497
;src\core\core.c:225: STAT_REG |= STATF_LYC; 
;	genOr
	ldh	a, (_STAT_REG + 0)
	or	a, #0x40
;	genMove_o size 1
	ldh	(_STAT_REG + 0), a
;include/music_manager.h:103: TMA_REG = ((_cpu == CGB_TYPE) && (*(uint8_t *)0x0143 & 0x80)) ? 0x80u : 0xC0u;
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#__cpu)
; common peephole 17 loaded a from (#__cpu) directly instead of using hl.
	sub	a, #0x11
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00149$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00112$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00150$.
;	skipping generated iCode
;	genPointerGet
;fetchPairLong
;fetchLitPair	hl
;	_moveFrom_tpair_()
;	genGetAbit
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (#0x0143)
; common peephole 17 loaded a from (#0x0143) directly instead of using hl.
	rlca
	and	a, #0x01
;	genMove_o size 0
;	genIfx
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	or	a, a
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00113$
00112$:
	ld	a, #0xc0
; common peephole 168z used double assignment in case of Z condition.
00113$:
;	genCast
	ldh	(_TMA_REG + 0), a
;include/music_manager.h:104: TAC_REG = 0x07u;
;	genAssign
	ld	a, #0x07
	ldh	(_TAC_REG + 0), a
	C$core.c$228$2_0$497	= .
	.globl	C$core.c$228$2_0$497
;src\core\core.c:228: IE_REG |= (TIM_IFLAG | LCD_IFLAG | SIO_IFLAG);
;	genOr
	ldh	a, (_IE_REG + 0)
	or	a, #0x0e
;	genMove_o size 1
	ldh	(_IE_REG + 0), a
;	genEndCritical
	ei
	C$core.c$230$1_0$496	= .
	.globl	C$core.c$230$1_0$496
;src\core\core.c:230: DISPLAY_ON;
;	genOr
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
	C$core.c$233$1_0$496	= .
	.globl	C$core.c$233$1_0$496
;src\core\core.c:233: script_execute(BANK(bootstrap_script), bootstrap_script, 0, 0);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 1
	ld	b, #<(___bank_bootstrap_script)
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
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_bootstrap_script
	push	de
;	genIpush
	push	bc
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 6
	add	sp, #6
	C$core.c$236$1_0$496	= .
	.globl	C$core.c$236$1_0$496
;src\core\core.c:236: process_VM();
;	genCall
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$core.c$237$1_0$496	= .
	.globl	C$core.c$237$1_0$496
;src\core\core.c:237: }
;	genEndFunction
	C$core.c$237$1_0$496	= .
	.globl	C$core.c$237$1_0$496
	XG$core_run$0$0	= .
	.globl	XG$core_run$0$0
	jp	_process_VM
; common peephole 152 removed unused ret.
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
