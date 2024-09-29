global strlen
strlen:
	mov	rdx, rdi
	mov	rcx, rdi
check_current_byte:
	mov	al, [rcx]
	cmp	al, 0
	je	end_of_string
next_byte:
	add	rcx, 1
	jmp	check_current_byte
end_of_string:
	mov	rax, rcx
	sub	rax, rdx
	ret
