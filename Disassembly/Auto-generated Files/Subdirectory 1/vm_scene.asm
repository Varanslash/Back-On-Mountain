;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_scene
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_VM_SCENE
	.globl ___func_VM_SCENE
	.globl b_vm_scene_push
	.globl _vm_scene_push
	.globl b_vm_scene_pop
	.globl _vm_scene_pop
	.globl b_vm_scene_pop_all
	.globl _vm_scene_pop_all
	.globl b_vm_scene_stack_reset
	.globl _vm_scene_stack_reset
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
	G$__func_VM_SCENE$0$0	= .
	.globl	G$__func_VM_SCENE$0$0
	C$vm_scene.c$12$0_0$288	= .
	.globl	C$vm_scene.c$12$0_0$288
;src\core\vm_scene.c:12: BANKREF(VM_SCENE)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_SCENE
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_SCENE	= 255
___func_VM_SCENE::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_SCENE 
	___bank_VM_SCENE = b___func_VM_SCENE 
	.globl ___bank_VM_SCENE 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_scene_push$0$0	= .
	.globl	G$vm_scene_push$0$0
	C$vm_scene.c$14$1_0$290	= .
	.globl	C$vm_scene.c$14$1_0$290
;src\core\vm_scene.c:14: void vm_scene_push(void) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_scene_push
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_scene_push	= 255
_vm_scene_push::
	C$vm_scene.c$15$1_0$290	= .
	.globl	C$vm_scene.c$15$1_0$290
;src\core\vm_scene.c:15: scene_stack_ptr->scene = current_scene;
;	genAddrOf
	ld	bc, #_current_scene+0
;	genCast
;	(locations are the same)
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scene_stack_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genCast
;	(locations are the same)
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0003
	push	hl
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	___memcpy
	C$vm_scene.c$16$1_0$290	= .
	.globl	C$vm_scene.c$16$1_0$290
;src\core\vm_scene.c:16: scene_stack_ptr->pos = PLAYER.pos;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	bc
	ld	bc, #_actors + 1
;	genCast
;	(locations are the same)
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scene_stack_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genPlus
	inc	de
	inc	de
	inc	de
;	genCast
;	(locations are the same)
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0004
	push	hl
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	___memcpy
	C$vm_scene.c$17$1_0$290	= .
	.globl	C$vm_scene.c$17$1_0$290
;src\core\vm_scene.c:17: scene_stack_ptr->dir = PLAYER.dir;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scene_stack_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0007
	add	hl, bc
;	genPlus
;fetchLitPair	bc
	ld	bc, #_actors + 5
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAssign (pointer)
	ld	(hl), a
	C$vm_scene.c$18$1_0$290	= .
	.globl	C$vm_scene.c$18$1_0$290
;src\core\vm_scene.c:18: scene_stack_ptr++;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_scene_stack_ptr
	ld	a, (hl)
	add	a, #0x08
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, #0x00
;fetchLitPair	hl
	ld	(hl), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_scene.c$19$1_0$290	= .
	.globl	C$vm_scene.c$19$1_0$290
;src\core\vm_scene.c:19: }
;	genEndFunction
	C$vm_scene.c$19$1_0$290	= .
	.globl	C$vm_scene.c$19$1_0$290
	XG$vm_scene_push$0$0	= .
	.globl	XG$vm_scene_push$0$0
	ret
	Fvm_scene$raise_change_scene_exception$0$0	= .
	.globl	Fvm_scene$raise_change_scene_exception$0$0
	C$vm_scene.c$21$1_0$292	= .
	.globl	C$vm_scene.c$21$1_0$292
;src\core\vm_scene.c:21: static void raise_change_scene_exception(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function raise_change_scene_exception
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_raise_change_scene_exception:
	C$vm_scene.c$22$1_0$292	= .
	.globl	C$vm_scene.c$22$1_0$292
;src\core\vm_scene.c:22: vm_exception_code = EXCEPTION_CHANGE_SCENE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vm_exception_code
	ld	(hl), #0x02
	C$vm_scene.c$23$1_0$292	= .
	.globl	C$vm_scene.c$23$1_0$292
;src\core\vm_scene.c:23: vm_exception_params_length = sizeof(far_ptr_t);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vm_exception_params_length
	ld	(hl), #0x03
	C$vm_scene.c$24$1_0$292	= .
	.globl	C$vm_scene.c$24$1_0$292
;src\core\vm_scene.c:24: vm_exception_params_bank = 1; // any bank
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vm_exception_params_bank
	ld	(hl), #0x01
	C$vm_scene.c$25$1_0$292	= .
	.globl	C$vm_scene.c$25$1_0$292
;src\core\vm_scene.c:25: vm_exception_params_offset = &scene_stack_ptr->scene;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scene_stack_ptr
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_vm_exception_params_offset
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
	C$vm_scene.c$26$1_0$292	= .
	.globl	C$vm_scene.c$26$1_0$292
;src\core\vm_scene.c:26: PLAYER.pos = scene_stack_ptr->pos;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scene_stack_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
	inc	bc
	inc	bc
	inc	bc
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0004
	push	de
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_actors + 1)
;	genCall
	call	___memcpy
	C$vm_scene.c$27$1_0$292	= .
	.globl	C$vm_scene.c$27$1_0$292
;src\core\vm_scene.c:27: PLAYER.dir = scene_stack_ptr->dir;
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scene_stack_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0007
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	(#(_actors + 5)),a
; common peephole 19 loaded (#(_actors + 5)) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_scene.c$28$1_0$292	= .
	.globl	C$vm_scene.c$28$1_0$292
;src\core\vm_scene.c:28: }
;	genEndFunction
	C$vm_scene.c$28$1_0$292	= .
	.globl	C$vm_scene.c$28$1_0$292
	XFvm_scene$raise_change_scene_exception$0$0	= .
	.globl	XFvm_scene$raise_change_scene_exception$0$0
	ret
	G$vm_scene_pop$0$0	= .
	.globl	G$vm_scene_pop$0$0
	C$vm_scene.c$30$1_0$294	= .
	.globl	C$vm_scene.c$30$1_0$294
;src\core\vm_scene.c:30: void vm_scene_pop(void) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_scene_pop
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_scene_pop	= 255
_vm_scene_pop::
	C$vm_scene.c$31$1_0$294	= .
	.globl	C$vm_scene.c$31$1_0$294
;src\core\vm_scene.c:31: scene_stack_ptr--;
;	genMinus
;fetchLitPair	hl
	ld	hl, #_scene_stack_ptr
	ld	a, (hl)
	add	a, #0xf8
;fetchLitPair	hl
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (hl)
	adc	a, #0xff
;fetchLitPair	hl
	ld	(hl), a
	C$vm_scene.c$32$1_0$294	= .
	.globl	C$vm_scene.c$32$1_0$294
;src\core\vm_scene.c:32: raise_change_scene_exception();
;	genCall
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_scene.c$33$1_0$294	= .
	.globl	C$vm_scene.c$33$1_0$294
;src\core\vm_scene.c:33: }
;	genEndFunction
	C$vm_scene.c$33$1_0$294	= .
	.globl	C$vm_scene.c$33$1_0$294
	XG$vm_scene_pop$0$0	= .
	.globl	XG$vm_scene_pop$0$0
	jp	_raise_change_scene_exception
; common peephole 152 removed unused ret.
	G$vm_scene_pop_all$0$0	= .
	.globl	G$vm_scene_pop_all$0$0
	C$vm_scene.c$35$1_0$296	= .
	.globl	C$vm_scene.c$35$1_0$296
;src\core\vm_scene.c:35: void vm_scene_pop_all(void) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_scene_pop_all
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_scene_pop_all	= 255
_vm_scene_pop_all::
	C$vm_scene.c$36$1_0$296	= .
	.globl	C$vm_scene.c$36$1_0$296
;src\core\vm_scene.c:36: scene_stack_ptr = scene_stack;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scene_stack_ptr
	ld	(hl), #<(_scene_stack)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_scene_stack)
	C$vm_scene.c$37$1_0$296	= .
	.globl	C$vm_scene.c$37$1_0$296
;src\core\vm_scene.c:37: raise_change_scene_exception();
;	genCall
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_scene.c$38$1_0$296	= .
	.globl	C$vm_scene.c$38$1_0$296
;src\core\vm_scene.c:38: }
;	genEndFunction
	C$vm_scene.c$38$1_0$296	= .
	.globl	C$vm_scene.c$38$1_0$296
	XG$vm_scene_pop_all$0$0	= .
	.globl	XG$vm_scene_pop_all$0$0
	jp	_raise_change_scene_exception
; common peephole 152 removed unused ret.
	G$vm_scene_stack_reset$0$0	= .
	.globl	G$vm_scene_stack_reset$0$0
	C$vm_scene.c$40$1_0$298	= .
	.globl	C$vm_scene.c$40$1_0$298
;src\core\vm_scene.c:40: void vm_scene_stack_reset(void) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_scene_stack_reset
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_scene_stack_reset	= 255
_vm_scene_stack_reset::
	C$vm_scene.c$41$1_0$298	= .
	.globl	C$vm_scene.c$41$1_0$298
;src\core\vm_scene.c:41: scene_stack_ptr = scene_stack;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scene_stack_ptr
	ld	(hl), #<(_scene_stack)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_scene_stack)
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_scene.c$42$1_0$298	= .
	.globl	C$vm_scene.c$42$1_0$298
;src\core\vm_scene.c:42: }
;	genEndFunction
	C$vm_scene.c$42$1_0$298	= .
	.globl	C$vm_scene.c$42$1_0$298
	XG$vm_scene_stack_reset$0$0	= .
	.globl	XG$vm_scene_stack_reset$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
