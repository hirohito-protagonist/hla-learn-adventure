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
        extern     STDOUT_PUTC
        extern     Raise__hla_
        extern     shortDfltExcept__hla_






section  .text 


; procedure print__hla_1885

print__hla_1885:
;       push        ebp
        db         055h ; 
;        mov        ebp, esp 
        db         089h ; 
        db         0e5h ; mod-reg-r/m
;       push        eax
        db         050h ; 
;       push        ebx
        db         053h ; 
;        mov        ebx, [ebp+4] 
        db         08bh ; 
        db         05dh ; 
        db         04h ; 
forever__hla_1887:
continue__hla_1886:
;        mov        al, [ebx] 
        db         08ah ; 
        db         03h ; 
;        test       al, al 
        db         084h ; 
        db         0c0h ; mod-reg-r/m
        je         exitloop__hla_1886
;       push        eax
        db         050h ; 
        call       STDOUT_PUTC
;        inc        ebx
        db         043h ; 
        jmp        forever__hla_1887
exitloop__hla_1886:

;        inc        ebx
        db         043h ; 
;        mov        [ebp+4], ebx 
        db         089h ; 
        db         05dh ; 
        db         04h ; 
;       pop        ebx
        db         05bh ; 
;       pop        eax
        db         058h ; 
;       pop        ebp
        db         05dh ; 
 ;       ret        
        db         0c3h ; opcode
;print__hla_1885 endp




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


        call       print__hla_1885
 db "Ahoj hla"
        db         0ah ; 
        db         00h ; 
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





