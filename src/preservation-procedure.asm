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


        extern     STDOUT_PUTI32
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     STDOUT_PUTC
        extern     Raise__hla_
        extern     shortDfltExcept__hla_






section  .text 


; procedure PrintSpaces__hla_1885

PrintSpaces__hla_1885:
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
;       push        eax
        db         050h ; 
;        mov        ecx, 40 
        db         0b9h ; 
        dd         028h
false__hla_1886:
repeat__hla_1886:
;        mov        al, 32 
        db         0b0h ; 
        db         020h ; 
;       push        eax
        db         050h ; 
        call       STDOUT_PUTC
;        dec        ecx
        db         049h ; 
continue__hla_1886:
;        test       ecx, ecx 
        db         085h ; 
        db         0c9h ; mod-reg-r/m
        jne        repeat__hla_1886
exitloop__hla_1886:

;       pop        eax
        db         058h ; 
;       pop        ecx
        db         059h ; 
xPrintSpaces__hla_1885__hla_:
;        mov        esp, ebp 
        db         089h ; 
        db         0ech ; mod-reg-r/m
;       pop        ebp
        db         05dh ; 
 ;       ret        
        db         0c3h ; opcode
;PrintSpaces__hla_1885 endp




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


;        mov        eax, 10 
        db         0b8h ; 
        dd         0ah
false__hla_1891:
repeat__hla_1891:
        call       PrintSpaces__hla_1885
;       push dword 42
        db         06ah ; 
        db         02ah ; 
        call       STDOUT_PUTC
        call       STDOUT_NEWLN
;        dec        eax
        db         048h ; 
continue__hla_1891:
;        test       eax, eax 
        db         085h ; 
        db         0c0h ; mod-reg-r/m
        jne        repeat__hla_1891
exitloop__hla_1891:

;        mov        ebx, 5 
        db         0bbh ; 
        dd         05h
        jmp        continue__hla_1892
while__hla_1892:
        call       PrintSpaces__hla_1885
;       push        ebx
        db         053h ; 
        call       STDOUT_PUTI32
        call       STDOUT_NEWLN
;        dec        ebx
        db         04bh ; 
continue__hla_1892:
;        cmp        ebx, 0 
        db         083h ; 
        db         0fbh ; 
        db         00h ; 
        ja         while__hla_1892
exitloop__hla_1892:

;        mov        ecx, 110 
        db         0b9h ; 
        dd         06eh
;        mov        eax, 0 
        db         0b8h ; 
        dd         00h

        jmp        StartFor__hla_1894
for__hla_1894:
        call       PrintSpaces__hla_1885
;       push        eax
        db         050h ; 
        call       STDOUT_PUTI32
;       push strict dword str__hla_1895
        db         068h ; 
        dd         str__hla_1895
        call       STDOUT_PUTS
;       push        ecx
        db         051h ; 
        call       STDOUT_PUTI32
        call       STDOUT_NEWLN
;        dec        ecx
        db         049h ; 
continue__hla_1894:
;        inc        eax
        db         040h ; 

StartFor__hla_1894:
;        cmp        eax, 7 
        db         083h ; 
        db         0f8h ; 
        db         07h ; 
        jb         for__hla_1894
exitloop__hla_1894:

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
len__hla_1895 dd         01h
        dd         01h
str__hla_1895:
 db " "
 db 0

 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)





