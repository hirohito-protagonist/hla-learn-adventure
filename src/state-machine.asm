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
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     Raise__hla_
        extern     shortDfltExcept__hla_






section  .text 




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


;        jmp        [State__hla_1886]
        db         0ffh ; 
        db         025h ; 
        dd         State__hla_1886

State0__hla_1885:
;        add        eax, ebx 
        db         01h ; 
        db         0d8h ; mod-reg-r/m
;       mov        dword [State__hla_1886],  State1__hla_1890
        db         0c7h ; 
        db         05h ; 
        dd         State__hla_1886
        dd         (State1__hla_1890+0)
;       push strict dword str__hla_1891
        db         068h ; 
        dd         str__hla_1891
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;       push dword 0
        db         06ah ; 
        db         00h ; 
;        call       [__imp__ExitProcess@4]
        db         0ffh ; 
        db         015h ; 
        dd         __imp__ExitProcess@4

State1__hla_1890:
;        sub        eax, ebx 
        db         029h ; 
        db         0d8h ; mod-reg-r/m
;       mov        dword [State__hla_1886],  State2__hla_1892
        db         0c7h ; 
        db         05h ; 
        dd         State__hla_1886
        dd         (State2__hla_1892+0)
;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;       push dword 0
        db         06ah ; 
        db         00h ; 
;        call       [__imp__ExitProcess@4]
        db         0ffh ; 
        db         015h ; 
        dd         __imp__ExitProcess@4

State2__hla_1892:
;        imul       eax, ebx 
        dw         0af0fh
        db         0c3h ; 
;       mov        dword [State__hla_1886],  State3__hla_1894
        db         0c7h ; 
        db         05h ; 
        dd         State__hla_1886
        dd         (State3__hla_1894+0)
;       push strict dword str__hla_1895
        db         068h ; 
        dd         str__hla_1895
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;       push dword 0
        db         06ah ; 
        db         00h ; 
;        call       [__imp__ExitProcess@4]
        db         0ffh ; 
        db         015h ; 
        dd         __imp__ExitProcess@4

State3__hla_1894:
;       push        edx
        db         052h ; 
;        xor        edx, edx 
        db         031h ; 
        db         0d2h ; mod-reg-r/m
;        div        ebx
        db         0f7h ; 
        db         0f3h ; mod-reg-r/m
;       pop        edx
        db         05ah ; 
;       mov        dword [State__hla_1886],  State0__hla_1885
        db         0c7h ; 
        db         05h ; 
        dd         State__hla_1886
        dd         (State0__hla_1885+0)
;       push strict dword str__hla_1895
        db         068h ; 
        dd         str__hla_1895
        call       STDOUT_PUTS
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
len__hla_1891 dd         07h
        dd         07h
str__hla_1891:
 db "state 0"
 db 0


        align      (4)
len__hla_1893 dd         07h
        dd         07h
str__hla_1893:
 db "state 1"
 db 0


        align      (4)
len__hla_1895 dd         07h
        dd         07h
str__hla_1895:
 db "state 3"
 db 0





section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
State__hla_1886 dd         State0__hla_1885





