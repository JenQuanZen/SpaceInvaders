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
	.file	"game.c"
	.text
	.align	2
	.global	drawGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	ldr	r4, .L32
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L32+4
	mov	lr, pc
	bx	r4
	mov	r3, #16
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L32+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L32+12
	ldr	r1, .L32+16
	mov	lr, pc
	bx	r4
	ldr	r0, .L32+20
	mov	r6, #512
	mov	r2, r0
	mov	r1, r0
	ldr	ip, .L32+24
	ldr	lr, [ip, #36]
	ldr	r3, [ip, #28]
	add	r3, r3, lr, lsl #5
	ldm	ip, {r5, lr}
	lsl	r3, r3, #1
	orr	ip, lr, #16384
	strh	r3, [r0, #4]	@ movhi
	ldr	r3, .L32+28
	strh	r5, [r0]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	add	lr, r3, #384
.L4:
	ldr	r0, [r3, #44]
	cmp	r0, #0
	strheq	r6, [r1, #8]	@ movhi
	beq	.L3
	ldr	r5, [r3, #36]
	ldr	r0, [r3, #28]
	ldr	ip, [r3, #4]
	add	r0, r0, r5, lsl #5
	ldr	r5, [r3]
	lsl	r0, r0, #1
	orr	ip, ip, #16384
	strh	r0, [r1, #12]	@ movhi
	strh	ip, [r1, #10]	@ movhi
	strh	r5, [r1, #8]	@ movhi
.L3:
	add	r3, r3, #48
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L4
	mov	r6, #512
	ldr	r3, .L32+32
	ldr	r1, .L32+20
	add	lr, r3, #384
.L7:
	ldr	r0, [r3, #44]
	cmp	r0, #0
	strheq	r6, [r1, #72]	@ movhi
	beq	.L6
	ldr	r5, [r3, #36]
	ldr	r0, [r3, #28]
	ldr	ip, [r3, #4]
	add	r0, r0, r5, lsl #5
	ldr	r5, [r3]
	lsl	r0, r0, #1
	orr	ip, ip, #16384
	strh	r0, [r1, #76]	@ movhi
	strh	ip, [r1, #74]	@ movhi
	strh	r5, [r1, #72]	@ movhi
.L6:
	add	r3, r3, #48
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L7
	mov	r6, #512
	ldr	r3, .L32+36
	ldr	r1, .L32+20
	add	lr, r3, #384
.L10:
	ldr	r0, [r3, #44]
	cmp	r0, #0
	strheq	r6, [r1, #136]	@ movhi
	beq	.L9
	ldr	r5, [r3, #36]
	ldr	r0, [r3, #28]
	ldr	ip, [r3, #4]
	add	r0, r0, r5, lsl #5
	ldr	r5, [r3]
	lsl	r0, r0, #1
	orr	ip, ip, #16384
	strh	r0, [r1, #140]	@ movhi
	strh	ip, [r1, #138]	@ movhi
	strh	r5, [r1, #136]	@ movhi
.L9:
	add	r3, r3, #48
	cmp	r3, lr
	add	r1, r1, #8
	bne	.L10
	mov	r5, #512
	ldr	r3, .L32+40
	add	ip, r3, #384
.L13:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	strheq	r5, [r2, #200]	@ movhi
	beq	.L12
	ldr	lr, [r3, #36]
	ldr	r1, [r3, #28]
	ldr	r0, [r3, #4]
	add	r1, r1, lr, lsl #5
	ldr	lr, [r3]
	lsl	r1, r1, #1
	orr	r0, r0, #16384
	strh	r1, [r2, #204]	@ movhi
	strh	r0, [r2, #202]	@ movhi
	strh	lr, [r2, #200]	@ movhi
.L12:
	add	r3, r3, #48
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L13
	mov	r5, #512
	ldr	r3, .L32+44
	ldr	r2, .L32+48
	add	ip, r3, #384
.L16:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	strheq	r5, [r2]	@ movhi
	beq	.L15
	ldr	lr, [r3, #36]
	ldr	r1, [r3, #28]
	ldr	r0, [r3, #4]
	add	r1, r1, lr, lsl #5
	ldr	lr, [r3]
	lsl	r1, r1, #1
	orr	r0, r0, #16384
	strh	r1, [r2, #4]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	lr, [r2]	@ movhi
.L15:
	add	r3, r3, #48
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L16
	mov	r7, #512
	ldr	r3, .L32+52
	ldr	r2, .L32+56
	ldr	r6, .L32+60
	add	ip, r3, #480
.L19:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	ldrne	r0, [r3]
	ldrne	r1, [r3, #28]
	ldrne	r5, [r3, #36]
	ldrne	lr, [r3, #4]
	orrne	r0, r0, r6
	addne	r1, r1, r5, lsl #6
	add	r3, r3, #48
	strhne	r0, [r2]	@ movhi
	strhne	r1, [r2, #4]	@ movhi
	strhne	lr, [r2, #2]	@ movhi
	strheq	r7, [r2]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L19
	mov	r7, #512
	ldr	r3, .L32+64
	ldr	r2, .L32+68
	ldr	r6, .L32+60
	add	ip, r3, #480
.L22:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	ldrne	r0, [r3]
	ldrne	r1, [r3, #28]
	ldrne	r5, [r3, #36]
	ldrne	lr, [r3, #4]
	orrne	r0, r0, r6
	addne	r1, r1, r5, lsl #6
	add	r3, r3, #48
	strhne	r0, [r2]	@ movhi
	strhne	r1, [r2, #4]	@ movhi
	strhne	lr, [r2, #2]	@ movhi
	strheq	r7, [r2]	@ movhi
	cmp	ip, r3
	add	r2, r2, #8
	bne	.L22
	ldr	r3, .L32+72
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L32+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	DMANow
	.word	gameBGPal
	.word	gameBGTiles
	.word	100726784
	.word	gameBGMap
	.word	shadowOAM
	.word	ship
	.word	greenEnemies
	.word	yellowEnemies
	.word	blueEnemies
	.word	yelEnemies
	.word	greEnemies
	.word	shadowOAM+264
	.word	shipBullets
	.word	shadowOAM+328
	.word	-32768
	.word	enemyBullets
	.word	shadowOAM+408
	.word	waitForVBlank
	.size	drawGame, .-drawGame
	.align	2
	.global	initializeShip
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeShip, %function
initializeShip:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #16
	mov	lr, #112
	mov	ip, #142
	mov	r0, #1
	ldr	r3, .L36
	stm	r3, {ip, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #40]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	ldr	lr, [sp], #4
	bx	lr
.L37:
	.align	2
.L36:
	.word	ship
	.size	initializeShip, .-initializeShip
	.align	2
	.global	initializeEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeEnemies, %function
initializeEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #10
	push	{r4, lr}
	mov	ip, #16
	mov	lr, r2
	mov	r1, #0
	mov	r0, #1
	ldr	r3, .L50
.L39:
	str	r2, [r3, #4]
	add	r2, r2, #20
	cmp	r2, #170
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	lr, [r3]
	str	r1, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #36]
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	add	r3, r3, #48
	bne	.L39
	mov	r1, #60
	mov	ip, #16
	mov	r2, #0
	mov	r4, #26
	mov	lr, #2
	mov	r0, #1
	ldr	r3, .L50+4
.L40:
	str	r1, [r3, #4]
	add	r1, r1, #20
	cmp	r1, #220
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r4, [r3]
	str	r2, [r3, #24]
	str	lr, [r3, #28]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	add	r3, r3, #48
	bne	.L40
	mov	r1, #35
	mov	ip, #16
	mov	r2, #0
	mov	r4, #44
	mov	lr, #3
	mov	r0, #1
	ldr	r3, .L50+8
.L41:
	str	r1, [r3, #4]
	add	r1, r1, #20
	cmp	r1, #195
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r4, [r3]
	str	r2, [r3, #24]
	str	lr, [r3, #28]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	add	r3, r3, #48
	bne	.L41
	mov	r1, #10
	mov	ip, #16
	mov	r2, #0
	mov	r4, #60
	mov	lr, #2
	mov	r0, #1
	ldr	r3, .L50+12
.L42:
	str	r1, [r3, #4]
	add	r1, r1, #20
	cmp	r1, #170
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r4, [r3]
	str	r2, [r3, #24]
	str	lr, [r3, #28]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	add	r3, r3, #48
	bne	.L42
	mov	r1, #60
	mov	ip, #16
	mov	r2, #0
	mov	lr, #76
	mov	r0, #1
	ldr	r3, .L50+16
.L43:
	str	r1, [r3, #4]
	add	r1, r1, #20
	cmp	r1, #220
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	lr, [r3]
	str	r2, [r3, #24]
	str	r0, [r3, #28]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	add	r3, r3, #48
	bne	.L43
	pop	{r4, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	greenEnemies
	.word	yellowEnemies
	.word	blueEnemies
	.word	yelEnemies
	.word	greEnemies
	.size	initializeEnemies, .-initializeEnemies
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L71
	mov	r9, #0
	mov	r5, r0
	ldr	r8, .L71+4
	ldr	r7, .L71+8
	sub	sp, sp, #20
	add	r6, r4, #480
	b	.L56
.L54:
	add	r4, r4, #48
	cmp	r4, r6
	beq	.L69
.L56:
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L54
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L54
	mvn	r2, #9
	ldr	r3, [r7]
	str	r9, [r4, #44]
	add	r4, r4, #48
	sub	r3, r3, #1
	cmp	r4, r6
	str	r3, [r7]
	str	r9, [r5, #44]
	str	r2, [r5]
	bne	.L56
.L69:
	ldr	r3, .L71+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+16
	ldr	r2, [r3]
	ldr	r3, .L71+20
	add	r0, r0, r2, lsl #2
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	rsb	r2, r3, r3, lsl #5
	add	r3, r3, r2, lsl #2
	subs	r3, r0, r3, lsl #4
	bne	.L52
	ldr	r2, [r5, #44]
	cmp	r2, #0
	beq	.L52
	ldr	r0, .L71+24
	mov	r2, r0
.L59:
	ldr	r1, [r2, #44]
	cmp	r1, #0
	beq	.L70
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bne	.L59
.L52:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L70:
	mov	lr, #1
	ldr	r1, [r5, #16]
	ldr	r2, [r5, #4]
	add	r3, r3, r3, lsl lr
	add	ip, r0, r3, lsl #4
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr lr
	ldr	r1, [ip, #16]
	ldr	r4, [r5]
	add	r1, r1, r1, lsr #31
	sub	r2, r2, r1, asr lr
	str	r4, [r0, r3, lsl #4]
	str	r2, [ip, #4]
	str	lr, [ip, #44]
	b	.L52
.L72:
	.align	2
.L71:
	.word	shipBullets
	.word	collision
	.word	enemiesRemaining
	.word	rand
	.word	bulletTimer
	.word	274877907
	.word	enemyBullets
	.size	updateEnemies, .-updateEnemies
	.align	2
	.global	initializeEnemyBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeEnemyBullets, %function
initializeEnemyBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #16
	mov	lr, #8
	mov	r2, #0
	mov	r1, #1
	ldr	r3, .L77
	add	r0, r3, #480
.L74:
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #4]
	str	r2, [r3]
	str	r2, [r3, #24]
	str	r1, [r3, #28]
	str	r1, [r3, #36]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L74
	ldr	lr, [sp], #4
	bx	lr
.L78:
	.align	2
.L77:
	.word	enemyBullets
	.size	initializeEnemyBullets, .-initializeEnemyBullets
	.align	2
	.global	fireEnemyBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireEnemyBullets, %function
fireEnemyBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L89
	mov	r3, #0
	mov	r2, ip
	b	.L82
.L80:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bxeq	lr
.L82:
	ldr	r1, [r2, #44]
	cmp	r1, #0
	bne	.L80
	push	{r4, lr}
	mov	r4, #1
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #4]
	add	r3, r3, r3, lsl r4
	add	lr, ip, r3, lsl #4
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr r4
	ldr	r1, [lr, #16]
	ldr	r0, [r0]
	add	r1, r1, r1, lsr #31
	sub	r2, r2, r1, asr r4
	str	r2, [lr, #4]
	str	r4, [lr, #44]
	str	r0, [ip, r3, lsl #4]
	pop	{r4, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	enemyBullets
	.size	fireEnemyBullets, .-fireEnemyBullets
	.align	2
	.global	initializeBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeBullets, %function
initializeBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r6, #8
	mov	r5, #16
	mvn	r4, #0
	ldr	lr, .L95
	ldr	ip, [lr, #16]
	ldr	r0, [lr, #4]
	ldr	r3, .L95+4
	add	ip, ip, ip, lsr #31
	ldr	lr, [lr]
	add	r0, r0, ip, asr r1
	add	ip, r3, #480
.L92:
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	r2, [r3, #12]
	str	lr, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r1, [r3, #36]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	stmib	r3, {r0, r4}
	add	r3, r3, #48
	cmp	r3, ip
	bne	.L92
	pop	{r4, r5, r6, lr}
	bx	lr
.L96:
	.align	2
.L95:
	.word	ship
	.word	shipBullets
	.size	initializeBullets, .-initializeBullets
	.align	2
	.global	initializeGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeGame, %function
initializeGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L101
	mov	r0, #3
	ldr	r2, .L101+4
	ldr	r1, .L101+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #16384
	ldr	r2, .L101+12
	ldr	r1, .L101+16
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	ldr	r3, .L101+20
	strh	r1, [r2, #8]	@ movhi
	mov	lr, pc
	bx	r3
	mov	lr, #40
	mov	ip, #3
	mov	r0, #30
	mov	r4, #0
	mov	r1, #112
	mov	r2, #142
	mov	r6, #16
	mov	r5, #1
	ldr	r3, .L101+24
	str	lr, [r3]
	ldr	r3, .L101+28
	str	ip, [r3]
	ldr	r3, .L101+32
	str	r0, [r3]
	ldr	r3, .L101+36
	str	r1, [r3, #4]
	str	r2, [r3]
	str	r6, [r3, #16]
	str	r6, [r3, #20]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #28]
	str	r5, [r3, #40]
	bl	initializeEnemies
	bl	initializeBullets
	mov	r0, r6
	mov	r2, r4
	mov	r1, r5
	mov	lr, #8
	ldr	r3, .L101+40
	add	ip, r3, #480
.L98:
	str	lr, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #4]
	str	r2, [r3]
	str	r2, [r3, #24]
	str	r1, [r3, #28]
	str	r1, [r3, #36]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	add	r3, r3, #48
	cmp	r3, ip
	bne	.L98
	pop	{r4, r5, r6, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	DMANow
	.word	83886592
	.word	spriteSheetPal
	.word	100728832
	.word	spriteSheetTiles
	.word	hideSprites
	.word	enemiesRemaining
	.word	livesRemaining
	.word	bulletTimer
	.word	ship
	.word	enemyBullets
	.size	initializeGame, .-initializeGame
	.align	2
	.global	fireBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullets, %function
fireBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L113
	mov	r3, #0
	mov	r2, r0
	b	.L106
.L104:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bxeq	lr
.L106:
	ldr	r1, [r2, #44]
	cmp	r1, #0
	bne	.L104
	push	{r4, r5, lr}
	mov	r4, #1
	ldr	lr, .L113+4
	ldr	r2, [lr, #16]
	add	r3, r3, r3, lsl r4
	add	r1, r2, r2, lsr #31
	ldr	r2, [lr, #4]
	add	ip, r0, r3, lsl #4
	add	r2, r2, r1, asr r4
	ldr	r1, [ip, #16]
	ldr	r5, [lr]
	add	r1, r1, r1, lsr #31
	sub	r2, r2, r1, asr r4
	str	r5, [r0, r3, lsl #4]
	str	r4, [ip, #44]
	str	r2, [ip, #4]
	pop	{r4, r5, lr}
	bx	lr
.L114:
	.align	2
.L113:
	.word	shipBullets
	.word	ship
	.size	fireBullets, .-fireBullets
	.align	2
	.global	updateShip
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateShip, %function
updateShip:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L124
	ldrh	r3, [r3, #48]
	tst	r3, #32
	push	{r4, lr}
	bne	.L116
	ldr	r2, .L124+4
	ldr	r3, [r2, #4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2, #4]
.L116:
	ldr	r3, .L124
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L117
	ldr	r2, .L124+4
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #4]
	rsb	r3, r3, #239
	cmp	r1, r3
	addlt	r1, r1, #1
	strlt	r1, [r2, #4]
.L117:
	ldr	r3, .L124+8
	ldrh	r3, [r3]
	ldr	r4, .L124+12
	tst	r3, #1
	ldr	r3, [r4]
	beq	.L123
	ldr	r2, .L124+16
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L120
.L123:
	add	r3, r3, #1
.L119:
	str	r3, [r4]
	pop	{r4, lr}
	bx	lr
.L120:
	cmp	r3, #29
	ble	.L123
	bl	fireBullets
	mov	r3, #1
	b	.L119
.L125:
	.align	2
.L124:
	.word	67109120
	.word	ship
	.word	oldButtons
	.word	bulletTimer
	.word	buttons
	.size	updateShip, .-updateShip
	.align	2
	.global	updateBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets, %function
updateBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #44]
	cmp	r3, #0
	bxeq	lr
	ldr	r2, [r0]
	ldr	r3, [r0, #20]
	add	r3, r2, r3
	cmp	r3, #0
	movgt	r3, #1
	movle	r3, #0
	cmp	r2, #159
	movgt	r3, #0
	cmp	r3, #0
	ldrne	r3, [r0, #8]
	addne	r2, r3, r2
	strne	r2, [r0]
	streq	r3, [r0, #44]
	bx	lr
	.size	updateBullets, .-updateBullets
	.align	2
	.global	updateEnemyBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemyBullets, %function
updateEnemyBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, [r0, #44]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #16
	beq	.L133
	ldr	r1, [r0]
	ldr	r2, [r0, #20]
	add	r2, r1, r2
	cmp	r2, #0
	movgt	r2, #1
	movle	r2, #0
	cmp	r1, #159
	movgt	r2, #0
	cmp	r2, #0
	moveq	r3, r2
	ldrne	r2, [r0, #8]
	addne	r1, r2, r1
	strne	r1, [r0]
	streq	r2, [r0, #44]
.L133:
	mov	r5, #10
	ldr	r6, .L148
	ldr	r8, .L148+4
	ldr	r7, .L148+8
	b	.L139
.L136:
	subs	r5, r5, #1
	beq	.L132
.L147:
	ldr	r3, [r4, #44]
.L139:
	cmp	r3, #0
	beq	.L136
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L136
	mov	r1, #0
	mvn	r2, #9
	ldr	r3, [r7]
	subs	r5, r5, #1
	sub	r3, r3, #1
	str	r3, [r7]
	str	r1, [r4, #44]
	str	r2, [r4]
	bne	.L147
.L132:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L149:
	.align	2
.L148:
	.word	ship
	.word	collision
	.word	livesRemaining
	.size	updateEnemyBullets, .-updateEnemyBullets
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
	push	{r4, r5, r6, lr}
	bl	updateShip
	ldr	r4, .L169
	ldr	r5, .L169+4
	add	r6, r4, #480
.L153:
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L151
	ldr	r2, [r4]
	ldr	r3, [r4, #20]
	add	r3, r2, r3
	cmp	r3, #0
	movgt	r3, #1
	movle	r3, #0
	cmp	r2, #159
	movgt	r3, #0
	cmp	r3, #0
	ldrne	r3, [r4, #8]
	addne	r2, r3, r2
	strne	r2, [r4]
	streq	r3, [r4, #44]
.L151:
	mov	r0, r5
	add	r4, r4, #48
	bl	updateEnemyBullets
	cmp	r4, r6
	add	r5, r5, #48
	bne	.L153
	ldr	r4, .L169+8
	add	r5, r4, #384
.L154:
	mov	r0, r4
	add	r4, r4, #48
	bl	updateEnemies
	cmp	r4, r5
	bne	.L154
	ldr	r4, .L169+12
	add	r5, r4, #384
.L155:
	mov	r0, r4
	add	r4, r4, #48
	bl	updateEnemies
	cmp	r5, r4
	bne	.L155
	ldr	r4, .L169+16
	add	r5, r4, #384
.L156:
	mov	r0, r4
	add	r4, r4, #48
	bl	updateEnemies
	cmp	r5, r4
	bne	.L156
	ldr	r4, .L169+20
	add	r5, r4, #384
.L157:
	mov	r0, r4
	add	r4, r4, #48
	bl	updateEnemies
	cmp	r5, r4
	bne	.L157
	ldr	r4, .L169+24
	add	r5, r4, #384
.L158:
	mov	r0, r4
	add	r4, r4, #48
	bl	updateEnemies
	cmp	r5, r4
	bne	.L158
	pop	{r4, r5, r6, lr}
	bx	lr
.L170:
	.align	2
.L169:
	.word	shipBullets
	.word	enemyBullets
	.word	greenEnemies
	.word	yellowEnemies
	.word	blueEnemies
	.word	yelEnemies
	.word	greEnemies
	.size	updateGame, .-updateGame
	.comm	shadowOAM,1024,4
	.comm	bulletTimer,4,4
	.comm	livesRemaining,4,4
	.comm	enemiesRemaining,4,4
	.comm	enemyBullets,480,4
	.comm	shipBullets,480,4
	.comm	greEnemies,384,4
	.comm	yelEnemies,384,4
	.comm	blueEnemies,384,4
	.comm	yellowEnemies,384,4
	.comm	greenEnemies,384,4
	.comm	ship,48,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
