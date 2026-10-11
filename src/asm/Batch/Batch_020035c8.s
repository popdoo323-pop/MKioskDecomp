# Converted from the disassembly of 0x020035c8 (160 bytes). Name is a placeholder.
    .text
    .globl Batch_020035c8
Batch_020035c8:
    lwz     r10,128(r3)
    cmpwi   r10,0
    li      r0,0
    beq-    L020035fc
    lwz     r11,28(r10)
    cmpwi   r11,0
    beq-    L020035fc
    lwz     r10,28(r10)
    lwz     r12,56(r10)
    rlwinm  r0,r12,10,31,31
    xori    r0,r0,1
    clrlwi  r3,r0,24
    blr
L020035fc:
    lwz     r12,132(r3)
    cmpwi   r12,0
    beq-    L0200362c
    lwz     r10,4(r12)
    cmpwi   r10,0
    beq-    L0200362c
    lwz     r12,4(r12)
    lwz     r11,56(r12)
    rlwinm  r0,r11,10,31,31
    xori    r0,r0,1
    clrlwi  r3,r0,24
    blr
L0200362c:
    lwz     r11,136(r3)
    cmpwi   r11,0
    beq-    L02003660
    lwz     r12,36(r11)
    lwz     r10,56(r12)
    cmpwi   r10,0
    beq-    L02003660
    lwz     r10,36(r11)
    lwz     r12,56(r10)
    lwz     r0,56(r12)
    rlwinm  r0,r0,10,31,31
    xori    r0,r0,1
    clrlwi  r0,r0,24
L02003660:
    mr      r3,r0
    blr
