# Converted from the disassembly of 0x02015194 (40 bytes). Name is a placeholder.
    .text
    .globl Batch_02015194
Batch_02015194:
    lis     r12,4117
    mr      r4,r3
    lwz     r12,-3284(r12)
    lbz     r0,132(r4)
    lwz     r12,100(r12)
    cmpwi   r0,0
    lwz     r3,56(r12)
    beq-    L020151b8
    b       ext_020212e4
L020151b8:
    b       ext_020212a4
