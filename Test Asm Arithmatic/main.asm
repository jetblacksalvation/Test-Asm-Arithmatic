includelib kernel32.lib
includelib msvcrt.lib
ExitProcess  proto	

.data
	string byte "bruh", 0
.code 
	AddTwo proc
		lea rax, [rcx + rdx] ; [] allows for more complicated arithmatic. lea is required because of something to do with addresses 
		; [] might be an address operation, if that's even a thing 
		; reaplacing lea with mov yields an invalid read error 
		; google Using the LEA instruction for arbitrary arithmetic
		ret
	AddTwo endp

	main proc
		mov rbx,  offset string
		mov rcx, 1;
		lea r8, [rbx+rcx] ; db - pointer mnumonic byte ; lea derefrence an address??
		mov rcx, 10
		mov rdx, 10
		call AddTwo	

		call ExitProcess
	main endp
	end