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


        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     Raise__hla_
        extern     shortDfltExcept__hla_






section  .text 


; procedure zeroBytes__hla_1885

zeroBytes__hla_1885:
;/*Dynamic link*/
;       push        ebp
        db         055h ; 
;/* push dword ptr [ebp-4] ;Display for lex level 0*/
;       push        dword [ebp-4]
        db         0ffh ; 
        db         075h ; 
        db         0fch ; 
;/*Get frame ptr*/
;        lea        ebp, [esp+4] 
        db         08dh ; 
        db         06ch ; 
        db         024h ; 
        db         04h ; 
;/* Ptr to this proc's A.R.*/
;       push        ebp
        db         055h ; 
;        and        esp, -4 
        db         083h ; 
        db         0e4h ; 
        db         0fch ; 
;        mov        eax, 0 
        db         0b8h ; 
        dd         00h
;        mov        ecx, 256 
        db         0b9h ; 
        dd         0100h
false__hla_1886:
repeat__hla_1886:
;        mov        [ebx], eax 
        db         089h ; 
        db         03h ; 
;        add        ebx, 4 
        db         083h ; 
        db         0c3h ; 
        db         04h ; 
;        dec        ecx
        db         049h ; 
continue__hla_1886:
;        test       ecx, ecx 
        db         085h ; 
        db         0c9h ; mod-reg-r/m
        jne        repeat__hla_1886
exitloop__hla_1886:

xzeroBytes__hla_1885__hla_:
;        mov        esp, ebp 
        db         089h ; 
        db         0ech ; mod-reg-r/m
;       pop        ebp
        db         05dh ; 
 ;       ret        
        db         0c3h ; opcode
;zeroBytes__hla_1885 endp




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


;        lea        ebx, [dwArray__hla_1888] 
        db         08dh ; 
        db         01dh ; 
        dd         dwArray__hla_1888
        call       zeroBytes__hla_1885
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





section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
dwArray__hla_1888 times 1024 db 0





