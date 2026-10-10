Exercise 5 — Factorial

What the program does

The program calculates the factorial of an integer using a procedure and a loop. For example, when N = 5, it calculates 5 × 4 × 3 × 2 × 1 = 120.

Register usage.
a0 — stores N and the final factorial result
t0 — stores the running factorial result
a7 — specifies the system call for printing and exiting
sp — stack pointer used to save the return address
ra — stores the return address of the procedure


The main challenge was understanding why the return address must be saved on the stack before the procedure changes the stack.