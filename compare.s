	.file	"compare.c"
	.text
	.globl	compare_01
	.type	compare_01, @function
compare_01:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	setg	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	compare_01, .-compare_01
	.globl	compare_02
	.type	compare_02, @function
compare_02:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L4
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L4
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L5
.L4:
	movl	$1, %eax
	jmp	.L6
.L5:
	movl	$0, %eax
.L6:
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	compare_02, .-compare_02
	.globl	compare_03
	.type	compare_03, @function
compare_03:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L9
.L12:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L10
	movl	$1, %eax
	jmp	.L8
.L10:
	addl	$1, -4(%rbp)
.L9:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L12
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	compare_03, .-compare_03
	.globl	compare_04
	.type	compare_04, @function
compare_04:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	compare_04, .-compare_04
	.globl	compare_05
	.type	compare_05, @function
compare_05:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L16
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L16
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L17
.L16:
	movl	$1, %eax
	jmp	.L18
.L17:
	movl	$0, %eax
.L18:
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	compare_05, .-compare_05
	.globl	compare_06
	.type	compare_06, @function
compare_06:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	setg	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	compare_06, .-compare_06
	.globl	compare_07
	.type	compare_07, @function
compare_07:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L23
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L23
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L23
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L24
.L23:
	movl	$1, %eax
	jmp	.L25
.L24:
	movl	$0, %eax
.L25:
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	compare_07, .-compare_07
	.globl	compare_08
	.type	compare_08, @function
compare_08:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$52, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$60, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$68, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movl	(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$76, %rax
	movl	(%rax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	setg	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	compare_08, .-compare_08
	.globl	compare_09
	.type	compare_09, @function
compare_09:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$52, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$60, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$68, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	addq	$76, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L31
.L30:
	movl	$1, %eax
	jmp	.L32
.L31:
	movl	$0, %eax
.L32:
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	compare_09, .-compare_09
	.section	.rodata
.LC0:
	.string	"(|)>0 "
.LC1:
	.string	"(>0)||"
.LC2:
	.string	"for   "
.LC3:
	.string	"|     "
.LC4:
	.string	"||    "
.LC5:
	.string	"[%2d] %s: %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	compare_01(%rip), %rax
	movq	%rax, -256(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -248(%rbp)
	movl	$3, -240(%rbp)
	leaq	compare_02(%rip), %rax
	movq	%rax, -232(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -224(%rbp)
	movl	$3, -216(%rbp)
	leaq	compare_03(%rip), %rax
	movq	%rax, -208(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -200(%rbp)
	movl	$3, -192(%rbp)
	leaq	compare_04(%rip), %rax
	movq	%rax, -184(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -176(%rbp)
	movl	$3, -168(%rbp)
	leaq	compare_05(%rip), %rax
	movq	%rax, -160(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -152(%rbp)
	movl	$3, -144(%rbp)
	leaq	compare_06(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -128(%rbp)
	movl	$4, -120(%rbp)
	leaq	compare_07(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -104(%rbp)
	movl	$4, -96(%rbp)
	leaq	compare_08(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -80(%rbp)
	movl	$20, -72(%rbp)
	leaq	compare_09(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	$20, -48(%rbp)
	leaq	compare_03(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$20, -24(%rbp)
	movl	$10, -348(%rbp)
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movl	$0, -360(%rbp)
	jmp	.L35
.L40:
	call	clock@PLT
	movq	%rax, -344(%rbp)
	movl	$0, -356(%rbp)
	jmp	.L36
.L39:
	movl	$0, -352(%rbp)
	jmp	.L37
.L38:
	call	rand@PLT
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-352(%rbp), %eax
	cltq
	movl	%edx, -336(%rbp,%rax,4)
	addl	$1, -352(%rbp)
.L37:
	movl	-360(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$240, %rax
	movl	(%rax), %eax
	cmpl	%eax, -352(%rbp)
	jl	.L38
	movl	-360(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$256, %rax
	movq	(%rax), %rcx
	movl	-360(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$240, %rax
	movl	(%rax), %edx
	leaq	-336(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	movb	%al, -361(%rbp)
	addl	$1, -356(%rbp)
.L36:
	cmpl	$9999999, -356(%rbp)
	jle	.L39
	call	clock@PLT
	subq	-344(%rbp), %rax
	movq	%rax, -344(%rbp)
	movl	-360(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$248, %rax
	movq	(%rax), %rsi
	movl	-360(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$240, %rax
	movl	(%rax), %eax
	movq	-344(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -360(%rbp)
.L35:
	movl	-360(%rbp), %eax
	cmpl	-348(%rbp), %eax
	jl	.L40
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L42
	call	__stack_chk_fail@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu2) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
