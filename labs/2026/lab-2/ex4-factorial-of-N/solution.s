.data

.text
.globl main

main:
    li a0, 5              # N = 5

    jal ra, factorial     # call factorial

    # Print result
    li a7, 1              # print integer
    ecall

    # Exit
    li a7, 10
    ecall


factorial:
    addi sp, sp, -4       # make space on stack
    sw ra, 0(sp)          # save return address

    li t0, 1              # result = 1

loop:
    beq a0, zero, done    # if N == 0, finish
    mul t0, t0, a0        # result = result * N
    addi a0, a0, -1       # N = N - 1
    j loop

done:
    mv a0, t0             # return result in a0

    lw ra, 0(sp)          # restore return address
    addi sp, sp, 4        # restore stack

    ret                   # return to main