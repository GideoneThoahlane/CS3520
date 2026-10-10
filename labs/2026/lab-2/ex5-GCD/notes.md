Exercise 4 — GCD
What the program does

The program computes the greatest common divisor (GCD) of two integers using Euclid’s algorithm.
It repeatedly calculates the remainder until the second number becomes zero. The first number is then the GCD.

Registers used.
a0 — first number and return value (GCD)
a1 — second number
t0 — temporary register used to store the remainder
ra — stores the return address of the procedure

The main challenge was keeping the registers organised while updating the two numbers.