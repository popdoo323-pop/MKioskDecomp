# Converted from the disassembly of 0x02030b64 (140 bytes). Name is a placeholder.
    .text
    .globl Batch_02030b64
Batch_02030b64:
    mflr    r0
    stwu    r1,-32(r1)
    stw     r29,20(r1)
    stw     r30,24(r1)
    stw     r31,28(r1)
    stw     r0,36(r1)
    lwz     r12,0(r3)
    lwz     r0,156(r12)
    mtctr   r0
    mr      r29,r3
    bctrl
    lwz     r30,40(r29)
    stw     r30,8(r1)
    lwz     r0,36(r29)
    slwi    r8,r0,2
    add     r31,r30,r8
    cmplw   r30,r31
    beq-    L02030bc0
L02030bac:
    lwz     r3,0(r30)
    bl      ext_02411064
    addi    r30,r30,4
    cmplw   r30,r31
    bne+    L02030bac
L02030bc0:
    lwz     r10,0(r29)
    lwz     r11,164(r10)
    mtctr   r11
    mr      r3,r29
    bctrl
    lwz     r29,20(r1)
    lwz     r0,36(r1)
    lwz     r30,24(r1)
    mtlr    r0
    lwz     r31,28(r1)
    addi    r1,r1,32
    blr
