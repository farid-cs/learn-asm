format ELF64 executable

define SYS_write  1
define SYS_exit  60
define EXIT_SUCCESS 0

segment readable executable

_start:
	mov rdi, 10
	call dump

	mov rax, SYS_exit
	mov rdi, EXIT_SUCCESS
	syscall

dump:
	sub rsp, 22

	mov rax, rdi
	mov r10, 0

	mov byte [rsp+r10], 10
	inc r10

.append_digit:
	mov rdx, 0
	mov rbx, 10
	div rbx

	add rdx, 48
	mov [rsp+r10], dl
	inc r10

	cmp rax, 0
	jne .append_digit

.print_digit:
	dec r10

	mov rax, SYS_write
	mov rsi, rsp
	add rsi, r10
	mov rdi, 1
	mov rdx, 1
	syscall

	cmp r10, 0
	jne .print_digit

	add rsp, 22

	ret
