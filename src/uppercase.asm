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
        extern     STDIN_GETC
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     STDOUT_PUTC
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


;       push strict dword str__hla_1888
        db         068h ; 
        dd         str__hla_1888
        call       STDOUT_PUTS
        call       STDIN_GETC
;        cmp        al, 97 
        db         03ch ; 
        db         061h ; 
        jnae       false__hla_1889
;        cmp        al, 122 
        db         03ch ; 
        db         07ah ; 
        jnbe       false__hla_1890
;        and        al, 95 
        db         024h ; 
        db         05fh ; 
false__hla_1890:
false__hla_1889:
;       push strict dword str__hla_1891
        db         068h ; 
        dd         str__hla_1891
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTC
;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
        call       STDOUT_PUTS
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
len__hla_1888 dd         0bh
        dd         0bh
str__hla_1888:
 db "Type char: "
 db 0


        align      (4)
len__hla_1891 dd         0ch
        dd         0ch
str__hla_1891:
 db "Uppercase: '"
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1892 dd         01h
        dd         01h
str__hla_1892:
 db "'"
 db 0

 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)





