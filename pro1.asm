.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
		inval BYTE "ENTER A VALUE" , 0
		x DWORD ? , 0
		shw BYTE "The Result =" , 0
		res BYTE 11 DUP (?) , 0
.CODE
MainProc PROC
		input inval,x,40
		atod x
		mov ebx,eax
		input inval,x,40
		atod x
		mov ecx,eax
		input inval,x,40
		atod x
		add ebx,ecx
		add eax,eax
		sub ebx,eax
		inc ebx
		neg ebx
		dtoa res,ebx
		output shw,res
		mov eax,0
		ret
MainProc ENDP
END
