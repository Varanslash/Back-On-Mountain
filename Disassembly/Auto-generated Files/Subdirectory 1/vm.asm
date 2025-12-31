;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_wait_frames
	.globl _wait_frames
	.globl b___func_VM_MAIN
	.globl ___func_VM_MAIN
	.globl b_atan2
	.globl _atan2
	.globl _isqrt
	.globl ___call__banked
	.globl _wait_vbl_done
	.globl _randw
	.globl _initrand
	.globl _abs
	.globl _memset
	.globl _memcpy
	.globl _script_memory
	.globl _vm_exception_params_offset
	.globl _vm_exception_params_bank
	.globl _vm_exception_params_length
	.globl _vm_exception_code
	.globl _vm_loaded_state
	.globl _vm_lock_state
	.globl _executing_ctx
	.globl _old_executing_ctx
	.globl _free_ctxs
	.globl _first_ctx
	.globl _CTXS
	.globl b_vm_call
	.globl _vm_call
	.globl b_vm_ret
	.globl _vm_ret
	.globl b_vm_call_far
	.globl _vm_call_far
	.globl b_vm_ret_far
	.globl _vm_ret_far
	.globl b_vm_push
	.globl _vm_push
	.globl b_vm_pop
	.globl _vm_pop
	.globl b_vm_loop
	.globl _vm_loop
	.globl _vm_switch
	.globl b_vm_jump
	.globl _vm_jump
	.globl b_vm_invoke
	.globl _vm_invoke
	.globl _vm_beginthread
	.globl b_vm_join
	.globl _vm_join
	.globl b_vm_terminate
	.globl _vm_terminate
	.globl b_vm_if
	.globl _vm_if
	.globl b_vm_if_const
	.globl _vm_if_const
	.globl b_vm_push_value
	.globl _vm_push_value
	.globl b_vm_push_value_ind
	.globl _vm_push_value_ind
	.globl b_vm_push_reference
	.globl _vm_push_reference
	.globl b_vm_reserve
	.globl _vm_reserve
	.globl b_vm_set
	.globl _vm_set
	.globl b_vm_set_const
	.globl _vm_set_const
	.globl b_vm_get_tlocal
	.globl _vm_get_tlocal
	.globl _vm_rpn
	.globl b_vm_test_terminate
	.globl _vm_test_terminate
	.globl b_vm_idle
	.globl _vm_idle
	.globl _vm_get_far
	.globl b_vm_init_rng
	.globl _vm_init_rng
	.globl b_vm_rand
	.globl _vm_rand
	.globl b_vm_lock
	.globl _vm_lock
	.globl b_vm_unlock
	.globl _vm_unlock
	.globl b_vm_raise
	.globl _vm_raise
	.globl b_vm_set_indirect
	.globl _vm_set_indirect
	.globl b_vm_get_indirect
	.globl _vm_get_indirect
	.globl b_vm_poll_loaded
	.globl _vm_poll_loaded
	.globl _vm_call_native
	.globl b_vm_memset
	.globl _vm_memset
	.globl b_vm_memcpy
	.globl _vm_memcpy
	.globl _VM_STEP
	.globl b_script_runner_init
	.globl _script_runner_init
	.globl b_script_execute
	.globl _script_execute
	.globl b_script_terminate
	.globl _script_terminate
	.globl b_script_detach_hthread
	.globl _script_detach_hthread
	.globl _script_runner_update
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$CTXS$0_0$0==.
_CTXS::
	.ds 304
G$first_ctx$0_0$0==.
_first_ctx::
	.ds 2
G$free_ctxs$0_0$0==.
_free_ctxs::
	.ds 2
G$old_executing_ctx$0_0$0==.
_old_executing_ctx::
	.ds 2
G$executing_ctx$0_0$0==.
_executing_ctx::
	.ds 2
G$vm_lock_state$0_0$0==.
_vm_lock_state::
	.ds 1
G$vm_loaded_state$0_0$0==.
_vm_loaded_state::
	.ds 1
G$vm_exception_code$0_0$0==.
_vm_exception_code::
	.ds 1
G$vm_exception_params_length$0_0$0==.
_vm_exception_params_length::
	.ds 1
G$vm_exception_params_bank$0_0$0==.
_vm_exception_params_bank::
	.ds 1
G$vm_exception_params_offset$0_0$0==.
_vm_exception_params_offset::
	.ds 2
Lvm.vm_rpn$op$2_1$303==.
_vm_rpn_op_20001_303:
	.ds 1
Fvm$current_fn_bank$0_0$0==.
_current_fn_bank:
	.ds 1
G$script_memory$0_0$0==.
_script_memory::
	.ds 3584
Lvm.script_terminate$ctx$1_0$358==.
_script_terminate_ctx_10000_358:
	.ds 2
Lvm.script_detach_hthread$ctx$1_0$363==.
_script_detach_hthread_ctx_10000_363:
	.ds 2
Lvm.script_runner_update$waitable$1_0$367==.
_script_runner_update_waitable_10000_367:
	.ds 1
Lvm.script_runner_update$counter$1_0$367==.
_script_runner_update_counter_10000_367:
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
	G$vm_switch$0$0	= .
	.globl	G$vm_switch$0$0
	C$vm.c$94$1_0$255	= .
	.globl	C$vm.c$94$1_0$255
;src\core\vm.c:94: void vm_switch(DUMMY0_t dummy0, DUMMY1_t dummy1, SCRIPT_CTX * THIS, INT16 idx, UBYTE size, UBYTE n) OLDCALL NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_switch
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 10 bytes.
_vm_switch::
;	adjustStack by -10
	add	sp, #-10
	C$vm.c$98$1_1$256	= .
	.globl	C$vm.c$98$1_1$256
;src\core\vm.c:98: if (idx < 0) value = *(THIS->stack_ptr + idx); else value = *(script_memory + idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#19
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#16
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
;	AOP_STK for _vm_switch_sloc0_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genLeftShift
;	AOP_STK for 
;	AOP_STK for _vm_switch_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#18
	ld	a, (hl)
	ldhl	sp,	#6
	ld	(hl), a
	ldhl	sp,	#19
	ld	a, (hl)
	ldhl	sp,	#7
;	genMove_o size 0
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	sla	(hl)
	inc	hl
	rl	(hl)
;	genPlus
;	AOP_STK for _vm_switch_sloc1_1_0
;	AOP_STK for _vm_switch_sloc0_1_0
;	AOP_STK for _vm_switch_sloc2_1_0
;fetchPairLong
	dec	hl
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
	push	hl
	ld	a, l
	ldhl	sp,	#10
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#9
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_switch_sloc2_1_0
;	AOP_STK for _vm_switch_sloc3_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#18
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genPointerGet
;	AOP_STK for _vm_switch_sloc3_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genLabel
00103$:
	C$vm.c$99$1_1$256	= .
	.globl	C$vm.c$99$1_1$256
;src\core\vm.c:99: if (n) THIS->stack_ptr -= n;        // dispose values on VM stack if required
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#21
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_switch_sloc4_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	inc	sp
	inc	sp
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_switch_sloc4_1_0
;	AOP_STK for _vm_switch_sloc5_1_0
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
	ld	(hl), a
;	genCast
;	AOP_STK for 
;	AOP_STK for _vm_switch_sloc6_1_0
;	genMove_o size 1
	ldhl	sp,	#21
	ld	a, (hl)
	ldhl	sp,	#8
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genLeftShift
;	AOP_STK for _vm_switch_sloc6_1_0
;	AOP_STK for _vm_switch_sloc7_1_0
;	genMove_o size 2
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	dec	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genMove_o size 0
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	sla	(hl)
	inc	hl
	rl	(hl)
;	genMinus
;	AOP_STK for _vm_switch_sloc5_1_0
;	AOP_STK for _vm_switch_sloc7_1_0
;	AOP_STK for _vm_switch_sloc8_1_0
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
	ldhl	sp,	#9
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	(hl), e
;	genAssign (pointer)
;	AOP_STK for _vm_switch_sloc4_1_0
;	AOP_STK for _vm_switch_sloc8_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genLabel
00105$:
	C$vm.c$101$2_1$257	= .
	.globl	C$vm.c$101$2_1$257
;src\core\vm.c:101: UBYTE _save = CURRENT_BANK;         // we must preserve current bank,
;	genAssign
;	AOP_STK for _vm_switch_sloc9_1_0
	ldh	a, (__current_bank + 0)
	ldhl	sp,	#4
	ld	(hl), a
	C$vm.c$102$1_2$257	= .
	.globl	C$vm.c$102$1_2$257
;src\core\vm.c:102: SWITCH_ROM(THIS->bank);             // then switch to bytecode bank
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
	ldh	(__current_bank + 0), a
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$vm.c$104$1_2$257	= .
	.globl	C$vm.c$104$1_2$257
;src\core\vm.c:104: table = (INT16 *)(THIS->PC);
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _vm_switch_sloc10_1_0
;	genMove_o size 2
	ldhl	sp,	#5
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm.c$105$1_2$255	= .
	.globl	C$vm.c$105$1_2$255
;src\core\vm.c:105: while (size) {
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_switch_sloc11_1_0
;	genMove_o size 1
	ldhl	sp,	#20
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00109$:
;	genIfx
;	AOP_STK for _vm_switch_sloc11_1_0
	ldhl	sp,	#9
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
	C$vm.c$106$2_2$258	= .
	.globl	C$vm.c$106$2_2$258
;src\core\vm.c:106: if (value == *table++) {
;	genPointerGet
;	AOP_STK for _vm_switch_sloc10_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genPlus
;	AOP_STK for _vm_switch_sloc10_1_0
;	AOP_STK for _vm_switch_sloc12_1_0
;fetchPairLong
; common peephole 96b move dec hl before ld b, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before ld a, (de)
	ld	a, (hl-)
	ld	d, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
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
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl), a
;	genMove_o size 0
;	genCmpEq
;	AOP_STK for _vm_switch_sloc3_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00107$
; common peephole 84 jumped to 00107$ directly instead of via 00152$.
	inc	hl
	ld	a, (hl)
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00152$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00107$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00153$.
;	skipping generated iCode
	C$vm.c$107$3_2$259	= .
	.globl	C$vm.c$107$3_2$259
;src\core\vm.c:107: THIS->PC = (UBYTE *)(*table);   // condition met, perform jump
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_switch_sloc13_1_0
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl)
	ldhl	sp,	#5
	ld	(hl), a
	ldhl	sp,	#17
	ld	a, (hl)
	ldhl	sp,	#6
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_switch_sloc12_1_0
;	AOP_STK for _vm_switch_sloc14_1_0
;fetchPairLong
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genCast
;	AOP_STK for _vm_switch_sloc14_1_0
;	AOP_STK for _vm_switch_sloc15_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
	ldhl	sp,	#3
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl), a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_switch_sloc13_1_0
;	AOP_STK for _vm_switch_sloc15_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld d, a
	inc	hl
	ld	d, a
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
	C$vm.c$108$3_2$259	= .
	.globl	C$vm.c$108$3_2$259
;src\core\vm.c:108: SWITCH_ROM(_save);              // restore bank
;	genAssign
;	AOP_STK for _vm_switch_sloc9_1_0
	ldhl	sp,	#4
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for _vm_switch_sloc9_1_0
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$vm.c$109$3_2$259	= .
	.globl	C$vm.c$109$3_2$259
;src\core\vm.c:109: return;
;	genRet
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00107$:
	C$vm.c$110$2_2$258	= .
	.globl	C$vm.c$110$2_2$258
;src\core\vm.c:110: } else table++;
;	genPlus
;	AOP_STK for _vm_switch_sloc12_1_0
;	AOP_STK for _vm_switch_sloc10_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl), a
;	genMove_o size 0
	C$vm.c$111$2_2$258	= .
	.globl	C$vm.c$111$2_2$258
;src\core\vm.c:111: size--;
;	genMinus
;	AOP_STK for _vm_switch_sloc11_1_0
	ldhl	sp,	#9
	dec	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00111$:
	C$vm.c$114$1_2$257	= .
	.globl	C$vm.c$114$1_2$257
;src\core\vm.c:114: SWITCH_ROM(_save);                  // restore bank
;	genAssign
;	AOP_STK for _vm_switch_sloc9_1_0
	ldhl	sp,	#4
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for _vm_switch_sloc9_1_0
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$vm.c$115$1_2$257	= .
	.globl	C$vm.c$115$1_2$257
;src\core\vm.c:115: THIS->PC = (UBYTE *)table;          // make PC point to the next instruction command
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_switch_sloc16_1_0
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#17
	ld	a, (hl)
	ldhl	sp,	#4
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_switch_sloc10_1_0
;	AOP_STK for _vm_switch_sloc17_1_0
;	genMove_o size 2
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl), a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_switch_sloc16_1_0
;	AOP_STK for _vm_switch_sloc17_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ldhl	sp,	#8
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genLabel
00112$:
	C$vm.c$116$1_2$255	= .
	.globl	C$vm.c$116$1_2$255
;src\core\vm.c:116: }
;	genEndFunction
;	adjustStack by 10
	add	sp, #10
	C$vm.c$116$1_2$255	= .
	.globl	C$vm.c$116$1_2$255
	XG$vm_switch$0$0	= .
	.globl	XG$vm_switch$0$0
	ret
	G$vm_beginthread$0$0	= .
	.globl	G$vm_beginthread$0$0
	C$vm.c$145$1_0$268	= .
	.globl	C$vm.c$145$1_0$268
;src\core\vm.c:145: void vm_beginthread(DUMMY0_t dummy0, DUMMY1_t dummy1, SCRIPT_CTX * THIS, UBYTE bank, UBYTE * pc, INT16 idx, UBYTE nargs) OLDCALL NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_beginthread
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 16 bytes.
_vm_beginthread::
;	adjustStack by -16
	add	sp, #-16
	C$vm.c$148$1_1$269	= .
	.globl	C$vm.c$148$1_1$269
;src\core\vm.c:148: if (idx < 0) A = THIS->stack_ptr + idx; else A = script_memory + idx;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#28
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#22
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#27
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#27
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00103$:
	C$vm.c$149$1_2$270	= .
	.globl	C$vm.c$149$1_2$270
;src\core\vm.c:149: SCRIPT_CTX * ctx = script_execute(bank, pc, A, 0);
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genIpush
	push	hl
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#28
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move dec hl before push (de)
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96d move dec hl before push (de)
; common peephole 96b move dec hl before ld d, a
	dec	hl
	ld	d, a
	push	de
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
;	AOP_STK for _vm_beginthread_sloc0_1_0
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 6
;	genMove_o size 2
; peephole sp8a increased SP by addition
; peephole sp8a increased SP by addition
	add	sp, #8
	push	bc
;	genMove_o size 0
	C$vm.c$151$1_2$270	= .
	.globl	C$vm.c$151$1_2$270
;src\core\vm.c:151: if (!(nargs)) return;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#29
	ld	a, (hl)
	or	a, a
;	genRet
;	genLabel
	jp	Z,00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00105$.
	C$vm.c$152$1_2$270	= .
	.globl	C$vm.c$152$1_2$270
;src\core\vm.c:152: if (ctx) {
;	genIfx
;	AOP_STK for _vm_beginthread_sloc0_1_0
	ldhl	sp,	#1
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00112$
	C$vm.c$153$3_2$271	= .
	.globl	C$vm.c$153$3_2$271
;src\core\vm.c:153: UBYTE _save = CURRENT_BANK;         // we must preserve current bank,
;	genAssign
;	AOP_STK for _vm_beginthread_sloc1_1_0
; common peephole 96b move inc hl before ldh a, (__current_bank + 0)
	inc	hl
; common peephole 96b move inc hl before ldh a, (__current_bank + 0)
	inc	hl
	ldh	a, (__current_bank + 0)
	ld	(hl), a
	C$vm.c$154$2_2$271	= .
	.globl	C$vm.c$154$2_2$271
;src\core\vm.c:154: SWITCH_ROM(THIS->bank);             // then switch to bytecode bank
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#22
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ldh	(__current_bank + 0), a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$vm.c$155$4_2$272	= .
	.globl	C$vm.c$155$4_2$272
;src\core\vm.c:155: for (UBYTE i = nargs; i != 0; i--) {
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_beginthread_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#29
	ld	a, (hl)
	ldhl	sp,	#15
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_beginthread_sloc3_1_0
;	genMove_o size 2
	ldhl	sp,	#22
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	AOP_STK for _vm_beginthread_sloc4_1_0
;	genMove_o size 2
	ldhl	sp,	#27
	ld	a, (hl)
	ldhl	sp,	#5
	ld	(hl), a
	ldhl	sp,	#28
	ld	a, (hl)
	ldhl	sp,	#6
;	genMove_o size 0
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	sla	(hl)
	inc	hl
	rl	(hl)
;	genPlus
;	AOP_STK for _vm_beginthread_sloc4_1_0
;	AOP_STK for _vm_beginthread_sloc5_1_0
;fetchPairLong
;fetchLitPair	de
	ld	de, #_script_memory
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
;	genPlus
;	AOP_STK for _vm_beginthread_sloc3_1_0
;	AOP_STK for _vm_beginthread_sloc6_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
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
;	genLabel
00110$:
;	genIfx
;	AOP_STK for _vm_beginthread_sloc2_1_0
	ldhl	sp,	#15
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
	C$vm.c$156$4_2$273	= .
	.globl	C$vm.c$156$4_2$273
;src\core\vm.c:156: INT16 A = *((INT16 *)THIS->PC);
;	genPointerGet
;	AOP_STK for _vm_beginthread_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; common peephole 1 removed dead load from a into c.
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	C$vm.c$157$4_2$273	= .
	.globl	C$vm.c$157$4_2$273
;src\core\vm.c:157: A = (A < 0) ? *(THIS->stack_ptr + idx) : *(script_memory + idx);
;	genCmpLt
; common peephole 73 tested bit 7 of (hl) directly instead of going through b.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
;	skipping generated iCode
;	genPointerGet
;	AOP_STK for _vm_beginthread_sloc6_1_0
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
	ld	b, a
;	genPlus
;	AOP_STK for _vm_beginthread_sloc4_1_0
;fetchPairLong
	ldhl	sp,	#5
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
; common peephole 1 removed dead load from l into c.
; common peephole 0b removed redundant load from c back into l.
; common peephole 9 loaded h from h directly instead of going through a.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;	genLabel
00114$:
;	genPointerGet
;	AOP_STK for _vm_beginthread_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genLabel
00115$:
;	genAssign
;	AOP_STK for _vm_beginthread_sloc7_1_0
;	genMove_o size 2
	ldhl	sp,	#11
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm.c$158$4_2$273	= .
	.globl	C$vm.c$158$4_2$273
;src\core\vm.c:158: *(ctx->stack_ptr++) = (UWORD)A;
;	genPlus
;	AOP_STK for _vm_beginthread_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_beginthread_sloc8_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#13
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genPlus
;	AOP_STK for _vm_beginthread_sloc8_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genCast
;	AOP_STK for _vm_beginthread_sloc7_1_0
;	genMove_o size 2
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_beginthread_sloc8_1_0
;fetchPairLong
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$159$4_2$273	= .
	.globl	C$vm.c$159$4_2$273
;src\core\vm.c:159: THIS->PC += 2;
;	genPointerGet
;	AOP_STK for _vm_beginthread_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
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
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_beginthread_sloc3_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$155$3_2$272	= .
	.globl	C$vm.c$155$3_2$272
;src\core\vm.c:155: for (UBYTE i = nargs; i != 0; i--) {
;	genMinus
;	AOP_STK for _vm_beginthread_sloc2_1_0
	ldhl	sp,	#15
	dec	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00106$:
	C$vm.c$161$2_2$271	= .
	.globl	C$vm.c$161$2_2$271
;src\core\vm.c:161: SWITCH_ROM(_save);
;	genAssign
;	AOP_STK for _vm_beginthread_sloc1_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for _vm_beginthread_sloc1_1_0
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
;	genLabel
00112$:
	C$vm.c$163$1_2$268	= .
	.globl	C$vm.c$163$1_2$268
;src\core\vm.c:163: }
;	genEndFunction
;	adjustStack by 16
	add	sp, #16
	C$vm.c$163$1_2$268	= .
	.globl	C$vm.c$163$1_2$268
	XG$vm_beginthread$0$0	= .
	.globl	XG$vm_beginthread$0$0
	ret
	G$vm_rpn$0$0	= .
	.globl	G$vm_rpn$0$0
	C$vm.c$258$1_0$301	= .
	.globl	C$vm.c$258$1_0$301
;src\core\vm.c:258: void vm_rpn(DUMMY0_t dummy0, DUMMY1_t dummy1, SCRIPT_CTX * THIS) OLDCALL NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_rpn
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 13 bytes.
_vm_rpn::
;	adjustStack by -13
	add	sp, #-13
	C$vm.c$263$2_0$302	= .
	.globl	C$vm.c$263$2_0$302
;src\core\vm.c:263: UBYTE _save = CURRENT_BANK;         // we must preserve current bank,
;	genAssign
;	AOP_STK for _vm_rpn_sloc0_1_0
	ldh	a, (__current_bank + 0)
	ldhl	sp,	#0
	ld	(hl), a
	C$vm.c$264$1_1$302	= .
	.globl	C$vm.c$264$1_1$302
;src\core\vm.c:264: SWITCH_ROM(THIS->bank);             // then switch to bytecode bank
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
	ldh	(__current_bank + 0), a
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$vm.c$266$1_1$302	= .
	.globl	C$vm.c$266$1_1$302
;src\core\vm.c:266: ARGS = THIS->stack_ptr;             // fix position of the stack to simplify parameter addressing
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc1_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#1
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$vm.c$267$5_1$306	= .
	.globl	C$vm.c$267$5_1$306
;src\core\vm.c:267: while (TRUE) {
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_rpn_sloc2_1_0
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
	ldhl	sp,	#20
	ld	a, (hl)
	ldhl	sp,	#4
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPlus
;	AOP_STK for _vm_rpn_sloc2_1_0
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00151$:
	C$vm.c$269$2_1$303	= .
	.globl	C$vm.c$269$2_1$303
;src\core\vm.c:269: op = *(THIS->PC++);
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;	AOP_STK for _vm_rpn_sloc4_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genPlus
;	AOP_STK for _vm_rpn_sloc4_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#3
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc4_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_vm_rpn_op_20001_303
	ld	(hl), a
	C$vm.c$270$2_1$303	= .
	.globl	C$vm.c$270$2_1$303
;src\core\vm.c:270: if (op < 0) {
;	genCmpLt
;fetchLitPair	hl
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
	jp	Z, 00148$
;	skipping generated iCode
	C$vm.c$271$3_1$304	= .
	.globl	C$vm.c$271$3_1$304
;src\core\vm.c:271: switch (op) {
;	genCmpLt
;fetchLitPair	hl
	ld	a, (hl)
	xor	a, #0x80
	sub	a, #0x78
	jp	C, 00117$
;	skipping generated iCode
;	genCmpGt
;fetchLitPair	hl
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
; common peephole 9 loaded d from #0xff directly instead of going through a.
	ld	a,#0xff
	ld	d,a
; common peephole 103 loaded value in a first and used it next
;fetchLitPair	hl
	sub	a, (hl)
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00506$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00507$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00507$
00506$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00507$
	scf
00507$:
	jp	C, 00117$
;	skipping generated iCode
;	genMinus
;fetchLitPair	hl
	ld	a, (#_vm_rpn_op_20001_303)
; common peephole 17 loaded a from (#_vm_rpn_op_20001_303) directly instead of using hl.
	add	a, #0x08
	ld	c, a
;	genJumpTab
	ld	b, #0x00
	ld	hl, #00508$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00508$:
	jp	00101$
	jp	00106$
	jp	00111$
	jp	00112$
	jp	00113$
	jp	00114$
	jp	00115$
	jp	00116$
	C$vm.c$273$4_1$305	= .
	.globl	C$vm.c$273$4_1$305
;src\core\vm.c:273: case -8:
;	genLabel
00101$:
	C$vm.c$274$4_1$305	= .
	.globl	C$vm.c$274$4_1$305
;src\core\vm.c:274: op = *(THIS->PC++);
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;	AOP_STK for _vm_rpn_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genPlus
;	AOP_STK for _vm_rpn_sloc5_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#3
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_vm_rpn_op_20001_303
	ld	(hl), a
	C$vm.c$275$4_1$305	= .
	.globl	C$vm.c$275$4_1$305
;src\core\vm.c:275: switch ((UINT8)op) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genCmpEq
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00509$.
;	skipping generated iCode
;	genCmpEq
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (hl)
	cp	a,#0x49
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
; common peephole 107 removed load from c into a by replacing sub with cp
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00510$.
;	skipping generated iCode
;	genCmpEq
	cp	a,#0x69
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
; common peephole 108 removed load from c into a by replacing sub with cp
	sub	a, #0x75
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00511$.
;	skipping generated iCode
;	genGoto
	jp	00105$
	C$vm.c$276$5_1$306	= .
	.globl	C$vm.c$276$5_1$306
;src\core\vm.c:276: case 'i' : **((INT8 **)(THIS->PC))  = *(--(THIS->stack_ptr)); break;
;	genLabel
00102$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc6_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genMinus
	dec	bc
	dec	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc6_1_0
;fetchPairLong
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
	C$vm.c$277$5_1$306	= .
	.globl	C$vm.c$277$5_1$306
;src\core\vm.c:277: case 'u' : **((UINT8 **)(THIS->PC)) = *(--(THIS->stack_ptr)); break;
;	genLabel
00103$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc7_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genMinus
;fetchPairLong
	ld	b, a
	dec	bc
	dec	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc7_1_0
;fetchPairLong
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
	C$vm.c$278$5_1$306	= .
	.globl	C$vm.c$278$5_1$306
;src\core\vm.c:278: case 'I' : **((INT16 **)(THIS->PC)) = *(--(THIS->stack_ptr)); break;
;	genLabel
00104$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc8_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genMinus
	dec	bc
	dec	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
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
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc8_1_0
;fetchPairLong
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$279$4_1$305	= .
	.globl	C$vm.c$279$4_1$305
;src\core\vm.c:279: }
;	genLabel
00105$:
	C$vm.c$280$4_1$305	= .
	.globl	C$vm.c$280$4_1$305
;src\core\vm.c:280: THIS->PC += 2;
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genPlus
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$281$4_1$305	= .
	.globl	C$vm.c$281$4_1$305
;src\core\vm.c:281: continue;
;	genGoto
	jp	00151$
	C$vm.c$283$4_1$305	= .
	.globl	C$vm.c$283$4_1$305
;src\core\vm.c:283: case -7:
;	genLabel
00106$:
	C$vm.c$284$4_1$305	= .
	.globl	C$vm.c$284$4_1$305
;src\core\vm.c:284: op = *(THIS->PC++);
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;	AOP_STK for _vm_rpn_sloc9_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genPlus
;	AOP_STK for _vm_rpn_sloc9_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#3
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc9_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_vm_rpn_op_20001_303
	ld	(hl), a
	C$vm.c$285$4_1$305	= .
	.globl	C$vm.c$285$4_1$305
;src\core\vm.c:285: switch ((UINT8)op) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genCmpEq
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00512$.
;	skipping generated iCode
;	genCmpEq
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (hl)
	cp	a,#0x49
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
; common peephole 107 removed load from c into a by replacing sub with cp
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00513$.
;	skipping generated iCode
;	genCmpEq
	cp	a,#0x69
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
; common peephole 108 removed load from c into a by replacing sub with cp
	sub	a, #0x75
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00514$.
;	skipping generated iCode
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
	C$vm.c$286$5_1$307	= .
	.globl	C$vm.c$286$5_1$307
;src\core\vm.c:286: case 'i' : *(THIS->stack_ptr) = **((INT8 **)(THIS->PC));  break;
;	genLabel
00107$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; common peephole 96b move dec hl before ld b, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before ld a, (de)
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96b move dec hl before ld b, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96b move dec hl before ld d, a
	dec	hl
; common peephole 96b move dec hl before ld b, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96b move dec hl before ld d, a
	dec	hl
	ld	d, a
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
	ld	a, (hl)
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
	C$vm.c$287$5_1$307	= .
	.globl	C$vm.c$287$5_1$307
;src\core\vm.c:287: case 'u' : *(THIS->stack_ptr) = **((UINT8 **)(THIS->PC)); break;
;	genLabel
00108$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; common peephole 96b move dec hl before ld b, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before ld a, (de)
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96b move dec hl before ld b, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96b move dec hl before ld d, a
	dec	hl
; common peephole 96b move dec hl before ld b, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96b move dec hl before ld d, a
	dec	hl
	ld	d, a
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
	ld	e, (hl)
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	d, #0x00
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
	C$vm.c$288$5_1$307	= .
	.globl	C$vm.c$288$5_1$307
;src\core\vm.c:288: case 'I' : *(THIS->stack_ptr) = **((INT16 **)(THIS->PC)); break;
;	genLabel
00109$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;	AOP_STK for _vm_rpn_sloc10_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc10_1_0
;fetchPairLong
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$289$4_1$305	= .
	.globl	C$vm.c$289$4_1$305
;src\core\vm.c:289: }
;	genLabel
00110$:
	C$vm.c$290$4_1$305	= .
	.globl	C$vm.c$290$4_1$305
;src\core\vm.c:290: THIS->PC += 2;
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genPlus
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$291$4_1$305	= .
	.globl	C$vm.c$291$4_1$305
;src\core\vm.c:291: break;
;	genGoto
	jp	00118$
	C$vm.c$293$4_1$305	= .
	.globl	C$vm.c$293$4_1$305
;src\core\vm.c:293: case -6:
;	genLabel
00111$:
	C$vm.c$294$4_1$305	= .
	.globl	C$vm.c$294$4_1$305
;src\core\vm.c:294: idx = *((INT16 *)(THIS->PC));
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
	C$vm.c$295$4_1$305	= .
	.globl	C$vm.c$295$4_1$305
;src\core\vm.c:295: idx = *((idx < 0) ? ARGS + idx : script_memory + idx);
;	genCmpLt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00155$
;	skipping generated iCode
;	genLeftShift
;fetchPairLong
	sla	c
	rl	b
;	genPlus
;	AOP_STK for _vm_rpn_sloc1_1_0
;	AOP_STK for _vm_rpn_sloc11_1_0
;fetchPairLong
	ldhl	sp,	#1
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00156$
;	genLabel
00155$:
;	genLeftShift
;	genMove_o size 2
	ld	a, c
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
;	genCast
;	AOP_STK for _vm_rpn_sloc11_1_0
;	genMove_o size 2
	ldhl	sp,	#11
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00156$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc11_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	C$vm.c$296$4_1$305	= .
	.globl	C$vm.c$296$4_1$305
;src\core\vm.c:296: *((idx < 0) ? ARGS + idx : script_memory + idx) = *(--(THIS->stack_ptr));
;	genCmpLt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00157$
;	skipping generated iCode
;	genLeftShift
;fetchPairLong
	sla	c
	rl	b
;	genPlus
;	AOP_STK for _vm_rpn_sloc1_1_0
;	AOP_STK for _vm_rpn_sloc12_1_0
;fetchPairLong
	ldhl	sp,	#1
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00158$
;	genLabel
00157$:
;	genLeftShift
;	genMove_o size 2
	ld	a, c
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
;	genCast
;	AOP_STK for _vm_rpn_sloc12_1_0
;	genMove_o size 2
	ldhl	sp,	#11
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00158$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genMinus
;fetchPairLong
	ld	b, a
	dec	bc
	dec	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
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
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc12_1_0
;fetchPairLong
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$297$4_1$305	= .
	.globl	C$vm.c$297$4_1$305
;src\core\vm.c:297: THIS->PC += 2;
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genPlus
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$298$4_1$305	= .
	.globl	C$vm.c$298$4_1$305
;src\core\vm.c:298: continue;
;	genGoto
	jp	00151$
	C$vm.c$300$4_1$305	= .
	.globl	C$vm.c$300$4_1$305
;src\core\vm.c:300: case -5:
;	genLabel
00112$:
	C$vm.c$301$4_1$305	= .
	.globl	C$vm.c$301$4_1$305
;src\core\vm.c:301: idx = *((INT16 *)(THIS->PC));
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
	C$vm.c$302$4_1$305	= .
	.globl	C$vm.c$302$4_1$305
;src\core\vm.c:302: *((idx < 0) ? ARGS + idx : script_memory + idx) = *(--(THIS->stack_ptr));
;	genCmpLt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00159$
;	skipping generated iCode
;	genLeftShift
;fetchPairLong
	sla	c
	rl	b
;	genPlus
;	AOP_STK for _vm_rpn_sloc1_1_0
;	AOP_STK for _vm_rpn_sloc13_1_0
;fetchPairLong
	ldhl	sp,	#1
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00160$
;	genLabel
00159$:
;	genLeftShift
;	genMove_o size 2
	ld	a, c
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
;	genCast
;	AOP_STK for _vm_rpn_sloc13_1_0
;	genMove_o size 2
	ldhl	sp,	#11
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00160$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genMinus
;fetchPairLong
	ld	b, a
	dec	bc
	dec	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
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
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc13_1_0
;fetchPairLong
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$303$4_1$305	= .
	.globl	C$vm.c$303$4_1$305
;src\core\vm.c:303: THIS->PC += 2;
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genPlus
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$304$4_1$305	= .
	.globl	C$vm.c$304$4_1$305
;src\core\vm.c:304: continue;
;	genGoto
	jp	00151$
	C$vm.c$306$4_1$305	= .
	.globl	C$vm.c$306$4_1$305
;src\core\vm.c:306: case -4:
;	genLabel
00113$:
	C$vm.c$307$4_1$305	= .
	.globl	C$vm.c$307$4_1$305
;src\core\vm.c:307: idx = *((INT16 *)(THIS->PC));
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
	C$vm.c$308$4_1$305	= .
	.globl	C$vm.c$308$4_1$305
;src\core\vm.c:308: idx = *((idx < 0) ? ARGS + idx : script_memory + idx);
;	genCmpLt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00161$
;	skipping generated iCode
;	genLeftShift
;fetchPairLong
	sla	c
	rl	b
;	genPlus
;	AOP_STK for _vm_rpn_sloc1_1_0
;	AOP_STK for _vm_rpn_sloc14_1_0
;fetchPairLong
	ldhl	sp,	#1
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00162$
;	genLabel
00161$:
;	genLeftShift
;	genMove_o size 2
	ld	a, c
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
;	genCast
;	AOP_STK for _vm_rpn_sloc14_1_0
;	genMove_o size 2
	ldhl	sp,	#11
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00162$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc14_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	C$vm.c$309$4_1$305	= .
	.globl	C$vm.c$309$4_1$305
;src\core\vm.c:309: *(THIS->stack_ptr) = *((idx < 0) ? ARGS + idx : script_memory + idx);
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;	AOP_STK for _vm_rpn_sloc15_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#9
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genCmpLt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00163$
;	skipping generated iCode
;	genLeftShift
;fetchPairLong
	sla	c
	rl	b
;	genPlus
;	AOP_STK for _vm_rpn_sloc1_1_0
;	AOP_STK for _vm_rpn_sloc16_1_0
;fetchPairLong
	ldhl	sp,	#1
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00164$
;	genLabel
00163$:
;	genLeftShift
;	genMove_o size 2
	ld	a, c
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
;	genCast
;	AOP_STK for _vm_rpn_sloc16_1_0
;	genMove_o size 2
	ldhl	sp,	#11
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00164$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc16_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc15_1_0
;fetchPairLong
	ldhl	sp,	#9
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$310$4_1$305	= .
	.globl	C$vm.c$310$4_1$305
;src\core\vm.c:310: THIS->PC += 2;
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genPlus
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$311$4_1$305	= .
	.globl	C$vm.c$311$4_1$305
;src\core\vm.c:311: break;
;	genGoto
	jp	00118$
	C$vm.c$313$4_1$305	= .
	.globl	C$vm.c$313$4_1$305
;src\core\vm.c:313: case -3:
;	genLabel
00114$:
	C$vm.c$314$4_1$305	= .
	.globl	C$vm.c$314$4_1$305
;src\core\vm.c:314: idx = *((INT16 *)(THIS->PC));
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
	C$vm.c$315$4_1$305	= .
	.globl	C$vm.c$315$4_1$305
;src\core\vm.c:315: *(THIS->stack_ptr) = *((idx < 0) ? ARGS + idx : script_memory + idx);
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;	AOP_STK for _vm_rpn_sloc17_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#9
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genCmpLt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00165$
;	skipping generated iCode
;	genLeftShift
;fetchPairLong
	sla	c
	rl	b
;	genPlus
;	AOP_STK for _vm_rpn_sloc1_1_0
;	AOP_STK for _vm_rpn_sloc18_1_0
;fetchPairLong
	ldhl	sp,	#1
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00166$
;	genLabel
00165$:
;	genLeftShift
;	genMove_o size 2
	ld	a, c
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
;	genCast
;	AOP_STK for _vm_rpn_sloc18_1_0
;	genMove_o size 2
	ldhl	sp,	#11
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00166$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc18_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc17_1_0
;fetchPairLong
	ldhl	sp,	#9
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$316$4_1$305	= .
	.globl	C$vm.c$316$4_1$305
;src\core\vm.c:316: THIS->PC += 2;
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genPlus
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$317$4_1$305	= .
	.globl	C$vm.c$317$4_1$305
;src\core\vm.c:317: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00118$
	C$vm.c$319$4_1$305	= .
	.globl	C$vm.c$319$4_1$305
;src\core\vm.c:319: case -2:
;	genLabel
00115$:
	C$vm.c$320$4_1$305	= .
	.globl	C$vm.c$320$4_1$305
;src\core\vm.c:320: *(THIS->stack_ptr) = *((UWORD *)(THIS->PC));
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;	AOP_STK for _vm_rpn_sloc19_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc19_1_0
;fetchPairLong
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$321$4_1$305	= .
	.globl	C$vm.c$321$4_1$305
;src\core\vm.c:321: THIS->PC += 2;
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genPlus
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$322$4_1$305	= .
	.globl	C$vm.c$322$4_1$305
;src\core\vm.c:322: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00118$
	C$vm.c$324$4_1$305	= .
	.globl	C$vm.c$324$4_1$305
;src\core\vm.c:324: case -1:
;	genLabel
00116$:
	C$vm.c$325$4_1$305	= .
	.globl	C$vm.c$325$4_1$305
;src\core\vm.c:325: op = *(THIS->PC++);
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc2_1_0
;	AOP_STK for _vm_rpn_sloc20_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genPlus
;	AOP_STK for _vm_rpn_sloc20_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#3
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc20_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;fetchLitPair	hl
	ld	(#_vm_rpn_op_20001_303),a
; common peephole 19 loaded (#_vm_rpn_op_20001_303) from a directly instead of using hl.
	C$vm.c$326$4_1$305	= .
	.globl	C$vm.c$326$4_1$305
;src\core\vm.c:326: *(THIS->stack_ptr) = op;
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	push	hl
;fetchLitPair	hl
	ld	a, (#_vm_rpn_op_20001_303)
; common peephole 17 loaded a from (#_vm_rpn_op_20001_303) directly instead of using hl.
	pop	hl
	ld	c, a
	rlca
	sbc	a, a
;	genAssign (pointer)
;fetchPairLong
	ld	(hl), c
	inc	hl
	ld	(hl), a
	C$vm.c$327$4_1$305	= .
	.globl	C$vm.c$327$4_1$305
;src\core\vm.c:327: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00118$
	C$vm.c$328$4_1$305	= .
	.globl	C$vm.c$328$4_1$305
;src\core\vm.c:328: default:
;	genLabel
00117$:
	C$vm.c$329$4_1$305	= .
	.globl	C$vm.c$329$4_1$305
;src\core\vm.c:329: SWITCH_ROM(_save);             // restore bank
;	genAssign
;	AOP_STK for _vm_rpn_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for _vm_rpn_sloc0_1_0
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$vm.c$330$4_1$305	= .
	.globl	C$vm.c$330$4_1$305
;src\core\vm.c:330: return;
;	genRet
	jp	00153$
	C$vm.c$331$3_1$304	= .
	.globl	C$vm.c$331$3_1$304
;src\core\vm.c:331: }
;	genLabel
00118$:
	C$vm.c$332$3_1$304	= .
	.globl	C$vm.c$332$3_1$304
;src\core\vm.c:332: THIS->stack_ptr++;
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genPlus
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00151$
;	genLabel
00148$:
	C$vm.c$334$3_1$308	= .
	.globl	C$vm.c$334$3_1$308
;src\core\vm.c:334: A = THIS->stack_ptr - 2; B = A + 1;
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMinus
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
;fetchPairLong
;fetchLitPair	de
; common peephole 96b move inc hl before sbc a, d
; common peephole 96b move inc hl before ld a, b
; common peephole 96b move inc hl before ld e, a
; common peephole 96b move inc hl before sub a, e
; common peephole 96b move inc hl before ld a, c
; common peephole 96b move inc hl before ld de, #0x0004
; common peephole 96b move inc hl before ld b, a
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before ld a, (de)
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before sbc a, d
; common peephole 96b move inc hl before ld a, b
; common peephole 96b move inc hl before ld e, a
; common peephole 96b move inc hl before sub a, e
; common peephole 96b move inc hl before ld a, c
; common peephole 96b move inc hl before ld de, #0x0004
; common peephole 96b move inc hl before ld b, a
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld c, a
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96b move inc hl before ld d, a
	inc	hl
	ld	d, a
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	de, #0x0004
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
;	genPlus
;	AOP_STK for _vm_rpn_sloc21_1_0
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
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
	ldhl	sp,	#13
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#12
	ld	(hl), a
;	genMove_o size 0
	C$vm.c$335$3_1$308	= .
	.globl	C$vm.c$335$3_1$308
;src\core\vm.c:335: switch ((UINT8)op) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vm_rpn_op_20001_303)
; common peephole 17 loaded a from (#_vm_rpn_op_20001_303) directly instead of using hl.
;	genCmpEq
	cp	a, #0x01
	jp	Z,00124$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00527$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x02
	jp	Z,00125$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00528$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x03
	jp	Z,00126$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00529$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x04
	jp	Z,00127$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00530$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x05
	jp	Z,00128$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00531$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x06
	jp	Z,00129$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00532$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x07
	jp	Z,00130$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00533$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x08
	jp	Z,00131$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00534$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x09
	jp	Z,00132$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00535$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x25
	jp	Z,00123$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00536$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x26
	jp	Z,00133$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00537$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x2a
	jp	Z,00121$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00538$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x2b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00119$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00539$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x2d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00120$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00540$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x2f
	jp	Z,00122$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00541$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x40
	jp	Z,00141$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00542$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x4c
	jp	Z,00136$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00543$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x4d
	jp	Z,00139$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00544$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x51
	jp	Z,00143$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00545$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x52
	jp	Z,00137$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00546$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x54
	jp	Z,00140$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00547$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x5e
	jp	Z,00135$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00548$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x6d
	jp	Z,00138$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00549$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x72
	jp	Z,00144$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00550$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x7c
	jp	Z,00134$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00551$.
;	skipping generated iCode
;	genCmpEq
	sub	a, #0x7e
	jp	Z,00142$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00552$.
;	skipping generated iCode
;	genGoto
	jp	00145$
	C$vm.c$337$4_1$309	= .
	.globl	C$vm.c$337$4_1$309
;src\core\vm.c:337: case '+': *A = *A  +  *B; break;
;	genLabel
00119$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$338$4_1$309	= .
	.globl	C$vm.c$338$4_1$309
;src\core\vm.c:338: case '-': *A = *A  -  *B; break;
;	genLabel
00120$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$339$4_1$309	= .
	.globl	C$vm.c$339$4_1$309
;src\core\vm.c:339: case '*': *A = *A  *  *B; break;
;	genLabel
00121$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;	AOP_STK for _vm_rpn_sloc23_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genSend
;	genMove_o size 2
;	genSend
;	AOP_STK for _vm_rpn_sloc23_1_0
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	__mulint
;	genMove_o size 2
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$340$4_1$309	= .
	.globl	C$vm.c$340$4_1$309
;src\core\vm.c:340: case '/': *A = *A  /  *B; break;
;	genLabel
00122$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;	AOP_STK for _vm_rpn_sloc24_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genSend
;	genMove_o size 2
;	genSend
;	AOP_STK for _vm_rpn_sloc24_1_0
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	__divsint
;	genMove_o size 2
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$341$4_1$309	= .
	.globl	C$vm.c$341$4_1$309
;src\core\vm.c:341: case '%': *A = *A  %  *B; break;
;	genLabel
00123$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;	AOP_STK for _vm_rpn_sloc25_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genSend
;	genMove_o size 2
;	genSend
;	AOP_STK for _vm_rpn_sloc25_1_0
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	__modsint
;	genMove_o size 2
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$343$4_1$309	= .
	.globl	C$vm.c$343$4_1$309
;src\core\vm.c:343: case VM_OP_EQ:  *A = (*A  ==  *B); break;
;	genLabel
00124$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCmpEq
	ld	a, l
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00553$
	ld	a, h
	sub	a, b
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00554$
; common peephole 169xnz used double assignment in case of NZ condition.
00553$:
	xor	a, a
00554$:
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$344$4_1$309	= .
	.globl	C$vm.c$344$4_1$309
;src\core\vm.c:344: case VM_OP_LT:  *A = (*A  <   *B); break;
;	genLabel
00125$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
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
	jr	Z, 00555$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00556$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00556$
00555$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00556$
	scf
00556$:
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$345$4_1$309	= .
	.globl	C$vm.c$345$4_1$309
;src\core\vm.c:345: case VM_OP_LE:  *A = (*A  <=  *B); break;
;	genLabel
00126$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
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
	jr	Z, 00557$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00558$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00558$
00557$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00558$
	scf
00558$:
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genNot
	xor	a, #0x01
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$346$4_1$309	= .
	.globl	C$vm.c$346$4_1$309
;src\core\vm.c:346: case VM_OP_GT:  *A = (*A  >   *B); break;
;	genLabel
00127$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
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
	jr	Z, 00559$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00560$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00560$
00559$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00560$
	scf
00560$:
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$347$4_1$309	= .
	.globl	C$vm.c$347$4_1$309
;src\core\vm.c:347: case VM_OP_GE:  *A = (*A  >=  *B); break;
;	genLabel
00128$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
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
	jr	Z, 00561$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00562$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00562$
00561$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00562$
	scf
00562$:
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genNot
	xor	a, #0x01
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$348$4_1$309	= .
	.globl	C$vm.c$348$4_1$309
;src\core\vm.c:348: case VM_OP_NE:  *A = (*A  !=  *B); break;
;	genLabel
00129$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCmpEq
	ld	a, l
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00563$
	ld	a, h
	sub	a, b
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00564$
; common peephole 169xnz used double assignment in case of NZ condition.
00563$:
	xor	a, a
00564$:
;	genMove_o size 1
;	genNot
	xor	a, #0x01
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$349$4_1$309	= .
	.globl	C$vm.c$349$4_1$309
;src\core\vm.c:349: case VM_OP_AND: *A = ((bool)(*A)  &&  (bool)(*B)); break;
;	genLabel
00130$:
;	genAssign
;	AOP_STK for _vm_rpn_sloc21_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genIfx
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00167$
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genIfx
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00168$
;	genLabel
00167$:
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00169$
;	genLabel
00168$:
;	genAssign
;	genMove_o size 1
	ld	a, #0x01
;	genLabel
00169$:
;	genCast
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genGoto
	jp	00146$
	C$vm.c$350$4_1$309	= .
	.globl	C$vm.c$350$4_1$309
;src\core\vm.c:350: case VM_OP_OR:  *A = ((bool)(*A)  ||  (bool)(*B)); break;
;	genLabel
00131$:
;	genAssign
;	AOP_STK for _vm_rpn_sloc21_1_0
;	AOP_STK for _vm_rpn_sloc26_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
	dec	hl
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
	jr	NZ, 00171$
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genIfx
;	genAssign
;	genMove_o size 1
	or	a,c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00171$
	ld	c,a
; common peephole 121a replaced constant #0x00 by a (which has just been tested to be #0x00).
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00172$
;	genLabel
00171$:
;	genAssign
;	genMove_o size 1
	ld	c, #0x01
;	genLabel
00172$:
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc26_1_0
;fetchPairLong
	ldhl	sp,	#9
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$351$4_1$309	= .
	.globl	C$vm.c$351$4_1$309
;src\core\vm.c:351: case VM_OP_NOT: *B = !(*B); continue;
;	genLabel
00132$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genNot
; common peephole 9 loaded a from a directly instead of going through b.
; common peephole 0a removed redundant load from a into a.
	or	a, c
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00151$
	C$vm.c$353$4_1$309	= .
	.globl	C$vm.c$353$4_1$309
;src\core\vm.c:353: case '&': *A = *A  &  *B; break;
;	genLabel
00133$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genAnd
	ld	a, l
	and	a, c
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	ld	a, h
	and	a, b
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$354$4_1$309	= .
	.globl	C$vm.c$354$4_1$309
;src\core\vm.c:354: case '|': *A = *A  |  *B; break;
;	genLabel
00134$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genOr
	ld	a, c
	or	a, l
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	ld	a, b
	or	a, h
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$355$4_1$309	= .
	.globl	C$vm.c$355$4_1$309
;src\core\vm.c:355: case '^': *A = *A  ^  *B; break;
;	genLabel
00135$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genXor
	ld	a, c
	xor	a, l
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	ld	a, b
	xor	a, h
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$356$4_1$309	= .
	.globl	C$vm.c$356$4_1$309
;src\core\vm.c:356: case 'L': *A = *(uint16_t *)A << (*B & 0x0f); break;
;	genLabel
00136$:
;	genCast
;	AOP_STK for _vm_rpn_sloc21_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
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
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genAnd
	and	a, #0x0f
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genLeftShift
;	genMove_o size 2
;	genMove_o size 0
	inc	e
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00566$
00565$:
	sla	c
	rl	b
00566$:
	dec	e
	jr	NZ,00565$
;	genMove_o size 2
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$357$4_1$309	= .
	.globl	C$vm.c$357$4_1$309
;src\core\vm.c:357: case 'R': *A = *(uint16_t *)A >> (*B & 0x0f); break;
;	genLabel
00137$:
;	genCast
;	AOP_STK for _vm_rpn_sloc21_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
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
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genAnd
	and	a, #0x0f
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genRightShift
;	genMove_o size 2
;	genMove_o size 0
	inc	e
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00568$
00567$:
	srl	b
	rr	c
00568$:
	dec	e
	jr	NZ, 00567$
;	genMove_o size 2
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$359$4_1$309	= .
	.globl	C$vm.c$359$4_1$309
;src\core\vm.c:359: case 'm': *A = (*A < *B) ? *A : *B; break;  // min
;	genLabel
00138$:
;	genAssign
;	AOP_STK for _vm_rpn_sloc21_1_0
;	AOP_STK for _vm_rpn_sloc27_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
	dec	hl
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
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
	jr	Z, 00569$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00570$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00570$
00569$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00570$
	scf
00570$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00173$
;	skipping generated iCode
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;	AOP_STK for _vm_rpn_sloc28_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#11
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00174$
;	genLabel
00173$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;	AOP_STK for _vm_rpn_sloc28_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
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
	ld	(hl), a
;	genLabel
00174$:
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc27_1_0
;	AOP_STK for _vm_rpn_sloc28_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#9
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
;	genGoto
	jp	00146$
	C$vm.c$360$4_1$309	= .
	.globl	C$vm.c$360$4_1$309
;src\core\vm.c:360: case 'M': *A = (*A > *B) ? *A : *B; break;  // max
;	genLabel
00139$:
;	genAssign
;	AOP_STK for _vm_rpn_sloc21_1_0
;	AOP_STK for _vm_rpn_sloc29_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
	dec	hl
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
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
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
	jr	Z, 00571$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00572$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00572$
00571$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00572$
	scf
00572$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00175$
;	skipping generated iCode
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00176$
;	genLabel
00175$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genLabel
00176$:
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc29_1_0
;fetchPairLong
	ldhl	sp,	#9
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00146$
	C$vm.c$361$4_1$309	= .
	.globl	C$vm.c$361$4_1$309
;src\core\vm.c:361: case 'T': *A = atan2((WORD)*A, (WORD)*B); break;
;	genLabel
00140$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genCast
;	(locations are the same)
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCast
;	(locations are the same)
;	genIpush
	push	bc
;	genIpush
	push	hl
;	genCall
	ld	e, #b_atan2
	ld	hl, #_atan2
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc21_1_0
;fetchPairLong
	ldhl	sp,	#7
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00146$
	C$vm.c$363$4_1$309	= .
	.globl	C$vm.c$363$4_1$309
;src\core\vm.c:363: case '@': *B = abs(*B); continue;
;	genLabel
00141$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genSend
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genCall
	call	_abs
;	genMove_o size 2
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00151$
	C$vm.c$364$4_1$309	= .
	.globl	C$vm.c$364$4_1$309
;src\core\vm.c:364: case '~': *B = ~(*B);   continue;
;	genLabel
00142$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genCpl
	push	af
	ld	a, c
	cpl
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	pop	af
	cpl
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00151$
	C$vm.c$365$4_1$309	= .
	.globl	C$vm.c$365$4_1$309
;src\core\vm.c:365: case 'Q': *B = isqrt((UWORD)*B); continue;
;	genLabel
00143$:
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	d, a
;	genMove_o size 0
;	genCast
;	genMove_o size 2
	ld	e, c
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_isqrt
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00151$
	C$vm.c$366$4_1$309	= .
	.globl	C$vm.c$366$4_1$309
;src\core\vm.c:366: case 'r': *B = randw() % (UWORD)*B; continue;
;	genLabel
00144$:
;	genCall
	call	_randw
;	genMove_o size 2
	ld	c, e
	ld	b, d
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCast
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	__moduint
;	genMove_o size 2
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc22_1_0
;fetchPairLong
	ldhl	sp,	#11
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00151$
	C$vm.c$368$4_1$309	= .
	.globl	C$vm.c$368$4_1$309
;src\core\vm.c:368: default:
;	genLabel
00145$:
	C$vm.c$369$4_1$309	= .
	.globl	C$vm.c$369$4_1$309
;src\core\vm.c:369: SWITCH_ROM(_save);             // restore bank
;	genAssign
;	AOP_STK for _vm_rpn_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for _vm_rpn_sloc0_1_0
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$vm.c$370$4_1$309	= .
	.globl	C$vm.c$370$4_1$309
;src\core\vm.c:370: return;
;	genRet
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00153$
	C$vm.c$371$3_1$308	= .
	.globl	C$vm.c$371$3_1$308
;src\core\vm.c:371: }
;	genLabel
00146$:
	C$vm.c$372$3_1$308	= .
	.globl	C$vm.c$372$3_1$308
;src\core\vm.c:372: THIS->stack_ptr--;
;	genPointerGet
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genMinus
;fetchPairLong
	ld	b, a
	dec	bc
	dec	bc
;	genAssign (pointer)
;	AOP_STK for _vm_rpn_sloc3_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
	jp	00151$
;	genLabel
00153$:
	C$vm.c$375$1_1$301	= .
	.globl	C$vm.c$375$1_1$301
;src\core\vm.c:375: }
;	genEndFunction
;	adjustStack by 13
	add	sp, #13
	C$vm.c$375$1_1$301	= .
	.globl	C$vm.c$375$1_1$301
	XG$vm_rpn$0$0	= .
	.globl	XG$vm_rpn$0$0
	ret
	G$vm_get_far$0$0	= .
	.globl	G$vm_get_far$0$0
	C$vm.c$393$1_0$315	= .
	.globl	C$vm.c$393$1_0$315
;src\core\vm.c:393: void vm_get_far(DUMMY0_t dummy0, DUMMY1_t dummy1, SCRIPT_CTX * THIS, INT16 idxA, UBYTE size, UBYTE bank, UBYTE * addr) OLDCALL NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_get_far
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
_vm_get_far::
;	adjustStack by -3
	add	sp, #-3
	C$vm.c$396$1_1$316	= .
	.globl	C$vm.c$396$1_1$316
;src\core\vm.c:396: if (idxA < 0) A = THIS->stack_ptr + idxA; else A = script_memory + idxA;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#12
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	skipping generated iCode
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#11
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
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#11
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
	ld	b, a
;	genCast
;	(locations are the same)
;	genLabel
00103$:
	C$vm.c$397$2_1$317	= .
	.globl	C$vm.c$397$2_1$317
;src\core\vm.c:397: UBYTE _save = CURRENT_BANK;   // we must preserve current bank,
;	genAssign
;	AOP_STK for _vm_get_far_sloc0_1_0
	ldh	a, (__current_bank + 0)
	ldhl	sp,	#0
	ld	(hl), a
	C$vm.c$398$1_2$317	= .
	.globl	C$vm.c$398$1_2$317
;src\core\vm.c:398: SWITCH_ROM(bank);             // then switch to bytecode bank
;	genAssign
;	AOP_STK for 
	ldhl	sp,	#14
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$vm.c$399$1_2$317	= .
	.globl	C$vm.c$399$1_2$317
;src\core\vm.c:399: *A = (size == 0) ? *((UBYTE *)addr) : *((UINT16 *)addr);
;	genAssign
;	AOP_STK for _vm_get_far_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#1
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#13
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00106$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	inc	hl
	inc	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
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
;	genLabel
00107$:
;	genAssign (pointer)
;	AOP_STK for _vm_get_far_sloc1_1_0
;fetchPairLong
	ldhl	sp,	#1
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$400$1_2$317	= .
	.globl	C$vm.c$400$1_2$317
;src\core\vm.c:400: SWITCH_ROM(_save);
;	genAssign
;	AOP_STK for _vm_get_far_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for _vm_get_far_sloc0_1_0
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm.c$401$1_2$315	= .
	.globl	C$vm.c$401$1_2$315
;src\core\vm.c:401: }
;	genEndFunction
;	adjustStack by 3
	add	sp, #3
	C$vm.c$401$1_2$315	= .
	.globl	C$vm.c$401$1_2$315
	XG$vm_get_far$0$0	= .
	.globl	XG$vm_get_far$0$0
	ret
	G$vm_call_native$0$0	= .
	.globl	G$vm_call_native$0$0
	C$vm.c$469$1_0$335	= .
	.globl	C$vm.c$469$1_0$335
;src\core\vm.c:469: void vm_call_native(DUMMY0_t dummy0, DUMMY1_t dummy1, SCRIPT_CTX * THIS, UINT8 bank, const void * ptr) OLDCALL NONBANKED NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_call_native
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_vm_call_native::
; naked function: no prologue.
	C$vm.c$488$1_0$335	= .
	.globl	C$vm.c$488$1_0$335
;src\core\vm.c:488: __endasm;
;	genInline
;	genInline
	ldhl	sp, #6
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ldhl	sp, #10
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	call	___sdcc_bcall_ehl
	add	sp, #2
	ret
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm.c$490$1_0$335	= .
	.globl	C$vm.c$490$1_0$335
;src\core\vm.c:490: }
;	genEndFunction
; naked function: No epilogue.
	G$VM_STEP$0$0	= .
	.globl	G$VM_STEP$0$0
	C$vm.c$504$1_0$342	= .
	.globl	C$vm.c$504$1_0$342
;src\core\vm.c:504: UBYTE VM_STEP(SCRIPT_CTX * CTX) NAKED NONBANKED STEP_FUNC_ATTR {
;	genLabel
;	genFunction
;	---------------------------------
; Function VM_STEP
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_VM_STEP::
; naked function: no prologue.
	C$vm.c$611$1_0$342	= .
	.globl	C$vm.c$611$1_0$342
;src\core\vm.c:611: __endasm;
;	genInline
;	genInline
	ld	b, d
	ld	c, e ; bc = THIS
	ld	a, (de)
	ld	l, a
	inc	de
	ld	a, (de)
	ld	h, a ; hl offset of the script
	inc	de
	ldh	a, (__current_bank)
	push	af
	ld	a, (de) ; bank of the script
	ldh	(__current_bank), a
	ld	(_rROMB0), a ; switch bank with vm code
	ld	a, (hl+) ; load current command and return if terminator
	ld	e, a
	or	a
	jr	z, 3$
	push	bc ; store bc
	push	hl
	ld	h, #0
	ld	l, e
	add	hl, hl
	add	hl, hl ; hl = de * sizeof(SCRIPT_CMD)
	dec	hl
	ld	de, #_script_cmds
	add	hl, de ; hl = &script_cmds[command].args_len
	ld	a, (hl-)
	ld	e, a ; e = args_len
	ld	a, (hl-)
	ld	(_current_fn_bank), a
	ld	a, (hl-)
	ld	b, a
	ld	c, (hl) ; bc = fn
	pop	hl ; hl points to the next VM instruction or a first byte of the args
	ld	d, e ; d = arg count
	srl	d
	jr	nc, 4$ ; d is even?
	ld	a, (hl+) ; copy one arg onto stack
	push	af
	inc	sp
4$:
	jr	z, 1$ ; only one arg?
2$:
	ld	a, (hl+)
	push	af
	inc	sp
	ld	a, (hl+)
	push	af
	inc	sp
	dec	d
	jr	nz, 2$ ; loop through remaining args, copy 2 bytes at a time
1$:
	push	bc ; save function pointer
	ld	b, h
	ld	c, l ; bc points to the next VM instruction
	lda	hl, 2(sp)
	add	hl, de ; add correction
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
	ld	c, l
	ld	a, h
	inc	hl
	ld	(hl), b ; PC = PC + sizeof(instruction) + args_len
	ld	b, a ; bc = THIS
	pop	hl ; restore function pointer
	push	bc ; pushing THIS
	push	de ; not used
	push	de ; de: args_len
	ld	a, (_current_fn_bank) ; a = script_bank
	ldh	(__current_bank), a
	ld	(_rROMB0), a ; switch bank with functions
	rst	0x20 ; call hl
	pop	hl ; hl: args_len
	add	hl, sp
	ld	sp, hl ; deallocate args_len bytes from the stack
	add	sp, #6 ; deallocate dummy word and THIS twice
	ld	e, #1 ; command executed
3$:
	pop	af
	ldh	(__current_bank), a
	ld	(_rROMB0), a ; restore bank
	ld	a, e
	ret
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm.c$613$1_0$342	= .
	.globl	C$vm.c$613$1_0$342
;src\core\vm.c:613: }
;	genEndFunction
; naked function: No epilogue.
	G$script_runner_update$0$0	= .
	.globl	G$script_runner_update$0$0
	C$vm.c$716$1_0$367	= .
	.globl	C$vm.c$716$1_0$367
;src\core\vm.c:716: UBYTE script_runner_update(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function script_runner_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_script_runner_update::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$721$1_0$367	= .
	.globl	C$vm.c$721$1_0$367
;src\core\vm.c:721: if (!vm_lock_state) old_executing_ctx = 0, executing_ctx = first_ctx;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vm_lock_state)
; common peephole 17 loaded a from (#_vm_lock_state) directly instead of using hl.
;	genAssign
;	genMove_o size 2
	or	a,a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 154a removed redundant zeroing of a (which has just been tested to be #0x00).
;fetchLitPair	hl
	ld	hl, #_old_executing_ctx
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_first_ctx)
; common peephole 17 loaded a from (#_first_ctx) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_executing_ctx),a
; common peephole 19 loaded (#_executing_ctx) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_first_ctx + 1)
;fetchLitPair	hl
	ld	(#_executing_ctx + 1),a
; common peephole 20 loaded (#_executing_ctx) from a directly instead of using hl.
;	genLabel
00102$:
	C$vm.c$723$1_0$367	= .
	.globl	C$vm.c$723$1_0$367
;src\core\vm.c:723: waitable = TRUE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_script_runner_update_waitable_10000_367
	ld	(hl), #0x01
	C$vm.c$724$1_0$367	= .
	.globl	C$vm.c$724$1_0$367
;src\core\vm.c:724: counter = INSTRUCTIONS_PER_QUANT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_script_runner_update_counter_10000_367
	ld	(hl), #0x10
	C$vm.c$725$1_0$367	= .
	.globl	C$vm.c$725$1_0$367
;src\core\vm.c:725: while (executing_ctx) {
;	genLabel
00123$:
;	genIfx
;fetchLitPair	hl
	ld	hl, #_executing_ctx + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
	jp	Z, 00125$
	C$vm.c$726$2_0$368	= .
	.globl	C$vm.c$726$2_0$368
;src\core\vm.c:726: vm_exception_code = EXCEPTION_CODE_NONE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vm_exception_code
	ld	(hl), #0x00
	C$vm.c$727$2_0$368	= .
	.globl	C$vm.c$727$2_0$368
;src\core\vm.c:727: executing_ctx->waitable = FALSE;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_executing_ctx
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x00
	C$vm.c$728$2_0$368	= .
	.globl	C$vm.c$728$2_0$368
;src\core\vm.c:728: if ((executing_ctx->terminated != FALSE) || (!VM_STEP(executing_ctx))) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_executing_ctx
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000f
	add	hl, bc
;	genPointerGet
;	genIfx
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00119$
;	genSend
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_executing_ctx
	ld	e, (hl)
;fetchLitPair	hl
	inc	hl
	ld	d, (hl)
;	genCall
	call	_VM_STEP
;	genMove_o size 1
;	genIfx
	or	a, a
	jp	NZ, 00120$
;	genLabel
00119$:
	C$vm.c$730$3_0$369	= .
	.globl	C$vm.c$730$3_0$369
;src\core\vm.c:730: vm_lock_state -= executing_ctx->lock_count;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_executing_ctx
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0011
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genMinus
;fetchLitPair	hl
	ld	hl, #_vm_lock_state
	ld	a, (hl)
	sub	a, c
;fetchLitPair	hl
	ld	(hl), a
	C$vm.c$732$3_0$369	= .
	.globl	C$vm.c$732$3_0$369
;src\core\vm.c:732: if (executing_ctx->hthread) *(executing_ctx->hthread) |= SCRIPT_TERMINATED;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_executing_ctx
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000d
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
;	genIfx
; common peephole 1 removed dead load from a into c.
	or	a,(hl)
; common peephole 99 removed load by reordering or arguments.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_executing_ctx
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000d
	add	hl, bc
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
	ld	hl, #_executing_ctx
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
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genOr
;	genMove_o size 1
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
;	genMove_o size 0
	ld	a, h
	or	a, #0x80
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
00104$:
	C$vm.c$734$3_0$369	= .
	.globl	C$vm.c$734$3_0$369
;src\core\vm.c:734: if (old_executing_ctx) old_executing_ctx->next = executing_ctx->next;
;	genIfx
;fetchLitPair	hl
	ld	hl, #_old_executing_ctx + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	AOP_STK for _script_runner_update_sloc0_1_0
	inc	bc
	inc	bc
	inc	bc
;	genMove_o size 2
	inc	sp
	inc	sp
	push	bc
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_executing_ctx
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_executing_ctx + 1)
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
;	genAssign (pointer)
;	AOP_STK for _script_runner_update_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00106$:
	C$vm.c$735$3_0$369	= .
	.globl	C$vm.c$735$3_0$369
;src\core\vm.c:735: if (first_ctx == executing_ctx) first_ctx = executing_ctx->next;
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_first_ctx)
; common peephole 17 loaded a from (#_first_ctx) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_executing_ctx
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00108$
; common peephole 84 jumped to 00108$ directly instead of via 00211$.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_first_ctx + 1)
;fetchLitPair	hl
	ld	hl, #_executing_ctx + 1
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00211$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00108$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00212$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_executing_ctx
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_first_ctx
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genLabel
00108$:
	C$vm.c$737$3_0$369	= .
	.globl	C$vm.c$737$3_0$369
;src\core\vm.c:737: executing_ctx->next = free_ctxs, free_ctxs = executing_ctx;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_executing_ctx
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
	inc	bc
	inc	bc
	inc	bc
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_free_ctxs
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_executing_ctx)
; common peephole 17 loaded a from (#_executing_ctx) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_free_ctxs),a
; common peephole 19 loaded (#_free_ctxs) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_executing_ctx + 1)
;fetchLitPair	hl
	ld	(#_free_ctxs + 1),a
; common peephole 20 loaded (#_free_ctxs) from a directly instead of using hl.
	C$vm.c$739$3_0$369	= .
	.globl	C$vm.c$739$3_0$369
;src\core\vm.c:739: if (old_executing_ctx) executing_ctx = old_executing_ctx->next; else executing_ctx = first_ctx;
;	genIfx
;fetchLitPair	hl
	ld	hl, #_old_executing_ctx + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00110$
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_executing_ctx
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
	jp	00123$
;	genLabel
00110$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_first_ctx)
; common peephole 17 loaded a from (#_first_ctx) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_executing_ctx),a
; common peephole 19 loaded (#_executing_ctx) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_first_ctx + 1)
;fetchLitPair	hl
	ld	(#_executing_ctx + 1),a
; common peephole 20 loaded (#_executing_ctx) from a directly instead of using hl.
;	genGoto
	jp	00123$
;	genLabel
00120$:
	C$vm.c$742$3_0$370	= .
	.globl	C$vm.c$742$3_0$370
;src\core\vm.c:742: if (vm_exception_code) return RUNNER_EXCEPTION;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vm_exception_code)
; common peephole 17 loaded a from (#_vm_exception_code) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
;	genRet
;	genMove_o size 1
	ld	a, #0x03
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00131$
;	genLabel
00113$:
	C$vm.c$744$3_0$370	= .
	.globl	C$vm.c$744$3_0$370
;src\core\vm.c:744: if (!(executing_ctx->waitable) && (counter--)) continue;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_executing_ctx
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00115$
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_script_runner_update_counter_10000_367
	ld	c, (hl)
;	genMinus
;fetchLitPair	hl
	dec	(hl)
;	genIfx
	ld	a, c
	or	a, a
	jp	NZ, 00123$
;	genLabel
00115$:
	C$vm.c$746$3_0$370	= .
	.globl	C$vm.c$746$3_0$370
;src\core\vm.c:746: if (vm_lock_state) break;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vm_lock_state)
; common peephole 17 loaded a from (#_vm_lock_state) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00125$
	C$vm.c$748$3_0$370	= .
	.globl	C$vm.c$748$3_0$370
;src\core\vm.c:748: waitable &= executing_ctx->waitable;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_executing_ctx
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genAnd
;fetchLitPair	hl
	ld	hl, #_script_runner_update_waitable_10000_367
	and	a, (hl)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
	C$vm.c$749$3_0$370	= .
	.globl	C$vm.c$749$3_0$370
;src\core\vm.c:749: old_executing_ctx = executing_ctx, executing_ctx = executing_ctx->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_executing_ctx)
; common peephole 17 loaded a from (#_executing_ctx) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_old_executing_ctx),a
; common peephole 19 loaded (#_old_executing_ctx) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_executing_ctx + 1)
;fetchLitPair	hl
	ld	(#_old_executing_ctx + 1),a
; common peephole 20 loaded (#_old_executing_ctx) from a directly instead of using hl.
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_executing_ctx
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genPlus
;	genPointerGet
;fetchPairLong
;fetchLitPair	hl
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96b move dec hl before ld d, b
; common peephole 96b move dec hl before ld e, c
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
	inc	bc
	inc	bc
	inc	bc
	ld	e, c
	ld	d, b
	ld	a, (de)
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$vm.c$750$3_0$370	= .
	.globl	C$vm.c$750$3_0$370
;src\core\vm.c:750: counter = INSTRUCTIONS_PER_QUANT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_script_runner_update_counter_10000_367
	ld	(hl), #0x10
;	genGoto
	jp	00123$
;	genLabel
00125$:
	C$vm.c$754$1_0$367	= .
	.globl	C$vm.c$754$1_0$367
;src\core\vm.c:754: if (first_ctx == 0) return RUNNER_DONE;
;	genIfx
;fetchLitPair	hl
	ld	hl, #_first_ctx + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
;	genRet
;	genMove_o size 1
	or	a,(hl)
; common peephole 154a removed redundant zeroing of a (which has just been tested to be #0x00).
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00131$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00127$.
	C$vm.c$756$1_0$367	= .
	.globl	C$vm.c$756$1_0$367
;src\core\vm.c:756: if (waitable) return RUNNER_IDLE; else return RUNNER_BUSY;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_script_runner_update_waitable_10000_367)
; common peephole 17 loaded a from (#_script_runner_update_waitable_10000_367) directly instead of using hl.
	or	a, a
;	genRet
;	genMove_o size 1
;	genLabel
;	genRet
;	genMove_o size 1
;	genLabel
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00131$
; common peephole 158 removed unused label 00129$.
	ld	a, #0x02
; common peephole 168z used double assignment in case of Z condition.
00131$:
	C$vm.c$757$1_0$367	= .
	.globl	C$vm.c$757$1_0$367
;src\core\vm.c:757: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$757$1_0$367	= .
	.globl	C$vm.c$757$1_0$367
	XG$script_runner_update$0$0	= .
	.globl	XG$script_runner_update$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$__func_VM_MAIN$0$0	= .
	.globl	G$__func_VM_MAIN$0$0
	C$vm.c$12$0_0$237	= .
	.globl	C$vm.c$12$0_0$237
;src\core\vm.c:12: BANKREF(VM_MAIN)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_MAIN
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_MAIN	= 255
___func_VM_MAIN::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_MAIN 
	___bank_VM_MAIN = b___func_VM_MAIN 
	.globl ___bank_VM_MAIN 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_call$0$0	= .
	.globl	G$vm_call$0$0
	C$vm.c$42$1_0$239	= .
	.globl	C$vm.c$42$1_0$239
;src\core\vm.c:42: void vm_call(SCRIPT_CTX * THIS, UBYTE * pc) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_call
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_call	= 255
_vm_call::
;	adjustStack by -4
	add	sp, #-4
	C$vm.c$43$1_0$239	= .
	.globl	C$vm.c$43$1_0$239
;src\core\vm.c:43: *(THIS->stack_ptr++) = (UWORD)THIS->PC;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_call_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_call_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_call_sloc1_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genPlus
;	AOP_STK for _vm_call_sloc1_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	inc	de
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genPointerGet
;	AOP_STK for _vm_call_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_call_sloc1_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$44$1_0$239	= .
	.globl	C$vm.c$44$1_0$239
;src\core\vm.c:44: THIS->PC = pc;
;	genAssign (pointer)
;	AOP_STK for _vm_call_sloc0_1_0
;	AOP_STK for 
;fetchPairLong
	pop	de
	push	de
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm.c$45$1_0$239	= .
	.globl	C$vm.c$45$1_0$239
;src\core\vm.c:45: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm.c$45$1_0$239	= .
	.globl	C$vm.c$45$1_0$239
	XG$vm_call$0$0	= .
	.globl	XG$vm_call$0$0
	ret
	G$vm_ret$0$0	= .
	.globl	G$vm_ret$0$0
	C$vm.c$47$1_0$241	= .
	.globl	C$vm.c$47$1_0$241
;src\core\vm.c:47: void vm_ret(SCRIPT_CTX * THIS, UBYTE n) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_ret
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_ret	= 255
_vm_ret::
;	adjustStack by -4
	add	sp, #-4
	C$vm.c$49$1_0$241	= .
	.globl	C$vm.c$49$1_0$241
;src\core\vm.c:49: THIS->stack_ptr--;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_ret_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_ret_sloc0_1_0
;	AOP_STK for _vm_ret_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_ret_sloc1_1_0
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
;	genMinus
;fetchPairLong
	ld	b, a
	dec	bc
	dec	bc
;	genAssign (pointer)
;	AOP_STK for _vm_ret_sloc1_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$50$1_0$241	= .
	.globl	C$vm.c$50$1_0$241
;src\core\vm.c:50: THIS->PC = (const UBYTE *)*(THIS->stack_ptr);
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
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	AOP_STK for _vm_ret_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$51$1_0$241	= .
	.globl	C$vm.c$51$1_0$241
;src\core\vm.c:51: if (n) THIS->stack_ptr -= n;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#12
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_ret_sloc2_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_ret_sloc2_1_0
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
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, d
	add	hl, hl
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genAssign (pointer)
;	AOP_STK for _vm_ret_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00103$:
	C$vm.c$52$1_0$241	= .
	.globl	C$vm.c$52$1_0$241
;src\core\vm.c:52: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm.c$52$1_0$241	= .
	.globl	C$vm.c$52$1_0$241
	XG$vm_ret$0$0	= .
	.globl	XG$vm_ret$0$0
	ret
	G$vm_call_far$0$0	= .
	.globl	G$vm_call_far$0$0
	C$vm.c$55$1_0$243	= .
	.globl	C$vm.c$55$1_0$243
;src\core\vm.c:55: void vm_call_far(SCRIPT_CTX * THIS, UBYTE bank, UBYTE * pc) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_call_far
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
	b_vm_call_far	= 255
_vm_call_far::
;	adjustStack by -6
	add	sp, #-6
	C$vm.c$56$1_0$243	= .
	.globl	C$vm.c$56$1_0$243
;src\core\vm.c:56: *(THIS->stack_ptr++) = (UWORD)THIS->PC;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_call_far_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_call_far_sloc0_1_0
;	AOP_STK for _vm_call_far_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
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
;	genPointerGet
;	AOP_STK for _vm_call_far_sloc1_1_0
;	AOP_STK for _vm_call_far_sloc2_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genPlus
;	AOP_STK for _vm_call_far_sloc2_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_call_far_sloc1_1_0
;fetchPairLong
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	inc	bc
	inc	bc
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genPointerGet
;	AOP_STK for _vm_call_far_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_call_far_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$57$1_0$243	= .
	.globl	C$vm.c$57$1_0$243
;src\core\vm.c:57: *(THIS->stack_ptr++) = THIS->bank;
;	genPointerGet
;	AOP_STK for _vm_call_far_sloc1_1_0
;	AOP_STK for _vm_call_far_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genPlus
;	AOP_STK for _vm_call_far_sloc3_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_call_far_sloc1_1_0
;fetchPairLong
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	inc	bc
	inc	bc
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genPlus
;	AOP_STK for _vm_call_far_sloc0_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
	inc	bc
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	AOP_STK for _vm_call_far_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#4
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genAssign (pointer)
;	AOP_STK for _vm_call_far_sloc3_1_0
;	AOP_STK for _vm_call_far_sloc4_1_0
;fetchPairLong
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
	ld	(de), a
	inc	de
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(de), a
	C$vm.c$58$1_0$243	= .
	.globl	C$vm.c$58$1_0$243
;src\core\vm.c:58: THIS->PC = pc;
;	genAssign (pointer)
;	AOP_STK for _vm_call_far_sloc0_1_0
;	AOP_STK for 
;fetchPairLong
	pop	de
	push	de
	ldhl	sp,	#15
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	C$vm.c$59$1_0$243	= .
	.globl	C$vm.c$59$1_0$243
;src\core\vm.c:59: THIS->bank = bank;
;	genAssign (pointer)
;	AOP_STK for 
; common peephole 96b move dec hl before ld (de), a
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
; common peephole 96b move dec hl before ld (de), a
	dec	hl
	ld	(de), a
	ld	a, (hl)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm.c$60$1_0$243	= .
	.globl	C$vm.c$60$1_0$243
;src\core\vm.c:60: }
;	genEndFunction
;	adjustStack by 6
	add	sp, #6
	C$vm.c$60$1_0$243	= .
	.globl	C$vm.c$60$1_0$243
	XG$vm_call_far$0$0	= .
	.globl	XG$vm_call_far$0$0
	ret
	G$vm_ret_far$0$0	= .
	.globl	G$vm_ret_far$0$0
	C$vm.c$62$1_0$245	= .
	.globl	C$vm.c$62$1_0$245
;src\core\vm.c:62: void vm_ret_far(SCRIPT_CTX * THIS, UBYTE n) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_ret_far
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_ret_far	= 255
_vm_ret_far::
;	adjustStack by -4
	add	sp, #-4
	C$vm.c$63$1_0$245	= .
	.globl	C$vm.c$63$1_0$245
;src\core\vm.c:63: THIS->stack_ptr--;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_ret_far_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_ret_far_sloc0_1_0
;	AOP_STK for _vm_ret_far_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_ret_far_sloc1_1_0
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
;	genMinus
;fetchPairLong
	ld	b, a
	dec	bc
	dec	bc
;	genAssign (pointer)
;	AOP_STK for _vm_ret_far_sloc1_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$64$1_0$245	= .
	.globl	C$vm.c$64$1_0$245
;src\core\vm.c:64: THIS->bank = (UBYTE)(*(THIS->stack_ptr));
;	genPlus
;	AOP_STK for _vm_ret_far_sloc0_1_0
;	genMove_o size 2
	pop	de
	push	de
;	genMove_o size 0
	inc	de
	inc	de
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAssign (pointer)
	ld	(de), a
	C$vm.c$65$1_0$245	= .
	.globl	C$vm.c$65$1_0$245
;src\core\vm.c:65: THIS->stack_ptr--;
;	genPointerGet
;	AOP_STK for _vm_ret_far_sloc1_1_0
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
;	genMinus
;fetchPairLong
	ld	b, a
	dec	bc
	dec	bc
;	genAssign (pointer)
;	AOP_STK for _vm_ret_far_sloc1_1_0
;fetchPairLong
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$66$1_0$245	= .
	.globl	C$vm.c$66$1_0$245
;src\core\vm.c:66: THIS->PC = (const UBYTE *)*(THIS->stack_ptr);
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
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;	AOP_STK for _vm_ret_far_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$67$1_0$245	= .
	.globl	C$vm.c$67$1_0$245
;src\core\vm.c:67: if (n) THIS->stack_ptr -= n;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#12
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_ret_far_sloc2_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_ret_far_sloc2_1_0
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
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, d
	add	hl, hl
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genAssign (pointer)
;	AOP_STK for _vm_ret_far_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00103$:
	C$vm.c$68$1_0$245	= .
	.globl	C$vm.c$68$1_0$245
;src\core\vm.c:68: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm.c$68$1_0$245	= .
	.globl	C$vm.c$68$1_0$245
	XG$vm_ret_far$0$0	= .
	.globl	XG$vm_ret_far$0$0
	ret
	G$vm_push$0$0	= .
	.globl	G$vm_push$0$0
	C$vm.c$73$1_0$247	= .
	.globl	C$vm.c$73$1_0$247
;src\core\vm.c:73: void vm_push(SCRIPT_CTX * THIS, UWORD value) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_push
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_push	= 255
_vm_push::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$74$1_0$247	= .
	.globl	C$vm.c$74$1_0$247
;src\core\vm.c:74: *(THIS->stack_ptr++) = value;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_push_sloc0_1_0
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
;	genPlus
;	AOP_STK for _vm_push_sloc0_1_0
;	genMove_o size 2
	pop	de
	push	de
;	genMove_o size 0
	inc	de
	inc	de
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genAssign (pointer)
;	AOP_STK for _vm_push_sloc0_1_0
;	AOP_STK for 
;fetchPairLong
	pop	de
	push	de
	ldhl	sp,	#10
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm.c$75$1_0$247	= .
	.globl	C$vm.c$75$1_0$247
;src\core\vm.c:75: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$75$1_0$247	= .
	.globl	C$vm.c$75$1_0$247
	XG$vm_push$0$0	= .
	.globl	XG$vm_push$0$0
	ret
	G$vm_pop$0$0	= .
	.globl	G$vm_pop$0$0
	C$vm.c$77$1_0$249	= .
	.globl	C$vm.c$77$1_0$249
;src\core\vm.c:77: UWORD vm_pop(SCRIPT_CTX * THIS, UBYTE n) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_pop
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_pop	= 255
_vm_pop::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$78$1_0$249	= .
	.globl	C$vm.c$78$1_0$249
;src\core\vm.c:78: if (n) THIS->stack_ptr -= n;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#10
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_pop_sloc0_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	inc	sp
	inc	sp
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_pop_sloc0_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
; common peephole 52a replaced push/pop pair by loads.
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#10
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genAssign (pointer)
;	AOP_STK for _vm_pop_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00102$:
	C$vm.c$79$1_0$249	= .
	.globl	C$vm.c$79$1_0$249
;src\core\vm.c:79: return *(THIS->stack_ptr);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genRet
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$vm.c$80$1_0$249	= .
	.globl	C$vm.c$80$1_0$249
;src\core\vm.c:80: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$80$1_0$249	= .
	.globl	C$vm.c$80$1_0$249
	XG$vm_pop$0$0	= .
	.globl	XG$vm_pop$0$0
	ret
	G$vm_loop$0$0	= .
	.globl	G$vm_loop$0$0
	C$vm.c$83$1_0$251	= .
	.globl	C$vm.c$83$1_0$251
;src\core\vm.c:83: void vm_loop(SCRIPT_CTX * THIS, INT16 idx, UINT8 * pc, UBYTE n) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_loop
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_loop	= 255
_vm_loop::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$85$1_0$251	= .
	.globl	C$vm.c$85$1_0$251
;src\core\vm.c:85: if (idx < 0) counter = THIS->stack_ptr + idx; else counter = script_memory + idx;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
	ld	b, a
;	genCast
;	(locations are the same)
;	genLabel
00103$:
	C$vm.c$86$1_0$251	= .
	.globl	C$vm.c$86$1_0$251
;src\core\vm.c:86: if (*counter) {
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
	jr	Z, 00107$
	C$vm.c$87$2_0$252	= .
	.globl	C$vm.c$87$2_0$252
;src\core\vm.c:87: THIS->PC = pc, (*counter)--;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#12
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
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMinus
;fetchPairLong
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
	dec	de
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00107$:
	C$vm.c$89$2_0$253	= .
	.globl	C$vm.c$89$2_0$253
;src\core\vm.c:89: if (n) THIS->stack_ptr -= n;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#14
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_loop_sloc0_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	inc	sp
	inc	sp
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_loop_sloc0_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
; common peephole 52a replaced push/pop pair by loads.
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genLeftShift
;fetchPairLong
	sla	e
	rl	d
;	genMinus
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
;	genAssign (pointer)
;	AOP_STK for _vm_loop_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00109$:
	C$vm.c$91$1_0$251	= .
	.globl	C$vm.c$91$1_0$251
;src\core\vm.c:91: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$91$1_0$251	= .
	.globl	C$vm.c$91$1_0$251
	XG$vm_loop$0$0	= .
	.globl	XG$vm_loop$0$0
	ret
	G$vm_jump$0$0	= .
	.globl	G$vm_jump$0$0
	C$vm.c$119$1_2$261	= .
	.globl	C$vm.c$119$1_2$261
;src\core\vm.c:119: void vm_jump(SCRIPT_CTX * THIS, UBYTE * pc) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_jump
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_jump	= 255
_vm_jump::
	C$vm.c$120$1_0$261	= .
	.globl	C$vm.c$120$1_0$261
;src\core\vm.c:120: THIS->PC = pc;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
;fetchPairLong
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm.c$121$1_0$261	= .
	.globl	C$vm.c$121$1_0$261
;src\core\vm.c:121: }
;	genEndFunction
	C$vm.c$121$1_0$261	= .
	.globl	C$vm.c$121$1_0$261
	XG$vm_jump$0$0	= .
	.globl	XG$vm_jump$0$0
	ret
	G$wait_frames$0$0	= .
	.globl	G$wait_frames$0$0
	C$vm.c$123$1_0$263	= .
	.globl	C$vm.c$123$1_0$263
;src\core\vm.c:123: UBYTE wait_frames(void * THIS, UBYTE start, UWORD * stack_frame) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function wait_frames
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_wait_frames	= 255
_wait_frames::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$125$1_0$263	= .
	.globl	C$vm.c$125$1_0$263
;src\core\vm.c:125: if (start) *((SCRIPT_CTX *)THIS)->stack_ptr = stack_frame[0] + 1; // Store the number of frames to wait
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#10
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	dec	hl
	dec	hl
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
;	AOP_STK for _wait_frames_sloc0_1_0
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
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
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
;	genPlus
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _wait_frames_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00102$:
	C$vm.c$127$1_0$263	= .
	.globl	C$vm.c$127$1_0$263
;src\core\vm.c:127: return ((--*((SCRIPT_CTX *)THIS)->stack_ptr) != 0) ? ((SCRIPT_CTX *)THIS)->waitable = TRUE, (UBYTE)FALSE : (UBYTE)TRUE;
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMinus
;fetchPairLong
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
	dec	de
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x01
;	genAssign
;	genMove_o size 1
	ld	e, #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	genAssign
;	genMove_o size 1
	ld	e, #0x01
;	genLabel
00106$:
;	genRet
;	genMove_o size 1
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$vm.c$128$1_0$263	= .
	.globl	C$vm.c$128$1_0$263
;src\core\vm.c:128: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$128$1_0$263	= .
	.globl	C$vm.c$128$1_0$263
	XG$wait_frames$0$0	= .
	.globl	XG$wait_frames$0$0
	ret
	G$vm_invoke$0$0	= .
	.globl	G$vm_invoke$0$0
	C$vm.c$130$1_0$265	= .
	.globl	C$vm.c$130$1_0$265
;src\core\vm.c:130: void vm_invoke(SCRIPT_CTX * THIS, UBYTE bank, UBYTE * fn, UBYTE nparams, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_invoke
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_invoke	= 255
_vm_invoke::
;	adjustStack by -4
	add	sp, #-4
	C$vm.c$131$1_0$265	= .
	.globl	C$vm.c$131$1_0$265
;src\core\vm.c:131: UWORD * stack_frame = (idx < 0) ? THIS->stack_ptr + idx : script_memory + idx;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#17
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00107$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#16
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genLabel
00108$:
;	genAssign
;	AOP_STK for _vm_invoke_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm.c$133$1_0$265	= .
	.globl	C$vm.c$133$1_0$265
;src\core\vm.c:133: UBYTE start = ((THIS->update_fn != fn) || (THIS->update_fn_bank != bank)) ? THIS->update_fn = fn, THIS->update_fn_bank = bank, (UBYTE)TRUE : (UBYTE)FALSE;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCmpEq
	ld	a, e
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00112$
; common peephole 84 jumped to 00112$ directly instead of via 00141$.
	ld	a, d
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00141$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00112$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00142$.
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0007
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#12
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00143$.
;	skipping generated iCode
;	genLabel
00112$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0005
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	AOP_STK for 
;	AOP_STK for _vm_invoke_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	ldhl	sp,	#14
	ld	a, (hl)
	ldhl	sp,	#3
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_invoke_sloc1_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0007
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#12
	ld	a, (hl)
	ld	(bc), a
;	genAssign
;	genMove_o size 1
	ld	d, #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00109$:
;	genAssign
;	genMove_o size 1
	ld	d, #0x00
;	genLabel
00110$:
;	genAssign
;	(locations are the same)
	C$vm.c$135$1_0$265	= .
	.globl	C$vm.c$135$1_0$265
;src\core\vm.c:135: if (FAR_CALL_EX(fn, bank, SCRIPT_UPDATE_FN, THIS, start, stack_frame)) {
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#___call_banked_addr),a
; common peephole 19 loaded (#___call_banked_addr) from a directly instead of using hl.
	ldhl	sp,	#14
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#___call_banked_addr + 1),a
; common peephole 20 loaded (#___call_banked_addr) from a directly instead of using hl.
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#___call_banked_bank),a
; common peephole 19 loaded (#___call_banked_bank) from a directly instead of using hl.
;	genCast
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #___call__banked
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_invoke_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	push	hl
;	genIpush
	push	de
	inc	sp
;	genIpush
;	genMove_o size 2
	ld	d, a
;	genMove_o size 0
	push	de
;	genCall
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	call	___sdcc_call_hl
;	adjustStack by 5
	add	sp, #5
;	genMove_o size 1
;	genMove_o size 0
;	genIfx
; common peephole 9 loaded a from e directly instead of going through c.
	ld	a, e
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
	C$vm.c$136$2_0$266	= .
	.globl	C$vm.c$136$2_0$266
;src\core\vm.c:136: if (nparams) THIS->stack_ptr -= nparams;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#15
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_invoke_sloc2_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_invoke_sloc2_1_0
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
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#15
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, a
	add	hl, hl
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genAssign (pointer)
;	AOP_STK for _vm_invoke_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00102$:
	C$vm.c$137$2_0$266	= .
	.globl	C$vm.c$137$2_0$266
;src\core\vm.c:137: THIS->update_fn = 0, THIS->update_fn_bank = 0;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0007
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x00
	C$vm.c$138$2_0$266	= .
	.globl	C$vm.c$138$2_0$266
;src\core\vm.c:138: return;
;	genRet
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00104$:
	C$vm.c$141$1_0$265	= .
	.globl	C$vm.c$141$1_0$265
;src\core\vm.c:141: THIS->PC -= (INSTRUCTION_SIZE + sizeof(bank) + sizeof(fn) + sizeof(nparams) + sizeof(idx));
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMinus
; common peephole 9 loaded a from a directly instead of going through l.
; common peephole 0a removed redundant load from a into a.
	add	a, #0xf9
	ld	e, a
	ld	a, h
	adc	a, #0xff
	ld	d, a
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
00105$:
	C$vm.c$142$1_0$265	= .
	.globl	C$vm.c$142$1_0$265
;src\core\vm.c:142: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm.c$142$1_0$265	= .
	.globl	C$vm.c$142$1_0$265
	XG$vm_invoke$0$0	= .
	.globl	XG$vm_invoke$0$0
	ret
	G$vm_join$0$0	= .
	.globl	G$vm_join$0$0
	C$vm.c$165$1_2$275	= .
	.globl	C$vm.c$165$1_2$275
;src\core\vm.c:165: void vm_join(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_join
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_join	= 255
_vm_join::
	C$vm.c$167$1_0$275	= .
	.globl	C$vm.c$167$1_0$275
;src\core\vm.c:167: if (idx < 0) A = THIS->stack_ptr + idx; else A = script_memory + idx;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00103$:
	C$vm.c$168$1_0$275	= .
	.globl	C$vm.c$168$1_0$275
;src\core\vm.c:168: if (!(*A >> 8)) THIS->PC -= (INSTRUCTION_SIZE + sizeof(idx)), THIS->waitable = TRUE;
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; common peephole 1 removed dead load from a into c.
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genRightShift
;	spillPairReg hl
;	spillPairReg hl
;	genIfx
; common peephole 9 loaded a from #0x00 directly instead of going through h.
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	or	a, l
	ret	NZ
; common peephole 161 replaced jump by return.
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMinus
; common peephole 9 loaded a from a directly instead of going through l.
; common peephole 0a removed redundant load from a into a.
	add	a, #0xfd
	ld	e, a
	ld	a, h
	adc	a, #0xff
	ld	d, a
;	genAssign (pointer)
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x01
;	genLabel
; common peephole 158 removed unused label 00106$.
	C$vm.c$169$1_0$275	= .
	.globl	C$vm.c$169$1_0$275
;src\core\vm.c:169: }
;	genEndFunction
	C$vm.c$169$1_0$275	= .
	.globl	C$vm.c$169$1_0$275
	XG$vm_join$0$0	= .
	.globl	XG$vm_join$0$0
	ret
	G$vm_terminate$0$0	= .
	.globl	G$vm_terminate$0$0
	C$vm.c$171$1_0$277	= .
	.globl	C$vm.c$171$1_0$277
;src\core\vm.c:171: void vm_terminate(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_terminate
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_terminate	= 255
_vm_terminate::
	C$vm.c$173$1_0$277	= .
	.globl	C$vm.c$173$1_0$277
;src\core\vm.c:173: if (idx < 0) A = THIS->stack_ptr + idx; else A = script_memory + idx;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00103$:
	C$vm.c$174$1_0$277	= .
	.globl	C$vm.c$174$1_0$277
;src\core\vm.c:174: script_terminate((UBYTE)(*A));
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
; common peephole 158 removed unused label 00104$.
	C$vm.c$175$1_0$277	= .
	.globl	C$vm.c$175$1_0$277
;src\core\vm.c:175: }
;	genEndFunction
	C$vm.c$175$1_0$277	= .
	.globl	C$vm.c$175$1_0$277
	XG$vm_terminate$0$0	= .
	.globl	XG$vm_terminate$0$0
	ret
	G$vm_if$0$0	= .
	.globl	G$vm_if$0$0
	C$vm.c$180$1_0$279	= .
	.globl	C$vm.c$180$1_0$279
;src\core\vm.c:180: void vm_if(SCRIPT_CTX * THIS, UBYTE condition, INT16 idxA, INT16 idxB, UBYTE * pc, UBYTE n) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_if
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
	b_vm_if	= 255
_vm_if::
;	adjustStack by -6
	add	sp, #-6
	C$vm.c$182$1_0$279	= .
	.globl	C$vm.c$182$1_0$279
;src\core\vm.c:182: if (idxA < 0) A = *(THIS->stack_ptr + idxA); else A = script_memory[idxA];
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#16
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	skipping generated iCode
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
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
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#15
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLabel
00103$:
	C$vm.c$183$1_0$279	= .
	.globl	C$vm.c$183$1_0$279
;src\core\vm.c:183: if (idxB < 0) B = *(THIS->stack_ptr + idxB); else B = script_memory[idxB];
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#18
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	skipping generated iCode
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
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genPointerGet
;	AOP_STK for _vm_if_sloc0_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#17
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	add	a, a
	rl	d
;	genPlus
;	AOP_STK for _vm_if_sloc0_1_0
;	AOP_STK for _vm_if_sloc1_1_0
;fetchPairLong
	ld	e, a
;fetchPairLong
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	inc	sp
	inc	sp
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_if_sloc1_1_0
;	AOP_STK for _vm_if_sloc2_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
; common peephole 52a replaced push/pop pair by loads.
	push	de
	ld	a, (de)
	ldhl	sp,	#3
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#17
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	sla	e
	rl	d
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, de
;	genPointerGet
;	AOP_STK for _vm_if_sloc2_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#3
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genLabel
00106$:
	C$vm.c$184$2_0$280	= .
	.globl	C$vm.c$184$2_0$280
;src\core\vm.c:184: UBYTE res = FALSE;
;	genAssign
;	AOP_STK for _vm_if_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#5
	ld	(hl), #0x00
	C$vm.c$185$1_1$280	= .
	.globl	C$vm.c$185$1_1$280
;src\core\vm.c:185: switch (condition) {
;	genCmpGt
;	AOP_STK for 
	ld	a, #0x06
	ldhl	sp,	#14
	sub	a, (hl)
	jp	C, 00113$
;	skipping generated iCode
;	genJumpTab
;	AOP_STK for 
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #00154$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00154$:
	jp	00113$
	jp	00107$
	jp	00108$
	jp	00109$
	jp	00110$
	jp	00111$
	jp	00112$
	C$vm.c$186$2_1$281	= .
	.globl	C$vm.c$186$2_1$281
;src\core\vm.c:186: case VM_OP_EQ: res = (A == B); break;
;	genLabel
00107$:
;	genCmpEq
;	AOP_STK for _vm_if_sloc2_1_0
;	AOP_STK for _vm_if_sloc3_1_0
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00155$
	inc	hl
	ld	a, (hl)
	sub	a, b
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00156$
; common peephole 169xnz used double assignment in case of NZ condition.
00155$:
	xor	a, a
00156$:
;	genMove_o size 1
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00113$
	C$vm.c$187$2_1$281	= .
	.globl	C$vm.c$187$2_1$281
;src\core\vm.c:187: case VM_OP_LT: res = (A <  B); break;
;	genLabel
00108$:
;	genCmpLt
;	AOP_STK for _vm_if_sloc2_1_0
;	AOP_STK for _vm_if_sloc3_1_0
	ldhl	sp,	#3
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
	jr	Z, 00157$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00158$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00158$
00157$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00158$
	scf
00158$:
	ld	a, #0x00
	rla
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
	C$vm.c$188$2_1$281	= .
	.globl	C$vm.c$188$2_1$281
;src\core\vm.c:188: case VM_OP_LE: res = (A <= B); break;
;	genLabel
00109$:
;	genCmpGt
;	AOP_STK for _vm_if_sloc2_1_0
	ldhl	sp,	#3
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
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genNot
	xor	a, #0x01
;	genCast
;	AOP_STK for _vm_if_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
	C$vm.c$189$2_1$281	= .
	.globl	C$vm.c$189$2_1$281
;src\core\vm.c:189: case VM_OP_GT: res = (A >  B); break;
;	genLabel
00110$:
;	genCmpGt
;	AOP_STK for _vm_if_sloc2_1_0
;	AOP_STK for _vm_if_sloc3_1_0
	ldhl	sp,	#3
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
	jr	Z, 00161$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00162$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00162$
00161$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00162$
	scf
00162$:
	ld	a, #0x00
	rla
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
	C$vm.c$190$2_1$281	= .
	.globl	C$vm.c$190$2_1$281
;src\core\vm.c:190: case VM_OP_GE: res = (A >= B); break;
;	genLabel
00111$:
;	genCmpLt
;	AOP_STK for _vm_if_sloc2_1_0
	ldhl	sp,	#3
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
	jr	Z, 00163$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00164$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00164$
00163$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00164$
	scf
00164$:
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genNot
	xor	a, #0x01
;	genCast
;	AOP_STK for _vm_if_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
	C$vm.c$191$2_1$281	= .
	.globl	C$vm.c$191$2_1$281
;src\core\vm.c:191: case VM_OP_NE: res = (A != B); break;
;	genLabel
00112$:
;	genCmpEq
;	AOP_STK for _vm_if_sloc2_1_0
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00165$
	inc	hl
	ld	a, (hl)
	sub	a, b
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00166$
; common peephole 169xnz used double assignment in case of NZ condition.
00165$:
	xor	a, a
00166$:
;	genMove_o size 1
;	genNot
	xor	a, #0x01
;	genCast
;	AOP_STK for _vm_if_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
	C$vm.c$192$1_1$280	= .
	.globl	C$vm.c$192$1_1$280
;src\core\vm.c:192: }
;	genLabel
00113$:
	C$vm.c$193$1_1$280	= .
	.globl	C$vm.c$193$1_1$280
;src\core\vm.c:193: if (res) THIS->PC = pc;
;	genIfx
;	AOP_STK for _vm_if_sloc3_1_0
	ldhl	sp,	#5
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00115$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#19
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genLabel
00115$:
	C$vm.c$194$1_1$280	= .
	.globl	C$vm.c$194$1_1$280
;src\core\vm.c:194: if (n) THIS->stack_ptr -= n;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#21
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00118$
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
;	AOP_STK for _vm_if_sloc4_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_if_sloc4_1_0
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
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#21
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, d
	add	hl, hl
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genAssign (pointer)
;	AOP_STK for _vm_if_sloc4_1_0
;fetchPairLong
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00118$:
	C$vm.c$195$1_1$279	= .
	.globl	C$vm.c$195$1_1$279
;src\core\vm.c:195: }
;	genEndFunction
;	adjustStack by 6
	add	sp, #6
	C$vm.c$195$1_1$279	= .
	.globl	C$vm.c$195$1_1$279
	XG$vm_if$0$0	= .
	.globl	XG$vm_if$0$0
	ret
	G$vm_if_const$0$0	= .
	.globl	G$vm_if_const$0$0
	C$vm.c$199$1_1$283	= .
	.globl	C$vm.c$199$1_1$283
;src\core\vm.c:199: void vm_if_const(SCRIPT_CTX * THIS, UBYTE condition, INT16 idxA, INT16 B, UBYTE * pc, UBYTE n) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_if_const
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_if_const	= 255
_vm_if_const::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$201$1_0$283	= .
	.globl	C$vm.c$201$1_0$283
;src\core\vm.c:201: if (idxA < 0) A = *(THIS->stack_ptr + idxA); else A = script_memory[idxA];
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#12
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#11
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
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
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#11
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLabel
00103$:
	C$vm.c$202$2_0$284	= .
	.globl	C$vm.c$202$2_0$284
;src\core\vm.c:202: UBYTE res = FALSE;
;	genAssign
;	AOP_STK for _vm_if_const_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), #0x00
	C$vm.c$203$1_1$284	= .
	.globl	C$vm.c$203$1_1$284
;src\core\vm.c:203: switch (condition) {
;	genCmpGt
;	AOP_STK for 
	ld	a, #0x06
	ldhl	sp,	#10
	sub	a, (hl)
	jp	C, 00110$
;	skipping generated iCode
;	genJumpTab
;	AOP_STK for 
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #00143$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00143$:
	jp	00110$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00107$
	jp	00108$
	jp	00109$
	C$vm.c$204$2_1$285	= .
	.globl	C$vm.c$204$2_1$285
;src\core\vm.c:204: case VM_OP_EQ: res = (A == B); break;
;	genLabel
00104$:
;	genCmpEq
;	AOP_STK for 
;	AOP_STK for _vm_if_const_sloc0_1_0
	ldhl	sp,	#13
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00144$
	inc	hl
	ld	a, (hl)
	sub	a, b
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00145$
; common peephole 169xnz used double assignment in case of NZ condition.
00144$:
	xor	a, a
00145$:
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00110$
	C$vm.c$205$2_1$285	= .
	.globl	C$vm.c$205$2_1$285
;src\core\vm.c:205: case VM_OP_LT: res = (A <  B); break;
;	genLabel
00105$:
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for _vm_if_const_sloc0_1_0
	ldhl	sp,	#13
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
	jr	Z, 00146$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00147$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00147$
00146$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00147$
	scf
00147$:
	ld	a, #0x00
	rla
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
	C$vm.c$206$2_1$285	= .
	.globl	C$vm.c$206$2_1$285
;src\core\vm.c:206: case VM_OP_LE: res = (A <= B); break;
;	genLabel
00106$:
;	genCmpGt
;	AOP_STK for 
	ldhl	sp,	#13
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
	jr	Z, 00148$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00149$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00149$
00148$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00149$
	scf
00149$:
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genNot
	xor	a, #0x01
;	genCast
;	AOP_STK for _vm_if_const_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
	C$vm.c$207$2_1$285	= .
	.globl	C$vm.c$207$2_1$285
;src\core\vm.c:207: case VM_OP_GT: res = (A >  B); break;
;	genLabel
00107$:
;	genCmpGt
;	AOP_STK for 
;	AOP_STK for _vm_if_const_sloc0_1_0
	ldhl	sp,	#13
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
	jr	Z, 00150$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00151$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00151$
00150$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00151$
	scf
00151$:
	ld	a, #0x00
	rla
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
	C$vm.c$208$2_1$285	= .
	.globl	C$vm.c$208$2_1$285
;src\core\vm.c:208: case VM_OP_GE: res = (A >= B); break;
;	genLabel
00108$:
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
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
	jr	Z, 00152$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00153$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00153$
00152$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00153$
	scf
00153$:
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genNot
	xor	a, #0x01
;	genCast
;	AOP_STK for _vm_if_const_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
	C$vm.c$209$2_1$285	= .
	.globl	C$vm.c$209$2_1$285
;src\core\vm.c:209: case VM_OP_NE: res = (A != B); break;
;	genLabel
00109$:
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#13
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00154$
	inc	hl
	ld	a, (hl)
	sub	a, b
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00155$
; common peephole 169xnz used double assignment in case of NZ condition.
00154$:
	xor	a, a
00155$:
;	genMove_o size 1
;	genNot
	xor	a, #0x01
;	genCast
;	AOP_STK for _vm_if_const_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
	C$vm.c$210$1_1$284	= .
	.globl	C$vm.c$210$1_1$284
;src\core\vm.c:210: }
;	genLabel
00110$:
	C$vm.c$211$1_1$284	= .
	.globl	C$vm.c$211$1_1$284
;src\core\vm.c:211: if (res) THIS->PC = pc;
;	genIfx
;	AOP_STK for _vm_if_const_sloc0_1_0
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00112$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#15
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genLabel
00112$:
	C$vm.c$212$1_1$284	= .
	.globl	C$vm.c$212$1_1$284
;src\core\vm.c:212: if (n) THIS->stack_ptr -= n;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#17
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00115$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_if_const_sloc1_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	inc	sp
	inc	sp
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_if_const_sloc1_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
; common peephole 52a replaced push/pop pair by loads.
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#17
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genLeftShift
;fetchPairLong
	ld	l, e
	ld	h, d
	add	hl, hl
;	genMinus
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
;	genAssign (pointer)
;	AOP_STK for _vm_if_const_sloc1_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00115$:
	C$vm.c$213$1_1$283	= .
	.globl	C$vm.c$213$1_1$283
;src\core\vm.c:213: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$213$1_1$283	= .
	.globl	C$vm.c$213$1_1$283
	XG$vm_if_const$0$0	= .
	.globl	XG$vm_if_const$0$0
	ret
	G$vm_push_value$0$0	= .
	.globl	G$vm_push_value$0$0
	C$vm.c$216$1_1$287	= .
	.globl	C$vm.c$216$1_1$287
;src\core\vm.c:216: void vm_push_value(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_push_value
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_push_value	= 255
_vm_push_value::
;	adjustStack by -4
	add	sp, #-4
	C$vm.c$217$1_0$287	= .
	.globl	C$vm.c$217$1_0$287
;src\core\vm.c:217: *(THIS->stack_ptr) = *((idx < 0) ? (THIS->stack_ptr + idx) : (script_memory + idx));
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_push_value_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_push_value_sloc0_1_0
;	AOP_STK for _vm_push_value_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_push_value_sloc1_1_0
;	AOP_STK for _vm_push_value_sloc2_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
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
	ld	(hl), a
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00104$:
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign (pointer)
;	AOP_STK for _vm_push_value_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$218$1_0$287	= .
	.globl	C$vm.c$218$1_0$287
;src\core\vm.c:218: THIS->stack_ptr++;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0008
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
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
;	genMove_o size 2
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
;	genMove_o size 0
	inc	de
	inc	de
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm.c$219$1_0$287	= .
	.globl	C$vm.c$219$1_0$287
;src\core\vm.c:219: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm.c$219$1_0$287	= .
	.globl	C$vm.c$219$1_0$287
	XG$vm_push_value$0$0	= .
	.globl	XG$vm_push_value$0$0
	ret
	G$vm_push_value_ind$0$0	= .
	.globl	G$vm_push_value_ind$0$0
	C$vm.c$221$1_0$289	= .
	.globl	C$vm.c$221$1_0$289
;src\core\vm.c:221: void vm_push_value_ind(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_push_value_ind
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_push_value_ind	= 255
_vm_push_value_ind::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$222$1_0$289	= .
	.globl	C$vm.c$222$1_0$289
;src\core\vm.c:222: idx = *((idx < 0) ? (THIS->stack_ptr + idx) : (script_memory + idx));
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#10
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00104$:
;	genPointerGet
;	AOP_STK for 
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#10
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$vm.c$223$1_0$289	= .
	.globl	C$vm.c$223$1_0$289
;src\core\vm.c:223: *(THIS->stack_ptr) = *((idx < 0) ? (THIS->stack_ptr + idx) : (script_memory + idx));
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	AOP_STK for _vm_push_value_ind_sloc0_1_0
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
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
	ld	b, a
;	genCast
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genLabel
00106$:
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign (pointer)
;	AOP_STK for _vm_push_value_ind_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm.c$224$1_0$289	= .
	.globl	C$vm.c$224$1_0$289
;src\core\vm.c:224: THIS->stack_ptr++;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0008
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
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
;	genMove_o size 2
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
;	genMove_o size 0
	inc	de
	inc	de
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm.c$225$1_0$289	= .
	.globl	C$vm.c$225$1_0$289
;src\core\vm.c:225: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$225$1_0$289	= .
	.globl	C$vm.c$225$1_0$289
	XG$vm_push_value_ind$0$0	= .
	.globl	XG$vm_push_value_ind$0$0
	ret
	G$vm_push_reference$0$0	= .
	.globl	G$vm_push_reference$0$0
	C$vm.c$228$1_0$291	= .
	.globl	C$vm.c$228$1_0$291
;src\core\vm.c:228: void vm_push_reference(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_push_reference
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_push_reference	= 255
_vm_push_reference::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$229$1_0$291	= .
	.globl	C$vm.c$229$1_0$291
;src\core\vm.c:229: *(THIS->stack_ptr) = ((idx < 0) ? ((((UWORD)(THIS->stack_ptr) - (UWORD)script_memory) >> 1) + idx) : idx);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
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
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genMinus
	ld	a, e
	sub	a, #<(_script_memory)
	ld	e, a
	ld	a, d
	sbc	a, #>(_script_memory)
	ld	d, a
;	genRightShift
;fetchPairLong
	srl	d
	rr	e
;	genCast
;	AOP_STK for 
;	AOP_STK for _vm_push_reference_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_push_reference_sloc0_1_0
;fetchPairLong
;fetchPairLong
	pop	hl
	push	hl
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genLabel
00104$:
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm.c$230$1_0$291	= .
	.globl	C$vm.c$230$1_0$291
;src\core\vm.c:230: THIS->stack_ptr++;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0008
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
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
;	genMove_o size 2
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
;	genMove_o size 0
	inc	de
	inc	de
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm.c$231$1_0$291	= .
	.globl	C$vm.c$231$1_0$291
;src\core\vm.c:231: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$231$1_0$291	= .
	.globl	C$vm.c$231$1_0$291
	XG$vm_push_reference$0$0	= .
	.globl	XG$vm_push_reference$0$0
	ret
	G$vm_reserve$0$0	= .
	.globl	G$vm_reserve$0$0
	C$vm.c$233$1_0$293	= .
	.globl	C$vm.c$233$1_0$293
;src\core\vm.c:233: void vm_reserve(SCRIPT_CTX * THIS, INT8 ofs) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_reserve
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_reserve	= 255
_vm_reserve::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$234$1_0$293	= .
	.globl	C$vm.c$234$1_0$293
;src\core\vm.c:234: THIS->stack_ptr += ofs;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_reserve_sloc0_1_0
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
;	genCast
;	AOP_STK for 
;	genMove_o size 0
;	genMove_o size 1
	ldhl	sp,	#10
	ld	a, (hl)
;	genMove_o size 0
	ld	e, a
	rlca
	sbc	a, a
;	genLeftShift
;fetchPairLong
	ld	d, a
	sla	e
	rl	d
;	genPlus
;	AOP_STK for _vm_reserve_sloc0_1_0
;fetchPairLong
;fetchPairLong
	pop	hl
	push	hl
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
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
	C$vm.c$235$1_0$293	= .
	.globl	C$vm.c$235$1_0$293
;src\core\vm.c:235: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$235$1_0$293	= .
	.globl	C$vm.c$235$1_0$293
	XG$vm_reserve$0$0	= .
	.globl	XG$vm_reserve$0$0
	ret
	G$vm_set$0$0	= .
	.globl	G$vm_set$0$0
	C$vm.c$237$1_0$295	= .
	.globl	C$vm.c$237$1_0$295
;src\core\vm.c:237: void vm_set(SCRIPT_CTX * THIS, INT16 idxA, INT16 idxB) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_set
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_set	= 255
_vm_set::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$239$1_0$295	= .
	.globl	C$vm.c$239$1_0$295
;src\core\vm.c:239: if (idxA < 0) A = THIS->stack_ptr + idxA; else A = script_memory + idxA;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
;	genAssign
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
	ld	b, a
;	genCast
;	(locations are the same)
;	genLabel
00103$:
	C$vm.c$240$1_0$295	= .
	.globl	C$vm.c$240$1_0$295
;src\core\vm.c:240: if (idxB < 0) B = THIS->stack_ptr + idxB; else B = script_memory + idxB;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genPointerGet
;	AOP_STK for _vm_set_sloc0_1_0
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	add	a, a
	rl	d
;	genPlus
;	AOP_STK for _vm_set_sloc0_1_0
;fetchPairLong
	ld	e, a
;fetchPairLong
	pop	hl
	push	hl
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
; common peephole 1 removed dead load from l into e.
; common peephole 0b removed redundant load from e back into l.
;	spillPairReg hl
;	spillPairReg hl
; common peephole 9 loaded h from h directly instead of going through a.
; common peephole 0a removed redundant load from h into h.
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#12
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	sla	e
	rl	d
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, de
;	genCast
;	(locations are the same)
;	genLabel
00106$:
	C$vm.c$241$1_0$295	= .
	.globl	C$vm.c$241$1_0$295
;src\core\vm.c:241: *A = *B;
;	genPointerGet
;	AOP_STK for _vm_set_sloc1_1_0
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
;	genAssign (pointer)
;	AOP_STK for _vm_set_sloc1_1_0
;fetchPairLong
	ldhl	sp,	#0
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$vm.c$242$1_0$295	= .
	.globl	C$vm.c$242$1_0$295
;src\core\vm.c:242: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$242$1_0$295	= .
	.globl	C$vm.c$242$1_0$295
	XG$vm_set$0$0	= .
	.globl	XG$vm_set$0$0
	ret
	G$vm_set_const$0$0	= .
	.globl	G$vm_set_const$0$0
	C$vm.c$244$1_0$297	= .
	.globl	C$vm.c$244$1_0$297
;src\core\vm.c:244: void vm_set_const(SCRIPT_CTX * THIS, INT16 idx, UWORD value) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_set_const
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_set_const	= 255
_vm_set_const::
	C$vm.c$246$1_0$297	= .
	.globl	C$vm.c$246$1_0$297
;src\core\vm.c:246: if (idx < 0) A = THIS->stack_ptr + idx; else A = script_memory + idx;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
	ld	b, a
;	genCast
;	(locations are the same)
;	genLabel
00103$:
	C$vm.c$247$1_0$297	= .
	.globl	C$vm.c$247$1_0$297
;src\core\vm.c:247: *A = value;
;	genAssign (pointer)
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#10
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm.c$248$1_0$297	= .
	.globl	C$vm.c$248$1_0$297
;src\core\vm.c:248: }
;	genEndFunction
	C$vm.c$248$1_0$297	= .
	.globl	C$vm.c$248$1_0$297
	XG$vm_set_const$0$0	= .
	.globl	XG$vm_set_const$0$0
	ret
	G$vm_get_tlocal$0$0	= .
	.globl	G$vm_get_tlocal$0$0
	C$vm.c$250$1_0$299	= .
	.globl	C$vm.c$250$1_0$299
;src\core\vm.c:250: void vm_get_tlocal(SCRIPT_CTX * THIS, INT16 idxA, INT16 idxB) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_get_tlocal
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_get_tlocal	= 255
_vm_get_tlocal::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$252$1_0$299	= .
	.globl	C$vm.c$252$1_0$299
;src\core\vm.c:252: if (idxA < 0) A = THIS->stack_ptr + idxA; else A = script_memory + idxA;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
;	genAssign
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
	ld	b, a
;	genCast
;	(locations are the same)
;	genLabel
00103$:
	C$vm.c$253$1_0$299	= .
	.globl	C$vm.c$253$1_0$299
;src\core\vm.c:253: if (idxB < 0) B = THIS->stack_ptr + idxB; else B = THIS->base_addr + idxB;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genPointerGet
;	AOP_STK for _vm_get_tlocal_sloc0_1_0
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	add	a, a
	rl	d
;	genPlus
;	AOP_STK for _vm_get_tlocal_sloc0_1_0
;fetchPairLong
	ld	e, a
;fetchPairLong
	pop	hl
	push	hl
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
; common peephole 1 removed dead load from l into e.
; common peephole 0b removed redundant load from e back into l.
;	spillPairReg hl
;	spillPairReg hl
; common peephole 9 loaded h from h directly instead of going through a.
; common peephole 0a removed redundant load from h into h.
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, de
;	genPointerGet
;	AOP_STK for _vm_get_tlocal_sloc1_1_0
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	add	a, a
	rl	d
;	genPlus
;	AOP_STK for _vm_get_tlocal_sloc1_1_0
;fetchPairLong
	ld	e, a
;fetchPairLong
	pop	hl
	push	hl
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
; common peephole 1 removed dead load from l into e.
; common peephole 0b removed redundant load from e back into l.
;	spillPairReg hl
;	spillPairReg hl
; common peephole 9 loaded h from h directly instead of going through a.
; common peephole 0a removed redundant load from h into h.
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genLabel
00106$:
	C$vm.c$254$1_0$299	= .
	.globl	C$vm.c$254$1_0$299
;src\core\vm.c:254: *A = *B;
;	genPointerGet
;	AOP_STK for _vm_get_tlocal_sloc2_1_0
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
;	genAssign (pointer)
;	AOP_STK for _vm_get_tlocal_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#0
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$vm.c$255$1_0$299	= .
	.globl	C$vm.c$255$1_0$299
;src\core\vm.c:255: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$255$1_0$299	= .
	.globl	C$vm.c$255$1_0$299
	XG$vm_get_tlocal$0$0	= .
	.globl	XG$vm_get_tlocal$0$0
	ret
	G$vm_test_terminate$0$0	= .
	.globl	G$vm_test_terminate$0$0
	C$vm.c$377$1_1$311	= .
	.globl	C$vm.c$377$1_1$311
;src\core\vm.c:377: void vm_test_terminate(SCRIPT_CTX * THIS, UBYTE flags) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_test_terminate
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_test_terminate	= 255
_vm_test_terminate::
	C$vm.c$379$1_0$311	= .
	.globl	C$vm.c$379$1_0$311
;src\core\vm.c:379: if (flags & 1) wait_vbl_done();
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00102$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00111$.
;	skipping generated iCode
;	genCall
	call	_wait_vbl_done
;	genLabel
00102$:
	C$vm.c$383$1_0$311	= .
	.globl	C$vm.c$383$1_0$311
;src\core\vm.c:383: __endasm;
;	genInline
;	genInline
	ld	b, b
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$vm.c$385$1_0$311	= .
	.globl	C$vm.c$385$1_0$311
;src\core\vm.c:385: }
;	genEndFunction
	C$vm.c$385$1_0$311	= .
	.globl	C$vm.c$385$1_0$311
	XG$vm_test_terminate$0$0	= .
	.globl	XG$vm_test_terminate$0$0
	ret
	G$vm_idle$0$0	= .
	.globl	G$vm_idle$0$0
	C$vm.c$388$1_0$313	= .
	.globl	C$vm.c$388$1_0$313
;src\core\vm.c:388: void vm_idle(SCRIPT_CTX * THIS) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_idle
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_idle	= 255
_vm_idle::
	C$vm.c$389$1_0$313	= .
	.globl	C$vm.c$389$1_0$313
;src\core\vm.c:389: THIS->waitable = TRUE;
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
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x01
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm.c$390$1_0$313	= .
	.globl	C$vm.c$390$1_0$313
;src\core\vm.c:390: }
;	genEndFunction
	C$vm.c$390$1_0$313	= .
	.globl	C$vm.c$390$1_0$313
	XG$vm_idle$0$0	= .
	.globl	XG$vm_idle$0$0
	ret
	G$vm_init_rng$0$0	= .
	.globl	G$vm_init_rng$0$0
	C$vm.c$404$1_2$319	= .
	.globl	C$vm.c$404$1_2$319
;src\core\vm.c:404: void vm_init_rng(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_init_rng
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_init_rng	= 255
_vm_init_rng::
	C$vm.c$406$1_0$319	= .
	.globl	C$vm.c$406$1_0$319
;src\core\vm.c:406: if (idx < 0) A = THIS->stack_ptr + idx; else A = script_memory + idx;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	genMove_o size 2
	ld	c, l
;	genMove_o size 0
;	genLabel
00103$:
	C$vm.c$407$1_0$319	= .
	.globl	C$vm.c$407$1_0$319
;src\core\vm.c:407: initrand(*A);
;	genPointerGet
;fetchPairLong
	ld	l, c
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genIpush
	push	bc
;	genCall
;	adjustStack by 2
	call	_initrand
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm.c$408$1_0$319	= .
	.globl	C$vm.c$408$1_0$319
;src\core\vm.c:408: }
;	genEndFunction
	C$vm.c$408$1_0$319	= .
	.globl	C$vm.c$408$1_0$319
	XG$vm_init_rng$0$0	= .
	.globl	XG$vm_init_rng$0$0
	ret
	G$vm_rand$0$0	= .
	.globl	G$vm_rand$0$0
	C$vm.c$411$1_0$321	= .
	.globl	C$vm.c$411$1_0$321
;src\core\vm.c:411: void vm_rand(SCRIPT_CTX * THIS, INT16 idx, UINT16 min, UINT16 limit) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_rand
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_rand	= 255
_vm_rand::
	C$vm.c$413$1_0$321	= .
	.globl	C$vm.c$413$1_0$321
;src\core\vm.c:413: if (idx < 0) A = THIS->stack_ptr + idx; else A = script_memory + idx;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	add	a, a
	rl	d
;	genPlus
	add	a, c
	ld	e, a
	ld	a, d
	adc	a, b
	ld	d, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genMove_o size 0
	add	a, a
	rl	c
;	genPlus
	add	a, #<(_script_memory)
	ld	e, a
	ld	a, c
	adc	a, #>(_script_memory)
	ld	d, a
;	genCast
;	(locations are the same)
;	genLabel
00103$:
	C$vm.c$414$1_0$321	= .
	.globl	C$vm.c$414$1_0$321
;src\core\vm.c:414: *A = (randw() % limit) + min;
;	genCall
	push	de
	call	_randw
;	genMove_o size 2
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genSend
;	AOP_STK for 
; common peephole 50a eliminated dead pop/push de pair.
;	genMove_o size 2
; common peephole 173 eliminated assignment by pushing de
	push	de
	ldhl	sp,	#16
	ld	c, (hl)
; common peephole 50a eliminated dead pop/push hl pair.
	ldhl	sp,	#17
	ld	b, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
; common peephole 31 popped de directly instead of going through hl.
	pop	de
;	genMove_o size 0
;	genCall
	call	__moduint
;	genMove_o size 2
	pop	de
;	genPlus
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#10
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm.c$415$1_0$321	= .
	.globl	C$vm.c$415$1_0$321
;src\core\vm.c:415: }
;	genEndFunction
	C$vm.c$415$1_0$321	= .
	.globl	C$vm.c$415$1_0$321
	XG$vm_rand$0$0	= .
	.globl	XG$vm_rand$0$0
	ret
	G$vm_lock$0$0	= .
	.globl	G$vm_lock$0$0
	C$vm.c$418$1_0$323	= .
	.globl	C$vm.c$418$1_0$323
;src\core\vm.c:418: void vm_lock(SCRIPT_CTX * THIS) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_lock
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_lock	= 255
_vm_lock::
	C$vm.c$419$1_0$323	= .
	.globl	C$vm.c$419$1_0$323
;src\core\vm.c:419: THIS->lock_count++;
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
	ld	hl, #0x0011
	add	hl, bc
;	genPointerGet
;	genPlus
;	genAssign (pointer)
	inc	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b inc (hl) directly to remove redundant load from a into (hl)
	C$vm.c$420$1_0$323	= .
	.globl	C$vm.c$420$1_0$323
;src\core\vm.c:420: vm_lock_state++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_vm_lock_state
	inc	(hl)
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm.c$421$1_0$323	= .
	.globl	C$vm.c$421$1_0$323
;src\core\vm.c:421: }
;	genEndFunction
	C$vm.c$421$1_0$323	= .
	.globl	C$vm.c$421$1_0$323
	XG$vm_lock$0$0	= .
	.globl	XG$vm_lock$0$0
	ret
	G$vm_unlock$0$0	= .
	.globl	G$vm_unlock$0$0
	C$vm.c$424$1_0$325	= .
	.globl	C$vm.c$424$1_0$325
;src\core\vm.c:424: void vm_unlock(SCRIPT_CTX * THIS) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_unlock
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_unlock	= 255
_vm_unlock::
	C$vm.c$425$1_0$325	= .
	.globl	C$vm.c$425$1_0$325
;src\core\vm.c:425: if (THIS->lock_count == 0) return;
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
	ld	hl, #0x0011
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
;	genRet
;	genLabel
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
	C$vm.c$426$1_0$325	= .
	.globl	C$vm.c$426$1_0$325
;src\core\vm.c:426: THIS->lock_count--;
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
	ld	hl, #0x0011
	add	hl, bc
;	genPointerGet
;	genMinus
;	genAssign (pointer)
	dec	(hl)
; common peephole 1 removed dead load from (hl) into a.
; common peephole 104b dec (hl) directly to remove redundant load from a into (hl)
	C$vm.c$427$1_0$325	= .
	.globl	C$vm.c$427$1_0$325
;src\core\vm.c:427: vm_lock_state--;
;	genMinus
;fetchLitPair	hl
	ld	hl, #_vm_lock_state
	dec	(hl)
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$vm.c$428$1_0$325	= .
	.globl	C$vm.c$428$1_0$325
;src\core\vm.c:428: }
;	genEndFunction
	C$vm.c$428$1_0$325	= .
	.globl	C$vm.c$428$1_0$325
	XG$vm_unlock$0$0	= .
	.globl	XG$vm_unlock$0$0
	ret
	G$vm_raise$0$0	= .
	.globl	G$vm_raise$0$0
	C$vm.c$431$1_0$327	= .
	.globl	C$vm.c$431$1_0$327
;src\core\vm.c:431: void vm_raise(SCRIPT_CTX * THIS, UBYTE code, UBYTE size) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_raise
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_raise	= 255
_vm_raise::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$432$1_0$327	= .
	.globl	C$vm.c$432$1_0$327
;src\core\vm.c:432: vm_exception_code = code;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#10
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_vm_exception_code),a
; common peephole 19 loaded (#_vm_exception_code) from a directly instead of using hl.
	C$vm.c$433$1_0$327	= .
	.globl	C$vm.c$433$1_0$327
;src\core\vm.c:433: vm_exception_params_length = size;
;	genAssign
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#11
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_vm_exception_params_length),a
; common peephole 19 loaded (#_vm_exception_params_length) from a directly instead of using hl.
	C$vm.c$434$1_0$327	= .
	.globl	C$vm.c$434$1_0$327
;src\core\vm.c:434: vm_exception_params_bank = THIS->bank;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_vm_exception_params_bank),a
; common peephole 19 loaded (#_vm_exception_params_bank) from a directly instead of using hl.
	C$vm.c$435$1_0$327	= .
	.globl	C$vm.c$435$1_0$327
;src\core\vm.c:435: vm_exception_params_offset = THIS->PC;
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
	ld	hl, #_vm_exception_params_offset
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
	C$vm.c$436$1_0$327	= .
	.globl	C$vm.c$436$1_0$327
;src\core\vm.c:436: THIS->PC += size;
;	genPointerGet
;	AOP_STK for _vm_raise_sloc0_1_0
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
;	genPlus
;	AOP_STK for _vm_raise_sloc0_1_0
;	AOP_STK for 
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
	ldhl	sp,	#11
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
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
	C$vm.c$437$1_0$327	= .
	.globl	C$vm.c$437$1_0$327
;src\core\vm.c:437: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$437$1_0$327	= .
	.globl	C$vm.c$437$1_0$327
	XG$vm_raise$0$0	= .
	.globl	XG$vm_raise$0$0
	ret
	G$vm_set_indirect$0$0	= .
	.globl	G$vm_set_indirect$0$0
	C$vm.c$440$1_0$329	= .
	.globl	C$vm.c$440$1_0$329
;src\core\vm.c:440: void vm_set_indirect(SCRIPT_CTX * THIS, INT16 idxA, INT16 idxB) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_set_indirect
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_set_indirect	= 255
_vm_set_indirect::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm.c$443$1_0$329	= .
	.globl	C$vm.c$443$1_0$329
;src\core\vm.c:443: if (idxA < 0) A = THIS->stack_ptr + idxA; else A = script_memory + idxA;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
	ld	b, a
;	genCast
;	(locations are the same)
;	genLabel
00103$:
	C$vm.c$444$1_0$329	= .
	.globl	C$vm.c$444$1_0$329
;src\core\vm.c:444: if (*A < 0) A = THIS->stack_ptr + *A; else A = script_memory + *A;
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
;	spillPairReg hl
; common peephole 1 removed dead load from a into l.
;	spillPairReg hl
;	spillPairReg hl
;	genCmpLt
; common peephole 73 tested bit 7 of (hl) directly instead of going through h.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genPointerGet
;	AOP_STK for _vm_set_indirect_sloc0_1_0
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
;	genLeftShift
;fetchPairLong
	sla	c
	rl	b
;	genPlus
;	AOP_STK for _vm_set_indirect_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genAssign
;	AOP_STK for _vm_set_indirect_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
;fetchPairLong
;	genPlus
	ld	a, l
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, h
	adc	a, #>(_script_memory)
;	genCast
;	AOP_STK for _vm_set_indirect_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00106$:
	C$vm.c$446$1_0$329	= .
	.globl	C$vm.c$446$1_0$329
;src\core\vm.c:446: if (idxB < 0) B = THIS->stack_ptr + idxB; else B = script_memory + idxB;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genAssign
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00108$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genMove_o size 2
;	genMove_o size 0
;	genCast
;	genMove_o size 2
;	spillPairReg hl
;	spillPairReg hl
; common peephole 1 removed dead load from l into e.
; common peephole 1 removed dead load from h into d.
; common peephole 104 removed redundant load from de into hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genLabel
00109$:
	C$vm.c$448$1_0$329	= .
	.globl	C$vm.c$448$1_0$329
;src\core\vm.c:448: *A = *B;
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign (pointer)
;	AOP_STK for _vm_set_indirect_sloc1_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
; common peephole 158 removed unused label 00110$.
	C$vm.c$449$1_0$329	= .
	.globl	C$vm.c$449$1_0$329
;src\core\vm.c:449: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm.c$449$1_0$329	= .
	.globl	C$vm.c$449$1_0$329
	XG$vm_set_indirect$0$0	= .
	.globl	XG$vm_set_indirect$0$0
	ret
	G$vm_get_indirect$0$0	= .
	.globl	G$vm_get_indirect$0$0
	C$vm.c$451$1_0$331	= .
	.globl	C$vm.c$451$1_0$331
;src\core\vm.c:451: void vm_get_indirect(SCRIPT_CTX * THIS, INT16 idxA, INT16 idxB) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_get_indirect
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_get_indirect	= 255
_vm_get_indirect::
;	adjustStack by -4
	add	sp, #-4
	C$vm.c$454$1_0$331	= .
	.globl	C$vm.c$454$1_0$331
;src\core\vm.c:454: if (idxA < 0) A = THIS->stack_ptr + idxA; else A = script_memory + idxA;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
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
;	genAssign
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
	ld	b, a
;	genCast
;	(locations are the same)
;	genLabel
00103$:
	C$vm.c$456$1_0$331	= .
	.globl	C$vm.c$456$1_0$331
;src\core\vm.c:456: if (idxB < 0) B = THIS->stack_ptr + idxB; else B = script_memory + idxB;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#15
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genPointerGet
;	AOP_STK for _vm_get_indirect_sloc0_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	add	a, a
	rl	d
;	genPlus
;	AOP_STK for _vm_get_indirect_sloc0_1_0
;	AOP_STK for _vm_get_indirect_sloc1_1_0
;fetchPairLong
	ld	e, a
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	add	a, a
	rl	d
;	genPlus
	add	a, #<(_script_memory)
	ld	e, a
	ld	a, d
	adc	a, #>(_script_memory)
;	genCast
;	AOP_STK for _vm_get_indirect_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), e
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00106$:
	C$vm.c$457$1_0$331	= .
	.globl	C$vm.c$457$1_0$331
;src\core\vm.c:457: if (*B < 0) B = THIS->stack_ptr + *B; else B = script_memory + *B;
;	genPointerGet
;	AOP_STK for _vm_get_indirect_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
; common peephole 1 removed dead load from (de) into a.
; common peephole 1 removed dead load from a into l.
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	spillPairReg hl
;	spillPairReg hl
;	genCmpLt
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through h.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genPointerGet
;	AOP_STK for _vm_get_indirect_sloc2_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPointerGet
;	AOP_STK for _vm_get_indirect_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
;fetchPairLong
	ld	e, l
	ld	d, h
;	genPlus
;	AOP_STK for _vm_get_indirect_sloc2_1_0
;fetchPairLong
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
; common peephole 1 removed dead load from l into e.
; common peephole 0b removed redundant load from e back into l.
;	spillPairReg hl
;	spillPairReg hl
; common peephole 9 loaded h from h directly instead of going through a.
; common peephole 0a removed redundant load from h into h.
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00108$:
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _vm_get_indirect_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genLeftShift
;fetchPairLong
	ld	h, a
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_script_memory
	add	hl, de
;	genCast
;	(locations are the same)
;	genLabel
00109$:
	C$vm.c$459$1_0$331	= .
	.globl	C$vm.c$459$1_0$331
;src\core\vm.c:459: *A = *B;
;	genPointerGet
;	AOP_STK for _vm_get_indirect_sloc3_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genAssign (pointer)
;	AOP_STK for _vm_get_indirect_sloc3_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00110$.
	C$vm.c$460$1_0$331	= .
	.globl	C$vm.c$460$1_0$331
;src\core\vm.c:460: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm.c$460$1_0$331	= .
	.globl	C$vm.c$460$1_0$331
	XG$vm_get_indirect$0$0	= .
	.globl	XG$vm_get_indirect$0$0
	ret
	G$vm_poll_loaded$0$0	= .
	.globl	G$vm_poll_loaded$0$0
	C$vm.c$462$1_0$333	= .
	.globl	C$vm.c$462$1_0$333
;src\core\vm.c:462: void vm_poll_loaded(SCRIPT_CTX * THIS, INT16 idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_poll_loaded
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_poll_loaded	= 255
_vm_poll_loaded::
	C$vm.c$464$1_0$333	= .
	.globl	C$vm.c$464$1_0$333
;src\core\vm.c:464: if (idx < 0) A = THIS->stack_ptr + idx; else A = script_memory + idx;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00103$:
	C$vm.c$465$1_0$333	= .
	.globl	C$vm.c$465$1_0$333
;src\core\vm.c:465: *A = vm_loaded_state;
;	genCast
;	genMove_o size 1
	push	hl
;fetchLitPair	hl
	ld	hl, #_vm_loaded_state
	ld	c, (hl)
	pop	hl
;	genMove_o size 1
	xor	a, a
;	genAssign (pointer)
;fetchPairLong
	ld	(hl), c
	inc	hl
	ld	(hl), a
	C$vm.c$466$1_0$333	= .
	.globl	C$vm.c$466$1_0$333
;src\core\vm.c:466: vm_loaded_state = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vm_loaded_state
	ld	(hl), #0x00
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm.c$467$1_0$333	= .
	.globl	C$vm.c$467$1_0$333
;src\core\vm.c:467: }
;	genEndFunction
	C$vm.c$467$1_0$333	= .
	.globl	C$vm.c$467$1_0$333
	XG$vm_poll_loaded$0$0	= .
	.globl	XG$vm_poll_loaded$0$0
	ret
	G$vm_memset$0$0	= .
	.globl	G$vm_memset$0$0
	C$vm.c$492$1_0$338	= .
	.globl	C$vm.c$492$1_0$338
;src\core\vm.c:492: void vm_memset(SCRIPT_CTX * THIS, INT16 idx, INT16 value, INT16 count) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_memset
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_memset	= 255
_vm_memset::
	C$vm.c$493$2_0$338	= .
	.globl	C$vm.c$493$2_0$338
;src\core\vm.c:493: for (INT16 i = 0, *v = VM_REF_TO_PTR(idx); i != count; i++) *v++ = value;
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00107$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00108$:
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genAssign
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x0000
;	genLabel
00103$:
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#12
	ld	a, (hl)
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00130$
	inc	hl
	ld	a, (hl)
	sub	a, b
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00130$:
;	skipping generated iCode
;	genAssign (pointer)
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#10
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genPlus
; common peephole 156a swap dec de / inc de pair.
	inc	de
; common peephole 156a swap dec de / inc de pair.
; common peephole 156b removed inc de / dec de pair.
;	genPlus
	inc	bc
;	genGoto
;	genLabel
; common peephole 158 removed unused label 00105$.
	C$vm.c$494$2_0$338	= .
	.globl	C$vm.c$494$2_0$338
;src\core\vm.c:494: }
;	genEndFunction
	C$vm.c$494$2_0$338	= .
	.globl	C$vm.c$494$2_0$338
	XG$vm_memset$0$0	= .
	.globl	XG$vm_memset$0$0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
; common peephole 152 removed unused ret.
	G$vm_memcpy$0$0	= .
	.globl	G$vm_memcpy$0$0
	C$vm.c$496$2_0$340	= .
	.globl	C$vm.c$496$2_0$340
;src\core\vm.c:496: void vm_memcpy(SCRIPT_CTX * THIS, INT16 idxA, INT16 idxB, INT16 count) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_memcpy
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_memcpy	= 255
_vm_memcpy::
;	adjustStack by -4
	add	sp, #-4
	C$vm.c$497$1_0$340	= .
	.globl	C$vm.c$497$1_0$340
;src\core\vm.c:497: memcpy(VM_REF_TO_PTR(idxA), VM_REF_TO_PTR(idxB), count << 1);
;	genLeftShift
;	AOP_STK for 
;	AOP_STK for _vm_memcpy_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#17
	ld	a, (hl)
	ldhl	sp,	#1
;	genMove_o size 0
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	sla	(hl)
	inc	hl
	rl	(hl)
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#15
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
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
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#14
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	a, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genLabel
00104$:
;	genCast
;	AOP_STK for _vm_memcpy_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00106$:
;	genCast
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_memcpy_sloc0_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
	push	bc
;	genSend
;	AOP_STK for _vm_memcpy_sloc1_1_0
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
	call	_memcpy
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm.c$498$1_0$340	= .
	.globl	C$vm.c$498$1_0$340
;src\core\vm.c:498: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm.c$498$1_0$340	= .
	.globl	C$vm.c$498$1_0$340
	XG$vm_memcpy$0$0	= .
	.globl	XG$vm_memcpy$0$0
	ret
	G$script_runner_init$0$0	= .
	.globl	G$script_runner_init$0$0
	C$vm.c$620$1_0$344	= .
	.globl	C$vm.c$620$1_0$344
;src\core\vm.c:620: void script_runner_init(UBYTE reset) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function script_runner_init
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
	b_script_runner_init	= 255
_script_runner_init::
;	adjustStack by -5
	add	sp, #-5
	C$vm.c$621$1_0$344	= .
	.globl	C$vm.c$621$1_0$344
;src\core\vm.c:621: if (reset) {
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#11
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$vm.c$622$2_0$345	= .
	.globl	C$vm.c$622$2_0$345
;src\core\vm.c:622: memset(script_memory, 0, sizeof(script_memory));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0e00
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_script_memory
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
	C$vm.c$623$2_0$345	= .
	.globl	C$vm.c$623$2_0$345
;src\core\vm.c:623: memset(CTXS, 0, sizeof(CTXS));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0130
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_CTXS
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
;	genLabel
00102$:
	C$vm.c$625$1_1$346	= .
	.globl	C$vm.c$625$1_1$346
;src\core\vm.c:625: UWORD * base_addr = &script_memory[VM_HEAP_SIZE];
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _script_runner_init_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, #<((_script_memory + 1536))
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #>((_script_memory + 1536))
	C$vm.c$626$1_1$346	= .
	.globl	C$vm.c$626$1_1$346
;src\core\vm.c:626: free_ctxs = CTXS, first_ctx = 0;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_free_ctxs
;fetchLitPair	hl
	ld	a, #<(_CTXS)
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #>(_CTXS)
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_first_ctx
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$vm.c$627$2_1$347	= .
	.globl	C$vm.c$627$2_1$347
;src\core\vm.c:627: SCRIPT_CTX * nxt = 0;
;	genAssign
;	AOP_STK for _script_runner_init_sloc1_1_0
;	genMove_o size 2
	xor	a, a
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$vm.c$628$1_2$347	= .
	.globl	C$vm.c$628$1_2$347
;src\core\vm.c:628: SCRIPT_CTX * tmp = CTXS + (VM_MAX_CONTEXTS - 1);
;	genPlus
;fetchLitPair	de
	ld	de, #_CTXS + 285
;	genCast
;	(locations are the same)
	C$vm.c$629$1_2$344	= .
	.globl	C$vm.c$629$1_2$344
;src\core\vm.c:629: for (UBYTE i = VM_MAX_CONTEXTS; i != 0; i--) {
;	genAssign
;	AOP_STK for _script_runner_init_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	(hl), #0x10
;	genLabel
00105$:
;	genIfx
;	AOP_STK for _script_runner_init_sloc2_1_0
	ldhl	sp,	#4
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
	C$vm.c$630$3_2$349	= .
	.globl	C$vm.c$630$3_2$349
;src\core\vm.c:630: tmp->next = nxt;
;	genPlus
;	genMove_o size 2
	ld	c, e
	ld	b, d
;	genMove_o size 0
	inc	bc
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _script_runner_init_sloc1_1_0
;fetchPairLong
	ldhl	sp,	#0
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$vm.c$631$3_2$349	= .
	.globl	C$vm.c$631$3_2$349
;src\core\vm.c:631: tmp->base_addr = base_addr;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _script_runner_init_sloc0_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
	C$vm.c$632$3_2$349	= .
	.globl	C$vm.c$632$3_2$349
;src\core\vm.c:632: tmp->ID = i;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x000c
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _script_runner_init_sloc2_1_0
	ldhl	sp,	#4
	C$vm.c$633$3_2$349	= .
	.globl	C$vm.c$633$3_2$349
;src\core\vm.c:633: base_addr += VM_CONTEXT_STACK_SIZE;
;	genPlus
;	AOP_STK for _script_runner_init_sloc0_1_0
;fetchPairLong
; common peephole 96d move dec hl before push (de)
; common peephole 96b move dec hl before ld (bc), a
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
; common peephole 96d move dec hl before push (de)
; common peephole 96b move dec hl before ld (bc), a
	dec	hl
	ld	(bc), a
	push	de
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0080
	add	hl, de
	pop	de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
;	genMove_o size 0
	C$vm.c$634$3_2$349	= .
	.globl	C$vm.c$634$3_2$349
;src\core\vm.c:634: nxt = tmp--;
;	genAssign
;	genMove_o size 2
;	genMove_o size 0
;	genMinus
;	genAssign
;	AOP_STK for _script_runner_init_sloc1_1_0
;	genMove_o size 2
;	genMove_o size 0
	C$vm.c$629$2_2$348	= .
	.globl	C$vm.c$629$2_2$348
;src\core\vm.c:629: for (UBYTE i = VM_MAX_CONTEXTS; i != 0; i--) {
;	genMinus
;	AOP_STK for _script_runner_init_sloc2_1_0
; common peephole 96d move inc hl before push (bc)
; common peephole 96c move inc hl before inc sp
; common peephole 96c move inc hl before inc sp
; common peephole 96b move inc hl before ld d, a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, d
; common peephole 96b move inc hl before ld e, a
; common peephole 96b move inc hl before add a, #0xed
; common peephole 96b move inc hl before ld a, e
; common peephole 96b move inc hl before ld b, d
; common peephole 96b move inc hl before ld c, e
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	c, e
	ld	b, d
	ld	a, e
	add	a, #0xed
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	inc	sp
	inc	sp
	push	bc
	dec	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00103$:
	C$vm.c$636$1_2$347	= .
	.globl	C$vm.c$636$1_2$347
;src\core\vm.c:636: vm_lock_state = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vm_lock_state
	ld	(hl), #0x00
	C$vm.c$637$1_2$347	= .
	.globl	C$vm.c$637$1_2$347
;src\core\vm.c:637: vm_loaded_state = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vm_loaded_state
	ld	(hl), #0x00
	C$vm.c$639$1_2$347	= .
	.globl	C$vm.c$639$1_2$347
;src\core\vm.c:639: old_executing_ctx = 0, executing_ctx = first_ctx;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_old_executing_ctx
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_first_ctx)
; common peephole 17 loaded a from (#_first_ctx) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_executing_ctx),a
; common peephole 19 loaded (#_executing_ctx) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_first_ctx + 1)
;fetchLitPair	hl
	ld	(#_executing_ctx + 1),a
; common peephole 20 loaded (#_executing_ctx) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$vm.c$640$1_2$344	= .
	.globl	C$vm.c$640$1_2$344
;src\core\vm.c:640: }
;	genEndFunction
;	adjustStack by 5
	add	sp, #5
	C$vm.c$640$1_2$344	= .
	.globl	C$vm.c$640$1_2$344
	XG$script_runner_init$0$0	= .
	.globl	XG$script_runner_init$0$0
	ret
	G$script_execute$0$0	= .
	.globl	G$script_execute$0$0
	C$vm.c$644$1_2$351	= .
	.globl	C$vm.c$644$1_2$351
;src\core\vm.c:644: SCRIPT_CTX * script_execute(UBYTE bank, UBYTE * pc, UWORD * handle, UBYTE nargs, ...) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function script_execute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 9 bytes.
	b_script_execute	= 255
_script_execute::
;	adjustStack by -9
	add	sp, #-9
	C$vm.c$645$1_0$351	= .
	.globl	C$vm.c$645$1_0$351
;src\core\vm.c:645: if (free_ctxs == NULL) return NULL;
;	genIfx
;fetchLitPair	hl
	ld	hl, #_free_ctxs + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
;	genRet
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x0000
	jp	00117$
;	genLabel
00102$:
	C$vm.c$650$2_0$352	= .
	.globl	C$vm.c$650$2_0$352
;src\core\vm.c:650: SCRIPT_CTX * tmp = free_ctxs;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_free_ctxs
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	C$vm.c$652$1_1$352	= .
	.globl	C$vm.c$652$1_1$352
;src\core\vm.c:652: free_ctxs = free_ctxs->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_free_ctxs + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
;fetchLitPair	hl
	ld	hl, #_free_ctxs
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$vm.c$654$1_1$352	= .
	.globl	C$vm.c$654$1_1$352
;src\core\vm.c:654: tmp->PC = pc, tmp->bank = bank, tmp->stack_ptr = tmp->base_addr;
;	genAssign (pointer)
;	AOP_STK for 
;fetchPairLong
	ld	e, c
	ld	d, b
	ldhl	sp,	#16
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
;	genPlus
;	genMove_o size 2
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
; common peephole 96c move dec hl before inc de
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld d, b
; common peephole 96b move dec hl before ld e, c
; common peephole 96b move dec hl before ld (de), a
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
; common peephole 96c move dec hl before inc de
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld d, b
; common peephole 96b move dec hl before ld e, c
; common peephole 96b move dec hl before ld (de), a
	dec	hl
	ld	(de), a
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genPlus
;	AOP_STK for _script_execute_sloc0_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, bc
;	genPointerGet
;	AOP_STK for _script_execute_sloc1_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#7
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genAssign (pointer)
;	AOP_STK for _script_execute_sloc0_1_0
;	AOP_STK for _script_execute_sloc1_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
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
	C$vm.c$656$1_1$352	= .
	.globl	C$vm.c$656$1_1$352
;src\core\vm.c:656: tmp->hthread = handle;
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x000d
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#18
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
	C$vm.c$657$1_1$352	= .
	.globl	C$vm.c$657$1_1$352
;src\core\vm.c:657: if (handle) *handle = tmp->ID;
;	genIfx
;	AOP_STK for 
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000c
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genCast
;	AOP_STK for _script_execute_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#7
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genAssign (pointer)
;	AOP_STK for _script_execute_sloc2_1_0
;fetchPairLong
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl)
	ld	(de), a
	inc	de
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(de), a
;	genLabel
00104$:
	C$vm.c$659$1_1$352	= .
	.globl	C$vm.c$659$1_1$352
;src\core\vm.c:659: tmp->terminated = FALSE;
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000f
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x00
	C$vm.c$661$1_1$352	= .
	.globl	C$vm.c$661$1_1$352
;src\core\vm.c:661: tmp->lock_count = 0;
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0011
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x00
	C$vm.c$663$1_1$352	= .
	.globl	C$vm.c$663$1_1$352
;src\core\vm.c:663: tmp->flags = 0;
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x00
	C$vm.c$665$1_1$352	= .
	.globl	C$vm.c$665$1_1$352
;src\core\vm.c:665: tmp->update_fn_bank = 0;
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0007
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x00
	C$vm.c$667$1_1$352	= .
	.globl	C$vm.c$667$1_1$352
;src\core\vm.c:667: tmp->next = NULL;
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
	inc	de
	inc	de
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
	C$vm.c$668$1_1$352	= .
	.globl	C$vm.c$668$1_1$352
;src\core\vm.c:668: if (first_ctx) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_first_ctx + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
	C$vm.c$669$3_1$353	= .
	.globl	C$vm.c$669$3_1$353
;src\core\vm.c:669: SCRIPT_CTX * idx = first_ctx;
;	genAssign
;	AOP_STK for _script_execute_sloc3_1_0
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (hl)
	ldhl	sp,	#7
	ld	(hl), a
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_first_ctx + 1)
	ldhl	sp,	#8
	ld	(hl), a
	C$vm.c$670$2_1$353	= .
	.globl	C$vm.c$670$2_1$353
;src\core\vm.c:670: while (idx->next) idx = idx->next;
;	genLabel
00105$:
;	genPlus
;	AOP_STK for _script_execute_sloc3_1_0
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
;	genIfx
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
;	genPlus
;	AOP_STK for _script_execute_sloc3_1_0
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
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;	AOP_STK for _script_execute_sloc3_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#7
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00107$:
	C$vm.c$671$2_1$353	= .
	.globl	C$vm.c$671$2_1$353
;src\core\vm.c:671: idx->next = tmp;
;	genPlus
;	AOP_STK for _script_execute_sloc3_1_0
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
	inc	hl
	inc	hl
	inc	hl
;	genAssign (pointer)
;fetchPairLong
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00109$:
	C$vm.c$672$1_1$352	= .
	.globl	C$vm.c$672$1_1$352
;src\core\vm.c:672: } else first_ctx = tmp;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_first_ctx
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
00110$:
	C$vm.c$674$1_1$352	= .
	.globl	C$vm.c$674$1_1$352
;src\core\vm.c:674: if (nargs) {
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#20
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
	C$vm.c$676$2_1$354	= .
	.globl	C$vm.c$676$2_1$354
;src\core\vm.c:676: va_start(va, nargs);
;	genAddrOf
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _script_execute_sloc4_1_0
; common peephole 69 incremented in hl instead of de.
; sm83 peephole 10e combined ld and inc.
	ldhl	sp,#21
	ld	e, l
	ld	d, h
;	genMove_o size 2
	inc	sp
	inc	sp
	push	de
;	genMove_o size 0
	C$vm.c$677$4_1$355	= .
	.globl	C$vm.c$677$4_1$355
;src\core\vm.c:677: for (UBYTE i = nargs; i != 0; i--) {
;	genAssign
;	AOP_STK for 
;	AOP_STK for _script_execute_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#20
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00115$:
;	genIfx
;	AOP_STK for _script_execute_sloc5_1_0
	ldhl	sp,	#8
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
	C$vm.c$678$4_1$356	= .
	.globl	C$vm.c$678$4_1$356
;src\core\vm.c:678: *(tmp->stack_ptr++) = va_arg(va, INT16);
;	genPlus
;	AOP_STK for _script_execute_sloc6_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _script_execute_sloc6_1_0
;	AOP_STK for _script_execute_sloc7_1_0
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
;	genPlus
;	AOP_STK for _script_execute_sloc7_1_0
;	AOP_STK for _script_execute_sloc8_1_0
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
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _script_execute_sloc6_1_0
;	AOP_STK for _script_execute_sloc8_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ldhl	sp,	#6
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
;	genPlus
;	AOP_STK for _script_execute_sloc4_1_0
;	genMove_o size 2
	pop	de
	push	de
;	genMove_o size 0
	inc	de
	inc	de
;	genAssign
;	AOP_STK for _script_execute_sloc4_1_0
;	genMove_o size 2
	inc	sp
	inc	sp
	push	de
;	genMove_o size 0
;	genMinus
	dec	de
	dec	de
;	genCast
;	genMove_o size 2
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _script_execute_sloc9_1_0
;fetchPairLong
; common peephole 1 removed dead load from e into l.
; common peephole 1 removed dead load from d into h.
; common peephole 104 removed redundant load from hl into de
	ld	a, (de)
	ldhl	sp,	#6
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genAssign (pointer)
;	AOP_STK for _script_execute_sloc7_1_0
;	AOP_STK for _script_execute_sloc9_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#4
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
	C$vm.c$677$3_1$355	= .
	.globl	C$vm.c$677$3_1$355
;src\core\vm.c:677: for (UBYTE i = nargs; i != 0; i--) {
;	genMinus
;	AOP_STK for _script_execute_sloc5_1_0
; common peephole 96b move inc hl before ld (de), a
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	(de), a
	dec	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;	genLabel
00113$:
	C$vm.c$682$1_1$352	= .
	.globl	C$vm.c$682$1_1$352
;src\core\vm.c:682: return tmp;
;	genRet
;	genMove_o size 2
;	genLabel
00117$:
	C$vm.c$683$1_1$351	= .
	.globl	C$vm.c$683$1_1$351
;src\core\vm.c:683: }
;	genEndFunction
;	adjustStack by 9
	add	sp, #9
	C$vm.c$683$1_1$351	= .
	.globl	C$vm.c$683$1_1$351
	XG$script_execute$0$0	= .
	.globl	XG$script_execute$0$0
	ret
	G$script_terminate$0$0	= .
	.globl	G$script_terminate$0$0
	C$vm.c$686$1_1$358	= .
	.globl	C$vm.c$686$1_1$358
;src\core\vm.c:686: UBYTE script_terminate(UBYTE ID) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function script_terminate
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_script_terminate	= 255
_script_terminate::
	C$vm.c$688$1_0$358	= .
	.globl	C$vm.c$688$1_0$358
;src\core\vm.c:688: ctx = first_ctx;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_first_ctx)
; common peephole 17 loaded a from (#_first_ctx) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_script_terminate_ctx_10000_358),a
; common peephole 19 loaded (#_script_terminate_ctx_10000_358) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_first_ctx + 1)
;fetchLitPair	hl
	ld	(#_script_terminate_ctx_10000_358 + 1),a
; common peephole 20 loaded (#_script_terminate_ctx_10000_358) from a directly instead of using hl.
	C$vm.c$689$1_0$358	= .
	.globl	C$vm.c$689$1_0$358
;src\core\vm.c:689: while (ctx) {
;	genLabel
00106$:
;	genIfx
;fetchLitPair	hl
	ld	hl, #_script_terminate_ctx_10000_358 + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
	C$vm.c$690$2_0$359	= .
	.globl	C$vm.c$690$2_0$359
;src\core\vm.c:690: if (ctx->ID == ID) {
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
	ld	hl, #0x000c
	add	hl, bc
;	genPointerGet
	ld	c, (hl)
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00135$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00136$.
;	skipping generated iCode
	C$vm.c$691$3_0$360	= .
	.globl	C$vm.c$691$3_0$360
;src\core\vm.c:691: if (ctx->hthread) {
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_terminate_ctx_10000_358
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000d
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
;	genIfx
; common peephole 1 removed dead load from a into c.
	or	a,(hl)
; common peephole 99 removed load by reordering or arguments.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$vm.c$692$4_0$361	= .
	.globl	C$vm.c$692$4_0$361
;src\core\vm.c:692: *(ctx->hthread) |= SCRIPT_TERMINATED;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_terminate_ctx_10000_358
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000d
	add	hl, bc
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
	ld	hl, #_script_terminate_ctx_10000_358
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
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genOr
;	genMove_o size 1
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
;	genMove_o size 0
	ld	a, h
	or	a, #0x80
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	C$vm.c$693$4_0$361	= .
	.globl	C$vm.c$693$4_0$361
;src\core\vm.c:693: ctx->hthread = 0;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_terminate_ctx_10000_358
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000d
	add	hl, bc
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genLabel
00102$:
	C$vm.c$695$3_0$360	= .
	.globl	C$vm.c$695$3_0$360
;src\core\vm.c:695: return ctx->terminated = TRUE;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_terminate_ctx_10000_358
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000f
	add	hl, bc
;	genAssign (pointer)
;	genRet
;	genMove_o size 1
	ld	a,#0x01
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00104$:
	C$vm.c$696$2_0$359	= .
	.globl	C$vm.c$696$2_0$359
;src\core\vm.c:696: } else ctx = ctx->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_terminate_ctx_10000_358
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genPlus
;	genPointerGet
;fetchPairLong
;fetchLitPair	hl
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96b move dec hl before ld d, b
; common peephole 96b move dec hl before ld e, c
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
	inc	bc
	inc	bc
	inc	bc
	ld	e, c
	ld	d, b
	ld	a, (de)
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00108$:
	C$vm.c$698$1_0$358	= .
	.globl	C$vm.c$698$1_0$358
;src\core\vm.c:698: return FALSE;
;	genRet
;	genMove_o size 1
	xor	a, a
;	genLabel
; common peephole 158 removed unused label 00109$.
	C$vm.c$699$1_0$358	= .
	.globl	C$vm.c$699$1_0$358
;src\core\vm.c:699: }
;	genEndFunction
	C$vm.c$699$1_0$358	= .
	.globl	C$vm.c$699$1_0$358
	XG$script_terminate$0$0	= .
	.globl	XG$script_terminate$0$0
	ret
	G$script_detach_hthread$0$0	= .
	.globl	G$script_detach_hthread$0$0
	C$vm.c$702$1_0$363	= .
	.globl	C$vm.c$702$1_0$363
;src\core\vm.c:702: UBYTE script_detach_hthread(UBYTE ID) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function script_detach_hthread
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_script_detach_hthread	= 255
_script_detach_hthread::
	C$vm.c$704$1_0$363	= .
	.globl	C$vm.c$704$1_0$363
;src\core\vm.c:704: ctx = first_ctx;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_first_ctx)
; common peephole 17 loaded a from (#_first_ctx) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_script_detach_hthread_ctx_10000_363),a
; common peephole 19 loaded (#_script_detach_hthread_ctx_10000_363) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_first_ctx + 1)
;fetchLitPair	hl
	ld	(#_script_detach_hthread_ctx_10000_363 + 1),a
; common peephole 20 loaded (#_script_detach_hthread_ctx_10000_363) from a directly instead of using hl.
	C$vm.c$705$1_0$363	= .
	.globl	C$vm.c$705$1_0$363
;src\core\vm.c:705: while (ctx) {
;	genLabel
00104$:
;	genIfx
;fetchLitPair	hl
	ld	hl, #_script_detach_hthread_ctx_10000_363 + 1
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
	C$vm.c$706$2_0$364	= .
	.globl	C$vm.c$706$2_0$364
;src\core\vm.c:706: if (ctx->ID == ID) {
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
	ld	hl, #0x000c
	add	hl, bc
;	genPointerGet
	ld	b, (hl)
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00127$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00128$.
;	skipping generated iCode
	C$vm.c$707$3_0$365	= .
	.globl	C$vm.c$707$3_0$365
;src\core\vm.c:707: ctx->hthread = 0;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_detach_hthread_ctx_10000_363
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000d
	add	hl, bc
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$vm.c$708$3_0$365	= .
	.globl	C$vm.c$708$3_0$365
;src\core\vm.c:708: return TRUE;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
	C$vm.c$709$2_0$364	= .
	.globl	C$vm.c$709$2_0$364
;src\core\vm.c:709: } else ctx = ctx->next;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_detach_hthread_ctx_10000_363
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genPlus
;	genPointerGet
;fetchPairLong
;fetchLitPair	hl
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96b move dec hl before ld d, b
; common peephole 96b move dec hl before ld e, c
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
	inc	bc
	inc	bc
	inc	bc
	ld	e, c
	ld	d, b
	ld	a, (de)
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00106$:
	C$vm.c$711$1_0$363	= .
	.globl	C$vm.c$711$1_0$363
;src\core\vm.c:711: return FALSE;
;	genRet
;	genMove_o size 1
	xor	a, a
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$vm.c$712$1_0$363	= .
	.globl	C$vm.c$712$1_0$363
;src\core\vm.c:712: }
;	genEndFunction
	C$vm.c$712$1_0$363	= .
	.globl	C$vm.c$712$1_0$363
	XG$script_detach_hthread$0$0	= .
	.globl	XG$script_detach_hthread$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
