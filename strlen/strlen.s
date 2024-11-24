format ELF64

public strlen
strlen:
	mov	rdx, rdi
	mov	rcx, rdi
_loop:
	mov	al, [rcx]
	cmp	al, 0
	jne	_next_byte
	mov	rax, rcx
	sub	rax, rdx
	ret
_next_byte:
	add	rcx, 1
	jmp	_loop
