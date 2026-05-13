.data
msg1:asciiz "\n Digite um valor de 1 a 100"
msg2:asciiz "\n Centena "
msg3:asciiz "\n Dezena "
msg4:asciiz "\n Unidade "

.text
main:

li $vo,4
la $a0,msg1
syscall

li $v0,5
syscall
move $t0,$v0

li $t1,100

div t0,100
mflo $t2 $centena
mfhi $t3 #dezena e unidade

li $t4,10
div $t3,$t4
mflo $t5 #dezena 
mfhi $t6 #unidade

li $vo,4
la $a0,msg2
syscall

li $v0,1
move $a0,$t2
syscall

li $vo,4
la $a0,msg3
syscall

li $v0,1
move $a0,$t5
syscall

li $vo,4
la $a0,msg4
syscall

li $v0,1
move $a0,$t6
syscall
