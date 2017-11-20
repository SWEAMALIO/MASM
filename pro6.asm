.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
		inval1 BYTE "Enter a grade" , 0
		inval2 BYTE "Enter a weight " , 0
		a DWORD ? , 0
		g1 DWORD ? , 0
		g2 DWORD ? , 0
		g3 DWORD ? , 0
		g4 DWORD ? , 0
		w1 DWORD ? , 0
		w2 DWORD ? , 0
		w3 DWORD ? , 0
		w4 DWORD ? , 0
		shw1 BYTE "The Weighted Sum =" , 0
		shw2 BYTE "The Sum Of Weights =" , 0
		shw3 BYTE "The Weighted Average =" , 0
		ws BYTE 11 DUP (?) , 0
		sow BYTE 11 DUP (?) , 0
		wa BYTE 11 DUP (?) , 0
.CODE
MainProc PROC
		input inval1,a,40
		atod a
		mov g1,eax
		input inval2,a,40
		atod a
		mov w1,eax
		input inval1,a,40
		atod a
		mov g2,eax
		input inval2,a,40
		atod a
		mov w2,eax
		input inval1,a,40
		atod a
		mov g3,eax
		input inval2,a,40
		atod a
		mov w3,eax
		input inval1,a,40
		atod a
		mov g4,eax
		input inval2,a,40
		atod a
		mov w4,eax
		mov eax,g1
		imul eax,w1
		mov ebx,g2
		imul ebx,w2
		mov ecx,g3
		imul ecx,w3
		mov edx,g4
		imul edx,w4
		add edx,ecx
		add edx,ebx
		add edx,eax
		dtoa ws,edx
		output shw1,ws
		mov eax,w1
		add eax,w2
		add eax,w3
		add eax,w4
		dtoa sow,eax
		output shw2,sow
		atod ws
		mov ebx,eax
		atod sow
		mov a,eax
		mov eax,ebx
		cwd
		div a
		dtoa wa,eax
		output shw3,wa
		mov eax,0
		ret
MainProc ENDP
END
