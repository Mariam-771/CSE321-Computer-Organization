.data
Prompt: .asciiz "Choose 1 or 2 = "
case1_msg: .asciiz "you chose 1\n"
case2_msg: .asciiz "you chose 2\n"
other: .asciiz "invalid choice\n"


.text
main:

li $v0, 4
la $a0, Prompt
syscall

li $v0, 5
syscall
move $t0, $v0      # choice

switch:

li $t1, 1
beq $t0, 1, case1

li $t1, 2
beq $t0, 2, case2

j default

case1: 
       li $v0, 4
       la $a0, case1_msg
       syscall
       j endcase
case2:
       li $v0, 4
       la $a0, case2_msg
       syscall
        j endcase
default:
       li $v0, 4
       la $a0, other
       syscall
        j endcase

endcase:

exit:
li $v0, 10
syscall