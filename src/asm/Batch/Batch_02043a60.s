# Converted from the disassembly of 0x02043a60 (348 bytes). Name is a placeholder.
    .text
    .globl Batch_02043a60
Batch_02043a60:
    mflr    r0
    stwu    r1,-168(r1)
    stw     r28,152(r1)
    lis     r28,4121
    addi    r28,r28,30552
    stw     r29,156(r1)
    stw     r30,160(r1)
    stw     r31,164(r1)
    stw     r0,172(r1)
    lwz     r9,12(r28)
    mr      r29,r3
    lwz     r4,328(r9)
    addi    r3,r1,8
    bl      ext_02041998
    lwz     r9,8(r1)
    cmpwi   r9,0
    beq-    L02043b9c
    li      r10,2
    lis     r11,516
    stw     r10,12(r1)
    addi    r11,r11,16216
    addi    r4,r1,12
    addi    r3,r1,20
    stw     r11,16(r1)
    bl      ext_02610180
    lis     r12,4119
    lis     r31,4119
    lwzu    r0,3864(r12)
    addi    r31,r31,5820
    cmpwi   r0,0
    lwz     r30,8(r1)
    bne-    L02043afc
    li      r7,1
    lis     r4,4096
    mr      r3,r31
    li      r5,16
    addi    r4,r4,20476
    stw     r7,0(r12)
    bl      ext_029abc88
L02043afc:
    slwi    r9,r30,2
    lwzx    r0,r9,r31
    cmpwi   r0,0
    bne-    L02043b1c
    lis     r8,1
    addi    r8,r8,-32768
    stw     r8,32(r1)
    b       L02043b68
L02043b1c:
    slwi.   r8,r0,20
    bne-    L02043b64
    lwz     r11,4(r28)
    li      r0,1
    stb     r0,46(r1)
    lwz     r8,0(r11)
    lwz     r10,308(r8)
    rlwinm. r12,r10,0,29,29
    beq-    L02043b7c
L02043b40:
    lwz     r12,0(r11)
    addi    r11,r29,284
    mr      r3,r29
    stw     r12,112(r1)
    addi    r4,r1,20
    stw     r11,116(r1)
    bl      ext_0260fbd4
    stw     r3,280(r29)
    b       L02043b9c
L02043b64:
    stw     r8,32(r1)
L02043b68:
    lwz     r11,4(r28)
    lwz     r8,0(r11)
    lwz     r10,308(r8)
    rlwinm. r12,r10,0,29,29
    bne+    L02043b40
L02043b7c:
    li      r12,0
    addi    r11,r29,284
    stw     r12,112(r1)
    mr      r3,r29
    addi    r4,r1,20
    stw     r11,116(r1)
    bl      ext_0260fbd4
    stw     r3,280(r29)
L02043b9c:
    lwz     r28,152(r1)
    lwz     r29,156(r1)
    lwz     r0,172(r1)
    lwz     r30,160(r1)
    mtlr    r0
    lwz     r31,164(r1)
    addi    r1,r1,168
    blr
