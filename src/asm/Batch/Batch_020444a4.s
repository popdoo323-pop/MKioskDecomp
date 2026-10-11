# Converted from the disassembly of 0x020444a4 (136 bytes). Name is a placeholder.
    .text
    .globl Batch_020444a4
Batch_020444a4:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r30,8(r1)
    stw     r31,12(r1)
    mr      r31,r3
    mr      r30,r4
    stw     r0,20(r1)
    bl      ext_020440a8
    cmpwi   r3,0
    beq-    L02044514
    lis     r12,4096
    lfs     f1,8(r31)
    lfs     f0,22492(r12)
    fcmpu   cr0,f1,f0
    ble-    L020444fc
    lwz     r0,0(r30)
    cmpwi   r0,0
    beq-    L02044500
    lwz     r3,0(r30)
    li      r4,33
    bl      ext_02587e90
    lfs     f1,8(r31)
L020444fc:
    lwz     r0,0(r30)
L02044500:
    cmpwi   r0,0
    beq-    L02044514
    lwz     r3,0(r30)
    li      r4,1
    bl      ext_02588170
L02044514:
    lwz     r0,20(r1)
    lwz     r30,8(r1)
    mtlr    r0
    lwz     r31,12(r1)
    addi    r1,r1,16
    blr
