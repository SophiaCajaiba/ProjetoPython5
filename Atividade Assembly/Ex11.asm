.data
n: .asciiz "Digite um numero (negativo encerra): "
inv: .asciiz "Numero invalido! Digite de 0 a 100.\n"
r1: .asciiz "\nIntervalo 0-25: "
r2: .asciiz "\nIntervalo 26-50: "
r3: .asciiz "\nIntervalo 51-75: "
r4: .asciiz "\nIntervalo 76-100: "

.text
.globl main
main:
li $t0, 0
li $t1, 0
li $t2, 0
li $t3, 0

ler:
li $v0, 4
la $a0, n
syscall
li $v0, 5
syscall
move $t4, $v0

bltz $t4, mostrar

slti $t5, $t4, 0
bne $t5, $zero, invalido

slti $t5, $t4, 101
beq $t5, $zero, invalido

slti $t5, $t4, 26
bne $t5, $zero, faixa1

slti $t5, $t4, 51
bne $t5, $zero, faixa2

slti $t5, $t4, 76
bne $t5, $zero, faixa3

addi $t3, $t3, 1
j ler

faixa1:
addi $t0, $t0, 1
j ler

faixa2:
addi $t1, $t1, 1
j ler

faixa3:
addi $t2, $t2, 1
j ler

invalido:
li $v0, 4
la $a0, inv
syscall
j ler

mostrar:
li $v0, 4
la $a0, r1
syscall
li $v0, 1
move $a0, $t0
syscall

li $v0, 4
la $a0, r2
syscall
li $v0, 1
move $a0, $t1
syscall

li $v0, 4
la $a0, r3
syscall
li $v0, 1
move $a0, $t2
syscall

li $v0, 4
la $a0, r4
syscall
li $v0, 1
move $a0, $t3
syscall

li $v0, 10
syscall