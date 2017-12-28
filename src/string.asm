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


        extern     STDOUT_PUTU32
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


;        mov        ebx, [strExample__hla_1885] 
        db         08bh ; 
        db         01dh ; 
        dd         strExample__hla_1885
;        mov        eax, [ebx-4] 
        db         08bh ; 
        db         043h ; 
        db         0fch ; 
;        mov        ecx, [ebx-8] 
        db         08bh ; 
        db         04bh ; 
        db         0f8h ; 
;       push strict dword str__hla_1890
        db         068h ; 
        dd         str__hla_1890
        call       STDOUT_PUTS
;       push        dword [strExample__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         strExample__hla_1885
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;       push strict dword str__hla_1891
        db         068h ; 
        dd         str__hla_1891
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTU32
        call       STDOUT_NEWLN
;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
        call       STDOUT_PUTS
;       push        ecx
        db         051h ; 
        call       STDOUT_PUTU32
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
len__hla_1886 dd         010h
        dd         010h
str__hla_1886:
 db "String 16 length"
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1890 dd         06h
        dd         06h
str__hla_1890:
 db "str = "
 db 0

 db 0

        align      (4)
len__hla_1891 dd         0ah
        dd         0ah
str__hla_1891:
 db "str len = "
 db 0

 db 0

        align      (4)
len__hla_1892 dd         0ah
        dd         0ah
str__hla_1892:
 db "max len = "
 db 0

 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
strExample__hla_1885 :dd     str__hla_1886





