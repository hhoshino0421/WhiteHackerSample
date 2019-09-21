_TEXT	segment
	
		public asmCode

;***************************
;rcx = a
;rdx = b
;***************************

asmCode  proc
	
	mov eax, ecx	; eax = a
	add eax, edx	; eax = a + b

	ret

asmCode	endp

_TEXT	ends
		end
