.section .data
    num1:   .word   10
    num2:   .word   5
    fmt_add: .asciz "%d + %d = %d\n"
    fmt_sub: .asciz "%d - %d = %d\n"

.section .text
.global _start

_start:
    ldr r1, =num1
    ldr r1, [r1]
    ldr r2, =num2
    ldr r2, [r2]
    add r3, r1, r2
    ldr r0, =fmt_add
    mov r4, r1
    mov r5, r2
    mov r1, r4
    mov r2, r5
    mov r3, r3
    bl printf
    ldr r1, =num1
    ldr r1, [r1]
    ldr r2, =num2
    ldr r2, [r2]
    sub r3, r1, r2
    ldr r0, =fmt_sub
    mov r4, r1
    mov r5, r2
    mov r1, r4
    mov r2, r5
    mov r3, r3
    bl printf
    mov r7, #1
    mov r0, #0
    svc #0
