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


        extern     STDIN_FLUSHINPUT
        extern     STDOUT_PUTI16
        extern     STDIN_GETI8
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     STDOUT_PUTI8
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
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


;       push strict dword str__hla_1890
        db         068h ; 
        dd         str__hla_1890
        call       STDOUT_PUTS
        call       STDIN_GETI8
;        mov        [a__hla_1885], al 
        db         0a2h ; 
        dd         (a__hla_1885+0)
        call       STDOUT_NEWLN
;       push strict dword str__hla_1891
        db         068h ; 
        dd         str__hla_1891
        call       STDOUT_PUTS
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push        eax
        db         050h ; 
;        mov        al, [a__hla_1885] 
        db         0a0h ; 
        dd         (a__hla_1885+0)
;        mov        [esp+4], al 
        db         088h ; 
        db         044h ; 
        db         024h ; 
        db         04h ; 
;       pop        eax
        db         058h ; 
        call       STDOUT_PUTI8
        call       STDIN_FLUSHINPUT
        call       STDOUT_NEWLN
;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
        call       STDOUT_PUTS
        call       STDIN_GETI16
;        mov        [b__hla_1886], ax 
        dw         0a366h
        dd         (b__hla_1886+0)
        call       STDOUT_NEWLN
;       push strict dword str__hla_1891
        db         068h ; 
        dd         str__hla_1891
        call       STDOUT_PUTS
;       push word  0
        dw         06a66h
        db         00h ; 
;       push        word [b__hla_1886]
        db         066h ; size prefix
        db         0ffh ; 
        db         035h ; 
        dd         b__hla_1886
        call       STDOUT_PUTI16
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
len__hla_1890 dd         017h
        dd         017h
str__hla_1890:
 db "int 8 bit (-128..127): "
 db 0


        align      (4)
len__hla_1891 dd         08h
        dd         08h
str__hla_1891:
 db "result: "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1892 dd         01eh
        dd         01eh
str__hla_1892:
 db "int 16 bit (-32 768..32 767): "
 db 0

 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
a__hla_1885 times 1 db 0
b__hla_1886 times 2 db 0





