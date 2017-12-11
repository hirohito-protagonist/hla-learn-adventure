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


        extern     STDIN_GETI8
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     STDOUT_PUTI8
        extern     STDOUT_PUTH8
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


;       push strict dword str__hla_1890
        db         068h ; 
        dd         str__hla_1890
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDIN_GETI8
;        mov        [PosValue__hla_1885], al 
        db         0a2h ; 
        dd         (PosValue__hla_1885+0)
;       pop        eax
        db         058h ; 
        call       STDOUT_NEWLN
;       push strict dword str__hla_1899
        db         068h ; 
        dd         str__hla_1899
        call       STDOUT_PUTS
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push        eax
        db         050h ; 
;        mov        al, [PosValue__hla_1885] 
        db         0a0h ; 
        dd         (PosValue__hla_1885+0)
;        mov        [esp+4], al 
        db         088h ; 
        db         044h ; 
        db         024h ; 
        db         04h ; 
;       pop        eax
        db         058h ; 
        call       STDOUT_PUTH8
;        mov        al, [PosValue__hla_1885] 
        db         0a0h ; 
        dd         (PosValue__hla_1885+0)
;        not        al
        db         0f6h ; 
        db         0d0h ; mod-reg-r/m
        call       STDOUT_NEWLN
;       push strict dword str__hla_1900
        db         068h ; 
        dd         str__hla_1900
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTB
        call       STDOUT_NEWLN
;        add        al, 1 
        db         04h ; 
        db         01h ; 
;       push strict dword str__hla_1901
        db         068h ; 
        dd         str__hla_1901
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTB
        call       STDOUT_NEWLN
;        mov        [NegValue__hla_1886], al 
        db         0a2h ; 
        dd         (NegValue__hla_1886+0)
;       push strict dword str__hla_1902
        db         068h ; 
        dd         str__hla_1902
        call       STDOUT_PUTS
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push        eax
        db         050h ; 
;        mov        al, [NegValue__hla_1886] 
        db         0a0h ; 
        dd         (NegValue__hla_1886+0)
;        mov        [esp+4], al 
        db         088h ; 
        db         044h ; 
        db         024h ; 
        db         04h ; 
;       pop        eax
        db         058h ; 
        call       STDOUT_PUTI8
        call       STDOUT_NEWLN
        call       STDOUT_NEWLN
;       push strict dword str__hla_1903
        db         068h ; 
        dd         str__hla_1903
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;        mov        al, [PosValue__hla_1885] 
        db         0a0h ; 
        dd         (PosValue__hla_1885+0)
;        neg        al
        db         0f6h ; 
        db         0d8h ; mod-reg-r/m
;        mov        [NegValue__hla_1886], al 
        db         0a2h ; 
        dd         (NegValue__hla_1886+0)
;       push strict dword str__hla_1899
        db         068h ; 
        dd         str__hla_1899
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTB
        call       STDOUT_NEWLN
;       push strict dword str__hla_1904
        db         068h ; 
        dd         str__hla_1904
        call       STDOUT_PUTS
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push        eax
        db         050h ; 
;        mov        al, [NegValue__hla_1886] 
        db         0a0h ; 
        dd         (NegValue__hla_1886+0)
;        mov        [esp+4], al 
        db         088h ; 
        db         044h ; 
        db         024h ; 
        db         04h ; 
;       pop        eax
        db         058h ; 
        call       STDOUT_PUTI8
        call       STDOUT_NEWLN
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
len__hla_1890 dd         017h
        dd         017h
str__hla_1890:
 db "Integer from 0 to 127: "
 db 0


        align      (4)
len__hla_1899 dd         05h
        dd         05h
str__hla_1899:
 db "Hex $"
 db 0

 db 0
 db 0

        align      (4)
len__hla_1900 dd         015h
        dd         015h
str__hla_1900:
 db "After bit negection $"
 db 0

 db 0
 db 0

        align      (4)
len__hla_1901 dd         0dh
        dd         0dh
str__hla_1901:
 db "After add 1 $"
 db 0

 db 0
 db 0

        align      (4)
len__hla_1902 dd         012h
        dd         012h
str__hla_1902:
 db "Result (decimal): "
 db 0

 db 0

        align      (4)
len__hla_1903 dd         027h
        dd         027h
str__hla_1903:
 db "The same operation with neg instruction"
 db 0


        align      (4)
len__hla_1904 dd         04h
        dd         04h
str__hla_1904:
 db "Dec "
 db 0

 db 0
 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
PosValue__hla_1885 times 1 db 0
NegValue__hla_1886 times 1 db 0





