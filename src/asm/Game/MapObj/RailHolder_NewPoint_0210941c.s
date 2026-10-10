# Rail holder object factory at 0x0210941c (108 bytes). Allocates a 0x6c-byte object, runs its initialiser
# (0x020fb8b8), then sets the sub-object vtable at +0x5c (address 0x100137ec), the segment fields at +0x60/+0x64/+0x68.
# Returns the object, or 0 when the allocation fails. External calls are supplied as symbols. Written from the
# disassembly of the original bytes. Name is a placeholder.
    .text
    .globl RailHolder_NewPoint_0210941c
RailHolder_NewPoint_0210941c:
    mflr    r0
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    li      r3, 0x6c
    stw     r0, 0x14(r1)
    bl      ext_0260128c
    or.     r31, r3, r3
    beq     L470
    or      r3, r31, r31
    bl      ext_020fb8b8
    lis     r12, 0x1001
    lfs     f0, 0x37c0(r12)
    li      r12, 0x0
    lis     r0, 0x1001
    stw     r12, 0x60(r31)
    addic   r0, r0, 0x37ec
    stfs    f0, 0x68(r31)
    stw     r0, 0x5c(r31)
    or      r3, r31, r31
    stw     r12, 0x64(r31)
    b       L474
L470:
    li      r3, 0x0
L474:
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
