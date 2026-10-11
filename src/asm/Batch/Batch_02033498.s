# Converted from the disassembly of 0x02033498 (252 bytes). Name is a placeholder.
    .text
    .globl Batch_02033498
Batch_02033498:
    addi    r0,r4,-2
    cmplwi  r0,3
    bge-    L02033588
    cmplwi  r3,4
    bge-    L02033588
    cmplwi  r4,2
    blt-    L02033588
    beq-    L020334d0
    cmplwi  r4,4
    blt-    L020334f8
    beq-    L02033534
    lis     r11,4096
    lfs     f1,16660(r11)
    blr
L020334d0:
    cmpwi   r3,0
    bne-    L020334e4
    lis     r11,4120
    lfs     f1,-12012(r11)
    blr
L020334e4:
    cmpwi   r3,1
    bne-    L02033588
    lis     r11,4120
    lfs     f1,-12008(r11)
    blr
L020334f8:
    cmpwi   r3,0
    bne-    L0203350c
    lis     r12,4120
    lfs     f1,-11984(r12)
    blr
L0203350c:
    cmpwi   r3,1
    bne-    L02033520
    lis     r11,4120
    lfs     f1,-11980(r11)
    blr
L02033520:
    cmpwi   r3,2
    bne-    L02033588
    lis     r12,4120
    lfs     f1,-11976(r12)
    blr
L02033534:
    cmplwi  r3,1
    blt-    L02033558
    beq-    L02033564
    cmplwi  r3,3
    blt-    L02033570
    beq-    L0203357c
    lis     r11,4096
    lfs     f1,16660(r11)
    blr
L02033558:
    lis     r11,4120
    lfs     f1,-11948(r11)
    blr
L02033564:
    lis     r12,4120
    lfs     f1,-11944(r12)
    blr
L02033570:
    lis     r12,4120
    lfs     f1,-11940(r12)
    blr
L0203357c:
    lis     r12,4120
    lfs     f1,-11936(r12)
    blr
L02033588:
    lis     r11,4096
    lfs     f1,16660(r11)
    blr
