# Wheel callback at 0x021a7bb4 (200 bytes). Takes a float in f1. If the object at +28 is set, runs its virtual slot chosen
# by the halfword at +10 (through the table at +12 or the offset at +8/+14), and repeats the same lookup after the call;
# when the object's field at +4 equals 2, returns. Otherwise calls 0x021af5c0 with the float and the sub-object at +4, then
# 0x02030b24 with the sub-object at +12. Written from the disassembly of the original bytes. Name is a placeholder.
# Kart-related: wheel behaviour. The boundary here is 200 bytes; the 32 bytes after it are a separate function.
    .text
    .globl Wheel_Callback_021a7bb4
Wheel_Callback_021a7bb4:
    mflr    r0
    stwu    r1, -32(r1)
    stfd    f31, 16(r1)
    ps_merge10 31, 31, 31
    stw     r31, 12(r1)
    stfs    f31, 24(r1)
    or      r31, r3, r3
    stw     r0, 36(r1)
    lwz     r12, 28(r31)
    cmpwi   r12, 0x0
    fmr     f31, f1
    beq     L48
    lha     r0, 10(r12)
    lha     r7, 8(r12)
    cmpwi   r0, 0x0
    add     r3, r12, r7
    bge     L14
    lwz     r0, 12(r12)
    mtctr   r0
    bctrl
    lwz     r12, 28(r31)
    cmpwi   r12, 0x0
    beq     L48
    b       L3c
L14:
    lha     r8, 14(r12)
    lwzx    r10, r3, r8
    slwi    r9, r0, 3
    add     r12, r10, r9
    lwz     r0, 4(r12)
    mtctr   r0
    bctrl
    lwz     r12, 28(r31)
    cmpwi   r12, 0x0
    beq     L48
L3c:
    lwz     r0, 4(r12)
    cmpwi   r0, 0x2
    beq     L5c
L48:
    fmr     f1, f31
    lwz     r3, 4(r31)
    bl      ext_021af5c0
    lwz     r3, 12(r31)
    bl      ext_02030b24
L5c:
    lfs     f31, 24(r1)
    lwz     r31, 12(r1)
    lfd     f31, 16(r1)
    isync
    lwz     r0, 36(r1)
    mtlr    r0
    addi    r1, r1, 32
    blr
