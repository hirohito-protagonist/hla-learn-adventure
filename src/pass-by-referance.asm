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


        extern     STDOUT_PUTI32
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     Raise__hla_
        extern     shortDfltExcept__hla_






section  .text 


; procedure Pbr__hla_1887

Pbr__hla_1887:
;/*Dynamic link*/
;       push        ebp
        db         055h ; 
;/* push dword ptr [ebp-4] ;Display for lex level 0*/
;       push        dword [ebp-4]
        db         0ffh ; 
        db         075h ; 
        db         0fch ; 
;/*Get frame ptr*/
;        lea        ebp, [esp+4] 
        db         08dh ; 
        db         06ch ; 
        db         024h ; 
        db         04h ; 
;/* Ptr to this proc's A.R.*/
;       push        ebp
        db         055h ; 
;        and        esp, -4 
        db         083h ; 
        db         0e4h ; 
        db         0fch ; 
;       push        eax
        db         050h ; 
;       push        ebx
        db         053h ; 
;        mov        ebx, [ebp+12] 
        db         08bh ; 
        db         05dh ; 
        db         0ch ; 
;        mov        dword [ebx], -1 
        db         0c7h ; 
        db         03h ; 
        dd         0ffffffffh
;        mov        ebx, [ebp+8] 
        db         08bh ; 
        db         05dh ; 
        db         08h ; 
;        mov        dword [ebx], -2 
        db         0c7h ; 
        db         03h ; 
        dd         0fffffffeh
;        mov        eax, [ebx] 
        db         08bh ; 
        db         03h ; 
;        mov        ebx, [ebp+12] 
        db         08bh ; 
        db         05dh ; 
        db         0ch ; 
;        add        eax, dword [ebx] 
        db         03h ; 
        db         03h ; 
;       push strict dword str__hla_1888
        db         068h ; 
        dd         str__hla_1888
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTI32
        call       STDOUT_NEWLN
;       pop        ebx
        db         05bh ; 
;       pop        eax
        db         058h ; 
xPbr__hla_1887__hla_:
;        mov        esp, ebp 
        db         089h ; 
        db         0ech ; mod-reg-r/m
;       pop        ebp
        db         05dh ; 
 ;               ret        8  
        db         0c2h ; opcode
        dw         08h
;Pbr__hla_1887 endp




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


;        mov        dword [i__hla_1885], 50 
        db         0c7h ; 
        db         05h ; 
        dd         i__hla_1885
        dd         032h
;        mov        dword [j__hla_1886], 25 
        db         0c7h ; 
        db         05h ; 
        dd         j__hla_1886
        dd         019h
;       push strict dword (i__hla_1885+0)
        db         068h ; 
        dd         (i__hla_1885+0)
;       push strict dword (j__hla_1886+0)
        db         068h ; 
        dd         (j__hla_1886+0)
        call       Pbr__hla_1887
;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
;       push        dword [i__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         i__hla_1885
        call       STDOUT_PUTI32
        call       STDOUT_NEWLN
;       push strict dword str__hla_1894
        db         068h ; 
        dd         str__hla_1894
        call       STDOUT_PUTS
;       push        dword [j__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         j__hla_1886
        call       STDOUT_PUTI32
        call       STDOUT_NEWLN
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
len__hla_1888 dd         04h
        dd         04h
str__hla_1888:
 db "a+b="
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1893 dd         04h
        dd         04h
str__hla_1893:
 db "i = "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1894 dd         04h
        dd         04h
str__hla_1894:
 db "j = "
 db 0

 db 0
 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
i__hla_1885 times 4 db 0
j__hla_1886 times 4 db 0





