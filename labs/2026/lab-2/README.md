Step 2 — Worked Example: Maximum Value in an Array

1. 
The C++ loop continues while `i < n`. In assembly, `bge t1, a1, done` branches to `done` when `i >= n`. The condition is inverted to exit the loop when the continuation condition becomes false.

2. 
The `li` (Load Immediate) pseudo-instruction usually becomes `addi` or another instruction sequence, depending on the constant. The `mv` (Move) pseudo-instruction becomes `addi` with an immediate value of zero, for example, `mv s0, a0` becomes `addi s0, a0, 0`. The `la` (Load Address) pseudo-instruction becomes one or more instructions, commonly `auipc` and `addi`, depending on the address and addressing method. The `ble` (Branch if Less than or Equal) pseudo-instruction becomes `bge` with the operands reversed; for example, `ble t4, s1, skip` becomes `bge s1, t4, skip`. Pseudo-instructions make assembly code easier to read and write by simplifying common operations that would  require real instructions or multiple instructions.

3. 
The procedure saves `s1` because it is a callee-saved register. It must restore the caller's original value before returning. It does not save `ra` because `find_max` is a leaf procedure that does not call another procedure. Therefore, its return address is not overwritten, and `ra` remains available for returning to the caller.