# Converted from the disassembly of 0x024bc044 (124 bytes). Name is a placeholder.
    .text
    .globl Batch_024bc044
Batch_024bc044:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    lis     r12,4117
    stw     r0,20(r1)
    lwz     r12,3660(r12)
    mr      r31,r3
    lwz     r0,60(r12)
    mr      r4,r31
    addi    r3,r31,152
    stw     r0,128(r31)
    bl      ext_024814c8
    lwz     r12,168(r31)
    clrrwi  r0,r12,3
    mr      r3,r31
    rlwinm  r0,r0,0,28,23
    addi    r4,r31,104
    stw     r0,168(r31)
    bl      ext_02484db0
    addi    r4,r31,152
    mr      r3,r31
    bl      ext_02484db0
    lwz     r11,4(r31)
    lwz     r3,172(r11)
    mr      r4,r31
    bl      ext_02486154
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
