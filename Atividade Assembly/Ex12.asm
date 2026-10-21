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

move $t0, $v0
move $t1, $v0
li $t2, 1

ler:
beq $t2, 15, mostrar

li $v0, 4
la $a0, n
syscall
li $v0, 5
syscall
move $t3, $v0

bge $t3, $t0, verificar_maior
move $t0, $t3

verificar_maior:
ble $t3, $t1, continuar
move $t1, $t3

continuar:
addi $t2, $t2, 1
j ler

mostrar:
li $v0, 4
la $a0, menor
syscall
li $v0, 1
move $a0, $t0
syscall

li $v0, 4
la $a0, maior
syscall
li $v0, 1
move $a0, $t1
syscall

li $v0, 10
syscall