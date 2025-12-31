;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module flasher
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_save_sram_banks
	.globl _save_sram_banks
	.globl b_erase_flash
	.globl _erase_flash
	.globl _MemcpyBanked
	.globl b_restore_sram_bank
	.globl _restore_sram_bank
	.globl b_restore_sram
	.globl _restore_sram
	.globl b_save_sram
	.globl _save_sram
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
	G$restore_sram_bank$0$0	= .
	.globl	G$restore_sram_bank$0$0
	C$flasher.c$12$0_0$152	= .
	.globl	C$flasher.c$12$0_0$152
;src\core\flasher.c:12: void restore_sram_bank(UINT8 bank) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function restore_sram_bank
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_restore_sram_bank	= 255
_restore_sram_bank::
;src\core\flasher.c:13: SWITCH_RAM_BANK(bank, RAM_BANKS_ONLY);
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#6
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
	ld	hl, #_rRAMB
	ld	(hl), a
	C$flasher.c$14$1_0$152	= .
	.globl	C$flasher.c$14$1_0$152
;src\core\flasher.c:14: MemcpyBanked((UINT8 *)0xA000, (UINT8 *)(0x4000 + ((bank & 1) << 13)), 0x2000, (UBYTE)&_start_save + (bank >> 1));
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 1
	ld	e, #<(__start_save)
;	genRightShift
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	srl	l
;	genPlus
	add	hl, de
;	genCast
;	genMove_o size 1
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into b.
;	genAnd
	ld	a, c
	and	a, #0x01
;	genMove_o size 1
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into c.
;	genLeftShift
	swap	a
	rlca
	and	a, #0xe0
	ld	b, a
	ld	c, #0x00
;	genPlus
	ld	a, b
	add	a, #0x40
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genIpush
;	genMove_o size 1
	ld	a, l
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x2000
	push	de
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0xa000
;	genCall
	call	_MemcpyBanked
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$flasher.c$15$1_0$152	= .
	.globl	C$flasher.c$15$1_0$152
;src\core\flasher.c:15: }
;	genEndFunction
	C$flasher.c$15$1_0$152	= .
	.globl	C$flasher.c$15$1_0$152
	XG$restore_sram_bank$0$0	= .
	.globl	XG$restore_sram_bank$0$0
	ret
	G$restore_sram$0$0	= .
	.globl	G$restore_sram$0$0
	C$flasher.c$17$1_0$158	= .
	.globl	C$flasher.c$17$1_0$158
;src\core\flasher.c:17: void restore_sram(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function restore_sram
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_restore_sram	= 255
_restore_sram::
	C$flasher.c$18$2_0$158	= .
	.globl	C$flasher.c$18$2_0$158
;src\core\flasher.c:18: for (UINT8 i = 0; i < 4; i++)
;	genAssign
;	genMove_o size 1
	ld	b, #0x00
;	genLabel
00103$:
;	genCmpLt
	ld	a, b
	sub	a, #0x04
	ret	NC
; common peephole 161 replaced jump by return.
;	skipping generated iCode
	C$flasher.c$19$2_0$158	= .
	.globl	C$flasher.c$19$2_0$158
;src\core\flasher.c:19: restore_sram_bank(i);
;	genIpush
	push	bc
	push	bc
	inc	sp
;	genCall
	ld	e, #b_restore_sram_bank
	ld	hl, #_restore_sram_bank
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	pop	bc
	C$flasher.c$18$2_0$158	= .
	.globl	C$flasher.c$18$2_0$158
;src\core\flasher.c:18: for (UINT8 i = 0; i < 4; i++)
;	genPlus
	inc	b
;	genGoto
;	genLabel
; common peephole 158 removed unused label 00105$.
	C$flasher.c$20$2_0$158	= .
	.globl	C$flasher.c$20$2_0$158
;src\core\flasher.c:20: }
;	genEndFunction
	C$flasher.c$20$2_0$158	= .
	.globl	C$flasher.c$20$2_0$158
	XG$restore_sram$0$0	= .
	.globl	XG$restore_sram$0$0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
; common peephole 152 removed unused ret.
	G$save_sram$0$0	= .
	.globl	G$save_sram$0$0
	C$flasher.c$25$2_0$162	= .
	.globl	C$flasher.c$25$2_0$162
;src\core\flasher.c:25: UINT8 save_sram(UINT8 count) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function save_sram
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_save_sram	= 255
_save_sram::
	C$flasher.c$26$2_0$162	= .
	.globl	C$flasher.c$26$2_0$162
;src\core\flasher.c:26: UINT8 _save = _current_ram_bank;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #__current_ram_bank
	ld	c, (hl)
	C$flasher.c$27$1_0$162	= .
	.globl	C$flasher.c$27$1_0$162
;src\core\flasher.c:27: if (!erase_flash()) return 0;
;	genCall
	push	bc
	ld	e, #b_erase_flash
	ld	hl, #_erase_flash
	call	___sdcc_bcall_ehl
;	genMove_o size 1
	ld	a, e
;	genMove_o size 0
	pop	bc
;	genIfx
;	genRet
;	genMove_o size 1
	or	a,a
; common peephole 154a removed redundant zeroing of a (which has just been tested to be #0x00).
;	genLabel
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
	C$flasher.c$28$1_1$163	= .
	.globl	C$flasher.c$28$1_1$163
;src\core\flasher.c:28: UINT8 res = save_sram_banks(count);
;	genIpush
	push	bc
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_save_sram_banks
	ld	hl, #_save_sram_banks
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
;	genMove_o size 1
	pop	bc
	C$system.h$16$1_1$162	= .
	.globl	C$system.h$16$1_1$162
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genDummyRead
;fetchLitPair	hl
	ld	hl, #__current_ram_bank
	ld	a, (hl)
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), c
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_rRAMB
	ld	(hl), c
	C$flasher.c$30$1_1$163	= .
	.globl	C$flasher.c$30$1_1$163
;src\core\flasher.c:30: return res;
;	genRet
;	genMove_o size 1
	ld	a, e
;	genMove_o size 0
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$flasher.c$31$1_1$162	= .
	.globl	C$flasher.c$31$1_1$162
;src\core\flasher.c:31: }
;	genEndFunction
	C$flasher.c$31$1_1$162	= .
	.globl	C$flasher.c$31$1_1$162
	XG$save_sram$0$0	= .
	.globl	XG$save_sram$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
