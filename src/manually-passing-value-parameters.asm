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


; procedure ValueParams__hla_1885

ValueParams__hla_1885:
;       push        ebp
        db         055h ; 
;        mov        ebp, esp 
        db         089h ; 
        db         0e5h ; mod-reg-r/m
;        and        esp, -4 
        db         083h ; 
        db         0e4h ; 
        db         0fch ; 
;       push        eax
        db         050h ; 
;        mov        eax, [ebp+16] 
        db         08bh ; 
        db         045h ; 
        db         010h ; 
;        add        eax, dword [ebp+12] 
        db         03h ; 
        db         045h ; 
        db         0ch ; 
;        add        eax, dword [ebp+8] 
        db         03h ; 
        db         045h ; 
        db         08h ; 
;       push strict dword str__hla_1886
        db         068h ; 
        dd         str__hla_1886
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTU32
        call       STDOUT_NEWLN
;       pop        eax
        db         058h ; 
xValueParams__hla_1885__hla_:
;        mov        esp, ebp 
        db         089h ; 
        db         0ech ; mod-reg-r/m
;       pop        ebp
        db         05dh ; 
 ;               ret        12  
        db         0c2h ; opcode
        dw         0ch
;ValueParams__hla_1885 endp




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


;       push dword 10
        db         06ah ; 
        db         0ah ; 
;       push dword 20
        db         06ah ; 
        db         014h ; 
;       push dword 15
        db         06ah ; 
        db         0fh ; 
        call       ValueParams__hla_1885
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
len__hla_1886 dd         0fh
        dd         0fh
str__hla_1886:
 db "p1 + p2 + p3 = "
 db 0





section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)





