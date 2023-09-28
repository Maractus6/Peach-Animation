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
	.file	"main.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Debugging Initialized\000"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r1, .L4
	push	{r4, lr}
	ldr	r3, .L4+4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r0, .L4+8
	ldr	r3, .L4+12
	mov	lr, pc
	bx	r3
	mov	ip, #1
	ldr	r3, .L4+16
	ldr	r1, .L4+20
	ldrh	r0, [r3]
	ldr	r2, .L4+24
	strh	r0, [r1]	@ movhi
	ldr	r1, .L4+28
	ldrh	lr, [r2, #48]
	mov	r0, #0
	ldr	r2, .L4+32
	strh	lr, [r3]	@ movhi
	strh	ip, [r1]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r3, #0
	ldr	r0, .L4+36
	ldr	r1, .L4+40
	ldr	r2, .L4+44
	strh	r3, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r3, [r2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	mgba_open
	.word	.LC0
	.word	mgba_printf
	.word	buttons
	.word	oldButtons
	.word	67109120
	.word	currentFrame
	.word	fillScreen
	.word	frameCount
	.word	isReverseLooping
	.word	isLooping
	.size	initialize, .-initialize
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"this is in the loop\000"
	.align	2
.LC2:
	.ascii	"select has been pressed\000"
	.global	__aeabi_uidivmod
	.align	2
.LC3:
	.ascii	"current frame: %d\000"
	.align	2
.LC4:
	.ascii	"isLooping: %d\000"
	.align	2
.LC5:
	.ascii	"isReverseLooping: %d\000"
	.text
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L68
	ldrh	r3, [r4]
	tst	r3, #64
	beq	.L7
	ldr	r2, .L68+4
	ldrh	r2, [r2, #48]
	tst	r2, #64
	beq	.L60
.L7:
	tst	r3, #128
	beq	.L8
	ldr	r2, .L68+4
	ldrh	r2, [r2, #48]
	tst	r2, #128
	beq	.L61
.L8:
	tst	r3, #1
	bne	.L9
.L67:
	ldr	r7, .L68+8
.L10:
	tst	r3, #2
	beq	.L14
	ldr	r2, .L68+4
	ldrh	r2, [r2, #48]
	tst	r2, #2
	beq	.L62
.L14:
	tst	r3, #8
	bne	.L49
.L65:
	ldr	r6, .L68+12
.L17:
	tst	r3, #4
	bne	.L51
.L66:
	ldr	r5, .L68+16
.L18:
	tst	r3, #32
	beq	.L19
	ldr	r2, .L68+4
	ldrh	r2, [r2, #48]
	tst	r2, #32
	moveq	r2, #1
	strheq	r2, [r7]	@ movhi
.L19:
	tst	r3, #16
	beq	.L22
	ldr	r3, .L68+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L63
.L22:
	ldrh	r9, [r6]
	cmp	r9, #1
	ldrh	r4, [r7]
	beq	.L23
.L58:
	mov	r1, r4
	ldr	r8, .L68+20
.L24:
	ldr	r4, .L68+24
	ldr	r0, .L68+28
	mov	lr, pc
	bx	r4
	ldrh	r1, [r6]
	ldr	r0, .L68+32
	mov	lr, pc
	bx	r4
	ldrh	r1, [r5]
	ldr	r0, .L68+36
	mov	lr, pc
	bx	r4
	ldrh	r3, [r8]
	add	r3, r3, #1
	strh	r3, [r8]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L63:
	mov	r3, #5
	ldrh	r9, [r6]
	cmp	r9, #1
	mov	r4, r3
	strh	r3, [r7]	@ movhi
	bne	.L58
.L23:
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.L64
	cmp	r3, #1
	bne	.L58
	ldr	r3, .L68+40
	ldr	r8, .L68+20
	ldrh	r1, [r3]
	ldrh	r0, [r8]
	ldr	r3, .L68+44
	mov	lr, pc
	bx	r3
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r1, #0
	bne	.L57
	sub	r4, r4, #1
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	cmp	r4, #0
	beq	.L30
.L59:
	strh	r4, [r7]	@ movhi
.L57:
	mov	r1, r4
	b	.L24
.L62:
	ldrh	r2, [r7]
	sub	r2, r2, #1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	cmp	r2, #0
	moveq	r2, #5
	tst	r3, #8
	strh	r2, [r7]	@ movhi
	beq	.L65
.L49:
	ldr	r2, .L68+4
	ldrh	r2, [r2, #48]
	tst	r2, #8
	ldr	r6, .L68+12
	bne	.L17
	ldrh	r3, [r6]
	rsbs	r3, r3, #1
	movcc	r3, #0
	mov	r0, #4
	ldr	r1, .L68+48
	ldr	r2, .L68+52
	strh	r3, [r6]	@ movhi
	mov	lr, pc
	bx	r2
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L66
.L51:
	ldr	r2, .L68+4
	ldrh	r2, [r2, #48]
	tst	r2, #4
	ldr	r5, .L68+16
	bne	.L18
	ldrh	r3, [r5]
	rsbs	r3, r3, #1
	movcc	r3, #0
	mov	r2, #1
	strh	r3, [r5]	@ movhi
	mov	r0, #4
	ldr	r3, .L68+52
	ldr	r1, .L68+56
	strh	r2, [r6]	@ movhi
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L18
.L61:
	ldr	r1, .L68+40
	ldrh	r2, [r1]
	cmp	r2, #69
	addls	r2, r2, #15
	strhls	r2, [r1]	@ movhi
	tst	r3, #1
	beq	.L67
.L9:
	ldr	r2, .L68+4
	ldrh	r2, [r2, #48]
	tst	r2, #1
	ldr	r7, .L68+8
	bne	.L10
	ldrh	r2, [r7]
	add	r2, r2, #1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	cmp	r2, #5
	movhi	r2, #1
	strh	r2, [r7]	@ movhi
	b	.L10
.L60:
	ldr	r1, .L68+40
	ldrh	r2, [r1]
	cmp	r2, #10
	subhi	r2, r2, #15
	strhhi	r2, [r1]	@ movhi
	b	.L7
.L64:
	ldr	r3, .L68+40
	ldr	r8, .L68+20
	ldrh	r1, [r3]
	ldrh	r0, [r8]
	ldr	r3, .L68+44
	mov	lr, pc
	bx	r3
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	cmp	r1, #0
	bne	.L57
	add	r1, r4, #1
	lsl	r4, r1, #16
	lsr	r4, r4, #16
	cmp	r4, #5
	movhi	r1, r9
	strhhi	r9, [r7]	@ movhi
	bhi	.L24
	b	.L59
.L30:
	mov	r3, #5
	mov	r1, r3
	strh	r3, [r7]	@ movhi
	b	.L24
.L69:
	.align	2
.L68:
	.word	oldButtons
	.word	67109120
	.word	currentFrame
	.word	isLooping
	.word	isReverseLooping
	.word	frameCount
	.word	mgba_printf
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LANCHOR0
	.word	__aeabi_uidivmod
	.word	.LC1
	.word	mgba_printf_level
	.word	.LC2
	.size	updateGame, .-updateGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L82
	ldrh	r3, [r4]
	cmp	r3, #1
	beq	.L77
	cmp	r3, #2
	beq	.L78
.L72:
	cmp	r3, #3
	beq	.L79
.L73:
	cmp	r3, #4
	beq	.L80
.L74:
	cmp	r3, #5
	beq	.L81
.L70:
	pop	{r4, lr}
	bx	lr
.L77:
	ldr	r3, .L82+4
	mov	r1, #80
	mov	r0, #120
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	cmp	r3, #2
	bne	.L72
.L78:
	ldr	r3, .L82+8
	mov	r1, #80
	mov	r0, #120
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	cmp	r3, #3
	bne	.L73
.L79:
	ldr	r3, .L82+12
	mov	r1, #80
	mov	r0, #120
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	cmp	r3, #4
	bne	.L74
.L80:
	ldr	r3, .L82+16
	mov	r1, #80
	mov	r0, #120
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	cmp	r3, #5
	bne	.L70
.L81:
	mov	r1, #80
	mov	r0, #120
	ldr	r3, .L82+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L83:
	.align	2
.L82:
	.word	currentFrame
	.word	drawFrame1
	.word	drawFrame2
	.word	drawFrame3
	.word	drawFrame4
	.word	drawFrame5
	.size	drawGame, .-drawGame
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
	ldr	r3, .L87
	mov	lr, pc
	bx	r3
	ldr	r9, .L87+4
	ldr	r4, .L87+8
	ldr	r8, .L87+12
	ldr	r7, .L87+16
	ldr	r6, .L87+20
	ldr	r5, .L87+24
.L85:
	ldrh	r3, [r4]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	b	.L85
.L88:
	.align	2
.L87:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	67109120
	.size	main, .-main
	.global	frameDelay
	.comm	frameCount,2,2
	.comm	isReverseLooping,2,2
	.comm	isLooping,2,2
	.comm	currentFrame,2,2
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.data
	.align	1
	.set	.LANCHOR0,. + 0
	.type	frameDelay, %object
	.size	frameDelay, 2
frameDelay:
	.short	40
	.ident	"GCC: (devkitARM release 53) 9.1.0"
