# Rail path builder at 0x02109198 (348 bytes). Reads the path's control values through the string-table entries at
# 0x10013a1c and 0x10013a10 (via 0x0254a9ac and 0x0254a90c), reads the point count and the first-point record (+0x20 and
# +0x24 in the path object), then loops over the points, calling each point's virtual slot +0x14 and the path's slot
# +0x14 to fetch the next point's value, and linking each point with RailPoint::LinkNext (0x021090a8). External calls
# are supplied as symbols. Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl RailPath_Build_02109198
RailPath_Build_02109198:
    mflr    r0
    stwu    r1, -32(r1)
    stw     r31, 28(r1)
    stw     r30, 24(r1)
    stw     r28, 16(r1)
    or      r31, r4, r4
    or      r30, r3, r3
    stw     r29, 20(r1)
    stw     r0, 36(r1)
    bl      ext_020fbbd8
    lis     r5, 0x1001
    addi    r4, r30, 44
    or      r3, r31, r31
    addi    r5, r5, 14304
    bl      ext_0254a9ac
    lis     r5, 0x1001
    addi    r4, r30, 32
    or      r3, r31, r31
    addi    r5, r5, 14288
    bl      ext_0254a90c
    li      r0, 0x0
    lis     r6, 0x1001
    addi    r5, r1, 12
    addi    r4, r1, 8
    addi    r6, r6, 14296
    stw     r0, 8(r1)
    or      r3, r31, r31
    bl      ext_0254a854
    lwz     r6, 32(r30)
    lhz     r8, 4(r30)
    cmpwi   r6, 0x0
    lwz     r0, 8(r1)
    ble     L22c
    cmpwi   r0, 0x0
    beq     L22c
    stw     r0, 40(r30)
    stw     r6, 36(r30)
L22c:
    li      r29, 0x0
    cmpw    r29, r8
    bge     L2d4
    li      r28, 0x1
L23c:
    addi    r0, r8, -1
    cmplw   r29, r0
    beq     L29c
    lwz     r10, 28(r30)
    lwz     r0, 20(r10)
    mtctr   r0
    or      r3, r30, r30
    rlwinm  r4, r28, 0, 16, 31
    bctrl
    lwz     r12, 28(r30)
    lwz     r12, 20(r12)
    lhz     r31, 98(r3)
    mtctr   r12
    or      r3, r30, r30
    rlwinm  r4, r29, 0, 16, 31
    bctrl
    or      r4, r31, r31
    bl      ext_021090a8
    lhz     r8, 4(r30)
    addi    r29, r29, 0x1
    cmpw    r29, r8
    addi    r28, r28, 0x1
    blt     L23c
    b       L2d4
L29c:
    lwz     r12, 28(r30)
    lwz     r12, 20(r12)
    mtctr   r12
    lhz     r31, 34(r30)
    rlwinm  r4, r29, 0, 16, 31
    or      r3, r30, r30
    bctrl
    or      r4, r31, r31
    bl      ext_021090a8
    lhz     r8, 4(r30)
    addi    r29, r29, 0x1
    cmpw    r29, r8
    addi    r28, r28, 0x1
    blt     L23c
L2d4:
    lwz     r28, 16(r1)
    lwz     r29, 20(r1)
    lwz     r0, 36(r1)
    lwz     r30, 24(r1)
    mtlr    r0
    lwz     r31, 28(r1)
    addi    r1, r1, 32
    blr
