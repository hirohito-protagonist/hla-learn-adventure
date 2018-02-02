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


; procedure FirstProc__hla_1885

FirstProc__hla_1885:
;       push strict dword str__hla_1886
        db         068h ; 
        dd         str__hla_1886
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;FirstProc__hla_1885 endp


; procedure SecondProc__hla_1888

SecondProc__hla_1888:
;       push strict dword str__hla_1889
        db         068h ; 
        dd         str__hla_1889
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
 ;       ret        
        db         0c3h ; opcode
;SecondProc__hla_1888 endp




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


        call       FirstProc__hla_1885
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
len__hla_1886 dd         0eh
        dd         0eh
str__hla_1886:
 db "run first proc"
 db 0

 db 0

        align      (4)
len__hla_1889 dd         0fh
        dd         0fh
str__hla_1889:
 db "run second proc"
 db 0





section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)





