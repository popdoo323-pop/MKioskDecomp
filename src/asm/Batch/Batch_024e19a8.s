# Converted from the disassembly of 0x024e19a8 (248 bytes). Name is a placeholder.
    .text
    .globl Batch_024e19a8
Batch_024e19a8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r10,268(r31)
    cmpwi   r10,1
    bne-    L024e19ec
    lbz     r12,280(r31)
    cmpwi   r12,0
    beq-    L024e19ec
    lwz     r4,276(r31)
    li      r5,0
    lwz     r3,200(r31)
    stb     r5,280(r31)
    bl      ext_02480664
    lwz     r10,268(r31)
L024e19ec:
    cmpwi   r10,2
    beq-    L024e19fc
    cmpwi   r10,3
    bne-    L024e1a74
L024e19fc:
    lwz     r0,76(r31)
    cmpwi   r0,3
    beq-    L024e1a14
    lwz     r0,76(r31)
    cmpwi   r0,4
    bne-    L024e1a8c
L024e1a14:
    lis     r10,-30583
    lwz     r12,272(r31)
    addi    r10,r10,-30583
    mulhw   r0,r10,r12
    add     r0,r12,r0
    srawi   r11,r12,31
    srawi   r0,r0,6
    subf    r0,r11,r0
    mulli   r0,r0,120
    subf.   r11,r0,r12
    bne-    L024e1a58
    lis     r10,4107
    lis     r3,4107
    lfs     f1,-11900(r10)
    addi    r3,r3,-11896
    bl      ext_02045eec
    lwz     r12,272(r31)
L024e1a58:
    addi    r0,r12,1
    stw     r0,272(r31)
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L024e1a74:
    lwz     r12,76(r31)
    cmpwi   r12,4
    bne-    L024e1a8c
    lis     r3,4107
    addi    r3,r3,-11868
    bl      ext_02045ffc
L024e1a8c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
