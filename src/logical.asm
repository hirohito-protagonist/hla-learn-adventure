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
        extern     STDOUT_PUTD
        extern     STDIN_GETH32
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


;       push strict dword str__hla_1888
        db         068h ; 
        dd         str__hla_1888
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDIN_GETH32
;        mov        [esp], eax 
        db         089h ; 
        db         04h ; 
        db         024h ; 
;       pop        eax
        db         058h ; 
;       push strict dword str__hla_1897
        db         068h ; 
        dd         str__hla_1897
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDIN_GETH32
;        mov        ebx, eax 
        db         089h ; 
        db         0c3h ; mod-reg-r/m
;       pop        eax
        db         058h ; 
;        mov        ecx, eax 
        db         089h ; 
        db         0c1h ; mod-reg-r/m
;        and        ecx, ebx 
        db         021h ; 
        db         0d9h ; mod-reg-r/m
;       push strict dword str__hla_1906
        db         068h ; 
        dd         str__hla_1906
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTD
;       push strict dword str__hla_1907
        db         068h ; 
        dd         str__hla_1907
        call       STDOUT_PUTS
;       push        ebx
        db         053h ; 
        call       STDOUT_PUTD
;       push strict dword str__hla_1908
        db         068h ; 
        dd         str__hla_1908
        call       STDOUT_PUTS
;       push        ecx
        db         051h ; 
        call       STDOUT_PUTD
        call       STDOUT_NEWLN
;        mov        ecx, eax 
        db         089h ; 
        db         0c1h ; mod-reg-r/m
;        or         ecx, ebx 
        db         09h ; 
        db         0d9h ; mod-reg-r/m
;       push strict dword str__hla_1906
        db         068h ; 
        dd         str__hla_1906
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTD
;       push strict dword str__hla_1909
        db         068h ; 
        dd         str__hla_1909
        call       STDOUT_PUTS
;       push        ebx
        db         053h ; 
        call       STDOUT_PUTD
;       push strict dword str__hla_1908
        db         068h ; 
        dd         str__hla_1908
        call       STDOUT_PUTS
;       push        ecx
        db         051h ; 
        call       STDOUT_PUTD
        call       STDOUT_NEWLN
;        mov        ecx, eax 
        db         089h ; 
        db         0c1h ; mod-reg-r/m
;        xor        ecx, ebx 
        db         031h ; 
        db         0d9h ; mod-reg-r/m
;       push strict dword str__hla_1906
        db         068h ; 
        dd         str__hla_1906
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTD
;       push strict dword str__hla_1910
        db         068h ; 
        dd         str__hla_1910
        call       STDOUT_PUTS
;       push        ebx
        db         053h ; 
        call       STDOUT_PUTD
;       push strict dword str__hla_1908
        db         068h ; 
        dd         str__hla_1908
        call       STDOUT_PUTS
;       push        ecx
        db         051h ; 
        call       STDOUT_PUTD
        call       STDOUT_NEWLN
;        mov        ecx, eax 
        db         089h ; 
        db         0c1h ; mod-reg-r/m
;        not        ecx
        db         0f7h ; 
        db         0d1h ; mod-reg-r/m
;       push strict dword str__hla_1911
        db         068h ; 
        dd         str__hla_1911
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTD
;       push strict dword str__hla_1908
        db         068h ; 
        dd         str__hla_1908
        call       STDOUT_PUTS
;       push        ecx
        db         051h ; 
        call       STDOUT_PUTD
        call       STDOUT_NEWLN
;        mov        ecx, ebx 
        db         089h ; 
        db         0d9h ; mod-reg-r/m
;        not        ecx
        db         0f7h ; 
        db         0d1h ; mod-reg-r/m
;       push strict dword str__hla_1911
        db         068h ; 
        dd         str__hla_1911
        call       STDOUT_PUTS
;       push        ebx
        db         053h ; 
        call       STDOUT_PUTD
;       push strict dword str__hla_1908
        db         068h ; 
        dd         str__hla_1908
        call       STDOUT_PUTS
;       push        ecx
        db         051h ; 
        call       STDOUT_PUTD
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
len__hla_1888 dd         03h
        dd         03h
str__hla_1888:
 db "a: "
 db 0


        align      (4)
len__hla_1897 dd         03h
        dd         03h
str__hla_1897:
 db "c: "
 db 0


        align      (4)
len__hla_1906 dd         01h
        dd         01h
str__hla_1906:
 db "$"
 db 0

 db 0
 db 0

        align      (4)
len__hla_1907 dd         06h
        dd         06h
str__hla_1907:
 db " AND $"
 db 0

 db 0

        align      (4)
len__hla_1908 dd         04h
        dd         04h
str__hla_1908:
 db " = $"
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1909 dd         05h
        dd         05h
str__hla_1909:
 db " OR $"
 db 0

 db 0
 db 0

        align      (4)
len__hla_1910 dd         06h
        dd         06h
str__hla_1910:
 db " XOR $"
 db 0

 db 0

        align      (4)
len__hla_1911 dd         05h
        dd         05h
str__hla_1911:
 db "NOT $"
 db 0

 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)





