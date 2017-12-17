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


        extern     STDOUT_PUTE80
        extern     STDOUT_PUTE32
        extern     STDOUT_PUTE64
        extern     STDOUT_PUTR32
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     STDIN_GETF
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


;       push strict dword str__hla_1891
        db         068h ; 
        dd         str__hla_1891
        call       STDOUT_PUTS
;       push word  0
        dw         06a66h
        db         00h ; 
;       push        word [xp__hla_1886+8]
        db         066h ; size prefix
        db         0ffh ; 
        db         035h ; 
        dd         (xp__hla_1886+8)
;       push        dword [xp__hla_1886+4]
        db         0ffh ; 
        db         035h ; 
        dd         (xp__hla_1886+4)
;       push        dword [xp__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         xp__hla_1886
;       push dword 28
        db         06ah ; 
        db         01ch ; 
        call       STDOUT_PUTE80
        call       STDOUT_NEWLN
;       push strict dword str__hla_1891
        db         068h ; 
        dd         str__hla_1891
        call       STDOUT_PUTS
;       push word  0
        dw         06a66h
        db         00h ; 
;       push        word [xp__hla_1886+8]
        db         066h ; size prefix
        db         0ffh ; 
        db         035h ; 
        dd         (xp__hla_1886+8)
;       push        dword [xp__hla_1886+4]
        db         0ffh ; 
        db         035h ; 
        dd         (xp__hla_1886+4)
;       push        dword [xp__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         xp__hla_1886
;       push dword 10
        db         06ah ; 
        db         0ah ; 
        call       STDOUT_PUTE80
        call       STDOUT_NEWLN
;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
        call       STDOUT_PUTS
;       push        dword [pi__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         pi__hla_1885
;       push dword 15
        db         06ah ; 
        db         0fh ; 
        call       STDOUT_PUTE32
        call       STDOUT_NEWLN
;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
        call       STDOUT_PUTS
;       push        dword [pi__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         pi__hla_1885
;       push dword 5
        db         06ah ; 
        db         05h ; 
;       push dword 3
        db         06ah ; 
        db         03h ; 
;       push dword 32
        db         06ah ; 
        db         020h ; 
        call       STDOUT_PUTR32
        call       STDOUT_NEWLN
;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDIN_GETF
;        fstp       qword [dVal__hla_1887]
        db         0ddh ; opcode
        db         01dh ; 
        dd         dVal__hla_1887
;       pop        eax
        db         058h ; 
;       push        dword [dVal__hla_1887+4]
        db         0ffh ; 
        db         035h ; 
        dd         (dVal__hla_1887+4)
;       push        dword [dVal__hla_1887]
        db         0ffh ; 
        db         035h ; 
        dd         dVal__hla_1887
;       push dword 22
        db         06ah ; 
        db         016h ; 
        call       STDOUT_PUTE64
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
len__hla_1891 dd         04h
        dd         04h
str__hla_1891:
 db "xp: "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1892 dd         04h
        dd         04h
str__hla_1892:
 db "pi: "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1893 dd         013h
        dd         013h
str__hla_1893:
 db "Type float number: "
 db 0





section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
pi__hla_1885 :dd     3.14159012e+000
xp__hla_1886 :dt     -1.00000000000000000e-0104
dVal__hla_1887 times 8 db 0





