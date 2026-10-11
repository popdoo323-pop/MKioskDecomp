# Converted from the disassembly of 0x020249b0 (148 bytes). Name is a placeholder.
    .text
    .globl Batch_020249b0
Batch_020249b0:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r0,20(r1)
    stb     r4,27(r3)
    mr      r31,r3
    stb     r5,28(r3)
    bl      ext_020218b8
    lhz     r0,20(r31)
    cmpwi   r0,0
    beq-    L02024a30
    mr      r3,r31
    bl      ext_020219a8
    bl      ext_020fe098
    cmpwi   r3,0
    mr      r3,r31
    beq-    L02024a24
    bl      ext_02021d5c
    mr      r3,r31
    bl      ext_020229a0
    mr      r3,r31
    bl      ext_0202433c
    mr      r3,r31
    bl      ext_020248c4
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
L02024a24:
    bl      ext_020229a0
    mr      r3,r31
    bl      ext_0202433c
L02024a30:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
