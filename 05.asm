.data
	msg1: .asciiz "Digite o primeiro cateto: "
	msg2: .asciiz "Digite o segundo cateto: "
	msg3: .asciiz "Valor da hipotenusa: "

.text
main:
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	mul $t0, $v0, $v0 

	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	mul $t1, $v0, $v0

	add $t2, $t0, $t1

	mtc1 $t2, $f0
	cvt.s.w $f0, $f0
	sqrt.s $f2, $f0

	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 2
	mov.s $f12, $f2
	syscall