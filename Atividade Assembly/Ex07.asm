.data
n: .asciiz "Digite um numero: "
r: .asciiz "Resultado: "

.text
.globl main
main:
li $v0, 4
la $a0, n
syscall
li $v0, 5
syscall
move $t0, $v0

li $t1, 2
div $t0, $t1
mfhi $t2

bne $t2, $zero, impar
addi $t0, $t0, 5
j mostrar

impar:
addi $t0, $t0, 8

mostrar:
li $v0, 4
la $a0, r
syscall
li $v0, 1
move $a0, $t0
syscall

li $v0, 10
syscall