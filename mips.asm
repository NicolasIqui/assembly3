.data
msg1: asciiz "\n digite o valor em reais"
msg2: .asciiz "\n o valor covertido para dolar e "
.text

main:
li $vo,4
la $a0,msg1
syscall

li $v0,5
syscall
move $t0,$v0

li $t1,5
mul $t2,$t1,$t0

li $v0,4
la $a0,msg2
syscall

li $v0,1
move $a0,$t2
syscall

li,$v0,10
syscall