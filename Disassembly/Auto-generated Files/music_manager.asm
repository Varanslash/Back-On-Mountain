;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module music_manager
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _hUGETrackerRoutine
	.globl _hUGE_dosound
	.globl _hUGE_init
	.globl _sfx_play_isr
	.globl b_script_execute
	.globl _script_execute
	.globl _memset
	.globl _music_sfx_priority
	.globl _music_global_mute_mask
	.globl _music_play_isr_pause
	.globl _music_play_isr_counter
	.globl _music_current_track
	.globl _music_next_track
	.globl _music_effective_mute
	.globl _music_mute_mask
	.globl _music_current_track_bank
	.globl _music_events
	.globl _routine_queue_tail
	.globl _routine_queue_head
	.globl _routine_queue
	.globl b_music_init_driver
	.globl _music_init_driver
	.globl b_music_init_events
	.globl _music_init_events
	.globl _music_events_update
	.globl b_music_events_poll
	.globl _music_events_poll
	.globl _music_play_isr
	.globl _music_pause
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$routine_queue$0_0$0==.
_routine_queue::
	.ds 4
G$routine_queue_head$0_0$0==.
_routine_queue_head::
	.ds 1
G$routine_queue_tail$0_0$0==.
_routine_queue_tail::
	.ds 1
G$music_events$0_0$0==.
_music_events::
	.ds 20
G$music_current_track_bank$0_0$0==.
_music_current_track_bank::
	.ds 1
G$music_mute_mask$0_0$0==.
_music_mute_mask::
	.ds 1
G$music_effective_mute$0_0$0==.
_music_effective_mute::
	.ds 1
G$music_next_track$0_0$0==.
_music_next_track::
	.ds 2
G$music_current_track$0_0$0==.
_music_current_track::
	.ds 2
G$music_play_isr_counter$0_0$0==.
_music_play_isr_counter::
	.ds 1
G$music_play_isr_pause$0_0$0==.
_music_play_isr_pause::
	.ds 1
G$music_global_mute_mask$0_0$0==.
_music_global_mute_mask::
	.ds 1
G$music_sfx_priority$0_0$0==.
_music_sfx_priority::
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
	G$hUGETrackerRoutine$0$0	= .
	.globl	G$hUGETrackerRoutine$0$0
	C$music_manager.c$30$0_0$284	= .
	.globl	C$music_manager.c$30$0_0$284
;src\core\music_manager.c:30: void hUGETrackerRoutine(unsigned char tick, unsigned int param) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function hUGETrackerRoutine
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_hUGETrackerRoutine::
;	genReceive
;	genMove_o size 1
;	genReceive
;	genMove_o size 2
	C$music_manager.c$31$1_0$284	= .
	.globl	C$music_manager.c$31$1_0$284
;src\core\music_manager.c:31: if (tick) return; // return if not zero tick
;	genIfx
	or	a, a
;	genRet
;	genLabel
	ret	NZ
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
	C$music_manager.c$32$1_0$284	= .
	.globl	C$music_manager.c$32$1_0$284
;src\core\music_manager.c:32: routine_queue_head++, routine_queue_head &= (MAX_ROUTINE_QUEUE_LEN - 1);
;	genPlus
;fetchLitPair	hl
	ld	hl, #_routine_queue_head
	inc	(hl)
;	genAnd
;fetchLitPair	hl
	ld	a, (hl)
	and	a, #0x03
;	genMove_o size 1
;fetchLitPair	hl
	C$music_manager.c$33$1_0$284	= .
	.globl	C$music_manager.c$33$1_0$284
;src\core\music_manager.c:33: if (routine_queue_head == routine_queue_tail) routine_queue_tail++, routine_queue_tail &= (MAX_ROUTINE_QUEUE_LEN - 1);
;	genCmpEq
;fetchLitPair	hl
	ld	(hl), a
; common peephole 98 removed redundant load from (hl) into a.
;fetchLitPair	hl
	ld	hl, #_routine_queue_tail
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00119$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00120$.
;	skipping generated iCode
;	genPlus
;fetchLitPair	hl
	ld	hl, #_routine_queue_tail
	inc	(hl)
;	genAnd
;fetchLitPair	hl
	ld	a, (hl)
	and	a, #0x03
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genLabel
00104$:
	C$music_manager.c$34$1_0$284	= .
	.globl	C$music_manager.c$34$1_0$284
;src\core\music_manager.c:34: routine_queue[routine_queue_head] = (uint8_t)param;
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	a, #<(_routine_queue)
;fetchLitPair	hl
	ld	hl, #_routine_queue_head
	add	a, (hl)
	ld	c, a
	ld	a, #>(_routine_queue)
	adc	a, #0x00
	ld	b, a
;	genCast
;	genMove_o size 1
	ld	a, e
;	genMove_o size 0
;	genAssign (pointer)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00105$.
	C$music_manager.c$35$1_0$284	= .
	.globl	C$music_manager.c$35$1_0$284
;src\core\music_manager.c:35: }
;	genEndFunction
	C$music_manager.c$35$1_0$284	= .
	.globl	C$music_manager.c$35$1_0$284
	XG$hUGETrackerRoutine$0$0	= .
	.globl	XG$hUGETrackerRoutine$0$0
	ret
	G$music_events_update$0$0	= .
	.globl	G$music_events_update$0$0
	C$music_manager.c$58$2_0$312	= .
	.globl	C$music_manager.c$58$2_0$312
;src\core\music_manager.c:58: void music_events_update(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function music_events_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_music_events_update::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$music_manager.c$59$3_0$314	= .
	.globl	C$music_manager.c$59$3_0$314
;src\core\music_manager.c:59: while (routine_queue_head != routine_queue_tail) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00106$:
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_routine_queue_head)
; common peephole 17 loaded a from (#_routine_queue_head) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_routine_queue_tail
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00135$.
;	skipping generated iCode
	C$music_manager.c$64$2_0$313	= .
	.globl	C$music_manager.c$64$2_0$313
;src\core\music_manager.c:64: }
;	genCritical
	di
	C$music_manager.c$62$3_0$314	= .
	.globl	C$music_manager.c$62$3_0$314
;src\core\music_manager.c:62: routine_queue_tail++, routine_queue_tail &= (MAX_ROUTINE_QUEUE_LEN - 1);
;	genPlus
;fetchLitPair	hl
	ld	hl, #_routine_queue_tail
	inc	(hl)
;	genAnd
;fetchLitPair	hl
	ld	a, (hl)
	and	a, #0x03
;	genMove_o size 1
;fetchLitPair	hl
	C$music_manager.c$63$3_0$314	= .
	.globl	C$music_manager.c$63$3_0$314
;src\core\music_manager.c:63: data = routine_queue[routine_queue_tail];
;	genPlus
;fetchLitPair	hl
	ld	(hl), a
; common peephole 118 removed load by exploiting commutativity of addition.
	add	a,#<(_routine_queue)
	ld	c, a
	ld	a, #>(_routine_queue)
	adc	a, #0x00
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genEndCritical
	ei
	C$music_manager.c$65$2_1$315	= .
	.globl	C$music_manager.c$65$2_1$315
;src\core\music_manager.c:65: script_event_t * event = &music_events[data & 0x03];
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into b.
;	genAnd
	and	a, #0x03
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genMult
;fetchPairLong
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
;	genMove_o size 2
;	genPlus
	ld	a, #<(_music_events)
	add	a, l
	ld	b, a
	ld	a, #>(_music_events)
	adc	a, h
;	genCast
;	AOP_STK for _music_events_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), b
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$music_manager.c$66$2_1$315	= .
	.globl	C$music_manager.c$66$2_1$315
;src\core\music_manager.c:66: if (!event->script_addr) return;
;	genPlus
;	AOP_STK for _music_events_update_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genIfx
	or	a, b
;	genRet
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
	C$music_manager.c$67$2_1$315	= .
	.globl	C$music_manager.c$67$2_1$315
;src\core\music_manager.c:67: if ((event->handle == 0) || ((event->handle & SCRIPT_TERMINATED) != 0))
;	genPointerGet
;	AOP_STK for _music_events_update_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genIfx
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	genPointerGet
;	AOP_STK for _music_events_update_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
; common peephole 1 removed dead load from (de) into a.
; common peephole 1 removed dead load from a into b.
	inc	de
	ld	a, (de)
;	genAnd
	rlca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00106$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00138$.
;	skipping generated iCode
;	genLabel
00103$:
	C$music_manager.c$68$2_1$315	= .
	.globl	C$music_manager.c$68$2_1$315
;src\core\music_manager.c:68: script_execute(event->script_bank, event->script_addr, &event->handle, 1, (uint16_t)(data >> 4));
;	genRightShift
	ld	a, c
	swap	a
	and	a, #0x0f
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genPlus
;	AOP_STK for _music_events_update_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
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
;	AOP_STK for _music_events_update_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
	ld	a, (hl)
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 1
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
;	AOP_STK for _music_events_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#3
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
;	adjustStack by 8
	add	sp, #8
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00109$:
	C$music_manager.c$70$1_0$312	= .
	.globl	C$music_manager.c$70$1_0$312
;src\core\music_manager.c:70: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$music_manager.c$70$1_0$312	= .
	.globl	C$music_manager.c$70$1_0$312
	XG$music_events_update$0$0	= .
	.globl	XG$music_events_update$0$0
	ret
	G$music_play_isr$0$0	= .
	.globl	G$music_play_isr$0$0
	C$music_manager.c$84$1_0$321	= .
	.globl	C$music_manager.c$84$1_0$321
;src\core\music_manager.c:84: void music_play_isr(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function music_play_isr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_music_play_isr::
	C$music_manager.c$85$1_0$321	= .
	.globl	C$music_manager.c$85$1_0$321
;src\core\music_manager.c:85: if (sfx_play_bank != SFX_STOP_BANK) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_sfx_play_bank)
; common peephole 17 loaded a from (#_sfx_play_bank) directly instead of using hl.
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00166$.
;	skipping generated iCode
	C$music_manager.c$86$2_0$322	= .
	.globl	C$music_manager.c$86$2_0$322
;src\core\music_manager.c:86: if (music_effective_mute != (music_global_mute_mask | music_mute_mask)) {
;	genOr
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (#_music_global_mute_mask)
; common peephole 17 loaded a from (#_music_global_mute_mask) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_music_mute_mask
	or	a, (hl)
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_music_effective_mute)
; common peephole 17 loaded a from (#_music_effective_mute) directly instead of using hl.
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00167$.
;	skipping generated iCode
;src\core\music_manager.c:87: music_effective_mute = driver_set_mute_mask(music_global_mute_mask | music_mute_mask);
;	genOr
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_music_global_mute_mask)
; common peephole 17 loaded a from (#_music_global_mute_mask) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_music_mute_mask
	or	a, (hl)
;	genMove_o size 1
;include/music_manager.h:44: return (hUGE_mute_mask = mute_mask);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_hUGE_mute_mask),a
; common peephole 19 loaded (#_hUGE_mute_mask) from a directly instead of using hl.
	C$music_manager.c$87$5_0$328	= .
	.globl	C$music_manager.c$87$5_0$328
;src\core\music_manager.c:87: music_effective_mute = driver_set_mute_mask(music_global_mute_mask | music_mute_mask);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_music_effective_mute),a
; common peephole 19 loaded (#_music_effective_mute) from a directly instead of using hl.
;	genLabel
00102$:
	C$music_manager.c$89$2_0$322	= .
	.globl	C$music_manager.c$89$2_0$322
;src\core\music_manager.c:89: if (!sfx_play_isr()) {
;	genCall
	call	_sfx_play_isr
;	genMove_o size 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00106$
;src\core\music_manager.c:90: music_effective_mute = driver_set_mute_mask(music_global_mute_mask);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_music_global_mute_mask)
; common peephole 17 loaded a from (#_music_global_mute_mask) directly instead of using hl.
;include/music_manager.h:44: return (hUGE_mute_mask = mute_mask);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_hUGE_mute_mask),a
; common peephole 19 loaded (#_hUGE_mute_mask) from a directly instead of using hl.
	C$music_manager.c$90$5_0$331	= .
	.globl	C$music_manager.c$90$5_0$331
;src\core\music_manager.c:90: music_effective_mute = driver_set_mute_mask(music_global_mute_mask);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_music_effective_mute),a
; common peephole 19 loaded (#_music_effective_mute) from a directly instead of using hl.
;include/hUGEDriver.h:139: hUGE_current_wave = 100;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_hUGE_current_wave
	ld	(hl), #0x64
	C$music_manager.c$95$3_0$324	= .
	.globl	C$music_manager.c$95$3_0$324
;src\core\music_manager.c:95: music_mute_mask = MUTE_MASK_NONE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_mute_mask
	ld	(hl), #0x00
	C$music_manager.c$96$3_0$324	= .
	.globl	C$music_manager.c$96$3_0$324
;src\core\music_manager.c:96: music_sfx_priority = MUSIC_SFX_PRIORITY_MINIMAL;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_sfx_priority
	ld	(hl), #0x00
	C$music_manager.c$97$3_0$324	= .
	.globl	C$music_manager.c$97$3_0$324
;src\core\music_manager.c:97: sfx_play_bank = SFX_STOP_BANK;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_sfx_play_bank
	ld	(hl), #0xff
;	genLabel
00106$:
	C$music_manager.c$100$1_0$321	= .
	.globl	C$music_manager.c$100$1_0$321
;src\core\music_manager.c:100: if (music_play_isr_pause) return;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_music_play_isr_pause)
; common peephole 17 loaded a from (#_music_play_isr_pause) directly instead of using hl.
	or	a, a
;	genRet
;	genLabel
	ret	NZ
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00108$.
	C$music_manager.c$101$1_0$321	= .
	.globl	C$music_manager.c$101$1_0$321
;src\core\music_manager.c:101: if (music_current_track_bank == MUSIC_STOP_BANK) return;
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_music_current_track_bank)
; common peephole 17 loaded a from (#_music_current_track_bank) directly instead of using hl.
	inc	a
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 84 jumped to 00122$ directly instead of via 00169$.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00168$.
;	skipping generated iCode
;	genRet
; common peephole 87b removed unreachable jump to 00122$
;	genLabel
; common peephole 85a eliminated jump.
; common peephole 158 removed unused label 00110$.
	C$music_manager.c$102$1_0$321	= .
	.globl	C$music_manager.c$102$1_0$321
;src\core\music_manager.c:102: if (++music_play_isr_counter & 3) return;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_music_play_isr_counter
	inc	(hl)
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;	genAnd
	and	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00170$.
;	skipping generated iCode
;	genRet
;	genLabel
	ret	NZ
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00112$.
	C$music_manager.c$103$2_0$325	= .
	.globl	C$music_manager.c$103$2_0$325
;src\core\music_manager.c:103: uint8_t save_bank = CURRENT_BANK;
;	genAssign
	ldh	a, (__current_bank + 0)
	ld	c, a
	C$music_manager.c$104$1_1$325	= .
	.globl	C$music_manager.c$104$1_1$325
;src\core\music_manager.c:104: SWITCH_ROM(music_current_track_bank);
;	genAssign
;fetchLitPair	hl
	ld	hl, #_music_current_track_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$music_manager.c$105$1_1$325	= .
	.globl	C$music_manager.c$105$1_1$325
;src\core\music_manager.c:105: if (music_next_track) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_music_next_track + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
;include/sfx_player.h:22: NR12_REG = NR22_REG = NR32_REG = NR42_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR42_REG + 0), a
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR32_REG + 0), a
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR22_REG + 0), a
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR12_REG + 0), a
;include/sfx_player.h:23: NR14_REG = NR24_REG = NR44_REG = SFX_CH_RETRIGGER;
;	genAssign
	ld	a, #0xc0
	ldh	(_NR44_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR24_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR14_REG + 0), a
;include/sfx_player.h:24: NR51_REG = 0xFF;
;	genAssign
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;src\core\music_manager.c:107: driver_init(music_current_track_bank, music_next_track, TRUE);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genDummyRead
;fetchLitPair	hl
	ld	a, (#_music_current_track_bank)
; common peephole 17 loaded a from (#_music_current_track_bank) directly instead of using hl.
;include/music_manager.h:40: hUGE_init(track);
;	genSend
	push	bc
;	genMove_o size 2
;	genCall
	call	_hUGE_init
	pop	bc
	C$music_manager.c$108$2_1$326	= .
	.globl	C$music_manager.c$108$2_1$326
;src\core\music_manager.c:108: music_next_track = NULL;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_music_next_track
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;	genLabel
00114$:
	C$music_manager.c$109$1_1$325	= .
	.globl	C$music_manager.c$109$1_1$325
;src\core\music_manager.c:109: } else driver_update();
;	genCall
	push	bc
	call	_hUGE_dosound
	pop	bc
;	genLabel
00115$:
	C$music_manager.c$110$1_1$325	= .
	.globl	C$music_manager.c$110$1_1$325
;src\core\music_manager.c:110: SWITCH_ROM(save_bank);
;	genAssign
	ld	a, c
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_rROMB0
	ld	(hl), c
;	genLabel
; common peephole 158 removed unused label 00122$.
	C$music_manager.c$111$1_1$321	= .
	.globl	C$music_manager.c$111$1_1$321
;src\core\music_manager.c:111: }
;	genEndFunction
	C$music_manager.c$111$1_1$321	= .
	.globl	C$music_manager.c$111$1_1$321
	XG$music_play_isr$0$0	= .
	.globl	XG$music_play_isr$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$music_init_driver$0$0	= .
	.globl	G$music_init_driver$0$0
	C$music_manager.c$38$1_0$286	= .
	.globl	C$music_manager.c$38$1_0$286
;src\core\music_manager.c:38: void music_init_driver(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function music_init_driver
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_music_init_driver	= 255
_music_init_driver::
;include/music_manager.h:108: music_current_track_bank = MUSIC_STOP_BANK;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_current_track_bank
	ld	(hl), #0xff
;include/sfx_player.h:42: sfx_play_bank = SFX_STOP_BANK, sfx_play_sample = NULL;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_sfx_play_bank
	ld	(hl), #0xff
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_sfx_play_sample
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;include/sfx_player.h:18: NR52_REG = SFX_CH_ENABLE, NR51_REG = 0xFF, NR50_REG = 0x77;  // enable sound
;	genAssign
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;	genAssign
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;	genAssign
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;include/sfx_player.h:22: NR12_REG = NR22_REG = NR32_REG = NR42_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR42_REG + 0), a
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR32_REG + 0), a
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR22_REG + 0), a
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR12_REG + 0), a
;include/sfx_player.h:23: NR14_REG = NR24_REG = NR44_REG = SFX_CH_RETRIGGER;
;	genAssign
	ld	a, #0xc0
	ldh	(_NR44_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR24_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR14_REG + 0), a
;include/sfx_player.h:24: NR51_REG = 0xFF;
;	genAssign
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
	C$music_manager.c$40$1_0$286	= .
	.globl	C$music_manager.c$40$1_0$286
;src\core\music_manager.c:40: music_play_isr_counter = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_play_isr_counter
	ld	(hl), #0x00
	C$music_manager.c$41$1_0$286	= .
	.globl	C$music_manager.c$41$1_0$286
;src\core\music_manager.c:41: music_play_isr_pause = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_play_isr_pause
	ld	(hl), #0x00
;src\core\music_manager.c:42: driver_set_mute_mask(music_effective_mute = music_global_mute_mask = music_mute_mask = MUTE_MASK_NONE);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_mute_mask
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_global_mute_mask
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_effective_mute
	ld	(hl), #0x00
;include/music_manager.h:44: return (hUGE_mute_mask = mute_mask);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_hUGE_mute_mask
	ld	(hl), #0x00
	C$music_manager.c$43$1_0$286	= .
	.globl	C$music_manager.c$43$1_0$286
;src\core\music_manager.c:43: music_sfx_priority = MUSIC_SFX_PRIORITY_MINIMAL;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_sfx_priority
	ld	(hl), #0x00
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$music_manager.c$44$1_0$286	= .
	.globl	C$music_manager.c$44$1_0$286
;src\core\music_manager.c:44: }
;	genEndFunction
	C$music_manager.c$44$1_0$286	= .
	.globl	C$music_manager.c$44$1_0$286
	XG$music_init_driver$0$0	= .
	.globl	XG$music_init_driver$0$0
	ret
	G$music_init_events$0$0	= .
	.globl	G$music_init_events$0$0
	C$music_manager.c$46$1_0$306	= .
	.globl	C$music_manager.c$46$1_0$306
;src\core\music_manager.c:46: void music_init_events(uint8_t preserve) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function music_init_events
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_music_init_events	= 255
_music_init_events::
	C$music_manager.c$47$1_0$306	= .
	.globl	C$music_manager.c$47$1_0$306
;src\core\music_manager.c:47: if (preserve) {
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#6
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
	C$music_manager.c$48$3_0$308	= .
	.globl	C$music_manager.c$48$3_0$308
;src\core\music_manager.c:48: for (uint8_t i = 0; i < 4; i++)
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1
	ld	c, #0x00
;	genLabel
00106$:
;	genCmpLt
	ld	a, c
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00104$
;	skipping generated iCode
	C$music_manager.c$49$3_0$308	= .
	.globl	C$music_manager.c$49$3_0$308
;src\core\music_manager.c:49: music_events[i].handle = 0;
;	genMult
;fetchPairLong
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_music_events
	add	hl, de
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$music_manager.c$48$3_0$308	= .
	.globl	C$music_manager.c$48$3_0$308
;src\core\music_manager.c:48: for (uint8_t i = 0; i < 4; i++)
;	genPlus
	inc	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00103$:
	C$music_manager.c$51$2_0$309	= .
	.globl	C$music_manager.c$51$2_0$309
;src\core\music_manager.c:51: memset(music_events, 0, sizeof(music_events));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0014
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_music_events
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
;	genLabel
00104$:
	C$music_manager.c$55$1_0$306	= .
	.globl	C$music_manager.c$55$1_0$306
;src\core\music_manager.c:55: }
;	genCritical
	di
	C$music_manager.c$54$2_0$310	= .
	.globl	C$music_manager.c$54$2_0$310
;src\core\music_manager.c:54: routine_queue_head = routine_queue_tail = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_routine_queue_tail
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_routine_queue_head
	ld	(hl), #0x00
;	genEndCritical
	ei
;	genLabel
; common peephole 158 removed unused label 00108$.
	C$music_manager.c$56$2_0$306	= .
	.globl	C$music_manager.c$56$2_0$306
;src\core\music_manager.c:56: }
;	genEndFunction
	C$music_manager.c$56$2_0$306	= .
	.globl	C$music_manager.c$56$2_0$306
	XG$music_init_events$0$0	= .
	.globl	XG$music_init_events$0$0
	ret
	G$music_events_poll$0$0	= .
	.globl	G$music_events_poll$0$0
	C$music_manager.c$72$1_0$317	= .
	.globl	C$music_manager.c$72$1_0$317
;src\core\music_manager.c:72: uint8_t music_events_poll(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function music_events_poll
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_music_events_poll	= 255
_music_events_poll::
	C$music_manager.c$73$1_0$317	= .
	.globl	C$music_manager.c$73$1_0$317
;src\core\music_manager.c:73: if (routine_queue_head != routine_queue_tail) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_routine_queue_head)
; common peephole 17 loaded a from (#_routine_queue_head) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_routine_queue_tail
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00111$.
;	skipping generated iCode
	C$music_manager.c$78$2_0$318	= .
	.globl	C$music_manager.c$78$2_0$318
;src\core\music_manager.c:78: }
;	genCritical
	di
	C$music_manager.c$76$3_0$319	= .
	.globl	C$music_manager.c$76$3_0$319
;src\core\music_manager.c:76: routine_queue_tail++, routine_queue_tail &= (MAX_ROUTINE_QUEUE_LEN - 1);
;	genPlus
;fetchLitPair	hl
	ld	hl, #_routine_queue_tail
	inc	(hl)
;	genAnd
;fetchLitPair	hl
	ld	a, (hl)
	and	a, #0x03
;	genMove_o size 1
;fetchLitPair	hl
	C$music_manager.c$77$3_0$319	= .
	.globl	C$music_manager.c$77$3_0$319
;src\core\music_manager.c:77: data = routine_queue[routine_queue_tail];
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	(hl), a
; common peephole 118 removed load by exploiting commutativity of addition.
	add	a,#<(_routine_queue)
	ld	c, a
	ld	a, #>(_routine_queue)
	adc	a, #0x00
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genEndCritical
	ei
	C$music_manager.c$79$2_0$318	= .
	.globl	C$music_manager.c$79$2_0$318
;src\core\music_manager.c:79: return (data & 0x03 + 1) | (data & 0xf0);
;	genAnd
	ld	a, c
	and	a, #0x04
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genAnd
	ld	a, c
	and	a, #0xf0
;	genMove_o size 1
;	genOr
	or	a, b
;	genMove_o size 1
;	genRet
;	genMove_o size 1
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
	C$music_manager.c$81$1_0$317	= .
	.globl	C$music_manager.c$81$1_0$317
;src\core\music_manager.c:81: return 0;
;	genRet
;	genMove_o size 1
	xor	a, a
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$music_manager.c$82$1_0$317	= .
	.globl	C$music_manager.c$82$1_0$317
;src\core\music_manager.c:82: }
;	genEndFunction
	C$music_manager.c$82$1_0$317	= .
	.globl	C$music_manager.c$82$1_0$317
	XG$music_events_poll$0$0	= .
	.globl	XG$music_events_poll$0$0
	ret
	G$music_pause$0$0	= .
	.globl	G$music_pause$0$0
	C$music_manager.c$113$1_1$346	= .
	.globl	C$music_manager.c$113$1_1$346
;src\core\music_manager.c:113: void music_pause(uint8_t pause) {
;	genLabel
;	genFunction
;	---------------------------------
; Function music_pause
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_music_pause::
;	genReceive
;	genMove_o size 1
	C$music_manager.c$114$1_0$346	= .
	.globl	C$music_manager.c$114$1_0$346
;src\core\music_manager.c:114: if (music_play_isr_pause = pause) music_sound_cut();
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_music_play_isr_pause),a
; common peephole 19 loaded (#_music_play_isr_pause) from a directly instead of using hl.
;	genIfx
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
;include/sfx_player.h:22: NR12_REG = NR22_REG = NR32_REG = NR42_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR42_REG + 0), a
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR32_REG + 0), a
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR22_REG + 0), a
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR12_REG + 0), a
;include/sfx_player.h:23: NR14_REG = NR24_REG = NR44_REG = SFX_CH_RETRIGGER;
;	genAssign
	ld	a, #0xc0
	ldh	(_NR44_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR24_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR14_REG + 0), a
;include/sfx_player.h:24: NR51_REG = 0xFF;
;	genAssign
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
	C$music_manager.c$114$1_0$346	= .
	.globl	C$music_manager.c$114$1_0$346
;src\core\music_manager.c:114: if (music_play_isr_pause = pause) music_sound_cut();
;	genLabel
; common peephole 158 removed unused label 00105$.
	C$music_manager.c$115$1_0$346	= .
	.globl	C$music_manager.c$115$1_0$346
;src\core\music_manager.c:115: }
;	genEndFunction
	C$music_manager.c$115$1_0$346	= .
	.globl	C$music_manager.c$115$1_0$346
	XG$music_pause$0$0	= .
	.globl	XG$music_pause$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
