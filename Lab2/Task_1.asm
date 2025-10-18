.data
firstNumPrompt: .asciiz "Enter the first number: "
secNumPrompt: .asciiz "\nEnter the second number: "
thirdNumPrompt: .asciiz "\nEnter the third number: "
fourthNumPrompt: .asciiz "\nEnter the fourth number: "
result: .asciiz"\nThe average is: "

.text
main :

li $v0, 4
la $a0, firstNumPrompt
syscall

li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, secNumPrompt
syscall

li $v0, 5
syscall
move $t1, $v0

li $v0, 4
la $a0, thirdNumPrompt
syscall

li $v0, 5
syscall
move $t2, $v0

li $v0, 4
la $a0, fourthNumPrompt
syscall

li $v0, 5
syscall
move $t3, $v0

li $v0, 4
la $a0, result
syscall

add $t4, $t0, $t1
add $t5, $t2, $t3
add $a0, $t4, $t5

li $t6, 4 
div $a0, $t6

mflo $a0 

li $v0, 1
syscall

exit:
li $v0, 10
syscall
