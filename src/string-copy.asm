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


        extern     STR_CPY
        extern     STR_FREE
        extern     STR_ALLOC1
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     Raise__hla_
        extern     STDIN_A_GETS
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


;       push dword 64
        db         06ah ; 
        db         040h ; 
        call       STR_ALLOC1
;        mov        [string2__hla_1886], eax 
        db         0a3h ; 
        dd         (string2__hla_1886+0)
forever__hla_1891:
continue__hla_1890:
;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
        call       STDOUT_PUTS
        call       STDIN_A_GETS
;        mov        [string1__hla_1885], eax 
        db         0a3h ; 
        dd         (string1__hla_1885+0)
;        cmp        dword [eax-4], 3 
        db         083h ; 
        db         078h ; 
        db         0fch ; 
        db         03h ; 
        jae        exitloop__hla_1890
;       push strict dword str__hla_1894
        db         068h ; 
        dd         str__hla_1894
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        jmp        forever__hla_1891
exitloop__hla_1890:

;       push        dword [string1__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         string1__hla_1885
;       push        dword [string2__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         string2__hla_1886
        call       STR_CPY
;       push strict dword str__hla_1895
        db         068h ; 
        dd         str__hla_1895
        call       STDOUT_PUTS
;       push        dword [string1__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         string1__hla_1885
        call       STDOUT_PUTS
;       push strict dword str__hla_1896
        db         068h ; 
        dd         str__hla_1896
        call       STDOUT_PUTS
;       push strict dword str__hla_1897
        db         068h ; 
        dd         str__hla_1897
        call       STDOUT_PUTS
;       push        dword [string2__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         string2__hla_1886
        call       STDOUT_PUTS
;       push strict dword str__hla_1896
        db         068h ; 
        dd         str__hla_1896
        call       STDOUT_PUTS
;        mov        ebx, [string1__hla_1885] 
        db         08bh ; 
        db         01dh ; 
        dd         string1__hla_1885
;        mov        byte [ebx], 97 
        db         0c6h ; 
        db         03h ; 
        db         061h ; 
;        mov        byte [ebx+1], 98 
        db         0c6h ; 
        db         043h ; 
        db         01h ; 
        db         062h ; 
;        mov        byte [ebx+2], 99 
        db         0c6h ; 
        db         043h ; 
        db         02h ; 
        db         063h ; 
;       push strict dword str__hla_1898
        db         068h ; 
        dd         str__hla_1898
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;       push strict dword str__hla_1895
        db         068h ; 
        dd         str__hla_1895
        call       STDOUT_PUTS
;       push        dword [string1__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         string1__hla_1885
        call       STDOUT_PUTS
;       push strict dword str__hla_1896
        db         068h ; 
        dd         str__hla_1896
        call       STDOUT_PUTS
;       push strict dword str__hla_1897
        db         068h ; 
        dd         str__hla_1897
        call       STDOUT_PUTS
;       push        dword [string2__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         string2__hla_1886
        call       STDOUT_PUTS
;       push strict dword str__hla_1896
        db         068h ; 
        dd         str__hla_1896
        call       STDOUT_PUTS
;       push        dword [string1__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         string1__hla_1885
        call       STR_FREE
;       push        dword [string2__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         string2__hla_1886
        call       STR_FREE
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
len__hla_1892 dd         026h
        dd         026h
str__hla_1892:
 db "Type text with at least 3 characters: "
 db 0

 db 0

        align      (4)
len__hla_1894 dd         028h
        dd         028h
str__hla_1894:
 db "The text contains less than 3 characters"
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1895 dd         0bh
        dd         0bh
str__hla_1895:
 db "string1 = '"
 db 0


        align      (4)
len__hla_1896 dd         03h
        dd         03h
str__hla_1896:
 db "'"
 db 0dh
 db 0ah
 db 0


        align      (4)
len__hla_1897 dd         0bh
        dd         0bh
str__hla_1897:
 db "string2 = '"
 db 0


        align      (4)
len__hla_1898 dd         01eh
        dd         01eh
str__hla_1898:
 db "After assign 'abc' characters."
 db 0

 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
string1__hla_1885 times 4 db 0
string2__hla_1886 times 4 db 0





