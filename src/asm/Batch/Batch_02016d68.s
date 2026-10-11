# Converted from the disassembly of 0x02016d68 (92 bytes). Name is a placeholder.
    .text
    .globl Batch_02016d68
Batch_02016d68:
    mflr    r0
    stwu    r1,-16(r1)
    stw     r31,12(r1)
    mr      r31,r3
    stw     r0,20(r1)
    lbz     r0,136(r31)
    cmpwi   r0,0
    lwz     r3,88(r31)
    beq-    L02016da0
    lis     r4,4120
    lwz     r4,-14208(r4)
    bl      ext_02008eb0
    stw     r3,148(r31)
    b       L02016db0
L02016da0:
    lis     r4,4120
    lwz     r4,-14212(r4)
    bl      ext_02008eb0
    stw     r3,148(r31)
L02016db0:
    lwz     r0,20(r1)
    lwz     r31,12(r1)
    mtlr    r0
    addi    r1,r1,16
    blr
