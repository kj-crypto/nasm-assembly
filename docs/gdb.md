## GDB commands cheatsheet
- `layout asm`
- `break _start`
- `run` - start program
- `stepi` - step into


### Restart debugger
Execute `run` command, then confirm with "y", and `run` again

### Float numbers
- `p $xmm0.v4_float[0]` - print float of register `xmm0
