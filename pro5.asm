.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
		inval BYTE "ENTER A VALUE" , 0
		x DWORD ? , 0
		x1 DWORD ? , 0
		x2 DWORD ? , 0
		x3 DWORD ? , 0
		shw1 BYTE "Sum =" , 0
		shw2 BYTE "Average =" , 0
		res1 BYTE 11 DUP (?) , 0
		res2 BYTE 11 DUP (?) , 0
.CODE
MainProc PROC
		input inval,x,40
		atod x
		mov x1,eax
		input inval,x,40
		atod x
		mov x2,eax
		input inval,x,40
		atod x
		mov x3,eax
		input inval,x,40
		atod x
		add eax,x1
		add eax,x2
		add eax,x3
		dtoa res1,eax
		output shw1,res1
		atod res1
		mov cx,4
		cwd
		div cx
		dtoa res2,eax
		output shw2,res2
		mov eax,0
		ret
MainProc ENDP
END