Step 5 — Analyse the New Instruction Formats

1. B-Type Instruction

Instruction: `blt t0, t1, small`

Encoding: `0x0062ca63`

| Instruction | Format | opcode | funct3 | rs1, rs2 | Immediate fields |
|---|---|---|---|---|---|
| `blt t0, t1, small` | B-type | `1100011` | `100` | `rs1=00101`, `rs2=00110` | `imm[12]=0`, `imm[10:5]=000000`, `imm[4:1]=1010`, `imm[11]=0` |

2. J-Type Instruction

Instruction: `j done` (assembled as `jal x0, done`)

Encoding: `0x0180006f`

| Instruction | Format | opcode | rd | Immediate fields |
|---|---|---|---|---|
| `jal x0, done` | J-type | `1101111` | `00000` | `imm[20]=0`, `imm[10:1]=0000001100`, `imm[11]=0`, `imm[19:12]=00000000` |

The immediate bits are stored in scattered positions to maintain consistent locations for register and opcode fields across RISC-V instruction formats while allowing branch and jump instructions to encode their target offsets.