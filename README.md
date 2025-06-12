## NASM assembly
This is nasm assembly simple programs.
It serves as a knowledge base

### Setup
 - set `gdb` by `echo "set disassembly-flavor intel" > ~/.gdbinit`
 - setup 32-bit libc on 64-bit machine by
```
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install libc6:i386
sudo ln -s /lib/i386-linux-gnu/libc.so.6 /lib/i386-linux-gnu/libc.so
```

### Notes
More detailed notes can be find in [docs/notes.md](./docs/notes.md).
