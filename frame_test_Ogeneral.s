#Driver Command: ccppc -pnone -Onoinline -gtws --unsigned_pointer --tdeh
#		-Ogeneral -S tests\compiler\frame_test.c -o frame_test_Ogeneral.s
#Source File:   tests\compiler\frame_test.c
#Directory:     C:\Users\Andrew\Desktop\MKioskDecomp
#Compile Date:  Sat Oct 10 21:39:13 2026
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
	.global	f_char20
f_char20:
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
	.type	f_char20,@function
	.size	f_char20,$-f_char20
	.align	2

#function:			f_char20
#stack frame size:		32
#link area offset:		0
#local storage area offset:	12
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.1:
	.type	..gh.f.p.0.r.0.e.1,@object
	.size	..gh.f.p.0.r.0.e.1,0
	.global	f_int5
f_int5:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -32(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 36(sp)
	lwz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 32
	blr
	.type	f_int5,@function
	.size	f_int5,$-f_int5
	.align	2

#function:			f_int5
#stack frame size:		32
#link area offset:		0
#local storage area offset:	12
#
#a	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.2:
	.type	..gh.f.p.0.r.0.e.2,@object
	.size	..gh.f.p.0.r.0.e.2,0
	.global	f_double3
f_double3:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -40(sp)
	addi	r3, sp, 16
	bl	g
	lfd	f0, 16(sp)
	fctiwz	f0, f0
	addi	r0, sp, 8
	stfiwx	f0, r0, r0
	lwz	r0, 44(sp)
	lwz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 40
	blr
	.type	f_double3,@function
	.size	f_double3,$-f_double3
	.align	2

#function:			f_double3
#stack frame size:		40
#link area offset:		0
#local storage area offset:	8
#
#d	16(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.3:
	.type	..gh.f.p.0.r.0.e.3,@object
	.size	..gh.f.p.0.r.0.e.3,0
	.global	f_char13
f_char13:
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
	.type	f_char13,@function
	.size	f_char13,$-f_char13
	.align	2

#function:			f_char13
#stack frame size:		24
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.4:
	.type	..gh.f.p.0.r.0.e.4,@object
	.size	..gh.f.p.0.r.0.e.4,0
	.global	f_int11
f_int11:
	mflr	r0
	stw	r0, 4(sp)
	stwu	sp, -56(sp)
	addi	r3, sp, 8
	bl	g
	lwz	r0, 60(sp)
	lwz	r3, 8(sp)
	mtlr	r0
	addi	sp, sp, 56
	blr
	.type	f_int11,@function
	.size	f_int11,$-f_int11
	.align	2

#function:			f_int11
#stack frame size:		56
#link area offset:		0
#local storage area offset:	12
#
#a	8(sp)	local

	.data
	.text
	.align	2
	.align	2
..gh.f.p.0.r.0.e.5:
	.type	..gh.f.p.0.r.0.e.5,@object
	.size	..gh.f.p.0.r.0.e.5,0
	.global	f_char40
f_char40:
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
	.type	f_char40,@function
	.size	f_char40,$-f_char40
	.align	2

#function:			f_char40
#stack frame size:		48
#link area offset:		0
#local storage area offset:	8
#
#b	8(sp)	local

	.data
	.text
	.align	2

	.data
	.ghsnote version,8
	.ghsnote tools,3
	.ghsnote options,4
	.text
	.align	2
