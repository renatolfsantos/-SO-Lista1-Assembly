.data
	msg1: .asciiz "Digite a base menor: "
	msg2: .asciiz "Digite a base maior: "
	msg3: .asciiz "Digite a altura: "
	msg4: .asciiz "Area do trapezio: "
.text

main:
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	add $t0, $v0, 0 
	
	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	add $t3, $t0, $t1
	div $t2, $t2, 2
	mul $t3, $t3, $t2
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	