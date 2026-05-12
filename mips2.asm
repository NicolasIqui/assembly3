.data
msg1: asciiz "\n digite o primeiro valor"
msg2: .asciiz "\n  digite o  segundo valor"
msg3: .asciiz "\n  os valores trocados"

.text

main:
li $vo,4
la $a0,msg1
syscall

li $v0,5
syscall
move $t0,$v0


li $vo,4
la $a0,msg2
syscall

li $v0,5
syscall
move $t1,$v0

move $t2,$t0   #c=a
move $t0,$t1   #a=b 
move $t1,$t2   #b=c

li $vo,4
la $a0,msg3
syscall


li $v0,1
move $a0,$t0
syscall

li $v0,1
move $a0,t1
syscall

li $v0,10
syscall
