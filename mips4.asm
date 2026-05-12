.data
msg1: asciiz "\n digite o  salario "
msg2: .asciiz "\n  digite o  salario  atual sera"

.text

main:
li $vo,4
la $a0,msg1
syscall

li $v0,5
syscall
move $t0,$v0

li $t1,25
mul $t2,$t0,$t1

li $t3,100
div $t2,$t3
mflo $t4

add $t5,$t4,$t0
li $v0,4

la $a0,msg2
syscall

li $v0,1
move $a0,$t5 
syscall

li $v0,10
syscall
