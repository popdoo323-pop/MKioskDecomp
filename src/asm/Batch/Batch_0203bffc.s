# Converted from the disassembly of 0x0203bffc (120 bytes). Name is a placeholder.
    .text
    .globl Batch_0203bffc
Batch_0203bffc:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_0203b19c
    lbz     r12,97(r3)
    cmpwi   r12,0
    beq-    L0203c030
    mr      r3,r31
    bl      ext_0203b1a4
    mr      r3,r31
    bl      ext_0203b19c
L0203c030:
    lbz     r0,96(r3)
    cmpwi   r0,0
    beq-    L0203c04c
    mr      r3,r31
    bl      ext_0203b3e4
    mr      r3,r31
    bl      ext_0203b19c
L0203c04c:
    lwz     r0,112(r3)
    cmpwi   r0,0
    beq-    L0203c060
    mr      r3,r31
    bl      ext_0203be44
L0203c060:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
