# 从键盘输入一字符串，然后在屏幕打印处出来
.section .bss
.lcomm str, 100

.section .text
.globl _start
_start:
	movl $3, %eax
	movl $0, %ebx
	movl $str, %ecx
	movl $100, %edx
	int $0x80
	
	movl %eax, %edx
	movl $4,%eax
	movl $1, %ebx
	movl $str, %ecx
	int $0x80

	movl $1, %eax
	int $0x80

