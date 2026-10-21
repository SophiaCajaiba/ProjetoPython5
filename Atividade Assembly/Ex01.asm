.data
msg1: .asciiz "Digite a largura: "
msg2: .asciiz "Digite o comprimento: "
msg3: .asciiz "Area do terreno: "

.text
.globl main

main:
    # Ler a largura
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    # Ler o comprimento
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    # Calcular a area
    mul $t2, $t0, $t1

    # Mostrar a mensagem
    li $v0, 4
    la $a0, msg3
    syscall

    # Mostrar o resultado
    li $v0, 1
    move $a0, $t2
    syscall