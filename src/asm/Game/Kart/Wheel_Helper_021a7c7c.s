# Wheel helper at 0x021a7c7c (32 bytes). If the object at +28 is set and its field at +4 equals 2, returns. Otherwise tail-
# calls 0x021af668 with the sub-object at +4. Written from the disassembly of the original bytes. Name is a placeholder.
# Kart-related: wheel behaviour.
    .text
    .globl Wheel_Helper_021a7c7c
Wheel_Helper_021a7c7c:
    lwz     r12, 28(r3)
    cmpwi   r12, 0x0
    beq     L94
    lwz     r0, 4(r12)
    cmpwi   r0, 0x2
    beqlr
L94:
    lwz     r3, 4(r3)
    b       ext_021af668
