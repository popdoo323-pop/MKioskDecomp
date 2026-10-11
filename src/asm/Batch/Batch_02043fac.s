# Converted from the disassembly of 0x02043fac (100 bytes). Name is a placeholder.
    .text
    .globl Batch_02043fac
Batch_02043fac:
    mflr    r0
    stw     r0,4(r1)
    lis     r12,4121
    stwu    r1,-24(r1)
    lwz     r12,30556(r12)
    lwz     r11,0(r12)
    lwz     r0,308(r11)
    rlwinm. r0,r0,0,29,29
    bne-    L02043fe8
    li      r0,8
    li      r3,200
    addi    r4,r1,8
    stw     r0,8(r1)
    bl      ext_02426090
    b       L02044000
L02043fe8:
    lwz     r12,0(r12)
    li      r0,8
    addi    r4,r1,8
    addi    r3,r12,200
    stw     r0,8(r1)
    bl      ext_02426090
L02044000:
    lwz     r0,28(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
