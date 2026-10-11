# Converted from the disassembly of 0x020422f8 (216 bytes). Name is a placeholder.
    .text
    .globl Batch_020422f8
Batch_020422f8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lwz     r3,416(r31)
    bl      ext_02037de0
    mr      r4,r3
    lwz     r3,420(r31)
    bl      ext_0262e8f0
    lwz     r3,416(r31)
    bl      ext_02037de8
    mr      r4,r3
    lwz     r3,420(r31)
    bl      ext_0262e900
    lwz     r3,416(r31)
    bl      ext_02037df0
    mr      r4,r3
    lwz     r3,420(r31)
    bl      ext_0262e8f8
    lwz     r3,416(r31)
    bl      ext_02037df8
    mr      r4,r3
    lwz     r3,420(r31)
    bl      ext_0262e908
    lwz     r3,416(r31)
    bl      ext_02037e00
    mr      r4,r3
    lwz     r3,420(r31)
    bl      ext_0262e910
    lwz     r3,416(r31)
    bl      ext_02037e18
    mr      r4,r3
    lwz     r3,420(r31)
    bl      ext_0262e910
    lwz     r3,416(r31)
    bl      ext_02037e28
    mr.     r4,r3
    lwz     r3,420(r31)
    beq-    L0204239c
    addi    r4,r4,32
L0204239c:
    bl      ext_0262e910
    lwz     r3,416(r31)
    bl      ext_02037e30
    mr.     r4,r3
    lwz     r3,420(r31)
    beq-    L020423b8
    addi    r4,r4,52
L020423b8:
    bl      ext_0262e910
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
