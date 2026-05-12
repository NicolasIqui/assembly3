.data
msg1:.asciiz "\n digite o seu ano de nascimento" 
msg2: .asciiz "\n digite o mês de seu nascimento"
msg3: .asciiz "\n digite o ano atual "
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

li $v0,4
la $a0,msg4
syscall
li $v0,5 #salva o mes atual em t3
syscall
move $t3,$v0


sub $t5,$t2,$t0
li $t6,12
mul $t7,$t6,$t5
bge $t3,$t1 Logica_do_IF #se o  mes atual for maior ou igual que o mes de nascimento 
sub $t8,$t1,$t3
sub $t7,$t7,$t8
J fim 
Logica_do_IF: 
add $t8,t1,t3  isso vai dar erro pq vai somar somar eu quero que subtraia e dps some 
sub $t8,$t3,$t1 # eu tinha cometido um erro nesta parte 
add $t7,$t7,$t8
fim:

li $v0,1
move $a0,$t7
syscall

li $v0,10
syscall




	