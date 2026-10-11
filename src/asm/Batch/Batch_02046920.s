# Converted from the disassembly of 0x02046920 (520 bytes). Name is a placeholder.
    .text
    .globl Batch_02046920
Batch_02046920:
    mflr    r0
    stwu    r1,-24(r1)
    stw     r31,20(r1)
    mr      r31,r3
    stw     r0,28(r1)
    lbz     r10,16(r31)
    cmpwi   r10,0
    beq-    L02046b14
    lfs     f0,4(r31)
    lis     r11,4096
    lfs     f9,8(r31)
    lfs     f12,23484(r11)
    lis     r10,4096
    fadds   f9,f9,f0
    lwz     r0,20(r31)
    lis     r12,4096
    lfs     f11,23488(r10)
    cmplwi  r0,2
    stfs    f9,8(r31)
    lfs     f13,23480(r12)
    bge-    L02046980
    cmplwi  r0,1
    blt-    L020469a8
    beq-    L02046a10
L02046980:
    cmplwi  r0,3
    blt-    L02046a80
    beq-    L02046ab0
    cmplwi  r0,4
    beq-    L02046ae4
    lis     r12,4096
    lfs     f12,23520(r12)
    fcmpu   cr0,f9,f12
    ble-    L02046b14
    b       L02046b04
L020469a8:
    lis     r10,4096
    lfs     f0,23492(r10)
    fmuls   f1,f9,f0
    bl      ext_0293404c
    lis     r0,17200
    clrlwi  r9,r4,8
    stw     r0,8(r1)
    lis     r12,4096
    stw     r9,12(r1)
    lfd     f13,8(r1)
    lis     r9,4109
    lfd     f0,23496(r12)
    rlwinm  r0,r4,12,20,27
    addi    r9,r9,-10608
    fsub    f11,f13,f0
    add     r10,r9,r0
    lfs     f0,4(r10)
    frsp    f12,f11
    lfsx    f11,r9,r0
    lis     r12,4096
    fmuls   f12,f0,f12
    lfs     f13,23504(r12)
    fmadds  f11,f12,f13,f11
    lfs     f9,8(r31)
    stfs    f11,0(r31)
    b       L02046af4
L02046a10:
    lis     r9,4096
    lfs     f0,23508(r9)
    fcmpu   cr0,f9,f0
    bge-    L02046a30
    fdivs   f11,f9,f0
    lfs     f9,8(r31)
    stfs    f11,0(r31)
    b       L02046af4
L02046a30:
    lis     r10,4096
    lfs     f10,23512(r10)
    fcmpu   cr0,f9,f10
    bge-    L02046a60
    fsubs   f12,f9,f0
    lis     r11,4096
    fdivs   f0,f12,f13
    lfs     f12,23516(r11)
    fmadds  f11,f12,f0,f11
    lfs     f9,8(r31)
    stfs    f11,0(r31)
    b       L02046af4
L02046a60:
    lis     r11,4096
    lfs     f13,23512(r11)
    fsubs   f13,f9,f13
    fdivs   f0,f13,f0
    fadds   f11,f12,f0
    lfs     f9,8(r31)
    stfs    f11,0(r31)
    b       L02046af4
L02046a80:
    fcmpu   cr0,f9,f13
    bge-    L02046a98
    fdivs   f11,f9,f13
    lfs     f9,8(r31)
    stfs    f11,0(r31)
    b       L02046af4
L02046a98:
    fsubs   f11,f9,f13
    fdivs   f11,f11,f13
    fadds   f11,f12,f11
    lfs     f9,8(r31)
    stfs    f11,0(r31)
    b       L02046af4
L02046ab0:
    fcmpu   cr0,f9,f13
    bge-    L02046acc
    fdivs   f13,f9,f13
    fneg    f11,f13
    lfs     f9,8(r31)
    stfs    f11,0(r31)
    b       L02046af4
L02046acc:
    fsubs   f0,f9,f13
    fdivs   f12,f0,f13
    fsubs   f11,f11,f12
    lfs     f9,8(r31)
    stfs    f11,0(r31)
    b       L02046af4
L02046ae4:
    lfs     f9,8(r31)
    fsubs   f13,f9,f13
    fsel    f11,f13,f12,f11
    stfs    f11,0(r31)
L02046af4:
    lis     r12,4096
    lfs     f12,23520(r12)
    fcmpu   cr0,f9,f12
    ble-    L02046b14
L02046b04:
    lis     r9,4096
    lfs     f0,23520(r9)
    fsubs   f11,f9,f0
    stfs    f11,8(r31)
L02046b14:
    lwz     r0,28(r1)
    lwz     r31,20(r1)
    mtlr    r0
    addi    r1,r1,24
    blr
