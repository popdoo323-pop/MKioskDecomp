# Converted from the disassembly of 0x02027d30 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_02027d30
Batch_02027d30:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L02027d58
    li      r3,60
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L02027d6c
L02027d58:
    mr      r3,r31
    bl      ext_020271d0
    lis     r0,4096
    addic   r0,r0,11244
    stw     r0,0(r31)
L02027d6c:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
