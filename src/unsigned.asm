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


        extern     STDOUT_PUTI16
        extern     STDOUT_PUTU16
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     STDIN_GETU16
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


;       push strict dword str__hla_1889
        db         068h ; 
        dd         str__hla_1889
        call       STDOUT_PUTS
        call       STDIN_GETU16
;        mov        [UnsValue__hla_1885], ax 
        dw         0a366h
        dd         (UnsValue__hla_1885+0)
        call       STDOUT_NEWLN
;       push strict dword str__hla_1890
        db         068h ; 
        dd         str__hla_1890
        call       STDOUT_PUTS
;       push word  0
        dw         06a66h
        db         00h ; 
;       push        word [UnsValue__hla_1885]
        db         066h ; size prefix
        db         0ffh ; 
        db         035h ; 
        dd         UnsValue__hla_1885
        call       STDOUT_PUTU16
        call       STDOUT_NEWLN
;       push strict dword str__hla_1891
        db         068h ; 
        dd         str__hla_1891
        call       STDOUT_PUTS
;       push word  0
        dw         06a66h
        db         00h ; 
;       push        word [UnsValue__hla_1885]
        db         066h ; size prefix
        db         0ffh ; 
        db         035h ; 
        dd         UnsValue__hla_1885
        call       STDOUT_PUTI16
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
len__hla_1889 dd         01eh
        dd         01eh
str__hla_1889:
 db "Number from 32 768 to 65 535: "
 db 0

 db 0

        align      (4)
len__hla_1890 dd         08h
        dd         08h
str__hla_1890:
 db "Result: "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1891 dd         02eh
        dd         02eh
str__hla_1891:
 db "The same number but with sign interpretation: "
 db 0

 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
UnsValue__hla_1885 times 2 db 0





