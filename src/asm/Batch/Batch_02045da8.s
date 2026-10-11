# Converted from the disassembly of 0x02045da8 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_02045da8
Batch_02045da8:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    beq-    L02045dec
    bl      ext_02041f68
    bl      ext_020427dc
    mr      r4,r30
    bl      ext_020351fc
    lwz     r0,0(r31)
    cmpwi   r0,0
    beq-    L02045dec
    lwz     r3,0(r31)
    bl      ext_02587ea8
L02045dec:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
