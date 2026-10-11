# Converted from the disassembly of 0x024c551c (104 bytes). Name is a placeholder.
    .text
    .globl Batch_024c551c
Batch_024c551c:
    mflr    r0
    stw     r0,4(r1)
    stwu    r1,-16(r1)
    lwz     r12,32(r3)
    lwz     r3,0(r12)
    li      r4,1
    bl      ext_0247fc68
    lis     r12,4107
    lfs     f0,-24272(r12)
    fcmpu   cr0,f1,f0
    bge-    L024c555c
    fctiwz  f0,f1
    addi    r0,r1,8
    stfiwx  f0,0,r0
    lwz     r3,8(r1)
    b       L024c5574
L024c555c:
    fsubs   f0,f1,f0
    fctiwz  f0,f0
    addi    r0,r1,8
    stfiwx  f0,0,r0
    lwz     r12,8(r1)
    addis   r3,r12,-32768
L024c5574:
    lwz     r0,20(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
