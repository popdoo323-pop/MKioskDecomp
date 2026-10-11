# Converted from the disassembly of 0x020464dc (120 bytes). Name is a placeholder.
    .text
    .globl Batch_020464dc
Batch_020464dc:
    lis     r12,4117
    lwz     r12,-28988(r12)
    mr      r0,r3
    cmpwi   r12,0
    mr      r5,r4
    beq-    L02046518
    lwz     r9,264(r12)
    cmpwi   r9,0
    beq-    L0204654c
    lwz     r3,224(r9)
    cmpwi   r3,0
    beq-    L0204654c
    li      r6,0
    mr      r4,r0
    b       ext_02041078
L02046518:
    lis     r11,4117
    lwz     r11,-28980(r11)
    cmpwi   r11,0
    beq-    L0204654c
    lwz     r8,108(r11)
    cmpwi   r8,0
    beq-    L0204654c
    lwz     r3,92(r8)
    cmpwi   r3,0
    beq-    L0204654c
    li      r5,0
    mr      r4,r0
    b       ext_02040fac
L0204654c:
    li      r3,0
    blr
