- Fetch decode execute
### Read from memory
- put to bus
- assert RD pin
- DRAM vs SRAM(static)

### Modes of operation
- protected mode
- real address mode
- system management mode

### Types of registers
- EAX - extended, 32 bit
  - AX - half of 32 bit
  - AH - 8-bit high
  - AL - 8-bit low

### BSS - block started by symbol
- keeps uninitialized global and static variables

### EFLAGS register
- `PF` - parity flags 0 - even, 1 - odd
  - check issue in data transfer, like when we flip a bit when
    read data
- `IF` - interrupt flag
- `CF` - carry flag, indicates when is carry, adding with overflow
- `AF` - auxiliary carry flag, indicates borrow from bit 3 to bit 4,
         its half carry flag
- `ZF` - zero flag, set if register from operation is set to 0
- `SF` - sign flag, 1 - negative, 0 - positive

