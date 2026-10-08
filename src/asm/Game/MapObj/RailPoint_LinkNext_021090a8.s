# Rail point segment link at 0x021090a8 (96 bytes). Stores the next value at this+0x64, then sets this+0x68 to
# 1 / (next - base) as a float, or 0 when the two are equal. Written from the disassembly of the original bytes.
# Name is a placeholder. Matches the behaviour of RailPoint::LinkNext in src/Game/MapObj/RailPoint.cpp.
    .text
    .globl RailPoint_LinkNext_021090a8
RailPoint_LinkNext_021090a8:
    stwu    r1, -0x18(r1)
    lwz     r10, 0x60(r3)
    subf.   r0, r10, r4
    stw     r4, 0x64(r3)
    bne     1f
    lis     r12, 0x1001
    lfs     f0, 0x37c0(r12)
    stfs    f0, 0x68(r3)
    b       2f
1:
    lis     r10, 0x1001
    xoris   r0, r0, 0x8000
    lfd     f0, 0x37c8(r10)
    lis     r11, 0x4330
    stw     r0, 0xc(r1)
    stw     r11, 0x8(r1)
    lfd     f13, 0x8(r1)
    fsub    f13, f13, f0
    lis     r12, 0x1001
    frsp    f0, f13
    lfs     f13, 0x37c4(r12)
    fdivs   f0, f13, f0
    stfs    f0, 0x68(r3)
2:
    addi    r1, r1, 0x18
    blr
