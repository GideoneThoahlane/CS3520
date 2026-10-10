.data
N: .word 10
.text
main:
    lw t0,N
    li t2,1 #t2=1 ,i=1
    li t3, 0 #t3=sum=0

loop:
    bgt t2,t0, done #t2>t0, i>N go to done
    add t3,t3,t2 #else sum=sum + i
    addi t2,t2,1 # i++
    j loop
done:
    mv a0,t3
    li a7,1
    ecall
    