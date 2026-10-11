# Converted from the disassembly of 0x02031c0c (148 bytes). Name is a placeholder.
    .text
    .globl Batch_02031c0c
Batch_02031c0c:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    mr      r30,r3
    stw     r31,12(r1)
    stw     r0,20(r1)
    bl      ext_0201516c
    cmpwi   r3,0
    beq-    L02031c88
    lis     r12,4117
    lwz     r12,-3296(r12)
    lwz     r3,84(r30)
    lwz     r31,572(r12)
    bl      ext_02185c38
    lwz     r0,44(r31)
    cmplw   r3,r0
    lwz     r11,48(r31)
    bge-    L02031c5c
    mulli   r0,r3,108
    add     r11,r11,r0
L02031c5c:
    lhz     r0,10(r11)
    clrlwi  r0,r0,31
    mr      r3,r30
    stb     r0,148(r30)
    bl      ext_02030568
    lwz     r3,84(r30)
    bl      ext_02185cb4
    mr      r4,r3
    lwz     r3,60(r30)
    li      r5,0
    bl      ext_0202e7cc
L02031c88:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
