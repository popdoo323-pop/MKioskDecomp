# ObjTire helper at 0x022ee1e4. Allocates a 0x38-byte block; if the allocation succeeds it calls FUN_02084ba0 and
# stores the result at this+0x128. Written from the disassembly of the original bytes. Name is a placeholder.
    .text
    .globl ObjTire_CreateHelper_022ee1e4
ObjTire_CreateHelper_022ee1e4:
    mflr    r0
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    or      r31, r3, r3
    li      r3, 0x38
    stw     r0, 0x14(r1)
    bl      FUN_0260128c
    cmpwi   r3, 0
    beq     1f
    bl      FUN_02084ba0
1:
    stw     r3, 0x128(r31)
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
