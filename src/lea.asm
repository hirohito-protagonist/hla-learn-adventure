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
        extern     STDOUT_PUTB
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


;        lea        ebx, [b__hla_1885] 
        db         08dh ; 
        db         01dh ; 
        dd         b__hla_1885
;        mov        ecx, 0 
        db         0b9h ; 
        dd         00h

        jmp        StartFor__hla_1889
for__hla_1889:
;       push strict dword str__hla_1890
        db         068h ; 
        dd         str__hla_1890
        call       STDOUT_PUTS
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push        eax
        db         050h ; 
;        mov        al, [ebx+ecx*1] 
        db         08ah ; 
        db         04h ; 
        db         0bh ; 
;        mov        [esp+4], al 
        db         088h ; 
        db         044h ; 
        db         024h ; 
        db         04h ; 
;       pop        eax
        db         058h ; 
        call       STDOUT_PUTB
        call       STDOUT_NEWLN
continue__hla_1889:
;        inc        ecx
        db         041h ; 

StartFor__hla_1889:
;        cmp        ecx, 8 
        db         083h ; 
        db         0f9h ; 
        db         08h ; 
        jb         for__hla_1889
exitloop__hla_1889:

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
len__hla_1890 dd         0eh
        dd         0eh
str__hla_1890:
 db "[ebx + ecx] = "
 db 0

 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
b__hla_1885:
        db         07h ; 
        db         00h ; 
        db         06h ; 
        db         01h ; 
        db         05h ; 
        db         02h ; 
        db         04h ; 
        db         03h ; 





