# Converted from the disassembly of 0x02015ea8 (124 bytes). Name is a placeholder.
    .text
    .globl Batch_02015ea8
Batch_02015ea8:
    lbz     r12,136(r3)
    li      r3,0
    cmpwi   r12,0
    lwz     r0,0(r4)
    beq-    L02015efc
    cmplwi  r0,11
    bge-    L02015ed8
    cmplwi  r0,4
    ble-    L02015f1c
    cmplwi  r0,7
    beq-    L02015f1c
    blr
L02015ed8:
    cmplwi  r0,12
    ble-    L02015f1c
    cmplwi  r0,14
    beq-    L02015f1c
    cmplwi  r0,17
    bltlr-
    cmplwi  r0,19
    ble-    L02015f1c
    blr
L02015efc:
    cmplwi  r0,1
    ble-    L02015f1c
    cmplwi  r0,4
    beq-    L02015f1c
    cmplwi  r0,14
    beq-    L02015f1c
    cmplwi  r0,17
    bnelr-
L02015f1c:
    li      r3,1
    blr
