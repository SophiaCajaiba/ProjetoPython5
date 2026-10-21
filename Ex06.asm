.data
a: .asciiz "Digite A: "
b: .asciiz "Digite B: "
r: .asciiz "Resultado: "

.text
.globl main
main:
li $v0, 4
la $a0, a
syscall
li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, b
syscall
li $v0, 5
syscall
move $t1, $v0

bne $t0, $t1, diferente
add $t2, $t0, $t1
j mostrar

diferente:
mult $t0, $t1
mflo $t2

mostrar:
li $v0, 4
la $a0, r
syscall
li $v0, 1
move $a0, $t2
syscall

li $v0, 10
syscall