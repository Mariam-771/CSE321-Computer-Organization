.data
n: .asciiz "Enter the number of integers n = "
nums: .asciiz "\n Enter number: "
avg: .asciiz "\nThe average is: "


.text

main:                   

# Entering n
li $v0, 4
la $a0, n
syscall

# reading n
li $v0, 5
syscall
move $s0, $v0

# count
li $t1, 0

# sum
li $t2, 0

while:

beq $t1, $s0, endWhile

li $v0, 4
la $a0, nums
syscall

li $v0, 5
syscall
move $t3, $v0       # entered number

add $t2, $t2, $t3   # sum = sum + number

addi $t1, $t1, 1    # count = count + 1

j while

endWhile:

li $v0, 4
la $a0, avg
syscall

div $t2, $s0        # average = sum / n
mflo $a0

li $v0, 1
syscall

exit:
li $v0, 10
syscall

