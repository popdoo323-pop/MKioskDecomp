# Converted from the disassembly of 0x02030d58 (180 bytes). Name is a placeholder.
    .text
    .globl Batch_02030d58
Batch_02030d58:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,60(r31)
    bl      ext_0202e810
    li      r6,1
    lis     r11,4117
    stb     r6,132(r31)
    lwz     r11,-3296(r11)
    lwz     r3,84(r31)
    lwz     r30,572(r11)
    bl      ext_02185c38
    lwz     r9,44(r30)
    cmplw   r3,r9
    lwz     r12,48(r30)
    bge-    L02030dac
    mulli   r0,r3,108
    add     r12,r12,r0
L02030dac:
    lhz     r9,10(r12)
    clrlwi  r0,r9,31
    mr      r3,r31
    stb     r0,148(r31)
    bl      ext_02030568
    lwz     r3,68(r31)
    bl      ext_0201ec54
    lwz     r3,64(r31)
    bl      ext_0200713c
    lwz     r5,64(r31)
    lwz     r8,80(r5)
    li      r12,1
    lbz     r11,37(r8)
    stb     r12,37(r8)
    stb     r11,38(r8)
    li      r7,0
    stb     r12,39(r8)
    stw     r7,40(r8)
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
