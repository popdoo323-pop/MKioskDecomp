# Converted from the disassembly of 0x02031530 (84 bytes). Name is a placeholder.
    .text
    .globl Batch_02031530
Batch_02031530:
    lis     r12,4096
    lfs     f13,144(r3)
    lfs     f0,16188(r12)
    fcmpu   cr0,f13,f0
    beq-    L02031550
    lwz     r12,88(r3)
    stfs    f13,24(r12)
    blr
L02031550:
    lwz     r12,68(r3)
    lwz     r12,72(r12)
    lbz     r0,16(r12)
    cmpwi   r0,0
    bne-    L02031570
    lbz     r0,108(r3)
    cmpwi   r0,0
    beq-    L02031578
L02031570:
    lis     r12,4096
    lfs     f1,16212(r12)
L02031578:
    lwz     r12,88(r3)
    stfs    f1,24(r12)
    blr
