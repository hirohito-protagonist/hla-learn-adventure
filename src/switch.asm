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
        extern     STDOUT_PUTS
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


;       push strict dword str__hla_1894
        db         068h ; 
        dd         str__hla_1894
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDIN_GETH32
;        mov        [i__hla_1885], eax 
        db         0a3h ; 
        dd         (i__hla_1885+0)
;       pop        eax
        db         058h ; 
;        mov        ebx, [i__hla_1885] 
        db         08bh ; 
        db         01dh ; 
        dd         i__hla_1885
;        cmp        ebx, 3 
        db         083h ; 
        db         0fbh ; 
        db         03h ; 
        ja         DeafultCase__hla_1903
;        jmp        [JmpTbl__hla_1890+eax*4]
        db         0ffh ; 
        db         024h ; 
        db         085h ; 
        dd         JmpTbl__hla_1890

Case0__hla_1886:
;       push strict dword str__hla_1904
        db         068h ; 
        dd         str__hla_1904
        call       STDOUT_PUTS

Case1__hla_1887:
;       push strict dword str__hla_1905
        db         068h ; 
        dd         str__hla_1905
        call       STDOUT_PUTS

Case2__hla_1888:
;       push strict dword str__hla_1906
        db         068h ; 
        dd         str__hla_1906
        call       STDOUT_PUTS
        jmp        EndCase__hla_1907

Case3__hla_1889:
;       push strict dword str__hla_1908
        db         068h ; 
        dd         str__hla_1908
        call       STDOUT_PUTS
        jmp        EndCase__hla_1907

DeafultCase__hla_1903:
;       push strict dword str__hla_1909
        db         068h ; 
        dd         str__hla_1909
        call       STDOUT_PUTS

EndCase__hla_1907:
;       push strict dword str__hla_1910
        db         068h ; 
        dd         str__hla_1910
        call       STDOUT_PUTS
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
len__hla_1894 dd         015h
        dd         015h
str__hla_1894:
 db "Integer from 0 to 3: "
 db 0

 db 0
 db 0

        align      (4)
len__hla_1904 dd         06h
        dd         06h
str__hla_1904:
 db "Case 0"
 db 0

 db 0

        align      (4)
len__hla_1905 dd         06h
        dd         06h
str__hla_1905:
 db "Case 1"
 db 0

 db 0

        align      (4)
len__hla_1906 dd         06h
        dd         06h
str__hla_1906:
 db "Case 2"
 db 0

 db 0

        align      (4)
len__hla_1908 dd         06h
        dd         06h
str__hla_1908:
 db "Case 3"
 db 0

 db 0

        align      (4)
len__hla_1909 dd         0ch
        dd         0ch
str__hla_1909:
 db "Deafult case"
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1910 dd         08h
        dd         08h
str__hla_1910:
 db "End case"
 db 0

 db 0
 db 0
 db 0
JmpTbl__hla_1890:
        dd         Case0__hla_1886
        dd         Case1__hla_1887
        dd         Case2__hla_1888
        dd         Case3__hla_1889




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
i__hla_1885 times 4 db 0





