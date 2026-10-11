# Converted from the disassembly of 0x02046554 (72 bytes). Name is a placeholder.
    .text
    .globl Batch_02046554
Batch_02046554:
    lis     r12,4117
    lwz     r12,-28988(r12)
    cmpwi   r12,0
    beq-    L02046570
    lwz     r12,264(r12)
    cmpwi   r12,0
    bne-    L0204657c
L02046570:
    lis     r12,4096
    lfs     f1,23348(r12)
    blr
L0204657c:
    lwz     r3,224(r12)
    cmpwi   r3,0
    bne-    L02046594
    lis     r12,4096
    lfs     f1,23352(r12)
    blr
L02046594:
    li      r4,0
    b       ext_02040f54
