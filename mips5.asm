.data
msg1:.asciiz "\n  digite a " 
msg2: .asciiz "\n digite b"
msg3: .asciiz "\n digite c "
msg4: .asciiz "\n existem  2 raizes"
msg5: .asciiz "\n  existe 1 raiz "
msg6: .asciiz "\n nÃ£o existem raÃ­zes reais"
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
li $v0,5 #b
syscall
move $t1,$v0


li $v0,4
la $a0,msg3
syscall
li $v0,5 
syscall 	
move $t2,$v0
li $t6,4
li $t9,0
mul $t3,$t1,$t1  

#t3  e  igual b ao quadrado
mul $t4,$t0,$t2 #a,b 
mul $t5,$t4,$t6 #  $t4 = a .c.4
sub $t7,$t3,$t5   # b ao quadrado - 4.a.c

beq $t7,$t9  igual a 0
bgt $t7>$t9 logicadoif
 li $v0,4
 la $a0,msg6
 syscall
 
j fim

logicadoif:
li $v0,4
la $a0,msg4
syscall
 
jump fim

iguala0:

li $v0,4
la $a0,msg5
syscall

j fim


fim:
li $v0, 10             
syscall