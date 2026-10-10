.data
msg: .asciz "GCD = "

.text
.globl main

main:
    li a0, 48          # a = 48
    li a1, 18          # b = 18

    jal ra, gcd        # call gcd(a,b)

    mv t0, a0          # save returned GCD

    # Print message
    li a7, 4
    la a0, msg
    ecall

    # Print GCD
    li a7, 1
    mv a0, t0
    ecall

    # Exit
    li a7, 10
    ecall
    
# Returns GCD in a0
gcd:
loop:
    beq a1, zero, done     # if b == 0, finish

    rem t0, a0, a1         # t0 = a % b
    mv a0, a1              # a = b
    mv a1, t0              # b = remainder

    j loop

done:
      ret      # return to main