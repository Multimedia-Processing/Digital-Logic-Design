fail!


wsl> gcc -I /usr/include/SDL2 bezier.c -o bezier -lSDL2 -lSDL2main
/usr/bin/ld: /tmp/ccjKbhED.o: undefined reference to symbol 'floorf@@GLIBC_2.2.5'
/usr/bin/ld: /lib/x86_64-linux-gnu/libm.so.6: error adding symbols: DSO missing from command line
collect2: error: ld returned 1 exit status
wsl> gcc -I /usr/include/SDL2 bezier.c -o bezier -lSDL2 -lSDL2main -lm
wsl> ./bezier
error: XDG_RUNTIME_DIR not set in the environment.
SDL error: No available video device