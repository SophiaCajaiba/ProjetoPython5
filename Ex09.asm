.data
a: .asciiz "Digite o primeiro numero: "
b: .asciiz "Digite o divisor (diferente de zero): "
r: .asciiz "Resultado da divisao: "

.text
.globl main
main:
li $v0, 4
la $a0, a
syscall
li $v0, 5
syscall
move $t0, $v0

ler_b:
li $v0, 4
la $a0, b
syscall
li $v0, 5
syscall
move $t1, $v0

beq $t1, $zero, ler_b

div $t0, $t1
mflo $t2

li $v0, 4
la $a0, r
syscall
li $v0, 1
move $a0, $t2
syscall

li $v0, 10
syscall