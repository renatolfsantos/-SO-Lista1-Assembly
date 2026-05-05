.data
	msg1: .asciiz "Digite o numero: "
	msg2: .asciiz "Valor da operacao: "

.text
main:
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	add $t0, $v0, 0 
	
	bgtz, $t0, se
	j senao

se:
	mul $t1, $t0, 2
	j fim_se
	
senao:
	mul $t1, $t0, 3

fim_se:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	