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
        extern     STDOUT_PUTU32SIZE
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     Raise__hla_
        extern     shortDfltExcept__hla_






section  .text 


; procedure quicksort__hla_1886

quicksort__hla_1886:
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
;       push        eax
        db         050h ; 
;       push        ebx
        db         053h ; 
;       push        ecx
        db         051h ; 
;       push        edx
        db         052h ; 
;       push        esi
        db         056h ; 
;       push        edi
        db         057h ; 
;        mov        ebx, [ebp+16] 
        db         08bh ; 
        db         05dh ; 
        db         010h ; 
;        mov        edi, [ebp+12] 
        db         08bh ; 
        db         07dh ; 
        db         0ch ; 
;        mov        esi, [ebp+8] 
        db         08bh ; 
        db         075h ; 
        db         08h ; 
;        mov        eax, edi 
        db         089h ; 
        db         0f8h ; mod-reg-r/m
;        add        eax, esi 
        db         01h ; 
        db         0f0h ; mod-reg-r/m
;        shr        eax, 1 
        db         0d1h ; 
        db         0e8h ; 
;        mov        edx, [ebx+eax*4] 
        db         08bh ; 
        db         014h ; 
        db         083h ; 
false__hla_1887:
repeat__hla_1887:
        jmp        continue__hla_1888
while__hla_1888:
;        inc        edi
        db         047h ; 
continue__hla_1888:
;        cmp        edx, dword [ebx+edi*4] 
        db         03bh ; 
        db         014h ; 
        db         0bbh ; 
        ja         while__hla_1888
exitloop__hla_1888:

        jmp        continue__hla_1890
while__hla_1890:
;        dec        esi
        db         04eh ; 
continue__hla_1890:
;        cmp        edx, dword [ebx+esi*4] 
        db         03bh ; 
        db         014h ; 
        db         0b3h ; 
        jb         while__hla_1890
exitloop__hla_1890:

;        cmp        edi, esi 
        db         039h ; 
        db         0f7h ; mod-reg-r/m
        jnle       false__hla_1892
;        mov        eax, [ebx+edi*4] 
        db         08bh ; 
        db         04h ; 
        db         0bbh ; 
;        mov        ecx, [ebx+esi*4] 
        db         08bh ; 
        db         0ch ; 
        db         0b3h ; 
;        mov        [ebx+esi*4], eax 
        db         089h ; 
        db         04h ; 
        db         0b3h ; 
;        mov        [ebx+edi*4], ecx 
        db         089h ; 
        db         0ch ; 
        db         0bbh ; 
;        inc        edi
        db         047h ; 
;        dec        esi
        db         04eh ; 
false__hla_1892:
continue__hla_1887:
;        cmp        edi, esi 
        db         039h ; 
        db         0f7h ; mod-reg-r/m
        jng        repeat__hla_1887
exitloop__hla_1887:

;        cmp        dword [ebp+12], esi 
        db         039h ; 
        db         075h ; 
        db         0ch ; 
        jnl        false__hla_1893
;       push        dword [ebp+16]
        db         0ffh ; 
        db         075h ; 
        db         010h ; 
;       push        dword [ebp+12]
        db         0ffh ; 
        db         075h ; 
        db         0ch ; 
;       push        esi
        db         056h ; 
        call       quicksort__hla_1886
false__hla_1893:
;        cmp        edi, dword [ebp+8] 
        db         03bh ; 
        db         07dh ; 
        db         08h ; 
        jnl        false__hla_1894
;       push        dword [ebp+16]
        db         0ffh ; 
        db         075h ; 
        db         010h ; 
;       push        edi
        db         057h ; 
;       push        dword [ebp+8]
        db         0ffh ; 
        db         075h ; 
        db         08h ; 
        call       quicksort__hla_1886
false__hla_1894:
;       pop        edi
        db         05fh ; 
;       pop        esi
        db         05eh ; 
;       pop        edx
        db         05ah ; 
;       pop        ecx
        db         059h ; 
;       pop        ebx
        db         05bh ; 
;       pop        eax
        db         058h ; 
xquicksort__hla_1886__hla_:
;        mov        esp, ebp 
        db         089h ; 
        db         0ech ; mod-reg-r/m
;       pop        ebp
        db         05dh ; 
 ;               ret        12  
        db         0c2h ; opcode
        dw         0ch
;quicksort__hla_1886 endp




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


;       push strict dword str__hla_1899
        db         068h ; 
        dd         str__hla_1899
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;        mov        eax, 0 
        db         0b8h ; 
        dd         00h

        jmp        StartFor__hla_1900
for__hla_1900:
;       push        dword [theArray__hla_1885+eax*4]
        db         0ffh ; 
        db         034h ; 
        db         085h ; 
        dd         theArray__hla_1885
;       push dword 5
        db         06ah ; 
        db         05h ; 
;       push dword 32
        db         06ah ; 
        db         020h ; 
        call       STDOUT_PUTU32SIZE
continue__hla_1900:
;        inc        eax
        db         040h ; 

StartFor__hla_1900:
;        cmp        eax, 10 
        db         083h ; 
        db         0f8h ; 
        db         0ah ; 
        jb         for__hla_1900
exitloop__hla_1900:

        call       STDOUT_NEWLN
;       push strict dword (theArray__hla_1885+0)
        db         068h ; 
        dd         (theArray__hla_1885+0)
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push dword 9
        db         06ah ; 
        db         09h ; 
        call       quicksort__hla_1886
;       push strict dword str__hla_1901
        db         068h ; 
        dd         str__hla_1901
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;        mov        eax, 0 
        db         0b8h ; 
        dd         00h

        jmp        StartFor__hla_1902
for__hla_1902:
;       push        dword [theArray__hla_1885+eax*4]
        db         0ffh ; 
        db         034h ; 
        db         085h ; 
        dd         theArray__hla_1885
;       push dword 5
        db         06ah ; 
        db         05h ; 
;       push dword 32
        db         06ah ; 
        db         020h ; 
        call       STDOUT_PUTU32SIZE
continue__hla_1902:
;        inc        eax
        db         040h ; 

StartFor__hla_1902:
;        cmp        eax, 10 
        db         083h ; 
        db         0f8h ; 
        db         0ah ; 
        jb         for__hla_1902
exitloop__hla_1902:

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
len__hla_1899 dd         08h
        dd         08h
str__hla_1899:
 db "Before: "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1901 dd         07h
        dd         07h
str__hla_1901:
 db "After: "
 db 0





section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
theArray__hla_1885:
        dd         01h
        dd         0ah
        dd         02h
        dd         09h
        dd         03h
        dd         08h
        dd         04h
        dd         07h
        dd         05h
        dd         06h





