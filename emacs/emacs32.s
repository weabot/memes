.section .data
EMACS_STRING:
	.ascii "a hotkey for \0"

.section .text
.globl _start
_start:

BEGIN_LOOP:
 push EMACS_STRING
 call printf
 add $4, %esp
 jmp BEGIN_LOOP

END_LOOP: 
 call exit
