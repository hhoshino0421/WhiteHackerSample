	.text
	.intel_syntax noprefix
	.file	"main.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	movabs	rdi, offset _ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	movabs	rdi, offset _ZNSt8ios_base4InitD1Ev
	movabs	rsi, offset _ZStL8__ioinit
	movabs	rdx, offset __dso_handle
	call	__cxa_atexit
	mov	dword ptr [rbp - 4], eax # 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN8EmployeeC2Ev        # -- Begin function _ZN8EmployeeC2Ev
	.p2align	4, 0x90
	.type	_ZN8EmployeeC2Ev,@function
_ZN8EmployeeC2Ev:                       # @_ZN8EmployeeC2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 24], 128
	mov	rax, qword ptr [rdi + 24]
	shl	rax, 0
	mov	qword ptr [rbp - 16], rdi # 8-byte Spill
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 16] # 8-byte Reload
	mov	qword ptr [rdi + 8], rax
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end1:
	.size	_ZN8EmployeeC2Ev, .Lfunc_end1-_ZN8EmployeeC2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8EmployeeD2Ev        # -- Begin function _ZN8EmployeeD2Ev
	.p2align	4, 0x90
	.type	_ZN8EmployeeD2Ev,@function
_ZN8EmployeeD2Ev:                       # @_ZN8EmployeeD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end2:
	.size	_ZN8EmployeeD2Ev, .Lfunc_end2-_ZN8EmployeeD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8Employee9setNumberEi # -- Begin function _ZN8Employee9setNumberEi
	.p2align	4, 0x90
	.type	_ZN8Employee9setNumberEi,@function
_ZN8Employee9setNumberEi:               # @_ZN8Employee9setNumberEi
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	dword ptr [rdi], esi
	pop	rbp
	ret
.Lfunc_end3:
	.size	_ZN8Employee9setNumberEi, .Lfunc_end3-_ZN8Employee9setNumberEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8Employee7setNameEPc # -- Begin function _ZN8Employee7setNameEPc
	.p2align	4, 0x90
	.type	_ZN8Employee7setNameEPc,@function
_ZN8Employee7setNameEPc:                # @_ZN8Employee7setNameEPc
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rsi # 8-byte Spill
	call	strlen
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 32] # 8-byte Reload
	cmp	rax, qword ptr [rsi + 24]
	jbe	.LBB4_2
# %bb.1:
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rdi, qword ptr [rax + 8]
	mov	ecx, offset .L.str
	mov	esi, ecx
	call	strcpy
	mov	qword ptr [rbp - 40], rax # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 16]
	call	strcpy
	mov	qword ptr [rbp - 48], rax # 8-byte Spill
.LBB4_3:
	add	rsp, 48
	pop	rbp
	ret
.Lfunc_end4:
	.size	_ZN8Employee7setNameEPc, .Lfunc_end4-_ZN8Employee7setNameEPc
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8Employee6setPayEl   # -- Begin function _ZN8Employee6setPayEl
	.p2align	4, 0x90
	.type	_ZN8Employee6setPayEl,@function
_ZN8Employee6setPayEl:                  # @_ZN8Employee6setPayEl
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rsi + 16], rdi
	pop	rbp
	ret
.Lfunc_end5:
	.size	_ZN8Employee6setPayEl, .Lfunc_end5-_ZN8Employee6setPayEl
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8Employee8showDataEv # -- Begin function _ZN8Employee8showDataEv
	.p2align	4, 0x90
	.type	_ZN8Employee8showDataEv,@function
_ZN8Employee8showDataEv:                # @_ZN8Employee8showDataEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	movabs	rax, offset .L.str.1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi]
	mov	qword ptr [rbp - 16], rdi # 8-byte Spill
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, offset .L.str.2
	mov	rcx, qword ptr [rbp - 16] # 8-byte Reload
	mov	rsi, qword ptr [rcx + 8]
	mov	dword ptr [rbp - 20], eax # 4-byte Spill
	mov	al, 0
	call	printf
	movabs	rdi, offset .L.str.3
	mov	rcx, qword ptr [rbp - 16] # 8-byte Reload
	mov	rsi, qword ptr [rcx + 16]
	mov	dword ptr [rbp - 24], eax # 4-byte Spill
	mov	al, 0
	call	printf
	movabs	rdi, offset .L.str.4
	mov	dword ptr [rbp - 28], eax # 4-byte Spill
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 32], eax # 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
.Lfunc_end6:
	.size	_ZN8Employee8showDataEv, .Lfunc_end6-_ZN8Employee8showDataEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8Employee6doTestEv   # -- Begin function _ZN8Employee6doTestEv
	.p2align	4, 0x90
	.type	_ZN8Employee6doTestEv,@function
_ZN8Employee6doTestEv:                  # @_ZN8Employee6doTestEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	movabs	rax, offset .L.str.5
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 12], eax # 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end7:
	.size	_ZN8Employee6doTestEv, .Lfunc_end7-_ZN8Employee6doTestEv
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 176
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rbp - 40]
	call	_ZN8EmployeeC1Ev
.Ltmp0:
	mov	eax, 32
	mov	edi, eax
	call	_Znwm
.Ltmp1:
	mov	qword ptr [rbp - 120], rax # 8-byte Spill
	jmp	.LBB8_1
.LBB8_1:
	mov	rax, qword ptr [rbp - 120] # 8-byte Reload
.Ltmp2:
	mov	rdi, qword ptr [rbp - 120] # 8-byte Reload
	mov	qword ptr [rbp - 128], rax # 8-byte Spill
	call	_ZN8EmployeeC1Ev
.Ltmp3:
	jmp	.LBB8_2
.LBB8_2:
	mov	rax, qword ptr [rbp - 128] # 8-byte Reload
	mov	qword ptr [rbp - 48], rax
	movaps	xmm0, xmmword ptr [rip + .L_ZZ4mainE13ichinose_name]
	movaps	xmmword ptr [rbp - 80], xmm0
	mov	byte ptr [rbp - 64], 0
	movaps	xmm0, xmmword ptr [rip + .L_ZZ4mainE12momochi_name]
	movaps	xmmword ptr [rbp - 112], xmm0
	mov	byte ptr [rbp - 96], 0
.Ltmp5:
	lea	rdi, [rbp - 40]
	mov	esi, 11111
	call	_ZN8Employee9setNumberEi
.Ltmp6:
	jmp	.LBB8_3
.LBB8_3:
.Ltmp7:
	lea	rdi, [rbp - 40]
	lea	rsi, [rbp - 80]
	call	_ZN8Employee7setNameEPc
.Ltmp8:
	jmp	.LBB8_4
.LBB8_4:
.Ltmp9:
	mov	eax, 12345678
	mov	esi, eax
	lea	rdi, [rbp - 40]
	call	_ZN8Employee6setPayEl
.Ltmp10:
	jmp	.LBB8_5
.LBB8_5:
	mov	rdi, qword ptr [rbp - 48]
.Ltmp11:
	mov	esi, 22222
	call	_ZN8Employee9setNumberEi
.Ltmp12:
	jmp	.LBB8_6
.LBB8_6:
	mov	rdi, qword ptr [rbp - 48]
.Ltmp13:
	lea	rsi, [rbp - 112]
	call	_ZN8Employee7setNameEPc
.Ltmp14:
	jmp	.LBB8_7
.LBB8_7:
	mov	rdi, qword ptr [rbp - 48]
.Ltmp15:
	mov	eax, 6543210
	mov	esi, eax
	call	_ZN8Employee6setPayEl
.Ltmp16:
	jmp	.LBB8_8
.LBB8_8:
.Ltmp17:
	lea	rdi, [rbp - 40]
	call	_ZN8Employee8showDataEv
.Ltmp18:
	jmp	.LBB8_9
.LBB8_9:
	mov	rdi, qword ptr [rbp - 48]
.Ltmp19:
	call	_ZN8Employee8showDataEv
.Ltmp20:
	jmp	.LBB8_10
.LBB8_10:
.Ltmp21:
	mov	eax, offset .L.str.6
	mov	edi, eax
	mov	eax, 4
	mov	esi, eax
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	printf
.Ltmp22:
	mov	dword ptr [rbp - 132], eax # 4-byte Spill
	jmp	.LBB8_11
.LBB8_11:
.Ltmp23:
	mov	eax, offset .L.str.7
	mov	edi, eax
	mov	eax, 8
	mov	esi, eax
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	printf
.Ltmp24:
	mov	dword ptr [rbp - 136], eax # 4-byte Spill
	jmp	.LBB8_12
.LBB8_12:
.Ltmp25:
	mov	eax, offset .L.str.8
	mov	edi, eax
	mov	eax, 32
	mov	esi, eax
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	printf
.Ltmp26:
	mov	dword ptr [rbp - 140], eax # 4-byte Spill
	jmp	.LBB8_13
.LBB8_13:
.Ltmp27:
	mov	eax, offset .L.str.9
	mov	edi, eax
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rbp - 40]
	mov	al, cl
	call	printf
.Ltmp28:
	mov	dword ptr [rbp - 144], eax # 4-byte Spill
	jmp	.LBB8_14
.LBB8_14:
.Ltmp29:
	mov	eax, offset .L.str.10
	mov	edi, eax
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rbp - 48]
	mov	al, cl
	call	printf
.Ltmp30:
	mov	dword ptr [rbp - 148], eax # 4-byte Spill
	jmp	.LBB8_15
.LBB8_15:
	mov	rsi, qword ptr [rbp - 48]
.Ltmp31:
	mov	eax, offset .L.str.11
	mov	edi, eax
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	printf
.Ltmp32:
	mov	dword ptr [rbp - 152], eax # 4-byte Spill
	jmp	.LBB8_16
.LBB8_16:
	mov	rax, qword ptr [rbp - 48]
	cmp	rax, 0
	mov	qword ptr [rbp - 160], rax # 8-byte Spill
	je	.LBB8_18
# %bb.17:
	mov	rdi, qword ptr [rbp - 160] # 8-byte Reload
	call	_ZN8EmployeeD1Ev
	mov	rdi, qword ptr [rbp - 160] # 8-byte Reload
	call	_ZdlPv
.LBB8_18:
.Ltmp33:
	mov	eax, offset .L.str.12
	mov	edi, eax
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rbp - 48]
	mov	al, cl
	call	printf
.Ltmp34:
	mov	dword ptr [rbp - 164], eax # 4-byte Spill
	jmp	.LBB8_19
.LBB8_19:
	mov	rsi, qword ptr [rbp - 48]
.Ltmp35:
	mov	eax, offset .L.str.13
	mov	edi, eax
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	printf
.Ltmp36:
	mov	dword ptr [rbp - 168], eax # 4-byte Spill
	jmp	.LBB8_20
.LBB8_20:
	mov	qword ptr [rbp - 48], 0
.Ltmp37:
	mov	eax, offset .L.str.14
	mov	edi, eax
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rbp - 48]
	mov	al, cl
	call	printf
.Ltmp38:
	mov	dword ptr [rbp - 172], eax # 4-byte Spill
	jmp	.LBB8_21
.LBB8_21:
	mov	rsi, qword ptr [rbp - 48]
.Ltmp39:
	mov	eax, offset .L.str.15
	mov	edi, eax
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	printf
.Ltmp40:
	mov	dword ptr [rbp - 176], eax # 4-byte Spill
	jmp	.LBB8_22
.LBB8_22:
	lea	rdi, [rbp - 40]
	mov	dword ptr [rbp - 4], 0
	call	_ZN8EmployeeD1Ev
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 176
	pop	rbp
	ret
.LBB8_23:
.Ltmp41:
	mov	ecx, edx
	mov	qword ptr [rbp - 56], rax
	mov	dword ptr [rbp - 60], ecx
	jmp	.LBB8_25
.LBB8_24:
.Ltmp4:
	mov	ecx, edx
	mov	qword ptr [rbp - 56], rax
	mov	dword ptr [rbp - 60], ecx
	mov	rdi, qword ptr [rbp - 120] # 8-byte Reload
	call	_ZdlPv
.LBB8_25:
	lea	rdi, [rbp - 40]
	call	_ZN8EmployeeD1Ev
# %bb.26:
	mov	rdi, qword ptr [rbp - 56]
	call	_Unwind_Resume
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table8:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	93                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	91                      # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp41-.Lfunc_begin0   #     jumps to .Ltmp41
	.byte	0                       #   On action: cleanup
	.long	.Ltmp2-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp3-.Ltmp2           #   Call between .Ltmp2 and .Ltmp3
	.long	.Ltmp4-.Lfunc_begin0    #     jumps to .Ltmp4
	.byte	0                       #   On action: cleanup
	.long	.Ltmp5-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Ltmp32-.Ltmp5          #   Call between .Ltmp5 and .Ltmp32
	.long	.Ltmp41-.Lfunc_begin0   #     jumps to .Ltmp41
	.byte	0                       #   On action: cleanup
	.long	.Ltmp32-.Lfunc_begin0   # >> Call Site 5 <<
	.long	.Ltmp33-.Ltmp32         #   Call between .Ltmp32 and .Ltmp33
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp33-.Lfunc_begin0   # >> Call Site 6 <<
	.long	.Ltmp40-.Ltmp33         #   Call between .Ltmp33 and .Ltmp40
	.long	.Ltmp41-.Lfunc_begin0   #     jumps to .Ltmp41
	.byte	0                       #   On action: cleanup
	.long	.Ltmp40-.Lfunc_begin0   # >> Call Site 7 <<
	.long	.Lfunc_end8-.Ltmp40     #   Call between .Ltmp40 and .Lfunc_end8
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_main.cpp
	.type	_GLOBAL__sub_I_main.cpp,@function
_GLOBAL__sub_I_main.cpp:                # @_GLOBAL__sub_I_main.cpp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	call	__cxx_global_var_init
	pop	rbp
	ret
.Lfunc_end9:
	.size	_GLOBAL__sub_I_main.cpp, .Lfunc_end9-_GLOBAL__sub_I_main.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"number: %d\n"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name: %s\n"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"pay: %ld\n"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Test Function.\n"
	.size	.L.str.5, 16

	.type	.L_ZZ4mainE13ichinose_name,@object # @_ZZ4mainE13ichinose_name
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.L_ZZ4mainE13ichinose_name:
	.asciz	"\344\270\200\344\271\213\347\200\254 \350\212\261\345\220\215"
	.size	.L_ZZ4mainE13ichinose_name, 17

	.type	.L_ZZ4mainE12momochi_name,@object # @_ZZ4mainE12momochi_name
	.p2align	4
.L_ZZ4mainE12momochi_name:
	.asciz	"\347\231\276\345\234\260 \343\201\237\343\201\276\343\201\246"
	.size	.L_ZZ4mainE12momochi_name, 17

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"int\343\201\256\343\202\265\343\202\244\343\202\272: %lu\n"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"size_t\343\201\256\343\202\265\343\202\244\343\202\272: %lu\n"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Employee\343\201\256\343\202\265\343\202\244\343\202\272: %lu\n\n"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ichinose\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\201\253\343\201\202\343\202\212\343\201\276\343\201\231\343\200\202\n"
	.size	.L.str.9, 51

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"momochi_ptr\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\201\253\343\201\202\343\202\212\343\201\276\343\201\231\343\200\202\n"
	.size	.L.str.10, 54

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"momochi_ptr\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\202\222\346\214\207\343\201\227\343\201\246\343\201\204\343\201\276\343\201\231\343\200\202 \n\n"
	.size	.L.str.11, 62

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"delete momochi_ptr\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\201\253\343\201\202\343\202\212\343\201\276\343\201\231\343\200\202\n"
	.size	.L.str.12, 61

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"delete momochi_ptr\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\202\222\346\214\207\343\201\227\343\201\246\343\201\204\343\201\276\343\201\231\343\200\202 \n\n"
	.size	.L.str.13, 69

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"NULL momochi_ptr\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\201\253\343\201\202\343\202\212\343\201\276\343\201\231\343\200\202\n"
	.size	.L.str.14, 59

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"NULL momochi_ptr\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\202\222\346\214\207\343\201\227\343\201\246\343\201\204\343\201\276\343\201\231\343\200\202 \n\n"
	.size	.L.str.15, 67

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_main.cpp

	.globl	_ZN8EmployeeC1Ev
	.type	_ZN8EmployeeC1Ev,@function
_ZN8EmployeeC1Ev = _ZN8EmployeeC2Ev
	.globl	_ZN8EmployeeD1Ev
	.type	_ZN8EmployeeD1Ev,@function
_ZN8EmployeeD1Ev = _ZN8EmployeeD2Ev
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
