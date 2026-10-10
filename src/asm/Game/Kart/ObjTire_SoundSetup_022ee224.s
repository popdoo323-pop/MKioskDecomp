# ObjTire sound setup at 0x022ee224 (160 bytes). Scales a float from the constant at 0x1007206c (lis 0x1007 + 8300) by the
# two floats at +16 and +20 of the object at +216, stores the first at +408 and the product at +404, sets up the block at
# +252 with 0x021db890, then adds three sound slots (names at 0x10072070, 0x10072084 and 0x10072098) to the list at +124
# through 0x0205e498. Written from the disassembly of the original bytes. Name is a placeholder. The tire is a kart part.
    .text
    .globl ObjTire_SoundSetup_022ee224
ObjTire_SoundSetup_022ee224:
    mflr    r0
    stwu    r1, -16(r1)
    stw     r31, 12(r1)
    lis     r10, 0x1007
    lfs     f0, 8300(r10)
    or      r31, r3, r3
    stw     r0, 20(r1)
    lwz     r7, 216(r31)
    lfs     f13, 16(r7)
    stfs    f13, 408(r31)
    lfs     f13, 20(r7)
    lwz     r9, 196(r31)
    fmuls   f0, f13, f0
    addi    r4, r9, 8
    addi    r3, r31, 252
    stfs    f0, 404(r31)
    bl      ext_021db890
    lwz     r8, 124(r31)
    lis     r5, 0x1007
    addi    r4, r31, 300
    addi    r5, r5, 8304
    addi    r3, r8, 4
    bl      ext_0205e498
    lwz     r11, 124(r31)
    lis     r5, 0x1007
    addi    r4, r31, 320
    addi    r5, r5, 8324
    addi    r3, r11, 4
    bl      ext_0205e498
    lwz     r12, 124(r31)
    lis     r5, 0x1007
    addi    r4, r31, 340
    addi    r5, r5, 8344
    addi    r3, r12, 4
    bl      ext_0205e498
    lwz     r0, 20(r1)
    lwz     r31, 12(r1)
    mtlr    r0
    addi    r1, r1, 16
    blr
