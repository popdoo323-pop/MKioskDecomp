# Converted from the disassembly of 0x02039370 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_02039370
Batch_02039370:
    cmpwi   r4,0
    beq-    L02039388
    lis     r12,4096
    lfs     f1,17160(r12)
    stfs    f1,536(r3)
    b       ext_02039290
L02039388:
    lis     r12,4096
    lfs     f1,17328(r12)
    stfs    f1,536(r3)
    b       ext_02039290
