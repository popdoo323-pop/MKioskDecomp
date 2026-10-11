# Converted from the disassembly of 0x02042914 (76 bytes). Name is a placeholder.
    .text
    .globl Batch_02042914
Batch_02042914:
    lwz     r0,0(r4)
    cmplwi  r0,30
    li      r3,0
    bge-    L02042940
    cmplwi  r0,12
    beq-    L02042958
    cmplwi  r0,18
    beq-    L02042958
    cmplwi  r0,20
    beq-    L02042958
    blr
L02042940:
    cmplwi  r0,30
    beq-    L02042958
    cmplwi  r0,104
    beq-    L02042958
    cmplwi  r0,106
    bnelr-
L02042958:
    li      r3,1
    blr
