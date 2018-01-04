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


        extern     STR_CPY
        extern     STR_FREE
        extern     STR_CAT2
        extern     STR_A_CAT
        extern     STDIN_FLUSHINPUT
        extern     STR_ALLOC1
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     Raise__hla_
        extern     STDIN_A_GETS
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


;       push dword 1024
        db         068h ; 
        dd         0400h
        call       STR_ALLOC1
;        mov        [Hello__hla_1886], eax 
        db         0a3h ; 
        dd         (Hello__hla_1886+0)
;       push strict dword str__hla_1891
        db         068h ; 
        dd         str__hla_1891
        call       STDOUT_PUTS
        call       STDIN_FLUSHINPUT
        call       STDIN_A_GETS
;        mov        [UserName__hla_1885], eax 
        db         0a3h ; 
        dd         (UserName__hla_1885+0)
;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
;       push        dword [Hello__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         Hello__hla_1886
        call       STR_CPY
;       push        dword [UserName__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         UserName__hla_1885
;       push        dword [Hello__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         Hello__hla_1886
        call       STR_CAT2
;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
;       push        dword [UserName__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         UserName__hla_1885
        call       STR_A_CAT
;        mov        [a_Hello__hla_1887], eax 
        db         0a3h ; 
        dd         (a_Hello__hla_1887+0)
;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
;       push        dword [Hello__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         Hello__hla_1886
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;       push strict dword str__hla_1894
        db         068h ; 
        dd         str__hla_1894
        call       STDOUT_PUTS
;       push        dword [a_Hello__hla_1887]
        db         0ffh ; 
        db         035h ; 
        dd         a_Hello__hla_1887
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;       push        dword [UserName__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         UserName__hla_1885
        call       STR_FREE
;       push        dword [Hello__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         Hello__hla_1886
        call       STR_FREE
;       push        dword [a_Hello__hla_1887]
        db         0ffh ; 
        db         035h ; 
        dd         a_Hello__hla_1887
        call       STR_FREE
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
len__hla_1891 dd         011h
        dd         011h
str__hla_1891:
 db "Write your name: "
 db 0

 db 0
 db 0

        align      (4)
len__hla_1892 dd         06h
        dd         06h
str__hla_1892:
 db "Hello "
 db 0

 db 0

        align      (4)
len__hla_1893 dd         08h
        dd         08h
str__hla_1893:
 db "str.cat "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1894 dd         0ah
        dd         0ah
str__hla_1894:
 db "str.a_cat "
 db 0

 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
UserName__hla_1885 times 4 db 0
Hello__hla_1886 times 4 db 0
a_Hello__hla_1887 times 4 db 0





