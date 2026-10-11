#Driver Command: ccppc -pnone -Onoinline -gtws --unsigned_pointer --tdeh
#		-Ogeneral -S tests\compiler\frame_test_large.c -o frame_large.s
#Source File:   tests\compiler\frame_test_large.c
#Directory:     C:\Users\Andrew\Desktop\MKioskDecomp
#Compile Date:  Sat Oct 10 21:39:49 2026
#Host OS:       Win32
#Version:       C-POWERPC 5.3.27 RELEASE VERSION
#Release:       MULTI v5.3.27 Nintendo
#Revision Date: Tue Aug 29 03:28:16 2017
#Release Date:  Tue Aug 29 03:59:29 2017
# ecom  -w -OM
	.text
	.align	2
..gh.f.p.0.r.0.e.0:
	.type	..gh.f.p.0.r.0.e.0,@object
	.size	..gh.f.p.0.r.0.e.0,0
	.global	leaf_1
leaf_1:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -16(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 20(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 16
	blr
	.type	leaf_1,@function
	.size	leaf_1,$-leaf_1
	.align	2

#function:			leaf_1
#stack frame size:		16
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.1:
	.type	..gh.f.p.0.r.0.e.1,@object
	.size	..gh.f.p.0.r.0.e.1,0
	.global	leaf_2
leaf_2:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -24(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 28(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 24
	blr
	.type	leaf_2,@function
	.size	leaf_2,$-leaf_2
	.align	2

#function:			leaf_2
#stack frame size:		24
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.2:
	.type	..gh.f.p.0.r.0.e.2,@object
	.size	..gh.f.p.0.r.0.e.2,0
	.global	leaf_3
leaf_3:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -24(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 28(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 24
	blr
	.type	leaf_3,@function
	.size	leaf_3,$-leaf_3
	.align	2

#function:			leaf_3
#stack frame size:		24
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.3:
	.type	..gh.f.p.0.r.0.e.3,@object
	.size	..gh.f.p.0.r.0.e.3,0
	.global	leaf_4
leaf_4:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -32(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 36(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 32
	blr
	.type	leaf_4,@function
	.size	leaf_4,$-leaf_4
	.align	2

#function:			leaf_4
#stack frame size:		32
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.4:
	.type	..gh.f.p.0.r.0.e.4,@object
	.size	..gh.f.p.0.r.0.e.4,0
	.global	leaf_5
leaf_5:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -32(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 36(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 32
	blr
	.type	leaf_5,@function
	.size	leaf_5,$-leaf_5
	.align	2

#function:			leaf_5
#stack frame size:		32
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.5:
	.type	..gh.f.p.0.r.0.e.5,@object
	.size	..gh.f.p.0.r.0.e.5,0
	.global	leaf_6
leaf_6:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -40(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 44(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 40
	blr
	.type	leaf_6,@function
	.size	leaf_6,$-leaf_6
	.align	2

#function:			leaf_6
#stack frame size:		40
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.6:
	.type	..gh.f.p.0.r.0.e.6,@object
	.size	..gh.f.p.0.r.0.e.6,0
	.global	leaf_7
leaf_7:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -40(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 44(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 40
	blr
	.type	leaf_7,@function
	.size	leaf_7,$-leaf_7
	.align	2

#function:			leaf_7
#stack frame size:		40
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.7:
	.type	..gh.f.p.0.r.0.e.7,@object
	.size	..gh.f.p.0.r.0.e.7,0
	.global	leaf_8
leaf_8:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -48(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 52(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 48
	blr
	.type	leaf_8,@function
	.size	leaf_8,$-leaf_8
	.align	2

#function:			leaf_8
#stack frame size:		48
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.8:
	.type	..gh.f.p.0.r.0.e.8,@object
	.size	..gh.f.p.0.r.0.e.8,0
	.global	leaf_9
leaf_9:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -48(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 52(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 48
	blr
	.type	leaf_9,@function
	.size	leaf_9,$-leaf_9
	.align	2

#function:			leaf_9
#stack frame size:		48
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.9:
	.type	..gh.f.p.0.r.0.e.9,@object
	.size	..gh.f.p.0.r.0.e.9,0
	.global	leaf_10
leaf_10:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -56(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 60(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 56
	blr
	.type	leaf_10,@function
	.size	leaf_10,$-leaf_10
	.align	2

#function:			leaf_10
#stack frame size:		56
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.10:
	.type	..gh.f.p.0.r.0.e.10,@object
	.size	..gh.f.p.0.r.0.e.10,0
	.global	leaf_11
leaf_11:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -56(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 60(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 56
	blr
	.type	leaf_11,@function
	.size	leaf_11,$-leaf_11
	.align	2

#function:			leaf_11
#stack frame size:		56
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.11:
	.type	..gh.f.p.0.r.0.e.11,@object
	.size	..gh.f.p.0.r.0.e.11,0
	.global	leaf_12
leaf_12:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -64(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 68(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 64
	blr
	.type	leaf_12,@function
	.size	leaf_12,$-leaf_12
	.align	2

#function:			leaf_12
#stack frame size:		64
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.12:
	.type	..gh.f.p.0.r.0.e.12,@object
	.size	..gh.f.p.0.r.0.e.12,0
	.global	leaf_13
leaf_13:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -64(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 68(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 64
	blr
	.type	leaf_13,@function
	.size	leaf_13,$-leaf_13
	.align	2

#function:			leaf_13
#stack frame size:		64
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.13:
	.type	..gh.f.p.0.r.0.e.13,@object
	.size	..gh.f.p.0.r.0.e.13,0
	.global	leaf_14
leaf_14:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -72(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 76(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 72
	blr
	.type	leaf_14,@function
	.size	leaf_14,$-leaf_14
	.align	2

#function:			leaf_14
#stack frame size:		72
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.14:
	.type	..gh.f.p.0.r.0.e.14,@object
	.size	..gh.f.p.0.r.0.e.14,0
	.global	leaf_15
leaf_15:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -72(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 76(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 72
	blr
	.type	leaf_15,@function
	.size	leaf_15,$-leaf_15
	.align	2

#function:			leaf_15
#stack frame size:		72
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.15:
	.type	..gh.f.p.0.r.0.e.15,@object
	.size	..gh.f.p.0.r.0.e.15,0
	.global	leaf_16
leaf_16:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -80(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 84(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 80
	blr
	.type	leaf_16,@function
	.size	leaf_16,$-leaf_16
	.align	2

#function:			leaf_16
#stack frame size:		80
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.16:
	.type	..gh.f.p.0.r.0.e.16,@object
	.size	..gh.f.p.0.r.0.e.16,0
	.global	leaf_17
leaf_17:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -80(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 84(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 80
	blr
	.type	leaf_17,@function
	.size	leaf_17,$-leaf_17
	.align	2

#function:			leaf_17
#stack frame size:		80
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.17:
	.type	..gh.f.p.0.r.0.e.17,@object
	.size	..gh.f.p.0.r.0.e.17,0
	.global	leaf_18
leaf_18:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -88(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 92(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 88
	blr
	.type	leaf_18,@function
	.size	leaf_18,$-leaf_18
	.align	2

#function:			leaf_18
#stack frame size:		88
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.18:
	.type	..gh.f.p.0.r.0.e.18,@object
	.size	..gh.f.p.0.r.0.e.18,0
	.global	leaf_19
leaf_19:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -88(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 92(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 88
	blr
	.type	leaf_19,@function
	.size	leaf_19,$-leaf_19
	.align	2

#function:			leaf_19
#stack frame size:		88
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.19:
	.type	..gh.f.p.0.r.0.e.19,@object
	.size	..gh.f.p.0.r.0.e.19,0
	.global	leaf_20
leaf_20:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -96(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 100(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 96
	blr
	.type	leaf_20,@function
	.size	leaf_20,$-leaf_20
	.align	2

#function:			leaf_20
#stack frame size:		96
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.20:
	.type	..gh.f.p.0.r.0.e.20,@object
	.size	..gh.f.p.0.r.0.e.20,0
	.global	leaf_21
leaf_21:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -96(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 100(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 96
	blr
	.type	leaf_21,@function
	.size	leaf_21,$-leaf_21
	.align	2

#function:			leaf_21
#stack frame size:		96
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.21:
	.type	..gh.f.p.0.r.0.e.21,@object
	.size	..gh.f.p.0.r.0.e.21,0
	.global	leaf_22
leaf_22:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -104(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 108(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 104
	blr
	.type	leaf_22,@function
	.size	leaf_22,$-leaf_22
	.align	2

#function:			leaf_22
#stack frame size:		104
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.22:
	.type	..gh.f.p.0.r.0.e.22,@object
	.size	..gh.f.p.0.r.0.e.22,0
	.global	leaf_23
leaf_23:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -104(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 108(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 104
	blr
	.type	leaf_23,@function
	.size	leaf_23,$-leaf_23
	.align	2

#function:			leaf_23
#stack frame size:		104
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.23:
	.type	..gh.f.p.0.r.0.e.23,@object
	.size	..gh.f.p.0.r.0.e.23,0
	.global	leaf_24
leaf_24:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -112(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 116(sp)
	lbz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 112
	blr
	.type	leaf_24,@function
	.size	leaf_24,$-leaf_24
	.align	2

#function:			leaf_24
#stack frame size:		112
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.4.r.0.e.24:
	.type	..gh.f.p.4.r.0.e.24,@object
	.size	..gh.f.p.4.r.0.e.24,0
	.global	saves_1
saves_1:
	mflr	r0
	stwu	sp, -16(sp)
	stw	r31, 12(sp)
	mr	r31, r4
	stw	r30, 8(sp)
	stw	r0, 20(sp)
	bl	h
	mr	r30, r3
	mr	r3, r31
	bl	h
	mr	r31, r3
	add	r11, r30, r31
	addi	r3, r11, 1
	bl	h
	lwz	r0, 20(sp)
	mullw	r12, r30, r31
	mtlr	r0
	lwz	r30, 8(sp)
	lwz	r31, 12(sp)
	addi	sp, sp, 16
	add	r3, r12, r3
	blr
	.type	saves_1,@function
	.size	saves_1,$-saves_1
	.align	2

#function:			saves_1
#stack frame size:		16
#link area offset:		0
#local storage area offset:	8
#gpr save area offset:		8
#
#x	r30	local
#y	r31	local

#a	r3	param
#b	r31	param

	.data
	.text
	.align	2
	.align	2
..gh.f.p.4.r.0.e.25:
	.type	..gh.f.p.4.r.0.e.25,@object
	.size	..gh.f.p.4.r.0.e.25,0
	.global	saves_2
saves_2:
	mflr	r0
	stwu	sp, -16(sp)
	stw	r31, 12(sp)
	mr	r31, r4
	stw	r30, 8(sp)
	stw	r0, 20(sp)
	bl	h
	mr	r30, r3
	mr	r3, r31
	bl	h
	mr	r31, r3
	add	r11, r30, r31
	addi	r3, r11, 2
	bl	h
	lwz	r0, 20(sp)
	mullw	r12, r30, r31
	mtlr	r0
	lwz	r30, 8(sp)
	lwz	r31, 12(sp)
	addi	sp, sp, 16
	add	r3, r12, r3
	blr
	.type	saves_2,@function
	.size	saves_2,$-saves_2
	.align	2

#function:			saves_2
#stack frame size:		16
#link area offset:		0
#local storage area offset:	8
#gpr save area offset:		8
#
#x	r30	local
#y	r31	local

#a	r3	param
#b	r31	param

	.data
	.text
	.align	2
	.align	2
..gh.f.p.4.r.0.e.26:
	.type	..gh.f.p.4.r.0.e.26,@object
	.size	..gh.f.p.4.r.0.e.26,0
	.global	saves_3
saves_3:
	mflr	r0
	stwu	sp, -16(sp)
	stw	r31, 12(sp)
	mr	r31, r4
	stw	r30, 8(sp)
	stw	r0, 20(sp)
	bl	h
	mr	r30, r3
	mr	r3, r31
	bl	h
	mr	r31, r3
	add	r11, r30, r31
	addi	r3, r11, 3
	bl	h
	lwz	r0, 20(sp)
	mullw	r12, r30, r31
	mtlr	r0
	lwz	r30, 8(sp)
	lwz	r31, 12(sp)
	addi	sp, sp, 16
	add	r3, r12, r3
	blr
	.type	saves_3,@function
	.size	saves_3,$-saves_3
	.align	2

#function:			saves_3
#stack frame size:		16
#link area offset:		0
#local storage area offset:	8
#gpr save area offset:		8
#
#x	r30	local
#y	r31	local

#a	r3	param
#b	r31	param

	.data
	.text
	.align	2
	.align	2
..gh.f.p.4.r.0.e.27:
	.type	..gh.f.p.4.r.0.e.27,@object
	.size	..gh.f.p.4.r.0.e.27,0
	.global	saves_4
saves_4:
	mflr	r0
	stwu	sp, -16(sp)
	stw	r31, 12(sp)
	mr	r31, r4
	stw	r30, 8(sp)
	stw	r0, 20(sp)
	bl	h
	mr	r30, r3
	mr	r3, r31
	bl	h
	mr	r31, r3
	add	r11, r30, r31
	addi	r3, r11, 4
	bl	h
	lwz	r0, 20(sp)
	mullw	r12, r30, r31
	mtlr	r0
	lwz	r30, 8(sp)
	lwz	r31, 12(sp)
	addi	sp, sp, 16
	add	r3, r12, r3
	blr
	.type	saves_4,@function
	.size	saves_4,$-saves_4
	.align	2

#function:			saves_4
#stack frame size:		16
#link area offset:		0
#local storage area offset:	8
#gpr save area offset:		8
#
#x	r30	local
#y	r31	local

#a	r3	param
#b	r31	param

	.data
	.text
	.align	2
	.align	2
..gh.f.p.4.r.0.e.28:
	.type	..gh.f.p.4.r.0.e.28,@object
	.size	..gh.f.p.4.r.0.e.28,0
	.global	saves_5
saves_5:
	mflr	r0
	stwu	sp, -16(sp)
	stw	r31, 12(sp)
	mr	r31, r4
	stw	r30, 8(sp)
	stw	r0, 20(sp)
	bl	h
	mr	r30, r3
	mr	r3, r31
	bl	h
	mr	r31, r3
	add	r11, r30, r31
	addi	r3, r11, 5
	bl	h
	lwz	r0, 20(sp)
	mullw	r12, r30, r31
	mtlr	r0
	lwz	r30, 8(sp)
	lwz	r31, 12(sp)
	addi	sp, sp, 16
	add	r3, r12, r3
	blr
	.type	saves_5,@function
	.size	saves_5,$-saves_5
	.align	2

#function:			saves_5
#stack frame size:		16
#link area offset:		0
#local storage area offset:	8
#gpr save area offset:		8
#
#x	r30	local
#y	r31	local

#a	r3	param
#b	r31	param

	.data
	.text
	.align	2
	.align	2
..gh.f.p.4.r.0.e.29:
	.type	..gh.f.p.4.r.0.e.29,@object
	.size	..gh.f.p.4.r.0.e.29,0
	.global	saves_6
saves_6:
	mflr	r0
	stwu	sp, -16(sp)
	stw	r31, 12(sp)
	mr	r31, r4
	stw	r30, 8(sp)
	stw	r0, 20(sp)
	bl	h
	mr	r30, r3
	mr	r3, r31
	bl	h
	mr	r31, r3
	add	r11, r30, r31
	addi	r3, r11, 6
	bl	h
	lwz	r0, 20(sp)
	mullw	r12, r30, r31
	mtlr	r0
	lwz	r30, 8(sp)
	lwz	r31, 12(sp)
	addi	sp, sp, 16
	add	r3, r12, r3
	blr
	.type	saves_6,@function
	.size	saves_6,$-saves_6
	.align	2

#function:			saves_6
#stack frame size:		16
#link area offset:		0
#local storage area offset:	8
#gpr save area offset:		8
#
#x	r30	local
#y	r31	local

#a	r3	param
#b	r31	param

	.data
	.text
	.align	2
	.align	2
..gh.f.p.4.r.0.e.30:
	.type	..gh.f.p.4.r.0.e.30,@object
	.size	..gh.f.p.4.r.0.e.30,0
	.global	saves_7
saves_7:
	mflr	r0
	stwu	sp, -16(sp)
	stw	r31, 12(sp)
	mr	r31, r4
	stw	r30, 8(sp)
	stw	r0, 20(sp)
	bl	h
	mr	r30, r3
	mr	r3, r31
	bl	h
	mr	r31, r3
	add	r11, r30, r31
	addi	r3, r11, 7
	bl	h
	lwz	r0, 20(sp)
	mullw	r12, r30, r31
	mtlr	r0
	lwz	r30, 8(sp)
	lwz	r31, 12(sp)
	addi	sp, sp, 16
	add	r3, r12, r3
	blr
	.type	saves_7,@function
	.size	saves_7,$-saves_7
	.align	2

#function:			saves_7
#stack frame size:		16
#link area offset:		0
#local storage area offset:	8
#gpr save area offset:		8
#
#x	r30	local
#y	r31	local

#a	r3	param
#b	r31	param

	.data
	.text
	.align	2
	.align	2
..gh.f.p.4.r.0.e.31:
	.type	..gh.f.p.4.r.0.e.31,@object
	.size	..gh.f.p.4.r.0.e.31,0
	.global	saves_8
saves_8:
	mflr	r0
	stwu	sp, -16(sp)
	stw	r31, 12(sp)
	mr	r31, r4
	stw	r30, 8(sp)
	stw	r0, 20(sp)
	bl	h
	mr	r30, r3
	mr	r3, r31
	bl	h
	mr	r31, r3
	add	r11, r30, r31
	addi	r3, r11, 8
	bl	h
	lwz	r0, 20(sp)
	mullw	r12, r30, r31
	mtlr	r0
	lwz	r30, 8(sp)
	lwz	r31, 12(sp)
	addi	sp, sp, 16
	add	r3, r12, r3
	blr
	.type	saves_8,@function
	.size	saves_8,$-saves_8
	.align	2

#function:			saves_8
#stack frame size:		16
#link area offset:		0
#local storage area offset:	8
#gpr save area offset:		8
#
#x	r30	local
#y	r31	local

#a	r3	param
#b	r31	param

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.32:
	.type	..gh.f.p.0.r.0.e.32,@object
	.size	..gh.f.p.0.r.0.e.32,0
	.global	fp_1
fp_1:
	mflr	r0
	stwu	sp, -56(sp)
	stfd	f30, 24(sp)
	ps_merge10	f30, f30, f30
	stfd	f31, 40(sp)
	ps_merge10	f31, f31, f31
	stfs	f30, 32(sp)
	fmr	f30, f1
	stfs	f31, 48(sp)
	stw	r0, 60(sp)
	addi	r3, sp, 8
	stfd	f30, 8(sp)
	bl	g
	fmr	f1, f30
	lis	r12, %hiadj(.L1051)
	lfd	f30, 8(sp)
	lfd	f31, %lo(.L1051)(r12)
	bl	d
	fmadd	f1, f30,f31, f1
	lfs	f30, 32(sp)
	lfs	f31, 48(sp)
	lfd	f30, 24(sp)
	lfd	f31, 40(sp)
	isync
	lwz	r0, 60(sp)
	mtlr	r0
	addi	sp, sp, 56
	blr
	.type	fp_1,@function
	.size	fp_1,$-fp_1
	.align	2

#function:			fp_1
#stack frame size:		56
#link area offset:		0
#local storage area offset:	8
#fpr save area offset:		24
#
#t	8(sp)	local

#a	f30	param

	.section ".rodata","a"
	.align	3
.L1051:	.type	.L1051,@object
	.size	.L1051,8
	.byte	63,248,0,0
	.byte	0,0,0,0
	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.33:
	.type	..gh.f.p.0.r.0.e.33,@object
	.size	..gh.f.p.0.r.0.e.33,0
	.global	fp_2
fp_2:
	mflr	r0
	stwu	sp, -64(sp)
	stfd	f30, 32(sp)
	ps_merge10	f30, f30, f30
	stfd	f31, 48(sp)
	ps_merge10	f31, f31, f31
	stfs	f30, 40(sp)
	fmr	f30, f1
	stfs	f31, 56(sp)
	stw	r0, 68(sp)
	addi	r3, sp, 8
	stfd	f30, 8(sp)
	bl	g
	fmr	f1, f30
	lis	r12, %hiadj(.L1083)
	lfd	f30, 8(sp)
	lfd	f31, %lo(.L1083)(r12)
	bl	d
	fmadd	f1, f30,f31, f1
	lfs	f30, 40(sp)
	lfs	f31, 56(sp)
	lfd	f30, 32(sp)
	lfd	f31, 48(sp)
	isync
	lwz	r0, 68(sp)
	mtlr	r0
	addi	sp, sp, 64
	blr
	.type	fp_2,@function
	.size	fp_2,$-fp_2
	.align	2

#function:			fp_2
#stack frame size:		64
#link area offset:		0
#local storage area offset:	8
#fpr save area offset:		32
#
#t	8(sp)	local

#a	f30	param

	.section ".rodata","a"
.L1083:	.type	.L1083,@object
	.size	.L1083,8
	.byte	64,4,0,0
	.byte	0,0,0,0
	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.34:
	.type	..gh.f.p.0.r.0.e.34,@object
	.size	..gh.f.p.0.r.0.e.34,0
	.global	fp_3
fp_3:
	mflr	r0
	stwu	sp, -72(sp)
	stfd	f30, 40(sp)
	ps_merge10	f30, f30, f30
	stfd	f31, 56(sp)
	ps_merge10	f31, f31, f31
	stfs	f30, 48(sp)
	fmr	f30, f1
	stfs	f31, 64(sp)
	stw	r0, 76(sp)
	addi	r3, sp, 8
	stfd	f30, 8(sp)
	bl	g
	fmr	f1, f30
	lis	r12, %hiadj(.L1115)
	lfd	f30, 8(sp)
	lfd	f31, %lo(.L1115)(r12)
	bl	d
	fmadd	f1, f30,f31, f1
	lfs	f30, 48(sp)
	lfs	f31, 64(sp)
	lfd	f30, 40(sp)
	lfd	f31, 56(sp)
	isync
	lwz	r0, 76(sp)
	mtlr	r0
	addi	sp, sp, 72
	blr
	.type	fp_3,@function
	.size	fp_3,$-fp_3
	.align	2

#function:			fp_3
#stack frame size:		72
#link area offset:		0
#local storage area offset:	8
#fpr save area offset:		40
#
#t	8(sp)	local

#a	f30	param

	.section ".rodata","a"
.L1115:	.type	.L1115,@object
	.size	.L1115,8
	.byte	64,12,0,0
	.byte	0,0,0,0
	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.35:
	.type	..gh.f.p.0.r.0.e.35,@object
	.size	..gh.f.p.0.r.0.e.35,0
	.global	fp_4
fp_4:
	mflr	r0
	stwu	sp, -80(sp)
	stfd	f30, 48(sp)
	ps_merge10	f30, f30, f30
	stfd	f31, 64(sp)
	ps_merge10	f31, f31, f31
	stfs	f30, 56(sp)
	fmr	f30, f1
	stfs	f31, 72(sp)
	stw	r0, 84(sp)
	addi	r3, sp, 8
	stfd	f30, 8(sp)
	bl	g
	fmr	f1, f30
	lis	r12, %hiadj(.L1147)
	lfd	f30, 8(sp)
	lfd	f31, %lo(.L1147)(r12)
	bl	d
	fmadd	f1, f30,f31, f1
	lfs	f30, 56(sp)
	lfs	f31, 72(sp)
	lfd	f30, 48(sp)
	lfd	f31, 64(sp)
	isync
	lwz	r0, 84(sp)
	mtlr	r0
	addi	sp, sp, 80
	blr
	.type	fp_4,@function
	.size	fp_4,$-fp_4
	.align	2

#function:			fp_4
#stack frame size:		80
#link area offset:		0
#local storage area offset:	8
#fpr save area offset:		48
#
#t	8(sp)	local

#a	f30	param

	.section ".rodata","a"
.L1147:	.type	.L1147,@object
	.size	.L1147,8
	.byte	64,18,0,0
	.byte	0,0,0,0
	.data
	.text
	.align	2

	.data
	.ghsnote version,8
	.ghsnote tools,3
	.ghsnote options,4
	.text
	.align	2
