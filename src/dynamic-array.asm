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


        extern     MEM_FREE
        extern     MEM_ALLOC1
        extern     STDOUT_PUTI32
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     STDIN_GETU32
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


;       push strict dword str__hla_1890
        db         068h ; 
        dd         str__hla_1890
        call       STDOUT_PUTS
        call       STDIN_GETU32
;        mov        [ArraySize__hla_1885], eax 
        db         0a3h ; 
        dd         (ArraySize__hla_1885+0)
;        shl        eax, 2 
        db         0c1h ; mod-reg-r/m
        db         0e0h ; 
        db         02h ; 
;       push        eax
        db         050h ; 
        call       MEM_ALLOC1
;        mov        [BaseAddress__hla_1886], eax 
        db         0a3h ; 
        dd         (BaseAddress__hla_1886+0)
        call       STDOUT_NEWLN
;       push strict dword str__hla_1891
        db         068h ; 
        dd         str__hla_1891
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;        mov        ebx, [BaseAddress__hla_1886] 
        db         08bh ; 
        db         01dh ; 
        dd         BaseAddress__hla_1886
;        mov        eax, 0 
        db         0b8h ; 
        dd         00h
;        mov        esi, 0 
        db         0beh ; 
        dd         00h

        jmp        StartFor__hla_1892
for__hla_1892:
;        mov        [BaseAddress__hla_1886+esi*4], eax 
        db         089h ; 
        db         04h ; 
        db         0b5h ; 
        dd         BaseAddress__hla_1886
continue__hla_1892:
;        inc        esi
        db         046h ; 

StartFor__hla_1892:
;        cmp        esi, dword [ArraySize__hla_1885] 
        db         03bh ; 
        db         035h ; 
        dd         ArraySize__hla_1885
        jb         for__hla_1892
exitloop__hla_1892:

;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
;        mov        esi, 0 
        db         0beh ; 
        dd         00h

        jmp        StartFor__hla_1894
for__hla_1894:
;       push        dword [ebx+esi*4]
        db         0ffh ; 
        db         034h ; 
        db         0b3h ; 
        call       STDOUT_PUTI32
;       push strict dword str__hla_1895
        db         068h ; 
        dd         str__hla_1895
        call       STDOUT_PUTS
continue__hla_1894:
;        inc        esi
        db         046h ; 

StartFor__hla_1894:
;        cmp        esi, dword [ArraySize__hla_1885] 
        db         03bh ; 
        db         035h ; 
        dd         ArraySize__hla_1885
        jb         for__hla_1894
exitloop__hla_1894:

;       push strict dword str__hla_1896
        db         068h ; 
        dd         str__hla_1896
        call       STDOUT_PUTS
;       push        ebx
        db         053h ; 
        call       MEM_FREE
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
len__hla_1890 dd         013h
        dd         013h
str__hla_1890:
 db "Provide array len: "
 db 0


        align      (4)
len__hla_1891 dd         011h
        dd         011h
str__hla_1891:
 db "Filled with zeros"
 db 0

 db 0
 db 0

        align      (4)
len__hla_1893 dd         01h
        dd         01h
str__hla_1893:
 db "["
 db 0

 db 0
 db 0

        align      (4)
len__hla_1895 dd         01h
        dd         01h
str__hla_1895:
 db ","
 db 0

 db 0
 db 0

        align      (4)
len__hla_1896 dd         01h
        dd         01h
str__hla_1896:
 db "]"
 db 0

 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
ArraySize__hla_1885 times 4 db 0
BaseAddress__hla_1886:
        dd         0





