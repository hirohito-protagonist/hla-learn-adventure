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
        extern     CONSOLE_HOME
        extern     MEM_ALLOC1
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     STDIN_READLN
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
        extern     STDOUT_PUTC
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


        call       CONSOLE_HOME
;       push strict dword str__hla_1888
        db         068h ; 
        dd         str__hla_1888
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
;       push strict dword str__hla_1889
        db         068h ; 
        dd         str__hla_1889
        call       STDOUT_PUTS
;       push dword 4000000
        db         068h ; 
        dd         03d0900h
        call       MEM_ALLOC1
;        mov        ecx, 1000000 
        db         0b9h ; 
        dd         0f4240h
false__hla_1890:
repeat__hla_1890:
;        dec        ecx
        db         049h ; 
;        mov        dword [eax+ecx*4], 0 
        db         0c7h ; 
        db         04h ; 
        db         088h ; 
        dd         00h
continue__hla_1890:
;        test       ecx, ecx 
        db         085h ; 
        db         0c9h ; mod-reg-r/m
        jne        repeat__hla_1890
exitloop__hla_1890:

        call       STDIN_READLN
;        mov        edx, 10000 
        db         0bah ; 
        dd         02710h
;        add        eax, 62 
        db         083h ; 
        db         0c0h ; 
        db         03eh ; 
false__hla_1891:
repeat__hla_1891:
;        mov        ecx, 999900 
        db         0b9h ; 
        dd         0f41dch
        align      (16)
false__hla_1892:
repeat__hla_1892:
;        sub        ecx, 4 
        db         083h ; 
        db         0e9h ; 
        db         04h ; 
;        mov        ebx, [eax+ecx*4] 
        db         08bh ; 
        db         01ch ; 
        db         088h ; 
;        mov        ebx, [eax+ecx*4] 
        db         08bh ; 
        db         01ch ; 
        db         088h ; 
;        mov        ebx, [eax+ecx*4] 
        db         08bh ; 
        db         01ch ; 
        db         088h ; 
;        mov        ebx, [eax+ecx*4] 
        db         08bh ; 
        db         01ch ; 
        db         088h ; 
continue__hla_1892:
;        test       ecx, ecx 
        db         085h ; 
        db         0c9h ; mod-reg-r/m
        jne        repeat__hla_1892
exitloop__hla_1892:

;        dec        edx
        db         04ah ; 
continue__hla_1891:
;        test       edx, edx 
        db         085h ; 
        db         0d2h ; mod-reg-r/m
        jne        repeat__hla_1891
exitloop__hla_1891:

;       push dword 7
        db         06ah ; 
        db         07h ; 
        call       STDOUT_PUTC
        call       STDOUT_NEWLN
;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
        call       STDIN_READLN
;        mov        edx, 10000 
        db         0bah ; 
        dd         02710h
;        sub        eax, 62 
        db         083h ; 
        db         0e8h ; 
        db         03eh ; 
false__hla_1894:
repeat__hla_1894:
;        mov        ecx, 999900 
        db         0b9h ; 
        dd         0f41dch
        align      (16)
false__hla_1895:
repeat__hla_1895:
;        sub        ecx, 4 
        db         083h ; 
        db         0e9h ; 
        db         04h ; 
;        mov        ebx, [eax+ecx*4] 
        db         08bh ; 
        db         01ch ; 
        db         088h ; 
;        mov        ebx, [eax+ecx*4] 
        db         08bh ; 
        db         01ch ; 
        db         088h ; 
;        mov        ebx, [eax+ecx*4] 
        db         08bh ; 
        db         01ch ; 
        db         088h ; 
;        mov        ebx, [eax+ecx*4] 
        db         08bh ; 
        db         01ch ; 
        db         088h ; 
continue__hla_1895:
;        test       ecx, ecx 
        db         085h ; 
        db         0c9h ; mod-reg-r/m
        jne        repeat__hla_1895
exitloop__hla_1895:

;        dec        edx
        db         04ah ; 
continue__hla_1894:
;        test       edx, edx 
        db         085h ; 
        db         0d2h ; mod-reg-r/m
        jne        repeat__hla_1894
exitloop__hla_1894:

;       push dword 7
        db         06ah ; 
        db         07h ; 
        call       STDOUT_PUTC
        call       STDOUT_NEWLN
;       push        eax
        db         050h ; 
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
len__hla_1888 dd         014h
        dd         014h
str__hla_1888:
 db "Align data in memory"
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1889 dd         014h
        dd         014h
str__hla_1889:
 db "Press Enter to start"
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1893 dd         0bh
        dd         0bh
str__hla_1893:
 db "Press Enter"
 db 0





section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)





