format ELF64

public memset
memset:
	cmp	rdi, 0
	je	_return
_loop:
	cmp	rdx, 0
	jne	_set_byte
_return:
	mov	rax, rsi
	ret
_set_byte:
	mov	[rdi], sil
	add	rdi, 1
	sub	rdx, 1
	jmp	_loop
