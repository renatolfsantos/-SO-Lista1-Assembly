.data
	msg: .asciiz "Digite um numero: "
	r1:  .asciiz "\n[0-25]: "
	r2:  .asciiz "\n[26-50]: "
	r3:  .asciiz "\n[51-75]: "
	r4:  .asciiz "\n[76-100]: "

.text
main:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0

loop:
	li $v0, 4
	la $a0, msg
	syscall

	li $v0, 5
	syscall
	add $t4, $v0, 0

	bltz $t4, fim

	blt $t4, 0, loop
	bgt $t4, 100, loop

	ble $t4, 25, c1
	ble $t4, 50, c2
	ble $t4, 75, c3
	ble $t4, 100, c4
	j loop

c1:
	add $t0, $t0, 1
	j loop

c2:
	add $t1, $t1, 1
	j loop

c3:
	add $t2, $t2, 1
	j loop

c4:
	add $t3, $t3, 1
	j loop

fim:
	li $v0, 4
	la $a0, r1
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall

	li $v0, 4
	la $a0, r2
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall

	li $v0, 4
	la $a0, r3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall

	li $v0, 4
	la $a0, r4
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall