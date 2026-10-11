# Converted from the disassembly of 0x020101d0 (96 bytes). Name is a placeholder.
    .text
    .globl Batch_020101d0
Batch_020101d0:
    mflr    r0
    li      r9,3
    stw     r0,4(r1)
    lis     r11,4096
    stwu    r1,-40(r1)
    stw     r9,8(r1)
    lwz     r12,8(r1)
    addi    r11,r11,2584
    lwz     r8,0(r4)
    addi    r7,r1,12
    lwz     r10,4(r4)
    stw     r11,32(r1)
    stw     r10,16(r1)
    mr      r4,r7
    stw     r5,24(r1)
    li      r0,1
    stw     r8,12(r1)
    stb     r0,28(r1)
    stw     r12,20(r1)
    bl      ext_0200e274
    lwz     r0,44(r1)
    mtlr    r0
    addi    r1,r1,40
    blr
