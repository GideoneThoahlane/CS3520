Exercise 1 — Larger of Two
What the program does

The program compares two integers, a and b, and prints the larger value.

Register usage
t0 — stores a
t1 — stores b
a0 — stores the value to be printed
a7 — specifies the print system call
What was harder than expected

The main challenge was understanding how branch instructions such as bgt and blt are used to compare the two values and 
choose the correct section of the program.