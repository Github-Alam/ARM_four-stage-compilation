	.cpu cortex-m4
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	1
	.global	main
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	ldr	r3, .L3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	orr	r2, r3, #327680
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, .L3+4
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	orr	r2, r3, #1
	ldr	r3, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	orr	r2, r3, #4194304
	ldr	r3, [r7, #16]
	str	r2, [r3]
	ldr	r3, .L3+8
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, .L3+12
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	bic	r2, r3, #196608
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	orr	r2, r3, #131072
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, .L3+16
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #15
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L2:
	b	.L2
.L4:
	.align	2
.L3:
	.word	1073887232
	.word	1073887240
	.word	1073887280
	.word	1073872896
	.word	1073872932
	.size	main, .-main
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2018-q4-major) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
