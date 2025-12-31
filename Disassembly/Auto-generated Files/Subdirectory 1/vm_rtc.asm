;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_rtc
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_VM_RTC
	.globl ___func_VM_RTC
	.globl _RTC_VALUE_REG
	.globl _RTC_LATCH_REG
	.globl _RTC_SELECT_REG
	.globl b_vm_rtc_latch
	.globl _vm_rtc_latch
	.globl b_vm_rtc_get
	.globl _vm_rtc_get
	.globl b_vm_rtc_set
	.globl _vm_rtc_set
	.globl b_vm_rtc_start
	.globl _vm_rtc_start
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$RTC_SELECT_REG$0_0$0 == 0x4000
_RTC_SELECT_REG	=	0x4000
G$RTC_LATCH_REG$0_0$0 == 0x6000
_RTC_LATCH_REG	=	0x6000
G$RTC_VALUE_REG$0_0$0 == 0xa000
_RTC_VALUE_REG	=	0xa000
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
	G$__func_VM_RTC$0$0	= .
	.globl	G$__func_VM_RTC$0$0
	C$vm_rtc.c$9$0_0$242	= .
	.globl	C$vm_rtc.c$9$0_0$242
;src\core\vm_rtc.c:9: BANKREF(VM_RTC)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_RTC
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_RTC	= 255
___func_VM_RTC::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_RTC 
	___bank_VM_RTC = b___func_VM_RTC 
	.globl ___bank_VM_RTC 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_rtc_latch$0$0	= .
	.globl	G$vm_rtc_latch$0$0
	C$vm_rtc.c$11$1_0$244	= .
	.globl	C$vm_rtc.c$11$1_0$244
;src\core\vm_rtc.c:11: void vm_rtc_latch(void) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_rtc_latch
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_rtc_latch	= 255
_vm_rtc_latch::
;include/rtc.h:24: inline void RTC_LATCH(void) { RTC_LATCH_REG = 0; RTC_LATCH_REG = 1; }
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_RTC_LATCH_REG
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), #0x01
	C$vm_rtc.c$12$3_0$244	= .
	.globl	C$vm_rtc.c$12$3_0$244
;src\core\vm_rtc.c:12: RTC_LATCH();
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$vm_rtc.c$13$3_0$244	= .
	.globl	C$vm_rtc.c$13$3_0$244
;src\core\vm_rtc.c:13: }
;	genEndFunction
	C$vm_rtc.c$13$3_0$244	= .
	.globl	C$vm_rtc.c$13$3_0$244
	XG$vm_rtc_latch$0$0	= .
	.globl	XG$vm_rtc_latch$0$0
	ret
	G$vm_rtc_get$0$0	= .
	.globl	G$vm_rtc_get$0$0
	C$vm_rtc.c$15$3_0$249	= .
	.globl	C$vm_rtc.c$15$3_0$249
;src\core\vm_rtc.c:15: void vm_rtc_get(SCRIPT_CTX * THIS, INT16 idx, UBYTE what) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_rtc_get
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
	b_vm_rtc_get	= 255
_vm_rtc_get::
;	adjustStack by -1
	dec	sp
	C$vm_rtc.c$16$1_0$249	= .
	.globl	C$vm_rtc.c$16$1_0$249
;src\core\vm_rtc.c:16: INT16 * res = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#10
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00112$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#7
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
	ldhl	sp,	#9
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
	jr	00113$
;	genLabel
00112$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#9
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
00113$:
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;src\core\vm_rtc.c:17: *res = RTC_GET((rtc_dateparts_e)((what & 0x03) + RTC_VALUE_SEC));
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#11
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	and	a, #0x03
;	genMove_o size 1
;	genPlus
	add	a, #0x08
;	genCast
;	AOP_STK for _vm_rtc_get_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), a
;	genMove_o size 0
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genAnd
;fetchLitPair	hl
	ld	a, (#__current_ram_bank)
; common peephole 17 loaded a from (#__current_ram_bank) directly instead of using hl.
	and	a, #0xf0
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
;	genAnd
;	AOP_STK for _vm_rtc_get_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	and	a, #0x0f
;	genMove_o size 1
;	genOr
	or	a, e
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#__current_ram_bank),a
; common peephole 19 loaded (#__current_ram_bank) from a directly instead of using hl.
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rRAMB),a
; common peephole 19 loaded (#_rRAMB) from a directly instead of using hl.
;include/rtc.h:29: v = RTC_VALUE_REG;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_RTC_VALUE_REG
	ld	e, (hl)
;	genMove_o size 1
	ld	d, #0x00
;include/rtc.h:30: if (part == RTC_VALUE_DAY) {
;	genCmpEq
;	AOP_STK for _vm_rtc_get_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x0b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00134$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00108$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00135$.
;	skipping generated iCode
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genAnd
;fetchLitPair	hl
	ld	hl, #__current_ram_bank
	ld	a, (hl)
	and	a, #0xf0
;	genMove_o size 1
;	genOr
	or	a, #0x0c
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
;include/rtc.h:32: if (RTC_VALUE_REG & 0x01) v |= 0x0100u;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_RTC_VALUE_REG)
; common peephole 17 loaded a from (#_RTC_VALUE_REG) directly instead of using hl.
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00108$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00136$.
;	skipping generated iCode
;	genOr
;	genMove_o size 1
;	genMove_o size 1
	ld	d, #0x01
;	genLabel
00108$:
	C$vm_rtc.c$17$3_0$251	= .
	.globl	C$vm_rtc.c$17$3_0$251
;src\core\vm_rtc.c:17: *res = RTC_GET((rtc_dateparts_e)((what & 0x03) + RTC_VALUE_SEC));
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00110$.
	C$vm_rtc.c$18$3_0$249	= .
	.globl	C$vm_rtc.c$18$3_0$249
;src\core\vm_rtc.c:18: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	C$vm_rtc.c$18$3_0$249	= .
	.globl	C$vm_rtc.c$18$3_0$249
	XG$vm_rtc_get$0$0	= .
	.globl	XG$vm_rtc_get$0$0
	ret
	G$vm_rtc_set$0$0	= .
	.globl	G$vm_rtc_set$0$0
	C$vm_rtc.c$20$3_0$267	= .
	.globl	C$vm_rtc.c$20$3_0$267
;src\core\vm_rtc.c:20: void vm_rtc_set(SCRIPT_CTX * THIS, INT16 idx, UBYTE what) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_rtc_set
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_rtc_set	= 255
_vm_rtc_set::
	C$vm_rtc.c$21$1_0$267	= .
	.globl	C$vm_rtc.c$21$1_0$267
;src\core\vm_rtc.c:21: INT16 * res = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00110$
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
	jr	00111$
;	genLabel
00110$:
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
00111$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;src\core\vm_rtc.c:22: RTC_SET((rtc_dateparts_e)((what & 0x03) + RTC_VALUE_SEC), (UWORD)*res);
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
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#10
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	and	a, #0x03
;	genMove_o size 1
;	genPlus
	add	a, #0x08
;	genCast
;	genMove_o size 1
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genAnd
	push	hl
;fetchLitPair	hl
	ld	a, (#__current_ram_bank)
; common peephole 17 loaded a from (#__current_ram_bank) directly instead of using hl.
	pop	hl
	and	a, #0xf0
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genAnd
	ld	a, h
	and	a, #0x0f
;	genMove_o size 1
;	genOr
	or	a, l
;	genMove_o size 1
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genAssign
;	genMove_o size 1
; common peephole 98 removed redundant load from l into a.
;	genAssign
;	genMove_o size 1
; common peephole 1 removed dead load from a into l.
	ld	(__current_ram_bank), a
; common peephole 0b removed redundant load from l back into a.
	ld	(_rRAMB), a
;include/rtc.h:39: RTC_VALUE_REG = v;
;	genCast
;	genMove_o size 1
	ld	a, c
	ld	(_RTC_VALUE_REG), a
;include/rtc.h:40: if (part == RTC_VALUE_DAY) {
;	genCmpEq
	ld	a, h
	sub	a, #0x0b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00126$.
	ret	NZ
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00127$.
;	skipping generated iCode
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genAnd
;fetchLitPair	hl
	ld	hl, #__current_ram_bank
	ld	a, (hl)
	and	a, #0xf0
;	genMove_o size 1
;	genOr
	or	a, #0x0c
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
;include/rtc.h:42: RTC_VALUE_REG = (RTC_VALUE_REG & 0x0e) | (UBYTE)((v >> 8) & 0x01);     
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_RTC_VALUE_REG
	ld	a, (hl)
;	genAnd
	and	a, #0x0e
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genGetByte
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genAnd
	and	a, #0x01
;	genMove_o size 1
;	genOr
	or	a, c
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
	C$vm_rtc.c$22$3_0$267	= .
	.globl	C$vm_rtc.c$22$3_0$267
;src\core\vm_rtc.c:22: RTC_SET((rtc_dateparts_e)((what & 0x03) + RTC_VALUE_SEC), (UWORD)*res);
;	genLabel
; common peephole 158 removed unused label 00108$.
	C$vm_rtc.c$23$3_0$267	= .
	.globl	C$vm_rtc.c$23$3_0$267
;src\core\vm_rtc.c:23: }
;	genEndFunction
	C$vm_rtc.c$23$3_0$267	= .
	.globl	C$vm_rtc.c$23$3_0$267
	XG$vm_rtc_set$0$0	= .
	.globl	XG$vm_rtc_set$0$0
	ret
	G$vm_rtc_start$0$0	= .
	.globl	G$vm_rtc_start$0$0
	C$vm_rtc.c$25$3_0$285	= .
	.globl	C$vm_rtc.c$25$3_0$285
;src\core\vm_rtc.c:25: void vm_rtc_start(SCRIPT_CTX * THIS, UBYTE start) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_rtc_start
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_rtc_start	= 255
_vm_rtc_start::
;src\core\vm_rtc.c:27: RTC_START(start);
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	c, (hl)
;	genMove_o size 0
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genAnd
;fetchLitPair	hl
	ld	hl, #__current_ram_bank
	ld	a, (hl)
	and	a, #0xf0
;	genMove_o size 1
;	genOr
	or	a, #0x0c
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
;include/rtc.h:48: if (start) RTC_VALUE_REG &= ~RTC_TIMER_STOP; else RTC_VALUE_REG |= RTC_TIMER_STOP;
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
;	genAnd
;fetchLitPair	hl
	ld	hl, #_RTC_VALUE_REG
	ld	a, (hl)
	and	a, #0xbf
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00104$:
;	genOr
;fetchLitPair	hl
	ld	hl, #_RTC_VALUE_REG
	ld	a, (hl)
	or	a, #0x40
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
	C$vm_rtc.c$27$3_0$285	= .
	.globl	C$vm_rtc.c$27$3_0$285
;src\core\vm_rtc.c:27: RTC_START(start);
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$vm_rtc.c$28$3_0$285	= .
	.globl	C$vm_rtc.c$28$3_0$285
;src\core\vm_rtc.c:28: }
;	genEndFunction
	C$vm_rtc.c$28$3_0$285	= .
	.globl	C$vm_rtc.c$28$3_0$285
	XG$vm_rtc_start$0$0	= .
	.globl	XG$vm_rtc_start$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
