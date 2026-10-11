# Converted from the disassembly of 0x0200888c (156 bytes). Name is a placeholder.
    .text
    .globl Batch_0200888c
Batch_0200888c:
    lis     r12,4117
    stwu    r1,-24(r1)
    lwz     r12,-3296(r12)
    lwz     r11,424(r12)
    cmpwi   r11,0
    addi    r12,r12,80
    bne-    L020088e8
    lwz     r9,356(r12)
    cmplwi  r9,1
    blt-    L020088c0
    beq-    L020088d4
    li      r0,2
    b       L020088d8
L020088c0:
    li      r0,0
    stw     r0,184(r3)
    lwz     r10,184(r3)
    stw     r10,8(r1)
    b       L02008920
L020088d4:
    li      r0,1
L020088d8:
    stw     r0,184(r3)
    lwz     r10,184(r3)
    stw     r10,8(r1)
    b       L02008920
L020088e8:
    lwz     r0,372(r12)
    cmplwi  r0,1
    blt-    L02008900
    beq-    L0200890c
    li      r0,2
    b       L02008910
L02008900:
    li      r0,0
    addi    r9,r1,12
    b       L02008914
L0200890c:
    li      r0,1
L02008910:
    addi    r9,r1,12
L02008914:
    stw     r0,184(r3)
    lwz     r10,184(r3)
    stw     r10,0(r9)
L02008920:
    addi    r1,r1,24
    blr
