.data
arr: .space 12
firstGrade: .word 0
m1 : .asciiz" Enter The First number : "
m2 : .asciiz" Enter The Second number : "
m3 : .asciiz" Enter The Third number : "
m4 : .asciiz" Total  is : "
.text
.globl main
main:
la $t0 , arr



 
li $v0 , 4
la $a0 , m1
syscall
li $v0 , 5
syscall
li $t1 , 0
add $t1 , $t1 , $v0
sw $t1 , ($t0)

li $v0 , 4
la $a0 , m2
syscall
li $v0 , 5
syscall
li $t2 , 0
add $t2 , $t2 , $v0
sw $t2 , 4($t0)

li $v0 , 4
la $a0 , m3
syscall
li $v0 , 5
syscall
li $t3 , 0
add $t3 , $t3 , $v0
sw $t3 , 8($t0)


lw $t4 , ($t0)
lw $t5 , 4($t0)
lw $t6 , 8($t0)
li $t7 , 0
add $t7 , $t4 , $t5
add $t7 , $t7 , $t6

li $v0 , 4
la $a0 , m4
syscall
li $v0 , 1
add $a0 , $t7 , $0
syscall

li $v0,10
syscall
.end main