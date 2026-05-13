.data
msg1: asciiz "\n digite o primeiro valor"
msg2: .asciiz "\n  digite o  segundo valor"
msg3: .asciiz "\n  São Iguais"
msg4:.asciiz "\n B>A
msg5:.asciiz  "\n A>B
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

beq $t0,$t1  iguais
bgt $t0>$t1 logicadoif

li $vo,4
la $a0,msg4
syscall


li $v0,1
move $a0,$t1
syscall

li $v0,1
move $a0,$t0
syscall
j fim

iguais:
li $vo,4
la $a0,msg3
syscall 

j fim:

logicadoif
li $vo,4
la $a0,5
syscall 

li $v0,1
move $a0,$t0
syscall

li $v0,1
move $a0,$t1
syscall
j fim:

fim:
li $v0,10
syscall
