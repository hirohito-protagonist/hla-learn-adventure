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


; procedure MyAdd__hla_1885

MyAdd__hla_1885:
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
;       push        ebx
        db         053h ; 
;        mov        ebx, [ebp+12] 
        db         08bh ; 
        db         05dh ; 
        db         0ch ; 
;        mov        eax, [ebp+8] 
        db         08bh ; 
        db         045h ; 
        db         08h ; 
;        add        eax, ebx 
        db         01h ; 
        db         0d8h ; mod-reg-r/m
;       pop        ebx
        db         05bh ; 
xMyAdd__hla_1885__hla_:
;        mov        esp, ebp 
        db         089h ; 
        db         0ech ; mod-reg-r/m
;       pop        ebp
        db         05dh ; 
 ;               ret        8  
        db         0c2h ; opcode
        dw         08h
;MyAdd__hla_1885 endp




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


;        mov        ebx, 234 
        db         0bbh ; 
        dd         0eah
;        mov        eax, 0 
        db         0b8h ; 
        dd         00h
;       push dword 2
        db         06ah ; 
        db         02h ; 
;       push dword 2
        db         06ah ; 
        db         02h ; 
        call       MyAdd__hla_1885
;        mov        ecx, eax 
        db         089h ; 
        db         0c1h ; mod-reg-r/m
;       push strict dword str__hla_1890
        db         068h ; 
        dd         str__hla_1890
        call       STDOUT_PUTS
;       push        ecx
        db         051h ; 
        call       STDOUT_PUTI32
;       push strict dword str__hla_1891
        db         068h ; 
        dd         str__hla_1891
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;       push dword 2
        db         06ah ; 
        db         02h ; 
;       push dword 4
        db         06ah ; 
        db         04h ; 
        call       MyAdd__hla_1885
;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTI32
;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;       push strict dword str__hla_1894
        db         068h ; 
        dd         str__hla_1894
        call       STDOUT_PUTS
;       push        ebx
        db         053h ; 
        call       STDOUT_PUTI32
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
len__hla_1890 dd         0ch
        dd         0ch
str__hla_1890:
 db "add 2 + 2 = "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1891 dd         07h
        dd         07h
str__hla_1891:
 db " <- ecx"
 db 0


        align      (4)
len__hla_1892 dd         0ch
        dd         0ch
str__hla_1892:
 db "add 2 + 4 = "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1893 dd         07h
        dd         07h
str__hla_1893:
 db " <- eax"
 db 0


        align      (4)
len__hla_1894 dd         07h
        dd         07h
str__hla_1894:
 db "ebx -> "
 db 0





section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)





