.data
	msg1: .asciiz "Digite o numero de horas:  "
	msg2: .asciiz "Digite o numero de horas extras: "
	msg3: .asciiz "Digite o valor do desconto: "
	msg4: .asciiz "Salario Bruto: "
	msg5: .asciiz "\nSalario Liquido: "

.text

main:
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	mul $t0, $v0, 10 
	
	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 5
	syscall
	mul $t1, $v0, 15
	
	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	add $t3, $t0, $t1
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	sub $t4, $t3, $t2
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall
	
	
	
	