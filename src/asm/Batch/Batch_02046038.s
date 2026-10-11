# Converted from the disassembly of 0x02046038 (136 bytes). Name is a placeholder.
    .text
    .globl Batch_02046038
Batch_02046038:
    mflr    r0
    stwu    r1,-32(r1)
    stfd    f31,16(r1)
    ps_merge10 f31,f31,f31
    stw     r31,12(r1)
    stfs    f31,24(r1)
    fmr     f31,f1
    mr      r31,r3
    stw     r0,36(r1)
    bl      ext_02045d0c
    mr      r4,r31
    bl      ext_02032ff4
    cmpwi   r3,0
    beq-    L0204609c
    fmr     f1,f31
    bl      ext_02045eb0
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    li      r3,1
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
L0204609c:
    lfs     f31,24(r1)
    lwz     r31,12(r1)
    lfd     f31,16(r1)
    li      r3,0
    isync
    lwz     r0,36(r1)
    mtlr    r0
    addi    r1,r1,32
    blr
