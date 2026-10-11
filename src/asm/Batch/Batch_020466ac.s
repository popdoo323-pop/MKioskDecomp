# Converted from the disassembly of 0x020466ac (36 bytes). Name is a placeholder.
    .text
    .globl Batch_020466ac
Batch_020466ac:
    fcmpu   cr0,f1,f2
    bgt-    L020466bc
    fmr     f1,f4
    blr
L020466bc:
    fcmpu   cr0,f3,f1
    bgt-    L020466cc
    fmr     f1,f5
    blr
L020466cc:
    b       ext_02046664
