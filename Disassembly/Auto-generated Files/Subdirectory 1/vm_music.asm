;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_music
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_VM_MUSIC
	.globl ___func_VM_MUSIC
	.globl _hUGE_set_position
	.globl b_vm_music_play
	.globl _vm_music_play
	.globl b_vm_music_stop
	.globl _vm_music_stop
	.globl b_vm_music_mute
	.globl _vm_music_mute
	.globl b_vm_music_routine
	.globl _vm_music_routine
	.globl b_vm_music_setpos
	.globl _vm_music_setpos
	.globl b_vm_sound_mastervol
	.globl _vm_sound_mastervol
	.globl b_vm_sfx_play
	.globl _vm_sfx_play
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
	G$__func_VM_MUSIC$0$0	= .
	.globl	G$__func_VM_MUSIC$0$0
	C$vm_music.c$8$0_0$279	= .
	.globl	C$vm_music.c$8$0_0$279
;src\core\vm_music.c:8: BANKREF(VM_MUSIC)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_MUSIC
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_MUSIC	= 255
___func_VM_MUSIC::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_MUSIC 
	___bank_VM_MUSIC = b___func_VM_MUSIC 
	.globl ___bank_VM_MUSIC 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_music_play$0$0	= .
	.globl	G$vm_music_play$0$0
	C$vm_music.c$10$1_0$281	= .
	.globl	C$vm_music.c$10$1_0$281
;src\core\vm_music.c:10: void vm_music_play(SCRIPT_CTX * THIS, UBYTE track_bank, const TRACK_T * track) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_music_play
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_music_play	= 255
_vm_music_play::
;src\core\vm_music.c:12: music_effective_mute = driver_set_mute_mask((music_global_mute_mask = MUTE_MASK_NONE) | music_mute_mask);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_global_mute_mask
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_music_mute_mask)
; common peephole 17 loaded a from (#_music_mute_mask) directly instead of using hl.
;include/music_manager.h:44: return (hUGE_mute_mask = mute_mask);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_hUGE_mute_mask),a
; common peephole 19 loaded (#_hUGE_mute_mask) from a directly instead of using hl.
	C$vm_music.c$12$3_0$283	= .
	.globl	C$vm_music.c$12$3_0$283
;src\core\vm_music.c:12: music_effective_mute = driver_set_mute_mask((music_global_mute_mask = MUTE_MASK_NONE) | music_mute_mask);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_music_effective_mute),a
; common peephole 19 loaded (#_music_effective_mute) from a directly instead of using hl.
;src\core\vm_music.c:13: music_load(track_bank, track);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96b move dec hl before ld b, a
	dec	hl
	ld	b, a
	ld	d, (hl)
;	genMove_o size 0
;	genAssign
;	(locations are the same)
;	genAssign
;	genMove_o size 1
	ld	e, d
;	genMove_o size 0
;include/music_manager.h:92: if ((bank == music_current_track_bank) && (data == music_current_track)) return;
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_music_current_track_bank)
; common peephole 17 loaded a from (#_music_current_track_bank) directly instead of using hl.
	sub	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00114$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00115$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	hl, #_music_current_track
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00116$
;fetchLitPair	hl
	inc	hl
	ld	a, (hl)
	sub	a, b
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00116$:
;	skipping generated iCode
;	genLabel
00104$:
;include/music_manager.h:93: music_current_track_bank = MUSIC_STOP_BANK, music_current_track = data, music_next_track = data; music_current_track_bank = bank;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_current_track_bank
	ld	(hl), #0xff
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_music_current_track
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_music_next_track
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_current_track_bank
	ld	(hl), e
	C$vm_music.c$13$3_0$281	= .
	.globl	C$vm_music.c$13$3_0$281
;src\core\vm_music.c:13: music_load(track_bank, track);
;	genLabel
; common peephole 158 removed unused label 00106$.
	C$vm_music.c$14$3_0$281	= .
	.globl	C$vm_music.c$14$3_0$281
;src\core\vm_music.c:14: }
;	genEndFunction
	C$vm_music.c$14$3_0$281	= .
	.globl	C$vm_music.c$14$3_0$281
	XG$vm_music_play$0$0	= .
	.globl	XG$vm_music_play$0$0
	ret
	G$vm_music_stop$0$0	= .
	.globl	G$vm_music_stop$0$0
	C$vm_music.c$16$3_0$289	= .
	.globl	C$vm_music.c$16$3_0$289
;src\core\vm_music.c:16: void vm_music_stop(void) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_music_stop
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_music_stop	= 255
_vm_music_stop::
;include/music_manager.h:99: music_current_track_bank = MUSIC_STOP_BANK, music_sound_cut();
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_music_current_track_bank
	ld	(hl), #0xff
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
	C$vm_music.c$17$3_0$289	= .
	.globl	C$vm_music.c$17$3_0$289
;src\core\vm_music.c:17: music_stop();
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm_music.c$18$3_0$289	= .
	.globl	C$vm_music.c$18$3_0$289
;src\core\vm_music.c:18: }
;	genEndFunction
	C$vm_music.c$18$3_0$289	= .
	.globl	C$vm_music.c$18$3_0$289
	XG$vm_music_stop$0$0	= .
	.globl	XG$vm_music_stop$0$0
	ret
	G$vm_music_mute$0$0	= .
	.globl	G$vm_music_mute$0$0
	C$vm_music.c$20$3_0$300	= .
	.globl	C$vm_music.c$20$3_0$300
;src\core\vm_music.c:20: void vm_music_mute(SCRIPT_CTX * THIS, UBYTE channels) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_music_mute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_music_mute	= 255
_vm_music_mute::
;src\core\vm_music.c:22: music_effective_mute = driver_set_mute_mask(music_sound_cut_mask(music_global_mute_mask = channels) | music_mute_mask);
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_music_global_mute_mask),a
; common peephole 19 loaded (#_music_global_mute_mask) from a directly instead of using hl.
;include/music_manager.h:86: return sfx_sound_cut_mask(mask);
;	genAssign
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;include/sfx_player.h:33: if (mask & SFX_CH_1) NR12_REG = 0, NR14_REG = SFX_CH_RETRIGGER;
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00103$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00138$.
;	skipping generated iCode
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR12_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR14_REG + 0), a
;	genLabel
00103$:
;include/sfx_player.h:34: if (mask & SFX_CH_2) NR22_REG = 0, NR24_REG = SFX_CH_RETRIGGER;
;	genAnd
	bit	1, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00139$.
;	skipping generated iCode
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR22_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR24_REG + 0), a
;	genLabel
00105$:
;include/sfx_player.h:35: if (mask & SFX_CH_3) NR32_REG = 0;
;	genAnd
	bit	2, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00140$.
;	skipping generated iCode
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR32_REG + 0), a
;	genLabel
00107$:
;include/sfx_player.h:36: if (mask & SFX_CH_4) NR42_REG = 0, NR44_REG = SFX_CH_RETRIGGER;
;	genAnd
	bit	3, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00141$.
;	skipping generated iCode
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR42_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR44_REG + 0), a
;	genLabel
00109$:
;include/sfx_player.h:37: NR51_REG = 0xFF;
;	genAssign
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;src\core\vm_music.c:22: music_effective_mute = driver_set_mute_mask(music_sound_cut_mask(music_global_mute_mask = channels) | music_mute_mask);
;	genOr
	ld	a, c
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
	C$vm_music.c$22$3_0$302	= .
	.globl	C$vm_music.c$22$3_0$302
;src\core\vm_music.c:22: music_effective_mute = driver_set_mute_mask(music_sound_cut_mask(music_global_mute_mask = channels) | music_mute_mask);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_music_effective_mute),a
; common peephole 19 loaded (#_music_effective_mute) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00112$.
	C$vm_music.c$23$3_0$300	= .
	.globl	C$vm_music.c$23$3_0$300
;src\core\vm_music.c:23: }
;	genEndFunction
	C$vm_music.c$23$3_0$300	= .
	.globl	C$vm_music.c$23$3_0$300
	XG$vm_music_mute$0$0	= .
	.globl	XG$vm_music_mute$0$0
	ret
	G$vm_music_routine$0$0	= .
	.globl	G$vm_music_routine$0$0
	C$vm_music.c$25$3_0$311	= .
	.globl	C$vm_music.c$25$3_0$311
;src\core\vm_music.c:25: void vm_music_routine(SCRIPT_CTX * THIS, UBYTE routine, UBYTE bank, UBYTE * pc) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_music_routine
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_music_routine	= 255
_vm_music_routine::
	C$vm_music.c$27$1_1$312	= .
	.globl	C$vm_music.c$27$1_1$312
;src\core\vm_music.c:27: script_event_t * event = &music_events[routine & 0x03];
;	genAddrOf
	ld	bc, #_music_events+0
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into e.
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
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_music.c$28$1_1$312	= .
	.globl	C$vm_music.c$28$1_1$312
;src\core\vm_music.c:28: event->script_bank = bank;
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
	inc	de
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#9
	C$vm_music.c$29$1_1$312	= .
	.globl	C$vm_music.c$29$1_1$312
;src\core\vm_music.c:29: event->script_addr = pc;
;	genPlus
;	genCast
;	AOP_STK for 
;	genMove_o size 2
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
; common peephole 96b move inc hl before ld (de), a
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	(de), a
	inc	bc
	inc	bc
	inc	bc
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_music.c$30$1_1$311	= .
	.globl	C$vm_music.c$30$1_1$311
;src\core\vm_music.c:30: }
;	genEndFunction
	C$vm_music.c$30$1_1$311	= .
	.globl	C$vm_music.c$30$1_1$311
	XG$vm_music_routine$0$0	= .
	.globl	XG$vm_music_routine$0$0
	ret
	G$vm_music_setpos$0$0	= .
	.globl	G$vm_music_setpos$0$0
	C$vm_music.c$32$1_1$314	= .
	.globl	C$vm_music.c$32$1_1$314
;src\core\vm_music.c:32: void vm_music_setpos(SCRIPT_CTX * THIS, UBYTE pattern, UBYTE row) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_music_setpos
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_music_setpos	= 255
_vm_music_setpos::
;src\core\vm_music.c:34: music_setpos(pattern, row);
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
;	genMove_o size 0
;include/music_manager.h:49: hUGE_set_position(pattern);
;	genSend
;	genMove_o size 1
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	C$vm_music.c$34$3_0$314	= .
	.globl	C$vm_music.c$34$3_0$314
;src\core\vm_music.c:34: music_setpos(pattern, row);
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$vm_music.c$35$3_0$314	= .
	.globl	C$vm_music.c$35$3_0$314
;src\core\vm_music.c:35: }
;	genEndFunction
	C$vm_music.c$35$3_0$314	= .
	.globl	C$vm_music.c$35$3_0$314
	XG$vm_music_setpos$0$0	= .
	.globl	XG$vm_music_setpos$0$0
	jp	_hUGE_set_position
; common peephole 152 removed unused ret.
	G$vm_sound_mastervol$0$0	= .
	.globl	G$vm_sound_mastervol$0$0
	C$vm_music.c$37$3_0$319	= .
	.globl	C$vm_music.c$37$3_0$319
;src\core\vm_music.c:37: void vm_sound_mastervol(SCRIPT_CTX * THIS, UBYTE volume) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_sound_mastervol
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_sound_mastervol	= 255
_vm_sound_mastervol::
	C$vm_music.c$39$1_0$319	= .
	.globl	C$vm_music.c$39$1_0$319
;src\core\vm_music.c:39: NR50_REG = volume;
;	genAssign
;	AOP_STK for 
	ldhl	sp,	#8
	ld	a, (hl)
	ldh	(_NR50_REG + 0), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_music.c$40$1_0$319	= .
	.globl	C$vm_music.c$40$1_0$319
;src\core\vm_music.c:40: }
;	genEndFunction
	C$vm_music.c$40$1_0$319	= .
	.globl	C$vm_music.c$40$1_0$319
	XG$vm_sound_mastervol$0$0	= .
	.globl	XG$vm_sound_mastervol$0$0
	ret
	G$vm_sfx_play$0$0	= .
	.globl	G$vm_sfx_play$0$0
	C$vm_music.c$42$1_0$321	= .
	.globl	C$vm_music.c$42$1_0$321
;src\core\vm_music.c:42: void vm_sfx_play(SCRIPT_CTX * THIS, UBYTE bank, UBYTE * offset, UBYTE channel_mask, UBYTE priority) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_sfx_play
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_sfx_play	= 255
_vm_sfx_play::
;	adjustStack by -4
	add	sp, #-4
;src\core\vm_music.c:44: music_play_sfx(bank, offset, channel_mask, priority);
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#16
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96b move dec hl before ld d, a
	dec	hl
	ld	d, a
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	dec	hl
	dec	hl
	ld	c, (hl)
;	genMove_o size 0
;	genAssign
;	AOP_STK for _vm_sfx_play_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), b
;	genMove_o size 0
;	genAssign
;	AOP_STK for _vm_sfx_play_sloc1_1_0
;	genMove_o size 1
	inc	hl
	ld	(hl), d
;	genMove_o size 0
;	genAssign
;	AOP_STK for _vm_sfx_play_sloc2_1_0
;	genMove_o size 2
	inc	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), e
;	genMove_o size 0
;	genAssign
;	(locations are the same)
;include/music_manager.h:118: if (priority < music_sfx_priority) return;
;	genCmpLt
	ld	a, b
;fetchLitPair	hl
	ld	hl, #_music_sfx_priority
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00115$
;	skipping generated iCode
;include/music_manager.h:119: sfx_play_bank = SFX_STOP_BANK;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_sfx_play_bank
	ld	(hl), #0xff
;include/music_manager.h:120: music_sfx_priority = priority;
;	genAssign
;	AOP_STK for _vm_sfx_play_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_music_sfx_priority),a
; common peephole 19 loaded (#_music_sfx_priority) from a directly instead of using hl.
;include/music_manager.h:121: music_sound_cut_mask(music_mute_mask);
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_music_mute_mask)
; common peephole 17 loaded a from (#_music_mute_mask) directly instead of using hl.
;include/music_manager.h:86: return sfx_sound_cut_mask(mask);
;	genCast
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;include/sfx_player.h:33: if (mask & SFX_CH_1) NR12_REG = 0, NR14_REG = SFX_CH_RETRIGGER;
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00104$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00147$.
;	skipping generated iCode
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR12_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR14_REG + 0), a
;	genLabel
00104$:
;include/sfx_player.h:34: if (mask & SFX_CH_2) NR22_REG = 0, NR24_REG = SFX_CH_RETRIGGER;
;	genAnd
	bit	1, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00148$.
;	skipping generated iCode
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR22_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR24_REG + 0), a
;	genLabel
00106$:
;include/sfx_player.h:35: if (mask & SFX_CH_3) NR32_REG = 0;
;	genAnd
	bit	2, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00149$.
;	skipping generated iCode
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR32_REG + 0), a
;	genLabel
00108$:
;include/sfx_player.h:36: if (mask & SFX_CH_4) NR42_REG = 0, NR44_REG = SFX_CH_RETRIGGER;
;	genAnd
	bit	3, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00150$.
;	skipping generated iCode
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_NR42_REG + 0), a
;	genAssign
	ld	a, #0xc0
	ldh	(_NR44_REG + 0), a
;	genLabel
00110$:
;include/sfx_player.h:37: NR51_REG = 0xFF;
;	genAssign
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;include/music_manager.h:122: music_mute_mask = mute_mask;
;	genAssign
;	AOP_STK for _vm_sfx_play_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_music_mute_mask),a
; common peephole 19 loaded (#_music_mute_mask) from a directly instead of using hl.
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
;	AOP_STK for _vm_sfx_play_sloc2_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_sfx_play_sample),a
; common peephole 19 loaded (#_sfx_play_sample) from a directly instead of using hl.
	ldhl	sp,	#3
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_sfx_play_sample + 1),a
; common peephole 20 loaded (#_sfx_play_sample) from a directly instead of using hl.
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_sfx_play_bank
	ld	(hl), c
	C$vm_music.c$44$3_0$321	= .
	.globl	C$vm_music.c$44$3_0$321
;src\core\vm_music.c:44: music_play_sfx(bank, offset, channel_mask, priority);
;	genLabel
00115$:
	C$vm_music.c$45$3_0$321	= .
	.globl	C$vm_music.c$45$3_0$321
;src\core\vm_music.c:45: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm_music.c$45$3_0$321	= .
	.globl	C$vm_music.c$45$3_0$321
	XG$vm_sfx_play$0$0	= .
	.globl	XG$vm_sfx_play$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
