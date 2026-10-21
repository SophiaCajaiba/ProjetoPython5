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

bgtz $t0, positivo
bltz $t0, negativo
j mostrar

positivo:
li $t1, 2
mul $t0, $t0, $t1
j mostrar

negativo:
li $t1, 3
mul $t0, $t0, $t1

mostrar:
li $v0, 4
la $a0, r
syscall
li $v0, 1
move $a0, $t0
syscall

li $v0, 10
syscall