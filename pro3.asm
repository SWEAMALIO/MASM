.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
		len BYTE "ENTER THE LENGTH" , 0
		wed BYTE "ENTER THE WIDTH" , 0
		x DWORD ? , 0
		shw BYTE "The Result =" , 0
		res BYTE 11 DUP (?) , 0
.CODE
MainProc PROC
		input len,x,40
		atod x
		mov ebx,eax
		input wed,x,40
		atod x
		add ebx,eax
		add ebx,ebx
		dtoa res,ebx
		output shw,res
		mov eax,0
		ret
MainProc ENDP
END