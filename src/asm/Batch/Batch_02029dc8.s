# Converted from the disassembly of 0x02029dc8 (120 bytes). Name is a placeholder.
    .text
    .globl Batch_02029dc8
Batch_02029dc8:
    mflr    r0
    li      r6,0
    stw     r0,4(r1)
    mr      r5,r3
    stwu    r1,-8(r1)
    lwz     r9,280(r5)
    stb     r6,292(r5)
    cmpw    r6,r9
    stb     r6,293(r5)
    bge-    L02029e18
    lis     r12,4096
    lfs     f0,11804(r12)
    addi    r12,r5,76
L02029dfc:
    lwzu    r10,8(r12)
    lwz     r8,16(r10)
    stfs    f0,60(r8)
    lwz     r0,280(r5)
    addi    r6,r6,1
    cmpw    r6,r0
    blt+    L02029dfc
L02029e18:
    mr      r3,r5
    bl      ext_02029be8
    cmpwi   r3,0
    bne-    L02029e30
    mr      r3,r5
    bl      ext_02029ccc
L02029e30:
    lwz     r0,12(r1)
    mtlr    r0
    addi    r1,r1,8
    blr
