.data
a: .asciiz "Digite o primeiro numero positivo: "
b: .asciiz "Digite o segundo numero positivo: "
r: .asciiz "Resto da divisao: "
erro: .asciiz "Os numeros devem ser positivos.\n"

.text
.globl main
main:
li $v0, 4
la $a0, a
syscall
li $v0, 5
syscall
move $t0, $v0

blez $t0, invalido

li $v0, 4
la $a0, b
syscall
li $v0, 5
syscall
move $t1, $v0

blez $t1, invalido

blt $t0, $t1, trocar
move $t2, $t0
move $t3, $t1
j calcular

trocar:
move $t2, $t1
move $t3, $t0

calcular:
div $t2, $t3
mflo $t4
mul $t5, $t4, $t3
sub $t6, $t2, $t5

li $v0, 4
la $a0, r
syscall
li $v0, 1
move $a0, $t6
syscall
j fim

invalido:
li $v0, 4
la $a0, erro
syscall

fim:
li $v0, 10
syscall