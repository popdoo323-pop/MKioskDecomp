# Converted from the disassembly of 0x02030888 (128 bytes). Name is a placeholder.
    .text
    .globl Batch_02030888
Batch_02030888:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r30,r3
    stw     r0,20(r1)
    lwz     r3,84(r30)
    bl      ext_02185c38
    lwz     r31,72(r30)
    lbz     r11,62(r31)
    cmpwi   r11,0
    beq-    L020308f0
    lwz     r11,76(r30)
    cmpwi   r11,0
    beq-    L020308cc
    lwz     r3,44(r11)
    b       L020308f0
L020308cc:
    lwz     r3,84(r30)
    bl      ext_02185c38
    lwz     r12,44(r31)
    cmplw   r3,r12
    lwz     r12,48(r31)
    bge-    L020308ec
    mulli   r0,r3,108
    add     r12,r12,r0
L020308ec:
    lbz     r3,30(r12)
L020308f0:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
