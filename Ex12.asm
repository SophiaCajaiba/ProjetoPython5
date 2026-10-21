.data
n: .asciiz "Digite a altura em cm: "
menor: .asciiz "\nMenor altura: "
maior: .asciiz "\nMaior altura: "

.text
.globl main
main:
li $v0, 4
la $a0, n
syscall
li $v0, 5
syscall
add $t0, $v0, $zero
add $t1, $v0, $zero
li $t2, 1

ler:
beq $t2, 15, mostrar

li $v0, 4
la $a0, n
syscall
li $v0, 5
syscall
add $t3, $v0, $zero

slt $t4, $t3, $t0
beq $t4, $zero, verifica
add $t0, $t3, $zero

verifica:
slt $t4, $t1, $t3
beq $t4, $zero, continua
add $t1, $t3, $zero

continua:
addi $t2, $t2, 1
j ler

mostrar:
li $v
