	.globl sqrt
sqrt:
	movl $0, %eax
	movl $15, %ecx
	movl $0x8000, %esi

loop:
	cmpl $0, %ecx
	jle endl
	

	or %esi, %eax
	movl %eax, %edx 

	imull %eax, %edx

	cmpl %edi, %edx
	jg restore
	
	dec %ecx
	shr $1, %esi
	jmp loop

restore:
	xor %esi, %eax
	shr $1, %esi
	dec %ecx
	jmp loop

endl:
	ret
