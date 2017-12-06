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
        extern     STDIN_GETI32
        extern     Raise__hla_
        extern     shortDfltExcept__hla_


 %define exception__hla_1905 Raise__hla_




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


forever__hla_1890:
continue__hla_1889:
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
;       push        eax
        db         050h ; 
        call       STDIN_GETI32
;        mov        [input__hla_1885], eax 
        db         0a3h ; 
        dd         (input__hla_1885+0)
;       pop        eax
        db         058h ; 
;       push strict dword str__hla_1902
        db         068h ; 
        dd         str__hla_1902
        call       STDOUT_PUTS
;       push        dword [input__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         input__hla_1885
        call       STDOUT_PUTI32
        call       STDOUT_NEWLN
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
        jmp        exitloop__hla_1889
        jmp        endtry__hla_1891
exception__hla_1892:
;        cmp        eax, 8 
        db         083h ; 
        db         0f8h ; 
        db         08h ; 
        jne        exception__hla_1903
;       push strict dword str__hla_1904
        db         068h ; 
        dd         str__hla_1904
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        jmp        endtry__hla_1891
exception__hla_1903:
;        cmp        eax, 20 
        db         083h ; 
        db         0f8h ; 
        db         014h ; 
        jne        exception__hla_1905
;       push strict dword str__hla_1906
        db         068h ; 
        dd         str__hla_1906
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
endtry__hla_1891:
        jmp        forever__hla_1890
exitloop__hla_1889:

;       push strict dword str__hla_1907
        db         068h ; 
        dd         str__hla_1907
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDIN_GETI32
;        mov        [input__hla_1885], eax 
        db         0a3h ; 
        dd         (input__hla_1885+0)
;       pop        eax
        db         058h ; 
;       push strict dword str__hla_1902
        db         068h ; 
        dd         str__hla_1902
        call       STDOUT_PUTS
;       push        dword [input__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         input__hla_1885
        call       STDOUT_PUTI32
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
len__hla_1893 dd         0bh
        dd         0bh
str__hla_1893:
 db "write int: "
 db 0


        align      (4)
len__hla_1902 dd         05h
        dd         05h
str__hla_1902:
 db "int: "
 db 0

 db 0
 db 0

        align      (4)
len__hla_1904 dd         010h
        dd         010h
str__hla_1904:
 db "number is to big"
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1906 dd         010h
        dd         010h
str__hla_1906:
 db "incorrect number"
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1907 dd         016h
        dd         016h
str__hla_1907:
 db "write int once again: "
 db 0

 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
input__hla_1885 times 4 db 0





