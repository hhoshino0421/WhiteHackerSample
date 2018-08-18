	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_function               ## -- Begin function function
	.p2align	4, 0x90
_function:                              ## @function
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str(%rip), %rdi
	leaq	-4(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$4, %eax
	movl	%eax, %edi
	movl	$0, -4(%rbp)
	callq	_malloc
	leaq	L_.str.1(%rip), %rdi
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	_printf
	leaq	L_.str.2(%rip), %rdi
	leaq	_global_initiualize_var(%rip), %rsi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	leaq	_main.static_initialized_var(%rip), %rsi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	leaq	_main.static_var(%rip), %rsi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.5(%rip), %rdi
	movq	_global_var@GOTPCREL(%rip), %rsi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.6(%rip), %rdi
	leaq	-16(%rbp), %rsi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.7(%rip), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.8(%rip), %rdi
	leaq	-8(%rbp), %rsi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	callq	_function
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_global_initiualize_var ## @global_initiualize_var
	.p2align	2
_global_initiualize_var:
	.long	5                       ## 0x5

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"function()\345\206\205\343\201\256stack_var\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\201\253\343\201\202\343\202\212\343\201\276\343\201\231\343\200\202\n"

	.section	__DATA,__data
	.p2align	2               ## @main.static_initialized_var
_main.static_initialized_var:
	.long	5                       ## 0x5

.zerofill __DATA,__bss,_main.static_var,4,2 ## @main.static_var
	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"int\343\201\256\343\202\265\343\202\244\343\202\272: %lu\n"

L_.str.2:                               ## @.str.2
	.asciz	"global_initialized_var\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\201\253\343\201\202\343\202\212\343\201\276\343\201\231\343\200\202 \n"

L_.str.3:                               ## @.str.3
	.asciz	"static_initialized_var\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\201\253\343\201\202\343\202\212\343\201\276\343\201\231\343\200\202 \n\n"

L_.str.4:                               ## @.str.4
	.asciz	"static_var\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\201\253\343\201\202\343\202\212\343\201\276\343\201\231\343\200\202 \n"

L_.str.5:                               ## @.str.5
	.asciz	"global_var\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\201\253\343\201\202\343\202\212\343\201\276\343\201\231\343\200\202 \n\n"

	.comm	_global_var,4,2         ## @global_var
L_.str.6:                               ## @.str.6
	.asciz	"heap_var_ptr\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\201\253\343\201\202\343\202\212\343\201\276\343\201\231\343\200\202 \n"

L_.str.7:                               ## @.str.7
	.asciz	"heap_var_ptr\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\202\222\346\214\207\343\201\227\343\201\246\343\201\204\343\201\276\343\201\231\343\200\202 \n\n"

L_.str.8:                               ## @.str.8
	.asciz	"stack_var\343\201\257\343\202\242\343\203\211\343\203\254\343\202\271 0x%08x \343\201\253\343\201\202\343\202\212\343\201\276\343\201\231\343\200\202 \n"


.subsections_via_symbols
