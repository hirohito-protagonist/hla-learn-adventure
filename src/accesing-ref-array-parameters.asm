; Assembly code emitted by HLA compiler
; Version 2.16 build 4413 (prototype)
; HLA compiler written by Randall Hyde
; NASM compatible output

 bits 32

%define ExceptionPtr__hla_ [dword fs:0]


        global     QuitMain__hla_
        global     DfltExHndlr__hla_
        global     _HLAMain
        global     HWexcept__hla_
        global     start


section  .text code align=16


        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     STDOUT_PUTU32SIZE
        extern     abstract__hla_
        extern     STDOUT_PUTU8
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     Raise__hla_
        extern     shortDfltExcept__hla_






section  .text 


; procedure RefArrayParm__hla_1885

RefArrayParm__hla_1885:
;       push        ebp
        db         055h ; 
;        mov        ebp, esp 
        db         089h ; 
        db         0e5h ; mod-reg-r/m
;        and        esp, -4 
        db         083h ; 
        db         0e4h ; 
        db         0fch ; 
;       push        eax
        db         050h ; 
;       push        ecx
        db         051h ; 
;       push        edx
        db         052h ; 
;        mov        edx, [ebp+8] 
        db         08bh ; 
        db         055h ; 
        db         08h ; 
;        mov        ecx, 0 
        db         0b9h ; 
        dd         00h

        jmp        StartFor__hla_1886
for__hla_1886:
;        mov        al, cl 
        db         088h ; 
        db         0c8h ; mod-reg-r/m
;        shr        al, 3 
        db         0c0h ; mod-reg-r/m
        db         0e8h ; 
        db         03h ; 
;        mov        [edx+ecx*2], al 
        db         088h ; 
        db         04h ; 
        db         04ah ; 
;        mov        al, cl 
        db         088h ; 
        db         0c8h ; mod-reg-r/m
;        and        al, 7 
        db         024h ; 
        db         07h ; 
;        mov        [edx+ecx*2+1], al 
        db         088h ; 
        db         044h ; 
        db         04ah ; 
        db         01h ; 
continue__hla_1886:
;        inc        ecx
        db         041h ; 

StartFor__hla_1886:
;        cmp        ecx, 64 
        db         083h ; 
        db         0f9h ; 
        db         040h ; 
        jb         for__hla_1886
exitloop__hla_1886:

;       pop        edx
        db         05ah ; 
;       pop        ecx
        db         059h ; 
;       pop        eax
        db         058h ; 
xRefArrayParm__hla_1885__hla_:
;        mov        esp, ebp 
        db         089h ; 
        db         0ech ; mod-reg-r/m
;       pop        ebp
        db         05dh ; 
 ;               ret        4  
        db         0c2h ; opcode
        dw         04h
;RefArrayParm__hla_1885 endp




;/* HWexcept__hla_ gets called when Windows raises the exception. */


; procedure HWexcept__hla_

HWexcept__hla_:
        jmp        HardwareException__hla_
;HWexcept__hla_ endp


; procedure DfltExHndlr__hla_

DfltExHndlr__hla_:
        jmp        DefaultExceptionHandler__hla_
;DfltExHndlr__hla_ endp




; procedure _HLAMain

_HLAMain:
 nop


; procedure start

start:
;start   endp

        call       BuildExcepts__hla_
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push        ebp
        db         055h ; 
;       push        ebp
        db         055h ; 
;        lea        ebp, [esp+4] 
        db         08dh ; 
        db         06ch ; 
        db         024h ; 
        db         04h ; 


;       push strict dword (MyPts__hla_1888+0)
        db         068h ; 
        dd         (MyPts__hla_1888+0)
        call       RefArrayParm__hla_1885
;        mov        ebx, 0 
        db         0bbh ; 
        dd         00h

        jmp        StartFor__hla_1892
for__hla_1892:
;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
;       push        ebx
        db         053h ; 
;       push dword 2
        db         06ah ; 
        db         02h ; 
;       push dword 32
        db         06ah ; 
        db         020h ; 
        call       STDOUT_PUTU32SIZE
;       push strict dword str__hla_1894
        db         068h ; 
        dd         str__hla_1894
        call       STDOUT_PUTS
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push        eax
        db         050h ; 
;        mov        al, [MyPts__hla_1888+ebx*2] 
        db         08ah ; 
        db         084h ; 
        db         01bh ; 
        dd         MyPts__hla_1888
;        mov        [esp+4], al 
        db         088h ; 
        db         044h ; 
        db         024h ; 
        db         04h ; 
;       pop        eax
        db         058h ; 
        call       STDOUT_PUTU8
;       push strict dword str__hla_1895
        db         068h ; 
        dd         str__hla_1895
        call       STDOUT_PUTS
;       push        ebx
        db         053h ; 
;       push dword 2
        db         06ah ; 
        db         02h ; 
;       push dword 32
        db         06ah ; 
        db         020h ; 
        call       STDOUT_PUTU32SIZE
;       push strict dword str__hla_1896
        db         068h ; 
        dd         str__hla_1896
        call       STDOUT_PUTS
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push        eax
        db         050h ; 
;        mov        al, [MyPts__hla_1888+ebx*2+1] 
        db         08ah ; 
        db         084h ; 
        db         01bh ; 
        dd         (MyPts__hla_1888+1)
;        mov        [esp+4], al 
        db         088h ; 
        db         044h ; 
        db         024h ; 
        db         04h ; 
;       pop        eax
        db         058h ; 
        call       STDOUT_PUTU8
        call       STDOUT_NEWLN
continue__hla_1892:
;        inc        ebx
        db         043h ; 

StartFor__hla_1892:
;        cmp        ebx, 64 
        db         083h ; 
        db         0fbh ; 
        db         040h ; 
        jb         for__hla_1892
exitloop__hla_1892:

QuitMain__hla_:
;       push dword 0
        db         06ah ; 
        db         00h ; 
;        call       [__imp__ExitProcess@4]
        db         0ffh ; 
        db         015h ; 
        dd         __imp__ExitProcess@4
;_HLAMain endp









section  .text 


        align      (4)
len__hla_1893 dd         0dh
        dd         0dh
str__hla_1893:
 db "RefArrayParm["
 db 0

 db 0
 db 0

        align      (4)
len__hla_1894 dd         04h
        dd         04h
str__hla_1894:
 db "].x="
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1895 dd         0eh
        dd         0eh
str__hla_1895:
 db " RefArrayParm["
 db 0

 db 0

        align      (4)
len__hla_1896 dd         04h
        dd         04h
str__hla_1896:
 db "].y="
 db 0

 db 0
 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
MyPts__hla_1888 times 128 db 0





