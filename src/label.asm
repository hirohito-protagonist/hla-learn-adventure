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
        extern     STDOUT_PUTD
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



lbl1__hla_1888:
;        lea        ebx, [lbl1__hla_1888] 
        db         08dh ; 
        db         01dh ; 
        dd         lbl1__hla_1888
;       mov        eax,  lbl2__hla_1889
        db         0b8h ; 
        dd         (lbl2__hla_1889+0)
;       push strict dword str__hla_1890
        db         068h ; 
        dd         str__hla_1890
        call       STDOUT_PUTS
;       push        ebx
        db         053h ; 
        call       STDOUT_PUTD
;       push strict dword str__hla_1891
        db         068h ; 
        dd         str__hla_1891
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTD
        call       STDOUT_NEWLN

lbl2__hla_1889:
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
len__hla_1890 dd         07h
        dd         07h
str__hla_1890:
 db "&lbl1=$"
 db 0


        align      (4)
len__hla_1891 dd         08h
        dd         08h
str__hla_1891:
 db " &lbl2=$"
 db 0

 db 0
 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)





