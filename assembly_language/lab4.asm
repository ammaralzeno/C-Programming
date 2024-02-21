
.text

	addi $a0,$0,4     # set $a0 to 4
	addi $v0,$a0,2	  # test addi, set $v0
	add  $v0,$v0,$a0  # start of counter. Should be 10
loop:	beq  $v0,$a0,done # test, jump to done. 
        addi $v0,$v0,-3   # decrement. Loops twice.
        beq  $0,$0,loop   # emulating an unconditional jump
done:	add  $0,$0,$0	  # NOP	
	







.text
.globl main




main:

    addi $a0, $0, 8   # factorial number n
    addi $a1, $a0, 0  # copy to a1
   
loop1:
    
    beq $a0, $zero, end2  #if factorial is 0, go to end2
    nop
    addi $a1, $a1, -1     # decrement a1 for multipliers, Ex. 4! = 4 * 3 * 2 * 1
    beq $a1, 1, end       # end if a1 is 1, because we dont need to multiply by 1
    nop
    beq $a2, $0, temp2    # if a2 is 0, go to temp 2 (will only jump on first multiplication)
    nop
    
temp1:

    addi $a0, $a2, 0      # set a0 to accumulator Ex: 4! = (4 * 3) * 2, a0 needs to be 12 not 4
    addi $a3, $a1, 0      # copy a1 and multiply a3 with a0
    beq, $0, $0, loop3   
    nop
    
temp2:

    addi $a3, $a1, 0      # copy a1 and multiply a3 with a0
    beq, $0, $0, loop2
    nop
    

loop2:

    beq $a3, $zero, loop1   # if the multiplier is zero, exit loop
    nop
    add $a2, $a2, $a0       # add number to accumulator
    addi $a3, $a3, -1       # decrement multiplier
    beq $0, $0, loop2       # repeat loop
    nop

loop3:

    beq $a3, 1, loop1     # if multiplier is zero, exit loop
    nop
    add $a2, $a2, $a0     # add number to accumulator
    addi $a3, $a3, -1     # decrement multiplier
    beq $0, $0, loop3     # repeat loop
    nop

end:
    
    addi $v0, $a2, 0
    
endloop:

    beq $0, $0, endloop
    nop
    
end2:

    addi $v0, $v0, 1
    beq $0, $0, endloop
    nop
    

    

    .text
.globl main




main:

    addi $a0, $0, 0   # factorial number n
    addi $a1, $a0, 0  # copy to a1
   
loop1:
    
    beq $a0, $zero, end2  #if factorial is 0, go to end2
    nop
    addi $a1, $a1, -1     # decrement a1 for multipliers, Ex. 4! = 4 * 3 * 2 * 1
    beq $a1, 1, end       # end if a1 is 1, because we dont need to multiply by 1
    nop
    beq $a2, $0, temp2    # if a2 is 0, go to temp 2 (will only jump on first multiplication)
    nop
    
temp1:

    addi $a0, $a2, 0      # set a0 to accumulator Ex: 4! = (4 * 3) * 2, a0 needs to be 12 not 4
    addi $a3, $a1, 0      # copy a1 and multiply a3 with a0 in loop3
    beq, $0, $0, loop3   
    nop
    
temp2:

    addi $a3, $a1, 0      # copy a1 and multiply a3 with a0 in loop2
    beq, $0, $0, loop2
    nop
    

loop2:

    
    beq $a3, $zero, loop1   # if the multiplier is zero, exit loop
    nop
    mul $a2, $a3, $a0
    beq $0, $0, loop1       # repeat loop
    nop

loop3:

    beq $a3, 1, loop1     # if multiplier is zero, exit loop
    nop
    mul $a2, $a3, $a0
    beq $0, $0, loop1     # repeat loop
    nop

end:
    
    addi $v0, $a2, 0
    
endloop:

    beq $0, $0, endloop
    nop
    
end2:

    addi $v0, $v0, 1
    beq $0, $0, endloop
    nop
    

    
    
    

