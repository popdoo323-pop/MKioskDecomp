# Converted from the disassembly of 0x02007818 (152 bytes). Name is a placeholder.
    .text
    .globl Batch_02007818
Batch_02007818:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    bl      ext_020072fc
    lwz     r3,64(r31)
    bl      ext_0201e904
    mr      r3,r31
    bl      ext_0200773c
    lwz     r4,88(r31)
    lwz     r3,80(r31)
    bl      ext_02000c64
    lwz     r9,60(r31)
    lwz     r3,84(r9)
    bl      ext_02185bf0
    cmpwi   r3,0
    beq-    L0200789c
    mr      r3,r31
    bl      ext_0200713c
    lwz     r12,60(r31)
    lbz     r8,132(r12)
    cmpwi   r8,0
    bne-    L02007890
    lwz     r3,72(r31)
    lwz     r10,0(r3)
    lwz     r0,124(r10)
    mtctr   r0
    lwz     r4,88(r31)
    bctrl
L02007890:
    lwz     r3,84(r31)
    lwz     r4,88(r31)
    bl      ext_020109a0
L0200789c:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
