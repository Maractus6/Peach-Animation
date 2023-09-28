	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"gba.c"
	.text
	.align	2
	.global	drawHorizontalLine
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHorizontalLine, %function
drawHorizontalLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r2
	bxgt	lr
	ldr	ip, .L10
	ldr	ip, [ip]
	rsb	r0, r0, r0, lsl #4
	str	lr, [sp, #-4]!
	add	lr, r1, r0, lsl #4
	add	r0, r2, r0, lsl #4
	add	r1, ip, #2
	add	r2, ip, lr, lsl #1
	add	r1, r1, r0, lsl #1
.L3:
	strh	r3, [r2], #2	@ movhi
	cmp	r2, r1
	bne	.L3
	ldr	lr, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.size	drawHorizontalLine, .-drawHorizontalLine
	.align	2
	.global	drawVerticalLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVerticalLine, %function
drawVerticalLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r2
	bxgt	lr
	ldr	ip, .L20
	ldr	ip, [ip]
	rsb	r1, r1, r1, lsl #4
	str	lr, [sp, #-4]!
	rsb	lr, r2, r2, lsl #4
	add	r2, r0, r1, lsl #4
	add	r0, r0, lr, lsl #4
	add	r1, ip, #480
	add	r2, ip, r2, lsl #1
	add	r1, r1, r0, lsl #1
.L14:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L14
	ldr	lr, [sp], #4
	bx	lr
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.size	drawVerticalLine, .-drawVerticalLine
	.align	2
	.global	drawRectangle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRectangle, %function
drawRectangle:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r4, r2, #0
	ldrh	ip, [sp, #8]
	ble	.L22
	ldr	lr, .L30
	add	r2, r1, r3
	rsb	r2, r2, r2, lsl #4
	ldr	r1, [lr]
	add	r2, r0, r2, lsl #4
	sub	lr, r3, r3, lsl #4
	add	r4, r4, r0
	add	r1, r1, r2, lsl #1
	lsl	lr, lr, #5
.L24:
	cmp	r3, #0
	addgt	r2, r1, lr
	ble	.L27
.L25:
	strh	ip, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L25
.L27:
	add	r0, r0, #1
	cmp	r0, r4
	add	r1, r1, #2
	bne	.L24
.L22:
	pop	{r4, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.size	drawRectangle, .-drawRectangle
	.align	2
	.global	drawWholePeach
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWholePeach, %function
drawWholePeach:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L91
	ldr	r3, [r3]
	add	r1, r1, #2
	rsb	r1, r1, r1, lsl #4
	add	r4, r3, #28
	sub	sp, sp, #52
	add	r7, r0, #11
	add	r2, r7, r1, lsl #4
	add	ip, r0, r1, lsl #4
	str	r4, [sp, #4]
	ldr	lr, .L91+4
	add	r2, r3, r2, lsl #1
	lsl	r1, r1, #4
	add	ip, r4, ip, lsl #1
	add	fp, r0, #13
.L33:
	strh	lr, [r2], #2	@ movhi
	cmp	r2, ip
	bne	.L33
	add	r10, r0, #12
	add	r2, r1, #240
	add	r5, r10, r2
	add	r2, fp, r2
	lsl	r4, r2, #1
	add	ip, r1, #480
	lsl	r5, r5, #1
	strh	lr, [r3, r5]	@ movhi
	add	r2, r10, ip
	strh	lr, [r3, r4]	@ movhi
	add	ip, ip, r0
	add	r4, r3, #30
	str	r4, [sp, #8]
	add	ip, r4, ip, lsl #1
	add	r4, r0, #14
	ldr	lr, .L91+4
	str	r4, [sp, #24]
	add	r2, r3, r2, lsl #1
.L34:
	strh	lr, [r2], #2	@ movhi
	cmp	r2, ip
	bne	.L34
	add	r2, r0, #8
	mov	ip, r2
	str	r2, [sp, #40]
	add	r2, r1, #720
	add	r6, r2, r0
	add	lr, r3, #22
	lsl	r4, r6, #1
	add	lr, lr, r6, lsl #1
	add	r6, r0, #10
	add	ip, ip, r2
	ldr	r5, .L91+8
	str	r6, [sp, #32]
	add	ip, r3, ip, lsl #1
.L35:
	strh	r5, [ip], #2	@ movhi
	cmp	ip, lr
	bne	.L35
	add	lr, r3, #32
	str	lr, [sp, #16]
	add	r4, lr, r4
	add	lr, r0, #15
	add	r2, fp, r2
	ldr	ip, .L91+4
	str	lr, [sp, #20]
	add	r2, r3, r2, lsl #1
.L36:
	strh	ip, [r2], #2	@ movhi
	cmp	r2, r4
	bne	.L36
	add	r2, r0, #7
	add	ip, r1, #960
	add	r5, r3, #24
	str	r2, [sp, #12]
	add	lr, ip, r0
	add	r2, r2, ip
	str	r5, [sp, #28]
	ldr	r4, .L91+8
	add	r2, r3, r2, lsl #1
	add	lr, r5, lr, lsl #1
.L37:
	strh	r4, [r2], #2	@ movhi
	cmp	r2, lr
	bne	.L37
	ldr	r2, [sp, #24]
	add	r4, r10, ip
	add	ip, ip, r2
	add	r2, r0, #6
	mov	r8, r2
	ldr	r5, .L91+12
	ldr	r6, .L91+4
	lsl	r4, r4, #1
	lsl	ip, ip, #1
	strh	r5, [r3, r4]	@ movhi
	str	r2, [sp, #44]
	strh	r6, [r3, ip]	@ movhi
	add	r2, r1, #1200
	ldr	r6, [sp, #4]
	mov	lr, r5
	add	r4, r8, r2
	add	r5, r2, r0
	lsl	ip, r5, #1
	add	r4, r3, r4, lsl #1
	add	r5, r6, r5, lsl #1
.L38:
	strh	lr, [r4], #2	@ movhi
	cmp	r4, r5
	bne	.L38
	ldr	lr, [sp, #12]
	add	r4, r3, #20
	add	lr, lr, r2
	ldr	r5, .L91+8
	add	lr, r3, lr, lsl #1
	add	r4, r4, ip
.L39:
	strh	r5, [lr], #2	@ movhi
	cmp	lr, r4
	bne	.L39
	add	r6, r0, #16
	add	r2, r6, r2
	add	lr, r3, #38
	ldr	r4, .L91+4
	add	r2, r3, r2, lsl #1
	add	ip, lr, ip
	add	r5, r0, #18
.L40:
	strh	r4, [r2], #2	@ movhi
	cmp	r2, ip
	bne	.L40
	add	r2, r1, #1440
	add	ip, r0, #5
	add	ip, ip, r2
	add	ip, r3, ip, lsl #1
	str	ip, [sp, #36]
	ldr	ip, [sp, #28]
	add	r4, r2, r0
	lsl	r8, r4, #1
	ldr	r9, .L91+12
	add	r4, ip, r4, lsl #1
	ldr	ip, [sp, #36]
.L41:
	strh	r9, [ip], #2	@ movhi
	cmp	ip, r4
	bne	.L41
	ldr	ip, .L91+16
	ldr	r4, [sp, #20]
	add	r10, r10, r2
	add	fp, fp, r2
	lsl	r10, r10, #1
	lsl	fp, fp, #1
	strh	ip, [r3, r10]	@ movhi
	add	r4, r4, r2
	strh	ip, [r3, fp]	@ movhi
	ldr	ip, .L91+4
	add	lr, lr, r8
	add	r4, r3, r4, lsl #1
.L42:
	strh	ip, [r4], #2	@ movhi
	cmp	r4, lr
	bne	.L42
	add	r9, r1, #1680
	add	lr, r9, r0
	add	ip, r6, r9
	add	r4, r3, #40
	ldr	fp, .L91+4
	lsl	r10, lr, #1
	add	ip, r3, ip, lsl #1
	add	lr, r4, lr, lsl #1
.L43:
	strh	fp, [ip], #2	@ movhi
	cmp	ip, lr
	bne	.L43
	ldr	fp, [sp, #8]
	add	ip, r0, #4
	add	lr, r9, ip
	add	r10, fp, r10
	ldr	fp, .L91+12
	add	lr, r3, lr, lsl #1
.L45:
	strh	fp, [lr], #2	@ movhi
	cmp	lr, r10
	bne	.L45
	add	r2, r6, r2
	ldr	lr, .L91+4
	add	r2, r3, r2, lsl #1
	add	r4, r4, r8
.L46:
	strh	lr, [r2], #2	@ movhi
	cmp	r2, r4
	bne	.L46
	ldr	lr, .L91+16
	add	r7, r7, r9
	lsl	r7, r7, #1
	strh	lr, [r3, r7]	@ movhi
	add	r8, r1, #1920
	ldr	r7, [sp, #16]
	add	r2, r0, #3
	add	lr, r2, r8
	add	r4, r8, r0
	ldr	r6, .L91+12
	add	lr, r3, lr, lsl #1
	add	r4, r7, r4, lsl #1
.L47:
	strh	r6, [lr], #2	@ movhi
	cmp	lr, r4
	bne	.L47
	ldr	r4, [sp, #32]
	ldr	r6, .L91+16
	add	lr, r0, #17
	add	r4, r4, r8
	ldr	r7, .L91+4
	add	r5, r5, r8
	lsl	r4, r4, #1
	add	r8, lr, r8
	strh	r6, [r3, r4]	@ movhi
	lsl	r5, r5, #1
	add	r4, r1, #2160
	lsl	r8, r8, #1
	add	lr, r2, r4
	strh	r7, [r3, r8]	@ movhi
	add	r4, r4, r0
	strh	r7, [r3, r5]	@ movhi
	add	r6, r3, #34
	ldr	r5, .L91+12
	add	lr, r3, lr, lsl #1
	add	r4, r6, r4, lsl #1
.L48:
	strh	r5, [lr], #2	@ movhi
	cmp	lr, r4
	bne	.L48
	add	r4, r1, #2400
	ldr	r10, [sp, #8]
	add	lr, r0, #2
	add	r7, r4, r0
	add	r5, lr, r4
	ldr	r8, .L91+12
	lsl	r9, r7, #1
	add	r5, r3, r5, lsl #1
	add	r7, r10, r7, lsl #1
.L49:
	strh	r8, [r5], #2	@ movhi
	cmp	r5, r7
	bne	.L49
	ldr	r5, [sp, #20]
	add	r8, r3, #36
	add	r4, r5, r4
	ldr	r5, .L91+16
	add	r4, r3, r4, lsl #1
	add	r9, r8, r9
.L50:
	strh	r5, [r4], #2	@ movhi
	cmp	r9, r4
	bne	.L50
	add	r4, r1, #2640
	ldr	fp, [sp, #4]
	add	r7, r4, r0
	add	r5, lr, r4
	ldr	r9, .L91+12
	lsl	r10, r7, #1
	add	r5, r3, r5, lsl #1
	add	r7, fp, r7, lsl #1
.L51:
	strh	r9, [r5], #2	@ movhi
	cmp	r7, r5
	bne	.L51
	ldr	r5, [sp, #24]
	add	r4, r4, r5
	ldr	r5, .L91+16
	add	r4, r3, r4, lsl #1
	add	r8, r8, r10
.L52:
	strh	r5, [r4], #2	@ movhi
	cmp	r4, r8
	bne	.L52
	add	r4, r1, #2880
	add	r5, r4, r0
	add	lr, lr, r4
	ldr	r7, .L91+16
	lsl	r8, r5, #1
	add	lr, r3, lr, lsl #1
	add	r5, r6, r5, lsl #1
.L53:
	strh	r7, [lr], #2	@ movhi
	cmp	r5, lr
	bne	.L53
	ldr	lr, [sp, #44]
	add	r7, r3, #26
	add	r4, lr, r4
	ldr	lr, .L91+12
	add	r4, r3, r4, lsl #1
	add	r8, r8, r7
.L54:
	strh	lr, [r4], #2	@ movhi
	cmp	r8, r4
	bne	.L54
	add	lr, r1, #3120
	add	r5, lr, r0
	add	r4, r2, lr
	ldr	r8, .L91+16
	add	r6, r6, r5, lsl #1
	add	r4, r3, r4, lsl #1
	lsl	r5, r5, #1
.L55:
	strh	r8, [r4], #2	@ movhi
	cmp	r6, r4
	bne	.L55
	ldr	r4, [sp, #40]
	ldr	r6, [sp, #28]
	add	lr, r4, lr
	ldr	r4, .L91+12
	add	lr, r3, lr, lsl #1
	add	r5, r5, r6
.L56:
	strh	r4, [lr], #2	@ movhi
	cmp	r5, lr
	bne	.L56
	ldr	r6, .L91+16
	mov	r5, r6
	ldr	r8, [sp, #16]
	add	r4, r1, #3360
	add	lr, r2, r4
	add	r4, r4, r0
	add	r4, r8, r4, lsl #1
	lsl	r8, lr, #1
	strh	r6, [r3, r8]	@ movhi
	add	lr, r3, lr, lsl #1
.L57:
	strh	r5, [lr], #2	@ movhi
	cmp	r4, lr
	bne	.L57
	add	lr, r1, #3600
	ldr	r5, [sp, #8]
	add	r2, r2, lr
	ldr	r4, .L91+16
	add	lr, lr, r0
	add	r2, r3, r2, lsl #1
	add	lr, r5, lr, lsl #1
.L58:
	strh	r4, [r2], #2	@ movhi
	cmp	lr, r2
	bne	.L58
	add	r2, r1, #3840
	ldr	r4, [sp, #4]
	add	ip, r2, ip
	ldr	lr, .L91+16
	add	r2, r2, r0
	add	ip, r3, ip, lsl #1
	add	r2, r4, r2, lsl #1
.L59:
	strh	lr, [ip], #2	@ movhi
	cmp	r2, ip
	bne	.L59
	ldr	r2, [sp, #12]
	add	r1, r1, #4080
	add	r2, r2, r1
	ldr	ip, .L91+16
	add	r1, r1, r0
	add	r3, r3, r2, lsl #1
	add	r7, r7, r1, lsl #1
.L60:
	strh	ip, [r3], #2	@ movhi
	cmp	r7, r3
	bne	.L60
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	.LANCHOR0
	.word	15278
	.word	23423
	.word	12989
	.word	543
	.size	drawWholePeach, .-drawWholePeach
	.align	2
	.global	drawEatenPeach
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEatenPeach, %function
drawEatenPeach:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L138
	add	r3, r1, #2
	ldr	r2, [r2]
	rsb	r3, r3, r3, lsl #4
	add	fp, r0, #7
	add	r1, fp, r3, lsl #4
	add	r4, r0, r3, lsl #4
	add	lr, r2, #20
	ldr	ip, .L138+4
	sub	sp, sp, #36
	add	r1, r2, r1, lsl #1
	lsl	r3, r3, #4
	add	lr, lr, r4, lsl #1
	add	r5, r0, #9
.L94:
	strh	ip, [r1], #2	@ movhi
	cmp	r1, lr
	bne	.L94
	add	r8, r0, #8
	add	r1, r3, #240
	add	r6, r8, r1
	add	r1, r5, r1
	lsl	r4, r1, #1
	add	lr, r3, #480
	lsl	r6, r6, #1
	strh	ip, [r2, r6]	@ movhi
	strh	ip, [r2, r4]	@ movhi
	add	r4, lr, r0
	add	ip, r2, #22
	add	ip, ip, r4, lsl #1
	add	r4, r0, #10
	add	r1, r8, lr
	str	r4, [sp, #8]
	ldr	lr, .L138+4
	add	r1, r2, r1, lsl #1
.L95:
	strh	lr, [r1], #2	@ movhi
	cmp	r1, ip
	bne	.L95
	add	ip, r3, #720
	add	r4, ip, r0
	add	r1, r5, ip
	add	ip, r2, #24
	add	ip, ip, r4, lsl #1
	add	r4, r0, #11
	ldr	lr, .L138+4
	str	r4, [sp, #4]
	add	r1, r2, r1, lsl #1
.L96:
	strh	lr, [r1], #2	@ movhi
	cmp	r1, ip
	bne	.L96
	add	r1, r0, #12
	add	lr, r3, #1200
	str	r1, [sp, #12]
	add	r4, lr, r0
	add	r1, r1, lr
	add	ip, r2, #30
	ldr	r7, .L138+4
	add	r1, r2, r1, lsl #1
	add	r4, ip, r4, lsl #1
	add	r6, r0, #14
.L97:
	strh	r7, [r1], #2	@ movhi
	cmp	r1, r4
	bne	.L97
	ldr	r1, [sp, #4]
	add	r4, r3, #1440
	add	r1, r1, r4
	ldr	r7, .L138+4
	add	r4, r4, r0
	add	r1, r2, r1, lsl #1
	add	ip, ip, r4, lsl #1
.L98:
	strh	r7, [r1], #2	@ movhi
	cmp	r1, ip
	bne	.L98
	add	r1, r0, #13
	add	ip, r3, #1920
	add	r10, r1, ip
	str	r1, [sp, #16]
	add	r6, r6, ip
	ldr	r1, [sp, #8]
	lsl	r6, r6, #1
	lsl	r10, r10, #1
	add	r4, r3, #960
	strh	r7, [r2, r10]	@ movhi
	add	r9, r4, r1
	strh	r7, [r2, r6]	@ movhi
	ldr	r6, [sp, #12]
	lsl	r9, r9, #1
	add	r1, r3, #1680
	strh	r7, [r2, r9]	@ movhi
	add	r6, r6, r1
	add	r10, r1, r0
	add	r7, r2, #32
	ldr	r9, .L138+4
	add	r6, r2, r6, lsl #1
	add	r7, r7, r10, lsl #1
.L99:
	strh	r9, [r6], #2	@ movhi
	cmp	r6, r7
	bne	.L99
	sub	r7, r3, #480
	add	r6, r2, #4288
	add	r10, r7, r0
	add	r4, r4, r8
	add	r6, r6, #48
	ldr	r9, .L138+8
	str	r7, [sp, #24]
	add	r4, r2, r4, lsl #1
	lsl	r7, r10, #1
	add	r6, r6, r10, lsl #1
.L100:
	strh	r9, [r4]	@ movhi
	add	r4, r4, #480
	cmp	r4, r6
	bne	.L100
	add	r4, r2, #7680
	str	r4, [sp, #28]
	add	lr, lr, r5
	add	r4, r4, #18
	ldr	r6, .L138+8
	add	lr, r2, lr, lsl #1
	add	r4, r4, r7
.L101:
	strh	r6, [lr]	@ movhi
	add	lr, lr, #480
	cmp	lr, r4
	bne	.L101
	ldr	r4, [sp, #8]
	add	lr, r2, #7168
	add	r1, r1, r4
	add	lr, lr, #52
	ldr	r4, .L138+8
	add	r1, r2, r1, lsl #1
	add	lr, lr, r7
.L102:
	strh	r4, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, lr
	bne	.L102
	add	lr, r0, #3
	add	r1, r3, #3120
	add	r6, r1, lr
	ldr	r9, [sp, #4]
	str	lr, [sp, #20]
	lsl	r6, r6, #1
	add	lr, r2, #6208
	strh	r4, [r2, r6]	@ movhi
	add	ip, ip, r9
	add	lr, lr, #54
	ldr	r4, .L138+8
	add	ip, r2, ip, lsl #1
	add	lr, lr, r7
.L103:
	strh	r4, [ip]	@ movhi
	add	ip, ip, #480
	cmp	ip, lr
	bne	.L103
	add	ip, r3, #3360
	add	r4, r0, #2
	add	lr, r4, ip
	add	r7, ip, r0
	add	r6, r2, #18
	ldr	r9, .L138+8
	add	lr, r2, lr, lsl #1
	add	r7, r6, r7, lsl #1
.L104:
	strh	r9, [lr], #2	@ movhi
	cmp	lr, r7
	bne	.L104
	add	lr, r0, #6
	add	r9, r1, lr
	add	r10, r1, r0
	ldr	r7, .L138+8
	add	r9, r2, r9, lsl #1
	add	r10, r6, r10, lsl #1
.L105:
	strh	r7, [r9], #2	@ movhi
	cmp	r9, r10
	bne	.L105
	add	r10, r3, #2880
	add	r9, fp, r10
	lsl	r9, r9, #1
	add	fp, r8, r10
	strh	r7, [r2, r9]	@ movhi
	lsl	fp, fp, #1
	add	r9, r3, #2640
	strh	r7, [r2, fp]	@ movhi
	add	r7, r9, r0
	add	lr, lr, r9
	add	r6, r6, r7, lsl #1
	ldr	r7, .L138+12
	add	lr, r2, lr, lsl #1
.L107:
	strh	r7, [lr], #2	@ movhi
	cmp	r6, lr
	bne	.L107
	add	r6, r3, #2400
	ldr	lr, [sp, #20]
	add	r8, r8, r6
	lsl	r8, r8, #1
	add	lr, lr, r10
	strh	r7, [r2, r8]	@ movhi
	add	r10, r10, r0
	add	fp, r2, #14
	ldr	r7, .L138+12
	add	lr, r2, lr, lsl #1
	add	r10, fp, r10, lsl #1
.L108:
	strh	r7, [lr], #2	@ movhi
	cmp	lr, r10
	bne	.L108
	add	r8, r0, #4
	add	lr, r0, #5
	add	r8, r8, r1
	add	lr, lr, r1
	lsl	r8, r8, #1
	add	r3, r3, #3600
	lsl	lr, lr, #1
	strh	r7, [r2, r8]	@ movhi
	add	r3, r3, r4
	strh	r7, [r2, lr]	@ movhi
	ldr	r8, .L138+16
	add	r3, r2, r3, lsl #1
.L109:
	mov	r7, r3
	mov	lr, #0
.L110:
	add	lr, lr, #1
	cmp	lr, #3
	strh	r8, [r7]	@ movhi
	add	r7, r7, #480
	bne	.L110
	add	r4, r4, #1
	cmp	r5, r4
	add	r3, r3, #2
	bne	.L109
	ldr	lr, [sp, #24]
	add	r3, r2, #9088
	add	r0, lr, r0
	add	ip, ip, r5
	add	r3, r3, #50
	ldr	lr, .L138+16
	add	r3, r3, r0, lsl #1
	add	ip, r2, ip, lsl #1
	lsl	r0, r0, #1
.L112:
	strh	lr, [ip]	@ movhi
	add	ip, ip, #480
	cmp	r3, ip
	bne	.L112
	ldr	r3, [sp, #8]
	add	ip, r2, #8640
	add	r3, r1, r3
	add	ip, ip, #20
	ldr	lr, .L138+16
	add	r3, r2, r3, lsl #1
	add	r1, ip, r0
.L113:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L113
	ldr	r3, [sp, #4]
	add	r1, r2, #8128
	add	r3, r9, r3
	add	r1, r1, #54
	ldr	ip, .L138+16
	add	r3, r2, r3, lsl #1
	add	r1, r1, r0
.L114:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L114
	ldr	r1, [sp, #28]
	ldr	r3, [sp, #12]
	add	ip, r1, #24
	add	r3, r6, r3
	ldr	r1, .L138+16
	add	r3, r2, r3, lsl #1
	add	r0, ip, r0
.L115:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r0, r3
	bne	.L115
	ldr	r0, [sp, #16]
	add	r3, r0, r6
	add	r0, r0, r9
	lsl	r3, r3, #1
	lsl	r0, r0, #1
	strh	r1, [r2, r3]	@ movhi
	strh	r1, [r2, r0]	@ movhi
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L139:
	.align	2
.L138:
	.word	.LANCHOR0
	.word	15278
	.word	12989
	.word	23423
	.word	543
	.size	drawEatenPeach, .-drawEatenPeach
	.align	2
	.global	drawPrincessPeach
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPrincessPeach, %function
drawPrincessPeach:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mvn	r4, #64512
	mov	fp, r0
	mov	lr, r4
	sub	sp, sp, #76
	str	r1, [sp, #56]
	ldr	r3, .L196
	add	r1, r1, #2
	rsb	r1, r1, r1, lsl #4
	add	r0, r0, #12
	ldr	r3, [r3]
	lsl	r2, r1, #4
	str	r0, [sp, #28]
	add	r0, r0, r1, lsl #4
	add	ip, fp, #9
	add	r1, r2, #240
	lsl	r0, r0, #1
	str	ip, [sp, #8]
	strh	r4, [r3, r0]	@ movhi
	add	ip, ip, r1
	add	r0, r3, #32
	add	r5, r1, fp
	str	r0, [sp, #32]
	add	r5, r0, r5, lsl #1
	add	ip, r3, ip, lsl #1
	add	r0, r2, #480
.L141:
	strh	lr, [ip]	@ movhi
	add	r4, ip, #480
	add	ip, ip, #2
	cmp	ip, r5
	strh	lr, [r4]	@ movhi
	bne	.L141
	mov	r5, #0
	mov	r4, #31
	add	ip, fp, #14
	add	r10, fp, #10
	add	lr, r10, r1
	add	r1, ip, r1
	lsl	lr, lr, #1
	lsl	r1, r1, #1
	strh	r5, [r3, lr]	@ movhi
	ldr	r6, [sp, #8]
	strh	r5, [r3, r1]	@ movhi
	ldr	r5, [sp, #28]
	add	r7, fp, #15
	ldr	lr, .L196+4
	add	r1, r7, r0
	str	ip, [sp, #36]
	add	ip, r6, r0
	add	r0, r5, r0
	lsl	ip, ip, #1
	lsl	r1, r1, #1
	lsl	r0, r0, #1
	strh	lr, [r3, ip]	@ movhi
	strh	r4, [r3, r0]	@ movhi
	strh	lr, [r3, r1]	@ movhi
	mov	r4, r6
	mvn	lr, #64512
	sub	r5, r2, #480
	str	r5, [sp, #4]
	add	ip, r3, #4800
	add	r5, r6, r5
	str	r7, [sp, #20]
	add	ip, ip, r5, lsl #1
	add	r1, fp, #16
.L142:
	sub	r0, ip, #1920
.L143:
	strh	lr, [r0]	@ movhi
	add	r0, r0, #480
	cmp	r0, ip
	bne	.L143
	add	r4, r4, #1
	cmp	r4, r1
	add	ip, r0, #2
	bne	.L142
	add	ip, fp, #6
	mov	r5, ip
	mvn	r4, #64512
	ldr	r0, [sp, #4]
	add	lr, r3, #5248
	add	r0, ip, r0
	add	lr, lr, #32
	str	ip, [sp, #12]
	add	lr, lr, r0, lsl #1
.L145:
	sub	r0, lr, #1920
.L146:
	strh	r4, [r0]	@ movhi
	add	r0, r0, #480
	cmp	r0, lr
	bne	.L146
	add	r5, r5, #1
	cmp	r5, r10
	add	lr, r0, #2
	bne	.L145
	mvn	r4, #64512
	ldr	r0, [sp, #4]
	add	r6, fp, #4
	add	r7, fp, #8
	add	lr, r6, r0
	add	r5, r3, #10560
	str	r6, [sp, #40]
	str	r7, [sp, #24]
	add	lr, r5, lr, lsl #1
.L148:
	sub	r0, lr, #6208
	sub	r0, r0, #32
.L149:
	strh	r4, [r0]	@ movhi
	add	r0, r0, #480
	cmp	r0, lr
	bne	.L149
	add	r6, r6, #1
	cmp	r6, r7
	add	lr, r0, #2
	bne	.L148
	mvn	r0, #64512
	ldr	r4, [sp, #4]
	add	r6, r4, fp
	add	lr, r2, #1200
	lsl	r7, r6, #1
	add	lr, lr, r1
	add	r4, r3, #5312
	str	r7, [sp, #16]
	add	lr, r3, lr, lsl #1
	add	r4, r4, r6, lsl #1
.L151:
	strh	r0, [lr]	@ movhi
	add	lr, lr, #480
	cmp	lr, r4
	bne	.L151
	mvn	r4, #64512
	add	lr, fp, #17
	add	r9, r2, #1680
	add	r9, r9, lr
	str	r9, [sp, #48]
	add	r6, fp, #5
	add	r9, fp, #5
	add	r7, r2, #1440
	add	r7, r7, r9
	str	r6, [sp, #44]
	ldr	r9, [sp, #24]
	add	r6, r2, #2160
	str	r6, [sp, #64]
	add	r6, r2, #3360
	add	r6, r6, r9
	add	r9, r2, #3600
	str	r9, [sp, #52]
	add	r8, r2, #1920
	ldr	r9, [sp, #48]
	add	r8, r8, lr
	lsl	r9, r9, #1
	lsl	r8, r8, #1
	strh	r0, [r3, r9]	@ movhi
	lsl	r7, r7, #1
	strh	r0, [r3, r8]	@ movhi
	ldr	r8, [sp, #24]
	strh	r0, [r3, r7]	@ movhi
	add	r7, r2, #2160
	add	r7, r7, r8
	add	r5, r5, #6
	lsl	r7, r7, #1
	strh	r0, [r3, r7]	@ movhi
	str	r5, [sp, #60]
	add	r7, r2, #3600
	ldr	r5, [sp, #12]
	add	r9, r2, #4800
	add	r7, r8, r7
	lsl	r6, r6, #1
	add	r9, r9, r5
	lsl	r7, r7, #1
	strh	r0, [r3, r6]	@ movhi
	lsl	r9, r9, #1
	strh	r0, [r3, r7]	@ movhi
	add	r6, fp, #3
	add	r7, r2, #3840
	str	r6, [sp, #48]
	strh	r0, [r3, r9]	@ movhi
	ldr	r5, [sp, #16]
	add	r0, r7, r6
	ldr	r6, [sp, #60]
	str	r7, [sp, #68]
	add	r5, r6, r5
	add	r0, r3, r0, lsl #1
.L152:
	strh	r4, [r0]	@ movhi
	add	r0, r0, #480
	cmp	r0, r5
	bne	.L152
	add	r0, r2, #4288
	add	r5, fp, #2
	add	r0, r0, #32
	add	r6, r2, #4080
	add	r0, r0, r5
	add	r6, r6, r5
	str	r5, [sp, #60]
	ldr	r5, [sp, #4]
	add	r7, r3, #8128
	lsl	r0, r0, #1
	lsl	r6, r6, #1
	add	r7, r7, #32
	add	r5, r10, r5
	strh	r4, [r3, r6]	@ movhi
	add	r5, r7, r5, lsl #1
	strh	r4, [r3, r0]	@ movhi
	mov	r7, r10
	mov	r0, r10
	ldr	r6, .L196+8
	ldr	r8, [sp, #20]
.L153:
	sub	r4, r5, #2880
.L154:
	strh	r6, [r4]	@ movhi
	add	r4, r4, #480
	cmp	r4, r5
	bne	.L154
	add	r7, r7, #1
	cmp	r7, r8
	add	r5, r4, #2
	bne	.L153
	ldr	r4, [sp, #20]
	ldr	r6, [sp, #64]
	ldr	r8, [sp, #16]
	add	r5, r3, #7168
	add	r6, r4, r6
	add	r7, r5, #62
	ldr	r4, .L196+8
	add	r6, r3, r6, lsl #1
	add	r7, r7, r8
.L156:
	strh	r4, [r6]	@ movhi
	add	r6, r6, #480
	cmp	r6, r7
	bne	.L156
	add	r7, r2, #2640
	add	r6, r2, #2880
	add	r6, r6, r1
	add	r1, r1, r7
	lsl	r1, r1, #1
	strh	r4, [r3, r1]	@ movhi
	lsl	r6, r6, #1
	ldr	r1, [sp, #8]
	strh	r4, [r3, r6]	@ movhi
	add	r8, r2, #2400
	ldr	r6, [sp, #16]
	add	r5, r5, #50
	add	r1, r8, r1
	ldr	r4, .L196+8
	add	r5, r5, r6
	add	r1, r3, r1, lsl #1
.L157:
	strh	r4, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, r5
	bne	.L157
	ldr	r1, [sp, #28]
	ldr	r5, [sp, #52]
	add	r8, r8, r1
	add	r7, r1, r7
	add	r6, fp, #11
	add	r1, r1, r5
	add	r6, r6, r5
	lsl	r1, r1, #1
	str	r6, [sp, #16]
	ldr	r9, [sp, #20]
	ldr	r6, [sp, #12]
	str	r1, [sp, #20]
	ldr	r1, [sp, #68]
	add	r1, r1, r6
	ldr	r6, [sp, #16]
	add	r1, r3, r1, lsl #1
	lsl	r6, r6, #1
	strh	r4, [r3, r6]	@ movhi
	str	r1, [sp, #16]
	ldr	r6, [sp, #8]
	ldr	r1, [sp, #36]
	add	r5, r2, #3120
	add	r9, r9, r5
	add	r6, r6, r5
	add	r5, r1, r5
	ldr	r1, [sp, #20]
	strh	r4, [r3, r1]	@ movhi
	ldr	r4, .L196+12
	ldr	r1, .L196+4
	lsl	r6, r6, #1
	lsl	r9, r9, #1
	lsl	r5, r5, #1
	strh	r1, [r3, r6]	@ movhi
	strh	r4, [r3, r5]	@ movhi
	strh	r4, [r3, r9]	@ movhi
	mov	r4, #0	@ movhi
	lsl	r7, r7, #1
	lsl	r8, r8, #1
	strh	r4, [r3, r8]	@ movhi
	ldr	r6, .L196+16
	strh	r4, [r3, r7]	@ movhi
	ldr	r1, [sp, #16]
	ldr	r7, [sp, #36]
.L158:
	mov	r5, r1
	mov	r4, #0
.L159:
	add	r4, r4, #1
	cmp	r4, #3
	strh	r6, [r5]	@ movhi
	add	r5, r5, #480
	bne	.L159
	add	ip, ip, #1
	cmp	r7, ip
	add	r1, r1, #2
	bne	.L158
	add	r7, fp, #7
	mov	r5, r7
	ldr	r1, [sp, #56]
	rsb	r8, r1, r1, lsl #4
	add	r8, r3, r8, lsl #5
	add	r8, r8, #10048
	add	r6, r2, #4544
	ldr	r4, .L196+8
	add	r8, r8, #32
	add	r6, r6, #16
.L161:
	mov	r1, #0
	add	ip, r8, r5, lsl #1
.L162:
	add	r1, r1, #1
	cmp	r1, #3
	strh	r4, [ip]	@ movhi
	add	ip, ip, #480
	bne	.L162
	add	r5, r5, #1
	cmp	r5, r10
	bne	.L161
	mvn	r4, #32768
	add	r5, r10, r6
	add	r5, r3, r5, lsl #1
.L163:
	mov	ip, r5
	mov	r1, #0
.L164:
	add	r1, r1, #1
	cmp	r1, #3
	strh	r4, [ip]	@ movhi
	add	ip, ip, #480
	bne	.L164
	add	r0, r0, #1
	cmp	lr, r0
	add	r5, r5, #2
	bne	.L163
	ldr	r1, [sp, #12]
	add	r4, r2, #5504
	add	r4, r4, #16
	add	r1, r1, r4
	add	r0, r3, #28
	add	r4, r4, fp
	ldr	ip, .L196+20
	add	r1, r3, r1, lsl #1
	add	r0, r0, r4, lsl #1
.L166:
	strh	ip, [r1], #2	@ movhi
	cmp	r0, r1
	bne	.L166
	ldr	r1, [sp, #44]
	add	r4, r2, #5760
	add	r1, r1, r4
	add	r0, r3, #30
	add	r4, r4, fp
	ldr	ip, .L196+20
	add	r1, r3, r1, lsl #1
	add	r0, r0, r4, lsl #1
.L167:
	strh	ip, [r1], #2	@ movhi
	cmp	r0, r1
	bne	.L167
	ldr	r1, [sp, #40]
	add	r5, r2, #5952
	add	r5, r5, #48
	ldr	r4, [sp, #32]
	add	r1, r1, r5
	add	r0, r5, fp
	ldr	ip, .L196+20
	add	r1, r3, r1, lsl #1
	add	r0, r4, r0, lsl #1
.L168:
	strh	ip, [r1], #2	@ movhi
	cmp	r0, r1
	bne	.L168
	add	r6, r2, #6208
	ldr	r1, [sp, #48]
	add	r6, r6, #32
	ldr	ip, [sp, #32]
	add	r8, r6, fp
	add	r1, r1, r6
	add	r2, r2, #6464
	ldr	r0, .L196+20
	add	r4, ip, r8, lsl #1
	add	r1, r3, r1, lsl #1
	add	r2, r2, #16
	lsl	r8, r8, #1
.L169:
	strh	r0, [r1]	@ movhi
	add	ip, r1, #480
	add	r1, r1, #2
	cmp	r4, r1
	strh	r0, [ip]	@ movhi
	bne	.L169
	ldr	ip, [sp, #8]
	ldr	r0, .L196+16
	add	ip, ip, r5
	ldr	r4, [sp, #24]
	lsl	ip, ip, #1
	add	r5, r10, r5
	strh	r0, [r3, ip]	@ movhi
	lsl	r5, r5, #1
	add	r6, r4, r6
	add	ip, r3, #24
	mov	r1, r0
	strh	r0, [r3, r5]	@ movhi
	add	r8, ip, r8
	add	r0, r3, r6, lsl #1
.L170:
	strh	r1, [r0], #2	@ movhi
	cmp	r8, r0
	bne	.L170
	add	r1, r7, r2
	add	r4, r2, fp
	ldr	ip, .L196+16
	add	r2, r3, #26
	add	r1, r3, r1, lsl #1
	add	r2, r2, r4, lsl #1
.L171:
	strh	ip, [r1], #2	@ movhi
	cmp	r2, r1
	bne	.L171
	ldr	r0, [sp, #60]
	ldr	r2, [sp, #4]
	add	r3, r3, #16320
	add	r2, r0, r2
	ldr	r1, .L196+16
	add	r2, r3, r2, lsl #1
.L172:
	sub	r3, r2, #1920
.L173:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L173
	add	r0, r0, #1
	cmp	lr, r0
	add	r2, r2, #2
	bne	.L172
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L197:
	.align	2
.L196:
	.word	.LANCHOR0
	.word	29453
	.word	23423
	.word	7513
	.word	31359
	.word	21535
	.size	drawPrincessPeach, .-drawPrincessPeach
	.align	2
	.global	drawPrincessPeachEat
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPrincessPeachEat, %function
drawPrincessPeachEat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	mov	r4, r0
	bl	drawPrincessPeach
	mvn	r1, #43264
	ldr	r3, .L204
	ldr	lr, [r3]
	rsb	r5, r5, r5, lsl #4
	add	lr, lr, r5, lsl #5
	add	lr, lr, #6208
	add	lr, lr, #32
	add	ip, r4, #14
	add	r0, r4, #17
.L199:
	mov	r3, #0
	add	r2, lr, ip, lsl #1
.L200:
	add	r3, r3, #1
	cmp	r3, #3
	strh	r1, [r2]	@ movhi
	add	r2, r2, #480
	bne	.L200
	add	ip, ip, #1
	cmp	ip, r0
	bne	.L199
	pop	{r4, r5, r6, lr}
	bx	lr
.L205:
	.align	2
.L204:
	.word	.LANCHOR0
	.size	drawPrincessPeachEat, .-drawPrincessPeachEat
	.align	2
	.global	drawFrame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrame1, %function
drawFrame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #0
	mov	r4, r1
	ldr	r2, .L212
	rsb	r3, r1, r1, lsl #4
	ldr	lr, [r2]
	add	r3, r0, r3, lsl #4
	add	r2, lr, r3, lsl #1
	add	lr, lr, #12992
	add	r2, r2, #12928
	add	lr, lr, #40
	add	r2, r2, #62
	add	lr, lr, r3, lsl #1
	add	r5, r0, #15
.L207:
	sub	r3, r2, #10048
	sub	r3, r3, #32
.L208:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L208
	add	r2, r3, #2
	cmp	r2, lr
	bne	.L207
	mov	r1, r4
	bl	drawPrincessPeach
	mov	r0, r5
	add	r1, r4, #7
	pop	{r4, r5, r6, lr}
	b	drawWholePeach
.L213:
	.align	2
.L212:
	.word	.LANCHOR0
	.size	drawFrame1, .-drawFrame1
	.align	2
	.global	drawFrame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrame2, %function
drawFrame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #0
	mov	r4, r1
	ldr	r2, .L220
	rsb	r3, r1, r1, lsl #4
	ldr	lr, [r2]
	add	r3, r0, r3, lsl #4
	add	r2, lr, r3, lsl #1
	add	lr, lr, #12992
	add	r2, r2, #12928
	add	lr, lr, #40
	add	r2, r2, #62
	add	lr, lr, r3, lsl #1
	add	r5, r0, #15
.L215:
	sub	r3, r2, #10048
	sub	r3, r3, #32
.L216:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L216
	add	r2, r3, #2
	cmp	r2, lr
	bne	.L215
	mov	r1, r4
	bl	drawPrincessPeachEat
	mov	r0, r5
	add	r1, r4, #7
	pop	{r4, r5, r6, lr}
	b	drawWholePeach
.L221:
	.align	2
.L220:
	.word	.LANCHOR0
	.size	drawFrame2, .-drawFrame2
	.align	2
	.global	drawFrame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrame3, %function
drawFrame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	ldr	r2, .L228
	push	{r4, r5, r6, lr}
	rsb	r3, r1, r1, lsl #4
	ldr	lr, [r2]
	add	r3, r0, r3, lsl #4
	add	r2, lr, r3, lsl #1
	add	lr, lr, #12992
	add	r2, r2, #12928
	add	lr, lr, #40
	add	r2, r2, #62
	add	lr, lr, r3, lsl #1
	add	r4, r0, #15
	add	r5, r1, #6
.L223:
	sub	r3, r2, #10048
	sub	r3, r3, #32
.L224:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L224
	add	r2, r3, #2
	cmp	r2, lr
	bne	.L223
	bl	drawPrincessPeach
	mov	r1, r5
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	drawEatenPeach
.L229:
	.align	2
.L228:
	.word	.LANCHOR0
	.size	drawFrame3, .-drawFrame3
	.align	2
	.global	drawFrame4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrame4, %function
drawFrame4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	ldr	r2, .L236
	push	{r4, r5, r6, lr}
	rsb	r3, r1, r1, lsl #4
	ldr	lr, [r2]
	add	r3, r0, r3, lsl #4
	add	r2, lr, r3, lsl #1
	add	lr, lr, #12992
	add	r2, r2, #12928
	add	lr, lr, #40
	add	r2, r2, #62
	add	lr, lr, r3, lsl #1
	add	r4, r0, #15
	add	r5, r1, #6
.L231:
	sub	r3, r2, #10048
	sub	r3, r3, #32
.L232:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L232
	add	r2, r3, #2
	cmp	r2, lr
	bne	.L231
	bl	drawPrincessPeachEat
	mov	r1, r5
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	drawEatenPeach
.L237:
	.align	2
.L236:
	.word	.LANCHOR0
	.size	drawFrame4, .-drawFrame4
	.align	2
	.global	drawFrame5
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrame5, %function
drawFrame5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	ldr	r2, .L244
	str	lr, [sp, #-4]!
	rsb	r3, r1, r1, lsl #4
	ldr	lr, [r2]
	add	r3, r0, r3, lsl #4
	add	r2, lr, r3, lsl #1
	add	lr, lr, #12992
	add	r2, r2, #12928
	add	lr, lr, #40
	add	r2, r2, #62
	add	lr, lr, r3, lsl #1
.L239:
	sub	r3, r2, #10048
	sub	r3, r3, #32
.L240:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L240
	add	r2, r3, #2
	cmp	r2, lr
	bne	.L239
	ldr	lr, [sp], #4
	b	drawPrincessPeach
.L245:
	.align	2
.L244:
	.word	.LANCHOR0
	.size	drawFrame5, .-drawFrame5
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L250
	ldr	r3, [r3]
	add	r2, r3, #76800
.L247:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L247
	bx	lr
.L251:
	.align	2
.L250:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L253:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bhi	.L253
	mov	r2, #67108864
.L254:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L254
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
