# Converted from the disassembly of 0x02109108 (144 bytes). Name is a placeholder.
    .text
    .globl RailPath_Gap_02109108
RailPath_Gap_02109108:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    stw     r30,8(r1)
    mr.     r31,r3
    stw     r0,20(r1)
    bne-    L02109134
    li      r3,48
    bl      ext_0260128c
    mr.     r31,r3
    beq-    L0210917c
L02109134:
    mr      r3,r31
    bl      ext_020fbb30
    lis     r0,4097
    li      r30,0
    addic   r0,r0,14332
    stw     r30,32(r31)
    addic.  r3,r31,36
    stw     r0,28(r31)
    bne-    L02109168
    li      r3,8
    bl      ext_0260128c
    cmpwi   r3,0
    beq-    L02109170
L02109168:
    stw     r30,4(r3)
    stw     r30,0(r3)
L02109170:
    lis     r12,4097
    lfs     f0,14272(r12)
    stfs    f0,44(r31)
L0210917c:
    lwz     r0,20(r1)
    mr      r3,r31
    lwz     r31,12(r1)
    mtlr    r0
    lwz     r30,8(r1)
    addi    r1,r1,16
    blr
