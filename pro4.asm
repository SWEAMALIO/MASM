.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
		inval1 BYTE "Enter the number of pennies " , 0
		inval2 BYTE "Enter the number of nicklels " , 0
		inval3 BYTE "Enter the number of demies " , 0
		inval4 BYTE "Enter the number of quarters " , 0
		inval5 BYTE "Enter the number of fifty-cents " , 0
		inval6 BYTE "Enter the number of dollars " , 0
		x DWORD ? , 0
		p DWORD ? , 0
		n DWORD ? , 0
		dem DWORD ? , 0
		q DWORD ? , 0
		fc DWORD ? , 0
		dol DWORD ? , 0
		shw BYTE "The Total Number of Cents = " , 0
		res BYTE 11 DUP (?) , 0
.CODE
MainProc PROC
		input inval1,x,40
		atod x
		mov p,eax
		input inval2,x,40
		atod x
		imul eax,5
		mov n,eax
		input inval3,x,40
		atod x
		imul eax,10
		mov dem,eax
		input inval4,x,40
		atod x
		imul eax,25
		mov q,eax
		input inval5,x,40
		atod x
		imul eax,50
		mov fc,eax
		input inval6,x,40
		atod x
		imul eax,100
		mov dol,eax
		mov eax,p
		add eax,n
		add eax,dem
		add eax,q
		add eax,fc
		add eax,dol
		dtoa res,eax
		output shw,res
		mov eax,0
		ret
MainProc ENDP
END
