# Converted from the disassembly of 0x02040f54 (88 bytes). Name is a placeholder.
    .text
    .globl Batch_02040f54
Batch_02040f54:
    lis     r12,4117
    lis     r11,4096
    lwz     r12,-28988(r12)
    lfs     f1,20148(r11)
    cmpwi   r12,0
    beqlr-
    cmpwi   r4,8
    bne-    L02040f90
    lwz     r10,96(r3)
    li      r0,0
    lwz     r11,100(r3)
    subfc   r12,r11,r10
    addze.  r12,r0
    beqlr-
    b       L02040fa4
L02040f90:
    lwz     r0,152(r12)
    xori    r10,r0,7
    cntlzw  r0,r10
    srwi.   r12,r0,5
    beqlr-
L02040fa4:
    lfs     f1,36(r3)
    blr
