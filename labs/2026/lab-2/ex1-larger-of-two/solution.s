.data
a: .word 10
b: .word 50
.text
.globl main
main:
    lw t0, a
    lw t1, b
    bgt t0,t1,larger # if a>b go to larger
    blt t0,t1, small
    
larger:
    mv a0, t0
    li a7,1
    ecall
    j done
small:
   mv a0, t1
   li a7,1
   ecall 
   j done
equal:
     nop
done:
     nop
    