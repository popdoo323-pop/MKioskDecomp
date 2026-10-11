# Converted from the disassembly of 0x024bb530 (36 bytes). Name is a placeholder.
    .text
    .globl Batch_024bb530
Batch_024bb530:
    psq_l   f13,0(r4),0,0
    psq_l   f0,0(r5),0,0
    ps_madds0 f0,f13,f1,f0
    psq_st  f0,0(r3),0,0
    lfs     f0,8(r4)
    lfs     f13,8(r5)
    fmadds  f0,f1,f0,f13
    stfs    f0,8(r3)
    blr
