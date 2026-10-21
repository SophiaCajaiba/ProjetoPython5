.data
a: .asciiz "Digite o primeiro cateto: "
b: .asciiz "Digite o segundo cateto: "
r: .asciiz "Hipotenusa: "

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

mul $t2, $t0, $t0
mul $t3, $t1, $t1
add $t4, $t2, $t3

mtc1 $t4, $f0
cvt.s.w $f0, $f0
sqrt.s $f12, $f0

li $v0, 4
la $a0, r
syscall

li $v0, 2
syscall

li $v0, 10
syscall