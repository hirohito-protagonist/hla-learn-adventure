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
        extern     STDOUT_PUTW
        extern     STDOUT_PUTS
        extern     STDOUT_PUTD
        extern     STDOUT_PUTB
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
;       push        eax
        db         050h ; 
        call       STDIN_GETI8
;        mov        [i8__hla_1885], al 
        db         0a2h ; 
        dd         (i8__hla_1885+0)
;       pop        eax
        db         058h ; 
;        mov        al, [i8__hla_1885] 
        db         0a0h ; 
        dd         (i8__hla_1885+0)
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
;       push strict dword str__hla_1900
        db         068h ; 
        dd         str__hla_1900
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTB
        call       STDOUT_NEWLN
        call       STDOUT_NEWLN
;       push strict dword str__hla_1901
        db         068h ; 
        dd         str__hla_1901
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        call       STDOUT_NEWLN
 ;       cbw        
        dw         09866h
;        mov        [i16__hla_1886], ax 
        dw         0a366h
        dd         (i16__hla_1886+0)
;       push strict dword str__hla_1902
        db         068h ; 
        dd         str__hla_1902
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
;       push strict dword str__hla_1900
        db         068h ; 
        dd         str__hla_1900
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTW
        call       STDOUT_NEWLN
 ;       cwde       
        db         098h ; opcode
;        mov        [i32__hla_1887], eax 
        db         0a3h ; 
        dd         (i32__hla_1887+0)
;       push strict dword str__hla_1903
        db         068h ; 
        dd         str__hla_1903
        call       STDOUT_PUTS
;       push        dword [i32__hla_1887]
        db         0ffh ; 
        db         035h ; 
        dd         i32__hla_1887
        call       STDOUT_PUTI32
;       push strict dword str__hla_1900
        db         068h ; 
        dd         str__hla_1900
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTD
        call       STDOUT_NEWLN
        call       STDOUT_NEWLN
;       push strict dword str__hla_1904
        db         068h ; 
        dd         str__hla_1904
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        call       STDOUT_NEWLN
;        movsx      ax, byte [i8__hla_1885] 
        db         066h ; size prefix
        db         0fh ; 2 byte opcode prefix
        db         0beh ; 
        db         05h ; 
        dd         i8__hla_1885
;        mov        [i16__hla_1886], ax 
        dw         0a366h
        dd         (i16__hla_1886+0)
;       push strict dword str__hla_1902
        db         068h ; 
        dd         str__hla_1902
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
;       push strict dword str__hla_1900
        db         068h ; 
        dd         str__hla_1900
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTW
        call       STDOUT_NEWLN
;        movsx      eax, byte [i8__hla_1885] 
        db         0fh ; 2 byte opcode prefix
        db         0beh ; 
        db         05h ; 
        dd         i8__hla_1885
;        mov        [i32__hla_1887], eax 
        db         0a3h ; 
        dd         (i32__hla_1887+0)
;       push strict dword str__hla_1903
        db         068h ; 
        dd         str__hla_1903
        call       STDOUT_PUTS
;       push        dword [i32__hla_1887]
        db         0ffh ; 
        db         035h ; 
        dd         i32__hla_1887
        call       STDOUT_PUTI32
;       push strict dword str__hla_1900
        db         068h ; 
        dd         str__hla_1900
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTD
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
len__hla_1891 dd         0fh
        dd         0fh
str__hla_1891:
 db "Integer 8-bit: "
 db 0


        align      (4)
len__hla_1900 dd         02h
        dd         02h
str__hla_1900:
 db " $"
 db 0

 db 0

        align      (4)
len__hla_1901 dd         02ch
        dd         02ch
str__hla_1901:
 db "Extension sign (cbw and cwde instructions): "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1902 dd         012h
        dd         012h
str__hla_1902:
 db "16-bit extension: "
 db 0

 db 0

        align      (4)
len__hla_1903 dd         012h
        dd         012h
str__hla_1903:
 db "32-bit extension: "
 db 0

 db 0

        align      (4)
len__hla_1904 dd         024h
        dd         024h
str__hla_1904:
 db "Extension sign (movsx instruction): "
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





