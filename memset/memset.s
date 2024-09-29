%define NULL 0

global memset
memset:
	cmp	rdi, NULL
	je	return
while:
	cmp	rdx, 0
	je	return
next_byte:
	mov	[rdi], sil
	add	rdi, 1
	sub	rdx, 1
	jmp	while
return:
	mov	rax, rsi
	ret
