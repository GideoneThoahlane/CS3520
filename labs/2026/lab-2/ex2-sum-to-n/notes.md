Sum to N

 What the program does

The program calculates the sum of all integers from 1 to N using a loop. For N = 10, the result is 55.

Register usage

t0 — stores N
t2 — loop counter `i`
t3 — running sum
a0 — stores the final sum for printing
a7 — system call number

The main challenge was keeping track of the loop condition and making sure the counter was increased after each addition. 
I also had to understand how the loop stops when `i` becomes greater than N.
