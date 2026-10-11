# Converted from the disassembly of 0x020351fc (92 bytes). Name is a placeholder.
    .text
    .globl Batch_020351fc
Batch_020351fc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020350f0
    cmplwi  r3,4
    bge-    L0203523c
    mulli   r0,r3,280
    add     r11,r31,r0
    lwz     r0,20(r1)
    lfs     f1,296(r11)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
L0203523c:
    lwz     r0,20(r1)
    lis     r12,4096
    lwz     r31,12(r1)
    mtlr    r0
    lfs     f1,16660(r12)
    addi    r1,r1,16
    blr
