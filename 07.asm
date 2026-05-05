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
	
	rem $t1, $t0, 2
	
	beqz $t1, se
	j senao
	
se:
	add, $t2, $t0, 5
	j fim_se
	
senao:
	add, $t2, $t0, 8

fim_se:
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall