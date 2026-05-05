.data
	msg1: .asciiz "Digite o primeiro numero: "
	msg2: .asciiz "Digite o segundo numero: "
	msg3: .asciiz "Valor da divisao: "

.text
main:
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	add $t0, $v0, 0

enquanto:
	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 5
	syscall
	add $t1, $v0, 0

	beqz $t1, enquanto

	div $t0, $t1
	mflo $t2

	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 1
	add $a0, $t2, 0
	syscall