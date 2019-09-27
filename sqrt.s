	.globl sqrt
sqrt:
	movl $0, %eax
	movl $15, %ecx

loop:
	cmpl $0, %ecx
	jle endl
	

	or $0x8000, %eax
	movl %eax, %edx 

	imull %eax, %edx

	cmpl %edi, %edx
	jg restore
	dec %ecx
	jmp loop

restore:
	dec %ecx
	jmp loop

endl:
	ret
