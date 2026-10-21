.data
n: .asciiz "Horas normais: "
e: .asciiz "Horas extras: "
d: .asciiz "Desconto: "
r: .asciiz "Salario liquido: "

.text
.globl main
main:
li $v0, 4
la $a0, n
syscall
li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, e
syscall
li $v0, 5
syscall
move $t1, $v0

li $v0, 4
la $a0, d
syscall
li $v0, 5
syscall
move $t2, $v0

li $t3, 10
mul $t0, $t0, $t3

li $t3, 15
mul $t1, $t1, $t3

add $t4, $t0, $t1
sub $t4, $t4, $t2

li $v0, 4
la $a0, r
syscall
li $v0, 1
move $a0, $t4
syscall

li $v0, 10
syscall