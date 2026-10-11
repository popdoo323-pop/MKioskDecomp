# Converted from the disassembly of 0x02006610 (344 bytes). Name is a placeholder.
    .text
    .globl Batch_02006610
Batch_02006610:
    stwu    r1,-32(r1)
    lfs     f8,0(r4)
    stfs    f8,12(r3)
    lfs     f12,4(r4)
    stfs    f12,16(r3)
    lfs     f11,8(r4)
    stfs    f11,20(r3)
    psq_l   f13,0(r5),0,0
    lis     r8,4096
    psq_l   f12,12(r3),0,0
    lfs     f10,1908(r8)
    ps_sub  f0,f12,f13
    lfs     f8,8(r5)
    psq_st  f0,20(r1),0,0
    lwz     r9,20(r1)
    fsubs   f0,f11,f8
    stw     r9,8(r1)
    lfs     f12,8(r1)
    lwz     r10,24(r1)
    fmr     f9,f12
    stfs    f0,28(r1)
    lwz     r0,28(r1)
    fcmpu   cr0,f10,f9
    stw     r0,16(r1)
    stw     r10,12(r1)
    bgt-    L02006688
    lis     r12,4096
    lfs     f11,1912(r12)
    fcmpu   cr0,f9,f11
    ble-    L02006694
L02006688:
    lfs     f7,12(r1)
    lfs     f9,16(r1)
    b       L020066f4
L02006694:
    lfs     f7,12(r1)
    fmr     f13,f7
    fcmpu   cr0,f10,f13
    bgt-    L020066f0
    fcmpu   cr0,f13,f11
    bgt-    L020066f0
    lfs     f9,16(r1)
    fmr     f8,f9
    fcmpu   cr0,f10,f8
    bgt-    L020066f4
    fcmpu   cr0,f8,f11
    bgt-    L020066f4
    lis     r10,4124
    lis     r12,4096
    addi    r10,r10,26780
    lfs     f1,1916(r12)
    lfs     f12,0(r10)
    lfs     f9,8(r10)
    lfs     f7,4(r10)
    stfs    f9,32(r3)
    stfs    f12,24(r3)
    stfs    f7,28(r3)
    b       L02006760
L020066f0:
    lfs     f9,16(r1)
L020066f4:
    fmuls   f0,f7,f7
    fmadds  f8,f12,f12,f0
    lis     r9,4096
    fmadds  f1,f9,f9,f8
    lfs     f0,1920(r9)
    fcmpu   cr0,f1,f0
    ble-    L02006754
    lis     r8,4096
    lis     r7,4096
    lfs     f13,1928(r8)
    lfs     f12,1924(r7)
    frsqrte f9,f1
    fmuls   f10,f9,f9
    fmuls   f11,f9,f12
    fnmsubs f10,f10,f1,f13
    fmuls   f9,f10,f11
    psq_l   f8,8(r1),0,0
    fmuls   f1,f1,f9
    lfs     f10,16(r1)
    ps_muls0 f11,f8,f9
    psq_st  f11,8(r1),0,0
    lfs     f12,8(r1)
    fmuls   f9,f10,f9
    lfs     f7,12(r1)
L02006754:
    stfs    f12,24(r3)
    stfs    f7,28(r3)
    stfs    f9,32(r3)
L02006760:
    addi    r1,r1,32
    blr
