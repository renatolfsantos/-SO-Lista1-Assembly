.data
	msg:  .asciiz "Digite a altura (cm): "
	minm: .asciiz "\nMenor altura: "
	maxm: .asciiz "\nMaior altura: "

.text
main:
	li $t0, 0          
	li $t1, 15

loop:
	beq $t0, $t1, fim

	li $v0, 4
	la $a0, msg
	syscall

	li $v0, 5
	syscall
	add $t2, $v0, 0   

	beq $t0, 0, init

	blt $t2, $t3, set_min
	bgt $t2, $t4, set_max
	j cont

init:
	add $t3, $t2, 0    
	add $t4, $t2, 0    
	j cont

set_min:
	add $t3, $t2, 0
	j cont

set_max:
	add $t4, $t2, 0
	j cont

cont:
	addi $t0, $t0, 1
	j loop

fim:
	li $v0, 4
	la $a0, minm
	syscall
	li $v0, 1
	add $a0, $t3, 0
	syscall

	li $v0, 4
	la $a0, maxm
	syscall
	li $v0, 1
	add $a0, $t4, 0
	syscall