# Converted from the disassembly of 0x024bb50c (36 bytes). Name is a placeholder.
    .text
    .globl Batch_024bb50c
Batch_024bb50c:
    psq_l   f13,0(r4),0,0
    psq_l   f0,0(r5),0,0
    ps_sub  f0,f13,f0
    psq_st  f0,0(r3),0,0
    lfs     f13,8(r4)
    lfs     f0,8(r5)
    fsubs   f0,f13,f0
    stfs    f0,8(r3)
    blr
