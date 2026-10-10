# Exercise 6 — Count Even Numbers

What the program does

The program goes through an array of 10 integers and counts how many numbers are even. 
It uses the remainder after division by 2 to determine whether each number is even.

Registers used

t0 — base address of the array
t1 — array index
t2 — array size
t3 — divisor (2)
t4 — count of even numbers
t5 — array element / offset
t6 — temporary address and remainder
a0 — stores the final count for printing
a7 — system call number

The main challenge was calculating the address of each array element using the index multiplied by 4.
I also had to keep track of temporary registers while loading the array element and calculating the remainder.
