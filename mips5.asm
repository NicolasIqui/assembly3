.data
msg1:.asciiz "\n  digite a " 
msg2: .asciiz "\n digite b"
msg3: .asciiz "\n digite c "
msg4: .asciiz "\n digite o mês atual"
.text
main:

li $v0,4
la $a0,msg1
syscall
li $v0,5  #salva o ano nasc em t0
syscall
move $t0,$v0

li $v0,4
la $a0,msg2
syscall
li $v0,5 #salva o mes do nasci em t1
syscall
move $t1,$v0


li $v0,4
la $a0,msg3
syscall
li $v0,5 #salva o ano atual em t2
syscall 	
move $t2,$v0
