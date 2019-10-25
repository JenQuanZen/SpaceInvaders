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
	.file	"gameBG.c"
	.text
	.global	gameBGPal
	.global	gameBGMap
	.global	gameBGTiles
	.section	.rodata
	.align	2
	.type	gameBGPal, %object
	.size	gameBGPal, 32
gameBGPal:
	.space	32
	.type	gameBGMap, %object
	.size	gameBGMap, 2048
gameBGMap:
	.space	2048
	.type	gameBGTiles, %object
	.size	gameBGTiles, 32
gameBGTiles:
	.space	32
	.ident	"GCC: (devkitARM release 53) 9.1.0"
