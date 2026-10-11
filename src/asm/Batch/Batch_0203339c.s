# Converted from the disassembly of 0x0203339c (252 bytes). Name is a placeholder.
    .text
    .globl Batch_0203339c
Batch_0203339c:
    addi    r0,r4,-2
    cmplwi  r0,3
    bge-    L0203348c
    cmplwi  r3,4
    bge-    L0203348c
    cmplwi  r4,2
    blt-    L0203348c
    beq-    L020333d4
    cmplwi  r4,4
    blt-    L020333fc
    beq-    L02033438
    lis     r11,4096
    lfs     f1,16660(r11)
    blr
L020333d4:
    cmpwi   r3,0
    bne-    L020333e8
    lis     r11,4120
    lfs     f1,-12024(r11)
    blr
L020333e8:
    cmpwi   r3,1
    bne-    L0203348c
    lis     r11,4120
    lfs     f1,-12020(r11)
    blr
L020333fc:
    cmpwi   r3,0
    bne-    L02033410
    lis     r12,4120
    lfs     f1,-12000(r12)
    blr
L02033410:
    cmpwi   r3,1
    bne-    L02033424
    lis     r11,4120
    lfs     f1,-11996(r11)
    blr
L02033424:
    cmpwi   r3,2
    bne-    L0203348c
    lis     r12,4120
    lfs     f1,-11992(r12)
    blr
L02033438:
    cmplwi  r3,1
    blt-    L0203345c
    beq-    L02033468
    cmplwi  r3,3
    blt-    L02033474
    beq-    L02033480
    lis     r11,4096
    lfs     f1,16660(r11)
    blr
L0203345c:
    lis     r11,4120
    lfs     f1,-11968(r11)
    blr
L02033468:
    lis     r12,4120
    lfs     f1,-11964(r12)
    blr
L02033474:
    lis     r12,4120
    lfs     f1,-11960(r12)
    blr
L02033480:
    lis     r12,4120
    lfs     f1,-11956(r12)
    blr
L0203348c:
    lis     r11,4096
    lfs     f1,16660(r11)
    blr
