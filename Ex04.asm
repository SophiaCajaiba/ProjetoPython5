
.data
b1: .asciiz "Base maior: "
b2: .asciiz "Base menor: "
h:  .asciiz "Altura: "
r:  .asciiz "Area do trapezio: "

.text
.globl main
main:
    li $v0, 4
    la $a0, b1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, b2
    syscall
    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 4
    la $a0, h
    syscall
    li $v0, 5
    syscall
    move $t2, $v0

    add $t3, $t0, $t1
    mul $t3, $t3, $t2
    li $t4, 2
    div $t3, $t4
    mflo $t5

    li $v0, 4
    la $a0, r
    syscall
    li $v0, 1
    move $a0, $t5
    syscall

    li $v0, 10
    syscall
