;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module load_save
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _data_slot_address
	.globl _memcpy
	.globl _save_blob_size
	.globl _save_points
	.globl b_data_init
	.globl _data_init
	.globl b_data_save
	.globl _data_save
	.globl b_data_load
	.globl _data_load
	.globl b_data_clear
	.globl _data_clear
	.globl b_data_peek
	.globl _data_peek
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$save_blob_size$0_0$0==.
_save_blob_size::
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$data_init$0$0	= .
	.globl	G$data_init$0$0
	C$load_save.c$62$0_0$384	= .
	.globl	C$load_save.c$62$0_0$384
;src\core\load_save.c:62: void data_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function data_init
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_data_init	= 255
_data_init::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$load_save.c$63$1_0$384	= .
	.globl	C$load_save.c$63$1_0$384
;src\core\load_save.c:63: ENABLE_RAM_MBC5;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_rRAMG
	ld	(hl), #0x0a
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genAnd
;fetchLitPair	hl
	ld	hl, #__current_ram_bank
	ld	a, (hl)
	and	a, #0xf0
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rRAMB),a
; common peephole 19 loaded (#_rRAMB) from a directly instead of using hl.
	C$load_save.c$66$1_0$384	= .
	.globl	C$load_save.c$66$1_0$384
;src\core\load_save.c:66: save_blob_size = sizeof(save_signature);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_save_blob_size
;fetchLitPair	hl
; common peephole 96b move inc hl before xor a, a
	ld	a, #0x04
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	xor	a, a
	ld	(hl), a
	C$load_save.c$67$3_0$385	= .
	.globl	C$load_save.c$67$3_0$385
;src\core\load_save.c:67: for(const save_point_t * point = save_points; (point->target); point++) {
;	genAddrOf
	ld	bc, #_save_points+0
;	genCast
;	(locations are the same)
;	genLabel
00104$:
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	inc	hl
	ld	a,	(hl-)
	ld	l, (hl)
;	spillPairReg hl
;	genIfx
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
	C$load_save.c$68$3_0$386	= .
	.globl	C$load_save.c$68$3_0$386
;src\core\load_save.c:68: save_blob_size += point->size;
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
	inc	hl
;	genPointerGet
;	AOP_STK for _data_init_sloc0_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPlus
;	AOP_STK for _data_init_sloc0_1_0
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_save_blob_size
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
	pop	hl
	push	hl
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;fetchLitPair	hl
	ld	hl, #_save_blob_size
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
	C$load_save.c$67$2_0$385	= .
	.globl	C$load_save.c$67$2_0$385
;src\core\load_save.c:67: for(const save_point_t * point = save_points; (point->target); point++) {
;	genPlus
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00106$:
	C$load_save.c$74$2_0$384	= .
	.globl	C$load_save.c$74$2_0$384
;src\core\load_save.c:74: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$load_save.c$74$2_0$384	= .
	.globl	C$load_save.c$74$2_0$384
	XG$data_init$0$0	= .
	.globl	XG$data_init$0$0
	ret
G$save_points$0_0$0 == .
_save_points:
	.dw _script_memory
	.dw #0x0e00
	.dw _CTXS
	.dw #0x0130
	.dw _first_ctx
	.dw #0x0002
	.dw _free_ctxs
	.dw #0x0002
	.dw _old_executing_ctx
	.dw #0x0002
	.dw _executing_ctx
	.dw #0x0002
	.dw _vm_lock_state
	.dw #0x0001
	.dw _input_events
	.dw #0x0028
	.dw _input_slots
	.dw #0x0008
	.dw _timer_events
	.dw #0x0014
	.dw _timer_values
	.dw #0x0008
	.dw _music_current_track_bank
	.dw #0x0001
	.dw _music_current_track
	.dw #0x0002
	.dw _music_events
	.dw #0x0014
	.dw _current_scene
	.dw #0x0003
	.dw _scene_stack_ptr
	.dw #0x0002
	.dw _scene_stack
	.dw #0x0040
	.dw _actors
	.dw #0x0444
	.dw _actors_active_head
	.dw #0x0002
	.dw _actors_inactive_head
	.dw #0x0002
	.dw _player_moving
	.dw #0x0001
	.dw _player_collision_actor
	.dw #0x0002
	.dw ___rand_seed
	.dw #0x0002
	.dw #0x0000
	.dw #0x0000
	G$data_slot_address$0$0	= .
	.globl	G$data_slot_address$0$0
	C$load_save.c$76$2_0$391	= .
	.globl	C$load_save.c$76$2_0$391
;src\core\load_save.c:76: UBYTE * data_slot_address(UBYTE slot, UBYTE *bank) {
;	genLabel
;	genFunction
;	---------------------------------
; Function data_slot_address
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 7 bytes.
_data_slot_address::
;	adjustStack by -7
	add	sp, #-7
;	genReceive
;	AOP_STK for _data_slot_address_slot_10000_390
;	genMove_o size 1
	ldhl	sp,	#2
;	genMove_o size 0
;	genReceive
;	genMove_o size 2
	C$load_save.c$77$2_0$391	= .
	.globl	C$load_save.c$77$2_0$391
;src\core\load_save.c:77: UWORD res = 0, res_bank = 0;
;	genAssign
;	AOP_STK for _data_slot_address_sloc0_1_0
;	genMove_o size 2
; common peephole 96b move inc hl before xor a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genAssign
;	genMove_o size 1
	C$load_save.c$78$1_0$391	= .
	.globl	C$load_save.c$78$1_0$391
;src\core\load_save.c:78: for (UBYTE i = 0; i < slot; i++) {
;	genAssign
;	AOP_STK for _data_slot_address_sloc1_1_0
;	genMove_o size 1
; common peephole 96b move inc hl before ld c, #0x00
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genAssign
;	AOP_STK for _data_slot_address_sloc2_1_0
;	genMove_o size 1
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	c,a
; common peephole 103 loaded value in a first and used it next
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x00
;	genLabel
00107$:
;	genCmpLt
;	AOP_STK for _data_slot_address_sloc2_1_0
;	AOP_STK for _data_slot_address_slot_10000_390
	ldhl	sp,	#6
	ld	a, (hl)
	ldhl	sp,	#2
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00105$
;	skipping generated iCode
	C$load_save.c$79$3_0$393	= .
	.globl	C$load_save.c$79$3_0$393
;src\core\load_save.c:79: res += save_blob_size;
;	genPlus
;	AOP_STK for _data_slot_address_sloc0_1_0
;fetchPairLong
; common peephole 96d move inc hl before push (de)
	inc	hl
; common peephole 96d move inc hl before push (de)
; common peephole 96d move dec hl before push (de)
; common peephole 156b removed inc hl / dec hl pair.
	push	de
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_save_blob_size
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	pop	de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
;	genMove_o size 0
	C$load_save.c$80$3_0$393	= .
	.globl	C$load_save.c$80$3_0$393
;src\core\load_save.c:80: if ((res + save_blob_size) > SRAM_BANK_SIZE) {
;	genPlus
;	AOP_STK for _data_slot_address_sloc0_1_0
;	AOP_STK for _data_slot_address_sloc3_1_0
;fetchPairLong
; common peephole 96d move dec hl before push (de)
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	push	de
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_save_blob_size
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
	pop	de
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
;	genCmpGt
;	AOP_STK for _data_slot_address_sloc3_1_0
	ldhl	sp,	#0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x20
	sbc	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00108$
;	skipping generated iCode
	C$load_save.c$81$4_0$394	= .
	.globl	C$load_save.c$81$4_0$394
;src\core\load_save.c:81: if (++res_bank >= SRAM_BANKS_TO_SAVE) return NULL;
;	genPlus
;	AOP_STK for _data_slot_address_sloc1_1_0
	ldhl	sp,	#5
	inc	(hl)
;	genCast
;	AOP_STK for _data_slot_address_sloc1_1_0
;	genMove_o size 1
;	genMove_o size 0
;	genCmpLt
;	AOP_STK for _data_slot_address_sloc1_1_0
	ld	a,(hl)
	ld	c,a
; common peephole 103 loaded value in a first and used it next
	sub	a, #0x03
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00102$
;	skipping generated iCode
;	genRet
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x0000
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00102$:
	C$load_save.c$82$4_0$394	= .
	.globl	C$load_save.c$82$4_0$394
;src\core\load_save.c:82: res = 0;
;	genAssign
;	AOP_STK for _data_slot_address_sloc0_1_0
;	genMove_o size 2
	xor	a, a
	ldhl	sp,	#3
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00108$:
	C$load_save.c$78$2_0$392	= .
	.globl	C$load_save.c$78$2_0$392
;src\core\load_save.c:78: for (UBYTE i = 0; i < slot; i++) {
;	genPlus
;	AOP_STK for _data_slot_address_sloc2_1_0
	ldhl	sp,	#6
	inc	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00105$:
	C$load_save.c$85$1_0$391	= .
	.globl	C$load_save.c$85$1_0$391
;src\core\load_save.c:85: *bank = res_bank;
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genAssign (pointer)
	ld	(de), a
	C$load_save.c$86$1_0$391	= .
	.globl	C$load_save.c$86$1_0$391
;src\core\load_save.c:86: return (UBYTE *)0xA000u + res;
;	genPlus
;	AOP_STK for _data_slot_address_sloc0_1_0
;	AOP_STK for _data_slot_address_sloc4_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0xa000
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
;	genMove_o size 0
;	genRet
;	AOP_STK for _data_slot_address_sloc4_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genLabel
00109$:
	C$load_save.c$87$1_0$391	= .
	.globl	C$load_save.c$87$1_0$391
;src\core\load_save.c:87: }
;	genEndFunction
;	adjustStack by 7
	add	sp, #7
	C$load_save.c$87$1_0$391	= .
	.globl	C$load_save.c$87$1_0$391
	XG$data_slot_address$0$0	= .
	.globl	XG$data_slot_address$0$0
	ret
	G$data_save$0$0	= .
	.globl	G$data_save$0$0
	C$load_save.c$89$1_0$396	= .
	.globl	C$load_save.c$89$1_0$396
;src\core\load_save.c:89: void data_save(UBYTE slot) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function data_save
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 11 bytes.
	b_data_save	= 255
_data_save::
;	adjustStack by -11
	add	sp, #-11
	C$load_save.c$90$1_0$396	= .
	.globl	C$load_save.c$90$1_0$396
;src\core\load_save.c:90: UBYTE data_bank, *save_data = data_slot_address(slot, &data_bank);
;	genAddrOf
	ldhl	sp,	#0
	ld	e, l
	ld	d, h
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 2
;	genSend
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#17
	ld	a, (hl)
;	genMove_o size 0
;	genCall
;	AOP_STK for _data_save_sloc0_1_0
	call	_data_slot_address
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$load_save.c$91$1_0$396	= .
	.globl	C$load_save.c$91$1_0$396
;src\core\load_save.c:91: if (save_data == NULL) return;
;	genIfx
;	AOP_STK for _data_save_sloc0_1_0
	ldhl	sp,	#10
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
;	genRet
;	genLabel
	jp	Z,00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
;src\core\load_save.c:92: SWITCH_RAM_BANK(data_bank, RAM_BANKS_ONLY);
;	genAssign
;	AOP_STK for _data_save_data_bank_10000_396
;	genMove_o size 1
	ldhl	sp,	#0
	ld	c, (hl)
;	genMove_o size 0
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genAnd
;fetchLitPair	hl
	ld	hl, #__current_ram_bank
	ld	a, (hl)
	and	a, #0xf0
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genAnd
	ld	a, c
	and	a, #0x0f
;	genMove_o size 1
;	genOr
	or	a, b
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rRAMB),a
; common peephole 19 loaded (#_rRAMB) from a directly instead of using hl.
	C$load_save.c$94$1_0$396	= .
	.globl	C$load_save.c$94$1_0$396
;src\core\load_save.c:94: SIGN_BY_PTR(save_data) = save_signature;
;	genCast
;	AOP_STK for _data_save_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign
;	AOP_STK for _data_save_sloc1_1_0
;fetchLitPair	hl
	ld	hl, #_save_signature
	ld	d, h
	ld	e, l
	ldhl	sp,	#5
	ld	a, (de)
	ld	(hl+),	a
	inc	de
	ld	a, (de)
	ld	(hl+),	a
	inc	de
	ld	a, (de)
	ld	(hl+),	a
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genAssign (pointer)
;	AOP_STK for _data_save_sloc1_1_0
;fetchPairLong
	ldhl	sp,	#5
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	C$load_save.c$95$1_0$396	= .
	.globl	C$load_save.c$95$1_0$396
;src\core\load_save.c:95: save_data += sizeof(save_signature);
;	genPlus
;	AOP_STK for _data_save_sloc0_1_0
;	AOP_STK for _data_save_sloc2_1_0
;fetchPairLong
; common peephole 96b move inc hl before ld (bc), a
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
; common peephole 96b move inc hl before ld (bc), a
; common peephole 96b move dec hl before ld (bc), a
; common peephole 156b removed inc hl / dec hl pair.
	ld	(bc), a
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
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;	genMove_o size 0
	C$load_save.c$96$3_0$397	= .
	.globl	C$load_save.c$96$3_0$397
;src\core\load_save.c:96: for(const save_point_t * point = save_points; (point->target); point++) {
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _data_save_sloc3_1_0
;	genMove_o size 2
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #<(_save_points)
	inc	hl
	ld	(hl), #>(_save_points)
;	genLabel
00106$:
;	genPointerGet
;	AOP_STK for _data_save_sloc3_1_0
;	AOP_STK for _data_save_sloc4_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#5
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genIfx
;	AOP_STK for _data_save_sloc4_1_0
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
	C$load_save.c$97$3_0$398	= .
	.globl	C$load_save.c$97$3_0$398
;src\core\load_save.c:97: memcpy(save_data, point->target, point->size);
;	genPlus
;	AOP_STK for _data_save_sloc3_1_0
;	AOP_STK for _data_save_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#9
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
	ldhl	sp,	#3
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#2
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _data_save_sloc5_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genPointerGet
;	AOP_STK for _data_save_sloc3_1_0
;	AOP_STK for _data_save_sloc6_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#3
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genCast
;	AOP_STK for _data_save_sloc2_1_0
;	AOP_STK for _data_save_sloc7_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	ld	(hl), a
	ldhl	sp,	#8
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	ld	(hl), a
;	genMove_o size 0
;	genIpush
	push	bc
;	genSend
;	AOP_STK for _data_save_sloc6_1_0
;	genMove_o size 2
	ldhl	sp,	#5
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genSend
;	AOP_STK for _data_save_sloc7_1_0
;	genMove_o size 2
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	_memcpy
	C$load_save.c$98$3_0$398	= .
	.globl	C$load_save.c$98$3_0$398
;src\core\load_save.c:98: save_data += point->size;
;	genPointerGet
;	AOP_STK for _data_save_sloc5_1_0
;	AOP_STK for _data_save_sloc8_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#1
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#5
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genPlus
;	AOP_STK for _data_save_sloc8_1_0
;	AOP_STK for _data_save_sloc2_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
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
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;	genMove_o size 0
	C$load_save.c$96$2_0$397	= .
	.globl	C$load_save.c$96$2_0$397
;src\core\load_save.c:96: for(const save_point_t * point = save_points; (point->target); point++) {
;	genPlus
;	AOP_STK for _data_save_sloc3_1_0
;fetchPairLong
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
; common peephole 156b removed inc hl / dec hl pair.
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
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00106$
;	genLabel
00108$:
	C$load_save.c$104$2_0$396	= .
	.globl	C$load_save.c$104$2_0$396
;src\core\load_save.c:104: }
;	genEndFunction
;	adjustStack by 11
	add	sp, #11
	C$load_save.c$104$2_0$396	= .
	.globl	C$load_save.c$104$2_0$396
	XG$data_save$0$0	= .
	.globl	XG$data_save$0$0
	ret
	G$data_load$0$0	= .
	.globl	G$data_load$0$0
	C$load_save.c$106$2_0$403	= .
	.globl	C$load_save.c$106$2_0$403
;src\core\load_save.c:106: UBYTE data_load(UBYTE slot) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function data_load
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 11 bytes.
	b_data_load	= 255
_data_load::
;	adjustStack by -11
	add	sp, #-11
	C$load_save.c$107$1_0$403	= .
	.globl	C$load_save.c$107$1_0$403
;src\core\load_save.c:107: UBYTE data_bank, *save_data = data_slot_address(slot, &data_bank);
;	genAddrOf
	ldhl	sp,	#0
	ld	e, l
	ld	d, h
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 2
;	genSend
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#17
	ld	a, (hl)
;	genMove_o size 0
;	genCall
;	AOP_STK for _data_load_sloc0_1_0
	call	_data_slot_address
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$load_save.c$108$1_0$403	= .
	.globl	C$load_save.c$108$1_0$403
;src\core\load_save.c:108: if (save_data == NULL) return FALSE;
;	genIfx
;	AOP_STK for _data_load_sloc0_1_0
	ldhl	sp,	#10
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
;	genRet
;	genMove_o size 1
	or	a,(hl)
; common peephole 154a removed redundant zeroing of a (which has just been tested to be #0x00).
;	genLabel
	jp	Z,00115$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
;src\core\load_save.c:109: SWITCH_RAM_BANK(data_bank, RAM_BANKS_ONLY);
;	genAssign
;	AOP_STK for _data_load_data_bank_10000_403
;	genMove_o size 1
	ldhl	sp,	#0
	ld	b, (hl)
;	genMove_o size 0
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genAnd
;fetchLitPair	hl
	ld	hl, #__current_ram_bank
	ld	a, (hl)
	and	a, #0xf0
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genAnd
	ld	a, b
	and	a, #0x0f
;	genMove_o size 1
;	genOr
	or	a, c
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rRAMB),a
; common peephole 19 loaded (#_rRAMB) from a directly instead of using hl.
	C$load_save.c$110$1_0$403	= .
	.globl	C$load_save.c$110$1_0$403
;src\core\load_save.c:110: if (SIGN_BY_PTR(save_data) != save_signature) return FALSE;
;	genCast
;	AOP_STK for _data_load_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _data_load_sloc1_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#5
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genAssign
;	genMove_o size 4
;fetchLitPair	hl
	ld	hl, #_save_signature
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;fetchLitPair	hl
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCmpEq
;	AOP_STK for _data_load_sloc1_1_0
	ldhl	sp,	#5
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00153$
	inc	hl
	ld	a, (hl)
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00153$
	inc	hl
	ld	a, (hl)
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00153$
	inc	hl
	ld	a, (hl)
	sub	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00153$:
;	skipping generated iCode
;	genRet
;	genMove_o size 1
	xor	a, a
	jp	00115$
;	genLabel
00104$:
	C$load_save.c$111$1_0$403	= .
	.globl	C$load_save.c$111$1_0$403
;src\core\load_save.c:111: save_data += sizeof(save_signature);
;	genPlus
;	AOP_STK for _data_load_sloc0_1_0
;	AOP_STK for _data_load_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#9
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
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;	genMove_o size 0
	C$load_save.c$113$3_0$404	= .
	.globl	C$load_save.c$113$3_0$404
;src\core\load_save.c:113: for(const save_point_t * point = save_points; (point->target); point++) {
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _data_load_sloc3_1_0
;	genMove_o size 2
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #<(_save_points)
	inc	hl
	ld	(hl), #>(_save_points)
;	genLabel
00113$:
;	genPointerGet
;	AOP_STK for _data_load_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
	C$load_save.c$114$3_0$405	= .
	.globl	C$load_save.c$114$3_0$405
;src\core\load_save.c:114: memcpy(point->target, save_data, point->size);
;	genPlus
;	AOP_STK for _data_load_sloc3_1_0
;	AOP_STK for _data_load_sloc4_1_0
;fetchPairLong
	dec	hl
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
	ldhl	sp,	#3
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#2
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _data_load_sloc4_1_0
;	AOP_STK for _data_load_sloc5_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld a, (de)
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genCast
;	AOP_STK for _data_load_sloc2_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _data_load_sloc3_1_0
;	AOP_STK for _data_load_sloc6_1_0
;fetchPairLong
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld b, a
; common peephole 96b move dec hl before ld b, a
; common peephole 156b removed inc hl / dec hl pair.
	ld	b, a
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#5
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genIpush
;	AOP_STK for _data_load_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genSend
;	AOP_STK for _data_load_sloc6_1_0
;	genMove_o size 2
; common peephole 96d move inc hl before push (de)
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	push	de
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	_memcpy
	C$load_save.c$115$3_0$405	= .
	.globl	C$load_save.c$115$3_0$405
;src\core\load_save.c:115: save_data += point->size;
;	genPointerGet
;	AOP_STK for _data_load_sloc4_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#1
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genPlus
;	AOP_STK for _data_load_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;	genMove_o size 0
	C$load_save.c$113$2_0$404	= .
	.globl	C$load_save.c$113$2_0$404
;src\core\load_save.c:113: for(const save_point_t * point = save_points; (point->target); point++) {
;	genPlus
;	AOP_STK for _data_load_sloc3_1_0
;fetchPairLong
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
; common peephole 156b removed inc hl / dec hl pair.
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
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00105$:
	C$load_save.c$118$1_0$403	= .
	.globl	C$load_save.c$118$1_0$403
;src\core\load_save.c:118: if (music_current_track_bank != MUSIC_STOP_BANK) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_music_current_track_bank)
; common peephole 17 loaded a from (#_music_current_track_bank) directly instead of using hl.
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00154$.
;	skipping generated iCode
	C$load_save.c$119$2_0$406	= .
	.globl	C$load_save.c$119$2_0$406
;src\core\load_save.c:119: music_next_track = music_current_track;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_music_current_track)
; common peephole 17 loaded a from (#_music_current_track) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_music_next_track),a
; common peephole 19 loaded (#_music_next_track) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_music_current_track + 1)
;fetchLitPair	hl
	ld	(#_music_next_track + 1),a
; common peephole 20 loaded (#_music_next_track) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00107$:
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
	C$load_save.c$121$1_0$403	= .
	.globl	C$load_save.c$121$1_0$403
;src\core\load_save.c:121: music_sound_cut();
;	genLabel
00108$:
	C$load_save.c$123$1_0$403	= .
	.globl	C$load_save.c$123$1_0$403
;src\core\load_save.c:123: return TRUE;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
;	genLabel
00115$:
	C$load_save.c$124$1_0$403	= .
	.globl	C$load_save.c$124$1_0$403
;src\core\load_save.c:124: }
;	genEndFunction
;	adjustStack by 11
	add	sp, #11
	C$load_save.c$124$1_0$403	= .
	.globl	C$load_save.c$124$1_0$403
	XG$data_load$0$0	= .
	.globl	XG$data_load$0$0
	ret
	G$data_clear$0$0	= .
	.globl	G$data_clear$0$0
	C$load_save.c$126$1_0$418	= .
	.globl	C$load_save.c$126$1_0$418
;src\core\load_save.c:126: void data_clear(UBYTE slot) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function data_clear
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
	b_data_clear	= 255
_data_clear::
;	adjustStack by -1
	dec	sp
	C$load_save.c$127$1_0$418	= .
	.globl	C$load_save.c$127$1_0$418
;src\core\load_save.c:127: UBYTE data_bank, *save_data = data_slot_address(slot, &data_bank);
;	genAddrOf
	ldhl	sp,	#0
	ld	e, l
	ld	d, h
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 2
;	genSend
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#7
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	call	_data_slot_address
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
	ld	e, c
;	genMove_o size 0
	C$load_save.c$128$1_0$418	= .
	.globl	C$load_save.c$128$1_0$418
;src\core\load_save.c:128: if (save_data == NULL) return;
;	genIfx
	ld	a,b
	ld	d,a
; common peephole 103 loaded value in a first and used it next
	or	a, c
;	genRet
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
;src\core\load_save.c:129: SWITCH_RAM_BANK(data_bank, RAM_BANKS_ONLY);
;	genAssign
;	AOP_STK for _data_clear_data_bank_10000_418
;	genMove_o size 1
	ldhl	sp,	#0
	ld	b, (hl)
;	genMove_o size 0
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genAnd
;fetchLitPair	hl
	ld	hl, #__current_ram_bank
	ld	a, (hl)
	and	a, #0xf0
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genAnd
	ld	a, b
	and	a, #0x0f
;	genMove_o size 1
;	genOr
	or	a, c
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rRAMB),a
; common peephole 19 loaded (#_rRAMB) from a directly instead of using hl.
	C$load_save.c$130$1_0$418	= .
	.globl	C$load_save.c$130$1_0$418
;src\core\load_save.c:130: SIGN_BY_PTR(save_data) = 0;
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
	inc	de
	ld	(de), a
	inc	de
	ld	(de), a
;	genLabel
00104$:
	C$load_save.c$135$1_0$418	= .
	.globl	C$load_save.c$135$1_0$418
;src\core\load_save.c:135: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	C$load_save.c$135$1_0$418	= .
	.globl	C$load_save.c$135$1_0$418
	XG$data_clear$0$0	= .
	.globl	XG$data_clear$0$0
	ret
	G$data_peek$0$0	= .
	.globl	G$data_peek$0$0
	C$load_save.c$137$1_0$423	= .
	.globl	C$load_save.c$137$1_0$423
;src\core\load_save.c:137: UBYTE data_peek(UBYTE slot, UINT16 idx, UWORD count, UINT16 * dest) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function data_peek
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 9 bytes.
	b_data_peek	= 255
_data_peek::
;	adjustStack by -9
	add	sp, #-9
	C$load_save.c$138$1_0$423	= .
	.globl	C$load_save.c$138$1_0$423
;src\core\load_save.c:138: UBYTE data_bank, *save_data = data_slot_address(slot, &data_bank);
;	genAddrOf
	ldhl	sp,	#0
	ld	e, l
	ld	d, h
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 2
;	genSend
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#15
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	call	_data_slot_address
;	genMove_o size 2
	C$load_save.c$139$1_0$423	= .
	.globl	C$load_save.c$139$1_0$423
;src\core\load_save.c:139: if (save_data == NULL) return FALSE;
;	genIfx
	ld	a, b
;	genRet
;	genMove_o size 1
	or	a,c
; common peephole 154a removed redundant zeroing of a (which has just been tested to be #0x00).
;	genLabel
	jp	Z,00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
;src\core\load_save.c:140: SWITCH_RAM_BANK(data_bank, RAM_BANKS_ONLY);
;	genAssign
;	AOP_STK for _data_peek_data_bank_10000_423
;	genMove_o size 1
	ldhl	sp,	#0
	ld	d, (hl)
;	genMove_o size 0
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genAnd
;fetchLitPair	hl
	ld	hl, #__current_ram_bank
	ld	a, (hl)
	and	a, #0xf0
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genAnd
	ld	a, d
	and	a, #0x0f
;	genMove_o size 1
;	genOr
	or	a, e
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rRAMB),a
; common peephole 19 loaded (#_rRAMB) from a directly instead of using hl.
	C$load_save.c$141$1_0$423	= .
	.globl	C$load_save.c$141$1_0$423
;src\core\load_save.c:141: if (SIGN_BY_PTR(save_data) != save_signature) return FALSE;
;	genCast
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _data_peek_sloc0_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#1
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genAssign
;	AOP_STK for _data_peek_sloc1_1_0
;fetchLitPair	hl
	ld	hl, #_save_signature
	ld	d, h
	ld	e, l
	ldhl	sp,	#5
	ld	a, (de)
	ld	(hl+),	a
	inc	de
	ld	a, (de)
	ld	(hl+),	a
	inc	de
	ld	a, (de)
	ld	(hl+),	a
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genCmpEq
;	AOP_STK for _data_peek_sloc0_1_0
;	AOP_STK for _data_peek_sloc1_1_0
	ldhl	sp,	#1
	ld	a, (hl)
	ldhl	sp,	#5
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00128$
	ldhl	sp,	#2
	ld	a, (hl)
	ldhl	sp,	#6
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00128$
	ldhl	sp,	#3
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00128$
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#8
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00128$:
;	skipping generated iCode
;	genRet
;	genMove_o size 1
	xor	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00104$:
	C$load_save.c$143$1_0$423	= .
	.globl	C$load_save.c$143$1_0$423
;src\core\load_save.c:143: if (count) memcpy(dest, save_data + sizeof(save_signature) + (idx << 1), count << 1);
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#19
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
;	genLeftShift
;	AOP_STK for 
;	AOP_STK for _data_peek_sloc2_1_0
;	genMove_o size 2
	ld	a, (hl)
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,	#19
	ld	a, (hl)
	ldhl	sp,	#8
;	genMove_o size 0
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	sla	(hl)
	inc	hl
	rl	(hl)
;	genPlus
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	b, a
;	genCast
;	(locations are the same)
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#20
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for _data_peek_sloc2_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	_memcpy
;	genLabel
00106$:
	C$load_save.c$144$1_0$423	= .
	.globl	C$load_save.c$144$1_0$423
;src\core\load_save.c:144: return TRUE;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
;	genLabel
00108$:
	C$load_save.c$145$1_0$423	= .
	.globl	C$load_save.c$145$1_0$423
;src\core\load_save.c:145: }
;	genEndFunction
;	adjustStack by 9
	add	sp, #9
	C$load_save.c$145$1_0$423	= .
	.globl	C$load_save.c$145$1_0$423
	XG$data_peek$0$0	= .
	.globl	XG$data_peek$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
