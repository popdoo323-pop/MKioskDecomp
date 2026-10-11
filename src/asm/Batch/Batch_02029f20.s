# Converted from the disassembly of 0x02029f20 (100 bytes). Name is a placeholder.
    .text
    .globl Batch_02029f20
Batch_02029f20:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_02398bf8
    cmpwi   r3,0
    beq-    L02029f70
    lwz     r0,308(r31)
    lwz     r12,304(r31)
    mulli   r0,r0,60
    addi    r12,r12,1
    stw     r12,304(r31)
    cmplw   r12,r0
    bne-    L02029f70
    lwz     r3,276(r31)
    lfs     f1,312(r31)
    bl      ext_02019204
    li      r0,1
    stb     r0,300(r31)
L02029f70:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
