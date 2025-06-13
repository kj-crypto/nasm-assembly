## NASM assembly
This is nasm assembly simple programs.
It serves as a knowledge base

### Setup
#### GDB
```
echo "set disassembly-flavor intel" >> ~/.gdbinit
```

#### 32-bit libc
```
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install libc6:i386
sudo ln -s /lib/i386-linux-gnu/libc.so.6 /lib/i386-linux-gnu/libc.so
```

### Notes
More detailed notes can be find in [docs/notes.md](./docs/notes.md).
