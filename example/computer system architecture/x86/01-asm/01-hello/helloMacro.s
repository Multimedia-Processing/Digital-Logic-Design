        .include "../myMacro.s"
        .global _start

        .text
_start:
        WRITES $1, $message, $13
        EXIT
message:
        .ascii  "Hello, world\n"

