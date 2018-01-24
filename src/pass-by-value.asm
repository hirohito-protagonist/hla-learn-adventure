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
        extern     STDOUT_PUTC
        extern     Raise__hla_
        extern     shortDfltExcept__hla_






section  .text 


; procedure PrintNChars__hla_1885

PrintNChars__hla_1885:
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
;       push        ecx
        db         051h ; 
;        mov        ecx, [ebp+12] 
        db         08bh ; 
        db         04dh ; 
        db         0ch ; 
;        cmp        dword [ebp+12], 0 
        db         083h ; 
        db         07dh ; 
        db         0ch ; 
        db         00h ; 
        jne        false__hla_1886
;       push        dword [ebp+8]
        db         0ffh ; 
        db         075h ; 
        db         08h ; 
        call       STDOUT_PUTC
        jmp        endif__hla_1886
false__hla_1886:
false__hla_1887:
repeat__hla_1887:
;       push        dword [ebp+8]
        db         0ffh ; 
        db         075h ; 
        db         08h ; 
        call       STDOUT_PUTC
;        dec        ecx
        db         049h ; 
continue__hla_1887:
;        test       ecx, ecx 
        db         085h ; 
        db         0c9h ; mod-reg-r/m
        jne        repeat__hla_1887
exitloop__hla_1887:

endif__hla_1886:
;       pop        ecx
        db         059h ; 
xPrintNChars__hla_1885__hla_:
;        mov        esp, ebp 
        db         089h ; 
        db         0ech ; mod-reg-r/m
;       pop        ebp
        db         05dh ; 
 ;               ret        8  
        db         0c2h ; opcode
        dw         08h
;PrintNChars__hla_1885 endp




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


;        mov        eax, 0 
        db         0b8h ; 
        dd         00h

        jmp        StartFor__hla_1892
for__hla_1892:
;       push        eax
        db         050h ; 
;       push dword 42
        db         06ah ; 
        db         02ah ; 
        call       PrintNChars__hla_1885
        call       STDOUT_NEWLN
continue__hla_1892:
;        inc        eax
        db         040h ; 

StartFor__hla_1892:
;        cmp        eax, 10 
        db         083h ; 
        db         0f8h ; 
        db         0ah ; 
        jb         for__hla_1892
exitloop__hla_1892:

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





