.section .data
EMACS_STRING:
	.ascii "a hotkey for \0"

.section .text
.globl _start
_start:

BEGIN_LOOP:
 pushq EMACS_STRING
 call printf
 add $8, %rbp
 jmp BEGIN_LOOP

END_LOOP: 
 call exit
