	.file	"frame_test_large.c"
	.machine ppc
	.section	".text"
	.align 2
	.globl leaf_1
	.type	leaf_1, @function
leaf_1:
.LFB0:
	.cfi_startproc
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	mflr 0
	addi 3,1,8
	stw 0,28(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,28(1)
	lbz 3,8(1)
	addi 1,1,24
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE0:
	.size	leaf_1, .-leaf_1
	.align 2
	.globl leaf_2
	.type	leaf_2, @function
leaf_2:
.LFB1:
	.cfi_startproc
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	mflr 0
	addi 3,1,8
	stw 0,28(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,28(1)
	lbz 3,8(1)
	addi 1,1,24
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE1:
	.size	leaf_2, .-leaf_2
	.align 2
	.globl leaf_3
	.type	leaf_3, @function
leaf_3:
.LFB2:
	.cfi_startproc
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	mflr 0
	addi 3,1,8
	stw 0,28(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,28(1)
	lbz 3,8(1)
	addi 1,1,24
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE2:
	.size	leaf_3, .-leaf_3
	.align 2
	.globl leaf_4
	.type	leaf_4, @function
leaf_4:
.LFB3:
	.cfi_startproc
	stwu 1,-40(1)
	.cfi_def_cfa_offset 40
	mflr 0
	addi 3,1,8
	stw 0,44(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,44(1)
	lbz 3,8(1)
	addi 1,1,40
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE3:
	.size	leaf_4, .-leaf_4
	.align 2
	.globl leaf_5
	.type	leaf_5, @function
leaf_5:
.LFB4:
	.cfi_startproc
	stwu 1,-40(1)
	.cfi_def_cfa_offset 40
	mflr 0
	addi 3,1,8
	stw 0,44(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,44(1)
	lbz 3,8(1)
	addi 1,1,40
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE4:
	.size	leaf_5, .-leaf_5
	.align 2
	.globl leaf_6
	.type	leaf_6, @function
leaf_6:
.LFB5:
	.cfi_startproc
	stwu 1,-40(1)
	.cfi_def_cfa_offset 40
	mflr 0
	addi 3,1,8
	stw 0,44(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,44(1)
	lbz 3,8(1)
	addi 1,1,40
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE5:
	.size	leaf_6, .-leaf_6
	.align 2
	.globl leaf_7
	.type	leaf_7, @function
leaf_7:
.LFB6:
	.cfi_startproc
	stwu 1,-40(1)
	.cfi_def_cfa_offset 40
	mflr 0
	addi 3,1,8
	stw 0,44(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,44(1)
	lbz 3,8(1)
	addi 1,1,40
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE6:
	.size	leaf_7, .-leaf_7
	.align 2
	.globl leaf_8
	.type	leaf_8, @function
leaf_8:
.LFB7:
	.cfi_startproc
	stwu 1,-56(1)
	.cfi_def_cfa_offset 56
	mflr 0
	addi 3,1,8
	stw 0,60(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,60(1)
	lbz 3,8(1)
	addi 1,1,56
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE7:
	.size	leaf_8, .-leaf_8
	.align 2
	.globl leaf_9
	.type	leaf_9, @function
leaf_9:
.LFB8:
	.cfi_startproc
	stwu 1,-56(1)
	.cfi_def_cfa_offset 56
	mflr 0
	addi 3,1,8
	stw 0,60(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,60(1)
	lbz 3,8(1)
	addi 1,1,56
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE8:
	.size	leaf_9, .-leaf_9
	.align 2
	.globl leaf_10
	.type	leaf_10, @function
leaf_10:
.LFB9:
	.cfi_startproc
	stwu 1,-56(1)
	.cfi_def_cfa_offset 56
	mflr 0
	addi 3,1,8
	stw 0,60(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,60(1)
	lbz 3,8(1)
	addi 1,1,56
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE9:
	.size	leaf_10, .-leaf_10
	.align 2
	.globl leaf_11
	.type	leaf_11, @function
leaf_11:
.LFB10:
	.cfi_startproc
	stwu 1,-56(1)
	.cfi_def_cfa_offset 56
	mflr 0
	addi 3,1,8
	stw 0,60(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,60(1)
	lbz 3,8(1)
	addi 1,1,56
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE10:
	.size	leaf_11, .-leaf_11
	.align 2
	.globl leaf_12
	.type	leaf_12, @function
leaf_12:
.LFB11:
	.cfi_startproc
	stwu 1,-72(1)
	.cfi_def_cfa_offset 72
	mflr 0
	addi 3,1,8
	stw 0,76(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,76(1)
	lbz 3,8(1)
	addi 1,1,72
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE11:
	.size	leaf_12, .-leaf_12
	.align 2
	.globl leaf_13
	.type	leaf_13, @function
leaf_13:
.LFB12:
	.cfi_startproc
	stwu 1,-72(1)
	.cfi_def_cfa_offset 72
	mflr 0
	addi 3,1,8
	stw 0,76(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,76(1)
	lbz 3,8(1)
	addi 1,1,72
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE12:
	.size	leaf_13, .-leaf_13
	.align 2
	.globl leaf_14
	.type	leaf_14, @function
leaf_14:
.LFB13:
	.cfi_startproc
	stwu 1,-72(1)
	.cfi_def_cfa_offset 72
	mflr 0
	addi 3,1,8
	stw 0,76(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,76(1)
	lbz 3,8(1)
	addi 1,1,72
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE13:
	.size	leaf_14, .-leaf_14
	.align 2
	.globl leaf_15
	.type	leaf_15, @function
leaf_15:
.LFB14:
	.cfi_startproc
	stwu 1,-72(1)
	.cfi_def_cfa_offset 72
	mflr 0
	addi 3,1,8
	stw 0,76(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,76(1)
	lbz 3,8(1)
	addi 1,1,72
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE14:
	.size	leaf_15, .-leaf_15
	.align 2
	.globl leaf_16
	.type	leaf_16, @function
leaf_16:
.LFB15:
	.cfi_startproc
	stwu 1,-88(1)
	.cfi_def_cfa_offset 88
	mflr 0
	addi 3,1,8
	stw 0,92(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,92(1)
	lbz 3,8(1)
	addi 1,1,88
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE15:
	.size	leaf_16, .-leaf_16
	.align 2
	.globl leaf_17
	.type	leaf_17, @function
leaf_17:
.LFB16:
	.cfi_startproc
	stwu 1,-88(1)
	.cfi_def_cfa_offset 88
	mflr 0
	addi 3,1,8
	stw 0,92(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,92(1)
	lbz 3,8(1)
	addi 1,1,88
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE16:
	.size	leaf_17, .-leaf_17
	.align 2
	.globl leaf_18
	.type	leaf_18, @function
leaf_18:
.LFB17:
	.cfi_startproc
	stwu 1,-88(1)
	.cfi_def_cfa_offset 88
	mflr 0
	addi 3,1,8
	stw 0,92(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,92(1)
	lbz 3,8(1)
	addi 1,1,88
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE17:
	.size	leaf_18, .-leaf_18
	.align 2
	.globl leaf_19
	.type	leaf_19, @function
leaf_19:
.LFB18:
	.cfi_startproc
	stwu 1,-88(1)
	.cfi_def_cfa_offset 88
	mflr 0
	addi 3,1,8
	stw 0,92(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,92(1)
	lbz 3,8(1)
	addi 1,1,88
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE18:
	.size	leaf_19, .-leaf_19
	.align 2
	.globl leaf_20
	.type	leaf_20, @function
leaf_20:
.LFB19:
	.cfi_startproc
	stwu 1,-104(1)
	.cfi_def_cfa_offset 104
	mflr 0
	addi 3,1,8
	stw 0,108(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,108(1)
	lbz 3,8(1)
	addi 1,1,104
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE19:
	.size	leaf_20, .-leaf_20
	.align 2
	.globl leaf_21
	.type	leaf_21, @function
leaf_21:
.LFB20:
	.cfi_startproc
	stwu 1,-104(1)
	.cfi_def_cfa_offset 104
	mflr 0
	addi 3,1,8
	stw 0,108(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,108(1)
	lbz 3,8(1)
	addi 1,1,104
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE20:
	.size	leaf_21, .-leaf_21
	.align 2
	.globl leaf_22
	.type	leaf_22, @function
leaf_22:
.LFB21:
	.cfi_startproc
	stwu 1,-104(1)
	.cfi_def_cfa_offset 104
	mflr 0
	addi 3,1,8
	stw 0,108(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,108(1)
	lbz 3,8(1)
	addi 1,1,104
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE21:
	.size	leaf_22, .-leaf_22
	.align 2
	.globl leaf_23
	.type	leaf_23, @function
leaf_23:
.LFB22:
	.cfi_startproc
	stwu 1,-104(1)
	.cfi_def_cfa_offset 104
	mflr 0
	addi 3,1,8
	stw 0,108(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,108(1)
	lbz 3,8(1)
	addi 1,1,104
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE22:
	.size	leaf_23, .-leaf_23
	.align 2
	.globl leaf_24
	.type	leaf_24, @function
leaf_24:
.LFB23:
	.cfi_startproc
	stwu 1,-120(1)
	.cfi_def_cfa_offset 120
	mflr 0
	addi 3,1,8
	stw 0,124(1)
	.cfi_offset 65, 4
	bl g
	lwz 0,124(1)
	lbz 3,8(1)
	addi 1,1,120
	.cfi_def_cfa_offset 0
	mtlr 0
	.cfi_restore 65
	blr
	.cfi_endproc
.LFE23:
	.size	leaf_24, .-leaf_24
	.align 2
	.globl saves_1
	.type	saves_1, @function
saves_1:
.LFB24:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 30,8(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	mr 30,4
	stw 31,12(1)
	.cfi_offset 31, -4
	bl h
	mr 31,3
	mr 3,30
	bl h
	mr 30,3
	add 3,31,3
	mullw 31,31,30
	addi 3,3,1
	bl h
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	.cfi_restore 65
	add 3,31,3
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE24:
	.size	saves_1, .-saves_1
	.align 2
	.globl saves_2
	.type	saves_2, @function
saves_2:
.LFB25:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 30,8(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	mr 30,4
	stw 31,12(1)
	.cfi_offset 31, -4
	bl h
	mr 31,3
	mr 3,30
	bl h
	mr 30,3
	add 3,31,3
	mullw 31,31,30
	addi 3,3,2
	bl h
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	.cfi_restore 65
	add 3,31,3
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE25:
	.size	saves_2, .-saves_2
	.align 2
	.globl saves_3
	.type	saves_3, @function
saves_3:
.LFB26:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 30,8(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	mr 30,4
	stw 31,12(1)
	.cfi_offset 31, -4
	bl h
	mr 31,3
	mr 3,30
	bl h
	mr 30,3
	add 3,31,3
	mullw 31,31,30
	addi 3,3,3
	bl h
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	.cfi_restore 65
	add 3,31,3
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE26:
	.size	saves_3, .-saves_3
	.align 2
	.globl saves_4
	.type	saves_4, @function
saves_4:
.LFB27:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 30,8(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	mr 30,4
	stw 31,12(1)
	.cfi_offset 31, -4
	bl h
	mr 31,3
	mr 3,30
	bl h
	mr 30,3
	add 3,31,3
	mullw 31,31,30
	addi 3,3,4
	bl h
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	.cfi_restore 65
	add 3,31,3
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE27:
	.size	saves_4, .-saves_4
	.align 2
	.globl saves_5
	.type	saves_5, @function
saves_5:
.LFB28:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 30,8(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	mr 30,4
	stw 31,12(1)
	.cfi_offset 31, -4
	bl h
	mr 31,3
	mr 3,30
	bl h
	mr 30,3
	add 3,31,3
	mullw 31,31,30
	addi 3,3,5
	bl h
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	.cfi_restore 65
	add 3,31,3
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE28:
	.size	saves_5, .-saves_5
	.align 2
	.globl saves_6
	.type	saves_6, @function
saves_6:
.LFB29:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 30,8(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	mr 30,4
	stw 31,12(1)
	.cfi_offset 31, -4
	bl h
	mr 31,3
	mr 3,30
	bl h
	mr 30,3
	add 3,31,3
	mullw 31,31,30
	addi 3,3,6
	bl h
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	.cfi_restore 65
	add 3,31,3
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE29:
	.size	saves_6, .-saves_6
	.align 2
	.globl saves_7
	.type	saves_7, @function
saves_7:
.LFB30:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 30,8(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	mr 30,4
	stw 31,12(1)
	.cfi_offset 31, -4
	bl h
	mr 31,3
	mr 3,30
	bl h
	mr 30,3
	add 3,31,3
	mullw 31,31,30
	addi 3,3,7
	bl h
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	.cfi_restore 65
	add 3,31,3
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE30:
	.size	saves_7, .-saves_7
	.align 2
	.globl saves_8
	.type	saves_8, @function
saves_8:
.LFB31:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stw 30,8(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	mr 30,4
	stw 31,12(1)
	.cfi_offset 31, -4
	bl h
	mr 31,3
	mr 3,30
	bl h
	mr 30,3
	add 3,31,3
	mullw 31,31,30
	addi 3,3,8
	bl h
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	.cfi_restore 65
	add 3,31,3
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 31
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE31:
	.size	saves_8, .-saves_8
	.align 2
	.globl fp_1
	.type	fp_1, @function
fp_1:
.LFB32:
	.cfi_startproc
	stwu 1,-32(1)
	.cfi_def_cfa_offset 32
	mflr 0
	stfd 31,24(1)
	.cfi_register 65, 0
	.cfi_offset 63, -8
	fmr 31,1
	addi 3,1,8
	stw 0,36(1)
	.cfi_offset 65, 4
	stfd 1,8(1)
	bl g
	fmr 1,31
	lfd 31,8(1)
	bl d
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	lwz 0,36(1)
	fmadd 1,31,0,1
	lfd 31,24(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,32
	.cfi_restore 63
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE32:
	.size	fp_1, .-fp_1
	.align 2
	.globl fp_2
	.type	fp_2, @function
fp_2:
.LFB33:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stfd 31,40(1)
	.cfi_register 65, 0
	.cfi_offset 63, -8
	fmr 31,1
	addi 3,1,8
	stw 0,52(1)
	.cfi_offset 65, 4
	stfd 1,8(1)
	bl g
	fmr 1,31
	lfd 31,8(1)
	bl d
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	lwz 0,52(1)
	fmadd 1,31,0,1
	lfd 31,40(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,48
	.cfi_restore 63
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE33:
	.size	fp_2, .-fp_2
	.align 2
	.globl fp_3
	.type	fp_3, @function
fp_3:
.LFB34:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	mflr 0
	stfd 31,40(1)
	.cfi_register 65, 0
	.cfi_offset 63, -8
	fmr 31,1
	addi 3,1,8
	stw 0,52(1)
	.cfi_offset 65, 4
	stfd 1,8(1)
	bl g
	fmr 1,31
	lfd 31,8(1)
	bl d
	lis 9,.LC7@ha
	lfs 0,.LC7@l(9)
	lwz 0,52(1)
	fmadd 1,31,0,1
	lfd 31,40(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,48
	.cfi_restore 63
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE34:
	.size	fp_3, .-fp_3
	.align 2
	.globl fp_4
	.type	fp_4, @function
fp_4:
.LFB35:
	.cfi_startproc
	stwu 1,-64(1)
	.cfi_def_cfa_offset 64
	mflr 0
	stfd 31,56(1)
	.cfi_register 65, 0
	.cfi_offset 63, -8
	fmr 31,1
	addi 3,1,8
	stw 0,68(1)
	.cfi_offset 65, 4
	stfd 1,8(1)
	bl g
	fmr 1,31
	lfd 31,8(1)
	bl d
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	lwz 0,68(1)
	fmadd 1,31,0,1
	lfd 31,56(1)
	mtlr 0
	.cfi_restore 65
	addi 1,1,64
	.cfi_restore 63
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE35:
	.size	fp_4, .-fp_4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.long	1069547520
	.align 2
.LC4:
	.long	1075838976
	.align 2
.LC7:
	.long	1080033280
	.align 2
.LC10:
	.long	1083179008
	.ident	"GCC: (devkitPPC) 16.1.0"
	.gnu_attribute 4, 9
