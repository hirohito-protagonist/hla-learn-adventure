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


; procedure ExprParm__hla_1885

ExprParm__hla_1885:
;       push        ebp
        db         055h ; 
;        mov        ebp, esp 
        db         089h ; 
        db         0e5h ; mod-reg-r/m
;        and        esp, -4 
        db         083h ; 
        db         0e4h ; 
        db         0fch ; 
;       push strict dword str__hla_1886
        db         068h ; 
        dd         str__hla_1886
        call       STDOUT_PUTS
;       push        dword [ebp+8]
        db         0ffh ; 
        db         075h ; 
        db         08h ; 
        call       STDOUT_PUTU32
        call       STDOUT_NEWLN
xExprParm__hla_1885__hla_:
;        mov        esp, ebp 
        db         089h ; 
        db         0ech ; mod-reg-r/m
;       pop        ebp
        db         05dh ; 
 ;               ret        4  
        db         0c2h ; opcode
        dw         04h
;ExprParm__hla_1885 endp




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


;        mov        eax, [Operand1__hla_1888] 
        db         0a1h ; 
        dd         (Operand1__hla_1888+0)
;        add        eax, dword [Operand2__hla_1889] 
        db         03h ; 
        db         05h ; 
        dd         Operand2__hla_1889
;       push        eax
        db         050h ; 
        call       ExprParm__hla_1885
;        mov        eax, [Operand1__hla_1888] 
        db         0a1h ; 
        dd         (Operand1__hla_1888+0)
;        add        eax, dword [Operand2__hla_1889] 
        db         03h ; 
        db         05h ; 
        dd         Operand2__hla_1889
;       push        eax
        db         050h ; 
        call       ExprParm__hla_1885
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
len__hla_1886 dd         0ch
        dd         0ch
str__hla_1886:
 db "exprValue = "
 db 0

 db 0
 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
Operand1__hla_1888 :dd     0x5
Operand2__hla_1889 :dd     0x14





