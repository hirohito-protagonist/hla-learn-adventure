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
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     Raise__hla_
        extern     shortDfltExcept__hla_


 %define exception__hla_1898 Raise__hla_




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


;       push strict dword exception__hla_1891
        db         068h ; 
        dd         exception__hla_1891
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
;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
        call       STDOUT_PUTS
        call       STDIN_GETI8
;        mov        [LOperand__hla_1885], al 
        db         0a2h ; 
        dd         (LOperand__hla_1885+0)
;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
        call       STDOUT_PUTS
        call       STDIN_GETI8
;        add        al, byte [LOperand__hla_1885] 
        db         02h ; 
        db         05h ; 
        dd         LOperand__hla_1885
 ;       into       
        db         0ceh ; opcode
;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDOUT_PUTI8
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
        jmp        endtry__hla_1890
exception__hla_1891:
;        cmp        eax, 20 
        db         083h ; 
        db         0f8h ; 
        db         014h ; 
        jne        exception__hla_1894
;       push strict dword str__hla_1895
        db         068h ; 
        dd         str__hla_1895
        call       STDOUT_PUTS
        jmp        endtry__hla_1890
exception__hla_1894:
;        cmp        eax, 8 
        db         083h ; 
        db         0f8h ; 
        db         08h ; 
        jne        exception__hla_1896
;       push strict dword str__hla_1897
        db         068h ; 
        dd         str__hla_1897
        call       STDOUT_PUTS
        jmp        endtry__hla_1890
exception__hla_1896:
;        cmp        eax, 65 
        db         083h ; 
        db         0f8h ; 
        db         041h ; 
        jne        exception__hla_1898
;       push strict dword str__hla_1899
        db         068h ; 
        dd         str__hla_1899
        call       STDOUT_PUTS
endtry__hla_1890:
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
len__hla_1892 dd         016h
        dd         016h
str__hla_1892:
 db "Integer (-128..+127): "
 db 0

 db 0

        align      (4)
len__hla_1893 dd         0bh
        dd         0bh
str__hla_1893:
 db "8-bit sum: "
 db 0


        align      (4)
len__hla_1895 dd         010h
        dd         010h
str__hla_1895:
 db "conversion error"
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1897 dd         011h
        dd         011h
str__hla_1897:
 db "value ot of range"
 db 0

 db 0
 db 0

        align      (4)
len__hla_1899 dd         0dh
        dd         0dh
str__hla_1899:
 db "sum is to big"
 db 0

 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
LOperand__hla_1885 times 1 db 0
ResultOp__hla_1886 times 1 db 0





