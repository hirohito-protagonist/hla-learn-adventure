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


        extern     STDIN_FLUSHINPUT
        extern     STDOUT_PUTI32
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     STDIN_GETI32
        extern     Raise__hla_
        extern     shortDfltExcept__hla_


 %define exception__hla_1899 Raise__hla_




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


false__hla_1890:
repeat__hla_1890:
;        mov        byte [GoodInput__hla_1886], 0 
        db         0c6h ; 
        db         05h ; 
        dd         GoodInput__hla_1886
        db         00h ; 
;       push strict dword exception__hla_1892
        db         068h ; 
        dd         exception__hla_1892
;       push        ebp
        db         055h ; 
;/* fs: */
        db         064h ; 
;        mov        ebp, [0] 
        db         08bh ; 
        db         02dh ; 
        dd         00h
;       push        dword [ebp+8]
        db         0ffh ; 
        db         075h ; 
        db         08h ; 
;        mov        ebp, [esp+4] 
        db         08bh ; 
        db         06ch ; 
        db         024h ; 
        db         04h ; 
;       push strict dword HWexcept__hla_
        db         068h ; 
        dd         HWexcept__hla_
;/* fs: */
        db         064h ; 
;       push        dword [0]
        db         0ffh ; 
        db         035h ; 
        dd         00h
;/* fs: */
        db         064h ; 
;        mov        [0], esp 
        db         089h ; 
        db         025h ; 
        dd         00h
;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
        call       STDIN_FLUSHINPUT
        call       STDIN_GETI32
;        mov        [InputValue__hla_1885], eax 
        db         0a3h ; 
        dd         (InputValue__hla_1885+0)
;        bound      eax, [_1894_LBound__hla_] 
        db         062h ; 
        db         05h ; 
        dd         _1894_LBound__hla_
;        mov        byte [GoodInput__hla_1886], 1 
        db         0c6h ; 
        db         05h ; 
        dd         GoodInput__hla_1886
        db         01h ; 
;/* fs: */
        db         064h ; 
;        mov        esp, [0] 
        db         08bh ; 
        db         025h ; 
        dd         00h
;/* fs: */
        db         064h ; 
;       pop        dword [0]
        db         08fh ; 
        db         05h ; 
        dd         00h
;        add        esp, 8 
        db         083h ; 
        db         0c4h ; 
        db         08h ; 
;       pop        ebp
        db         05dh ; 
;        add        esp, 4 
        db         083h ; 
        db         0c4h ; 
        db         04h ; 
        jmp        endtry__hla_1891
exception__hla_1892:
;        cmp        eax, 20 
        db         083h ; 
        db         0f8h ; 
        db         014h ; 
        jne        exception__hla_1895
;       push strict dword str__hla_1896
        db         068h ; 
        dd         str__hla_1896
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        jmp        endtry__hla_1891
exception__hla_1895:
;        cmp        eax, 8 
        db         083h ; 
        db         0f8h ; 
        db         08h ; 
        jne        exception__hla_1897
;       push strict dword str__hla_1898
        db         068h ; 
        dd         str__hla_1898
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        jmp        endtry__hla_1891
exception__hla_1897:
;        cmp        eax, 64 
        db         083h ; 
        db         0f8h ; 
        db         040h ; 
        jne        exception__hla_1899
;       push strict dword str__hla_1900
        db         068h ; 
        dd         str__hla_1900
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
endtry__hla_1891:
continue__hla_1890:
;        cmp        byte [GoodInput__hla_1886], 0 
        db         080h ; 
        db         03dh ; 
        dd         GoodInput__hla_1886
        db         00h ; 
        je         repeat__hla_1890
exitloop__hla_1890:

;       push strict dword str__hla_1901
        db         068h ; 
        dd         str__hla_1901
        call       STDOUT_PUTS
;       push        dword [InputValue__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         InputValue__hla_1885
        call       STDOUT_PUTI32
;       push strict dword str__hla_1902
        db         068h ; 
        dd         str__hla_1902
        call       STDOUT_PUTS
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
len__hla_1893 dd         016h
        dd         016h
str__hla_1893:
 db "Integer from 1 to 10: "
 db 0

 db 0
_1894_LBound__hla_: dd 1
_1894_UBound__hla_: dd 10

        align      (4)
len__hla_1896 dd         011h
        dd         011h
str__hla_1896:
 db "conversion errror"
 db 0

 db 0
 db 0

        align      (4)
len__hla_1898 dd         012h
        dd         012h
str__hla_1898:
 db "value out of range"
 db 0

 db 0

        align      (4)
len__hla_1900 dd         01ah
        dd         01ah
str__hla_1900:
 db "Number is not from 1 to 10"
 db 0

 db 0

        align      (4)
len__hla_1901 dd         09h
        dd         09h
str__hla_1901:
 db "Integer: "
 db 0

 db 0
 db 0

        align      (4)
len__hla_1902 dd         0bh
        dd         0bh
str__hla_1902:
 db " is correct"
 db 0





section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
InputValue__hla_1885 times 4 db 0
GoodInput__hla_1886 times 1 db 0





