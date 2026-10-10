.data
numbers: .word 1,2,3,4,5,6,7,8,9,10
.text
main:
    la t0, numbers
    li t1, 0  # i=1
    li t2, 10 # size(n)=10
    li t3, 2  # t3 = 2 since we are going to do mod 2
    li t4, 0  # t4 = count = 0
    
loop:
    bge t1,t2, done
    
    slli t5, t1, 2
    add t6, t0, t5 # t5 = starting address + offset
    lw t5, 0(t6)
    
    rem t6, t5,t3
    bne t6, x0, is_odd
    addi t4, t4, 1
    addi t1, t1, 1
    j loop
    
is_odd:
    addi t1, t1,1 # i++
    j loop
    
done:
    mv a0, t4
    li a7,1
    ecall
    
    
    