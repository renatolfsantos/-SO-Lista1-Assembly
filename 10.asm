.data
	msg1: .asciiz "Digite o dividendo: "
	msg2: .asciiz "Digite o divisor: "
	msg3: .asciiz "Valor do resto: "

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
	
enquanto:
	blt $t0, $t1, fim_enquanto 
	sub $t0, $t0, $t1
	j enquanto
	
fim_enquanto:
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall