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
        extern     STDOUT_PUTI16
        extern     STDIN_GETI8
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     STDOUT_PUTI8
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     STDIN_GETI32
        extern     STDIN_GETI16
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
        call       STDIN_GETI8
;        mov        [i8__hla_1885], al 
        db         0a2h ; 
        dd         (i8__hla_1885+0)
;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
        call       STDOUT_PUTS
        call       STDIN_GETI16
;        mov        [i16__hla_1886], ax 
        dw         0a366h
        dd         (i16__hla_1886+0)
;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
        call       STDIN_GETI32
;        mov        [i32__hla_1887], eax 
        db         0a3h ; 
        dd         (i32__hla_1887+0)
        call       STDOUT_NEWLN
;       push strict dword str__hla_1894
        db         068h ; 
        dd         str__hla_1894
        call       STDOUT_PUTS
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push        eax
        db         050h ; 
;        mov        al, [i8__hla_1885] 
        db         0a0h ; 
        dd         (i8__hla_1885+0)
;        mov        [esp+4], al 
        db         088h ; 
        db         044h ; 
        db         024h ; 
        db         04h ; 
;       pop        eax
        db         058h ; 
        call       STDOUT_PUTI8
;       push strict dword str__hla_1895
        db         068h ; 
        dd         str__hla_1895
        call       STDOUT_PUTS
;       push word  0
        dw         06a66h
        db         00h ; 
;       push        word [i16__hla_1886]
        db         066h ; size prefix
        db         0ffh ; 
        db         035h ; 
        dd         i16__hla_1886
        call       STDOUT_PUTI16
;       push strict dword str__hla_1896
        db         068h ; 
        dd         str__hla_1896
        call       STDOUT_PUTS
;       push        dword [i32__hla_1887]
        db         0ffh ; 
        db         035h ; 
        dd         i32__hla_1887
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
len__hla_1891 dd         017h
        dd         017h
str__hla_1891:
 db "int 8-bit (-128..127): "
 db 0


        align      (4)
len__hla_1892 dd         01eh
        dd         01eh
str__hla_1892:
 db "int 16-bit (-32 768..32 767): "
 db 0

 db 0

        align      (4)
len__hla_1893 dd         01ch
        dd         01ch
str__hla_1893:
 db "int 32-bit (-2..2 miliard): "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1894 dd         09h
        dd         09h
str__hla_1894:
 db "8 bit -> "
 db 0

 db 0
 db 0

        align      (4)
len__hla_1895 dd         0ch
        dd         0ch
str__hla_1895:
 db 0dh
 db 0ah
 db "16 bit -> "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1896 dd         0ch
        dd         0ch
str__hla_1896:
 db 0dh
 db 0ah
 db "32 bit -> "
 db 0

 db 0
 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
i8__hla_1885 times 1 db 0
i16__hla_1886 times 2 db 0
i32__hla_1887 times 4 db 0





