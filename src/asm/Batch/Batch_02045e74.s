# Converted from the disassembly of 0x02045e74 (60 bytes). Name is a placeholder.
    .text
    .globl Batch_02045e74
Batch_02045e74:
    lis     r12,4096
    lfs     f13,23340(r12)
    lis     r12,4096
    fdivs   f1,f1,f13
    lfs     f0,23344(r12)
    fcmpu   cr0,f1,f0
    bge-    L02045e98
    fmr     f1,f0
    blr
L02045e98:
    lis     r12,4096
    lfs     f0,23348(r12)
    fcmpu   cr0,f1,f0
    ble-    L02045eac
    fmr     f1,f0
L02045eac:
    blr
