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
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	mov	r3, #752
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r1, .L4+20
	ldr	r2, .L4+24
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startPal
	.word	startTiles
	.word	100726784
	.word	startMap
	.word	state
	.word	seed
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r0, #4352
	ldr	r2, .L8+4
	ldr	r3, .L8+8
	ldrh	r2, [r2, #48]
	pop	{r4, lr}
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	hideSprites
	.word	67109120
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L13:
	.align	2
.L12:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L23
	ldr	r2, .L23+4
	ldr	r0, [r3]
	ldrh	r2, [r2]
	add	r0, r0, #1
	tst	r2, #8
	str	r0, [r3]
	bxeq	lr
	ldr	r3, .L23+8
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L23+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L23+16
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L23+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L24:
	.align	2
.L23:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	initializeGame
	.word	state
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #2
	ldr	r3, .L26
	str	r2, [r3]
	bx	lr
.L27:
	.align	2
.L26:
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #83886080
	ldr	r4, .L30
	mov	r0, #3
	ldr	r1, .L30+4
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L30+8
	mov	lr, pc
	bx	r3
	mov	r3, #688
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L30+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L30+16
	mov	r0, #3
	ldr	r1, .L30+20
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L30+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L31:
	.align	2
.L30:
	.word	DMANow
	.word	pausePal
	.word	hideSprites
	.word	pauseTiles
	.word	100726784
	.word	pauseMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L37
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L37+4
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #2
	ldreq	r3, .L37+8
	streq	r2, [r3]
	bx	lr
.L38:
	.align	2
.L37:
	.word	oldButtons
	.word	buttons
	.word	state
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L41
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7936
	ldr	r4, .L41+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L41+8
	mov	lr, pc
	bx	r4
	mov	r3, #1808
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L41+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L41+16
	mov	r0, #3
	ldr	r1, .L41+20
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L41+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L42:
	.align	2
.L41:
	.word	hideSprites
	.word	DMANow
	.word	winPal
	.word	winTiles
	.word	100726784
	.word	winMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L45
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L46:
	.align	2
.L45:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L49
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7936
	ldr	r4, .L49+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L49+8
	mov	lr, pc
	bx	r4
	mov	r3, #2592
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L49+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L49+16
	mov	r0, #3
	ldr	r1, .L49+20
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L49+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L50:
	.align	2
.L49:
	.word	hideSprites
	.word	DMANow
	.word	losePal
	.word	loseTiles
	.word	100726784
	.word	loseMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L62
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L52
	ldr	r3, .L62+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L59
.L52:
	ldr	r3, .L62+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L60
.L53:
	ldr	r3, .L62+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L61
	pop	{r4, lr}
	bx	lr
.L61:
	pop	{r4, lr}
	b	goToLose
.L60:
	bl	goToWin
	b	.L53
.L59:
	bl	goToPause
	b	.L52
.L63:
	.align	2
.L62:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	enemiesRemaining
	.word	livesRemaining
	.size	game, .-game
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
	push	{r4, r7, fp, lr}
	ldr	r3, .L83
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	ldr	r6, .L83+4
	ldr	r4, .L83+8
	ldrh	r2, [r6, #48]
	strh	r1, [r3]	@ movhi
	ldr	r3, .L83+12
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r10, .L83+16
	ldr	r5, .L83+20
	ldr	fp, .L83+24
	ldr	r9, .L83+28
	ldr	r8, .L83+32
	ldr	r7, .L83+36
.L72:
	ldrh	r1, [r4]
	strh	r1, [r10]	@ movhi
	ldr	r2, [r5]
	ldrh	r3, [r6, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L65
.L67:
	.word	.L71
	.word	.L70
	.word	.L69
	.word	.L68
	.word	.L66
.L66:
	tst	r1, #8
	ldrne	r3, .L83+40
	movne	lr, pc
	bxne	r3
.L65:
	mov	lr, pc
	bx	r9
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r7
	mov	r0, #3
	mov	lr, pc
	bx	r8
	b	.L72
.L68:
	tst	r1, #8
	beq	.L65
	ldr	r3, .L83+44
	mov	lr, pc
	bx	r3
	b	.L65
.L69:
	ldr	r3, .L83+48
	mov	lr, pc
	bx	r3
	b	.L65
.L71:
	mov	lr, pc
	bx	fp
	b	.L65
.L70:
	tst	r1, #8
	beq	.L65
	tst	r3, #8
	moveq	r3, #2
	streq	r3, [r5]
	b	.L65
.L84:
	.align	2
.L83:
	.word	hideSprites
	.word	67109120
	.word	buttons
	.word	goToStart
	.word	oldButtons
	.word	state
	.word	start
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	lose.part.0
	.word	win.part.0
	.word	game
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
