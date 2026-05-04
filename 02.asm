.data
	msg1: .asciiz "Quantidade de camisas P: "
	msg2: .asciiz "Quantidade de camisas M: "
	msg3: .asciiz "Quantidade de camisas G: "
	msg4: .asciiz "Valor arrecadado: "
	
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
	mul $t1, $v0, 12

	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	mul $t2, $v0, 15
	
	add $t3, $t0, $t1
	add $t3, $t3, $t2
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	