.data
	msg1: .asciiz "Digite o primeiro numero: "
	msg2: .asciiz "Digite o segundo numero: "
	msg3: .asciiz "Valor da operacao: "
	C: .word 0

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
	
	beq $t0, $t1, se
	j senao
	
se:
	add $t2, $t0, $t1
	j fim_se
	
senao:
	mul $t2, $t0, $t1
	
fim_se:
	sw $t2, C

	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	lw $a0, C
	syscall