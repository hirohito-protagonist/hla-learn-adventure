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


        extern     STDOUT_PUTU32
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTS
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
;        mov        ebx, 0 
        db         0bbh ; 
        dd         00h

        jmp        StartFor__hla_1891
for__hla_1891:
;        cmp        ebx, 16 
        db         083h ; 
        db         0fbh ; 
        db         010h ; 
        jne        false__hla_1892
;       push        dword [DataToSort__hla_1885+ebx*4]
        db         0ffh ; 
        db         034h ; 
        db         09dh ; 
        dd         DataToSort__hla_1885
        call       STDOUT_PUTU32
        jmp        endif__hla_1892
false__hla_1892:
;       push        dword [DataToSort__hla_1885+ebx*4]
        db         0ffh ; 
        db         034h ; 
        db         09dh ; 
        dd         DataToSort__hla_1885
        call       STDOUT_PUTU32
;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
endif__hla_1892:
continue__hla_1891:
;        inc        ebx
        db         043h ; 

StartFor__hla_1891:
;        cmp        ebx, 16 
        db         083h ; 
        db         0fbh ; 
        db         010h ; 
        jbe        for__hla_1891
exitloop__hla_1891:

;       push strict dword str__hla_1894
        db         068h ; 
        dd         str__hla_1894
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
false__hla_1895:
repeat__hla_1895:
;        mov        byte [NoSwap__hla_1886], 1 
        db         0c6h ; 
        db         05h ; 
        dd         NoSwap__hla_1886
        db         01h ; 
;        mov        ebx, 0 
        db         0bbh ; 
        dd         00h

        jmp        StartFor__hla_1896
for__hla_1896:
;        mov        eax, [DataToSort__hla_1885+ebx*4] 
        db         08bh ; 
        db         04h ; 
        db         09dh ; 
        dd         DataToSort__hla_1885
;        cmp        eax, dword [DataToSort__hla_1885+ebx*4+4] 
        db         03bh ; 
        db         04h ; 
        db         09dh ; 
        dd         (DataToSort__hla_1885+4)
        jna        false__hla_1897
;        mov        ecx, [DataToSort__hla_1885+ebx*4+4] 
        db         08bh ; 
        db         0ch ; 
        db         09dh ; 
        dd         (DataToSort__hla_1885+4)
;        mov        [DataToSort__hla_1885+ebx*4], ecx 
        db         089h ; 
        db         0ch ; 
        db         09dh ; 
        dd         DataToSort__hla_1885
;        mov        [DataToSort__hla_1885+ebx*4+4], eax 
        db         089h ; 
        db         04h ; 
        db         09dh ; 
        dd         (DataToSort__hla_1885+4)
;        mov        byte [NoSwap__hla_1886], 0 
        db         0c6h ; 
        db         05h ; 
        dd         NoSwap__hla_1886
        db         00h ; 
false__hla_1897:
continue__hla_1896:
;        inc        ebx
        db         043h ; 

StartFor__hla_1896:
;        cmp        ebx, 14 
        db         083h ; 
        db         0fbh ; 
        db         0eh ; 
        jbe        for__hla_1896
exitloop__hla_1896:

continue__hla_1895:
;        cmp        byte [NoSwap__hla_1886], 0 
        db         080h ; 
        db         03dh ; 
        dd         NoSwap__hla_1886
        db         00h ; 
        je         repeat__hla_1895
exitloop__hla_1895:

;       push strict dword str__hla_1890
        db         068h ; 
        dd         str__hla_1890
        call       STDOUT_PUTS
;        mov        ebx, 0 
        db         0bbh ; 
        dd         00h

        jmp        StartFor__hla_1898
for__hla_1898:
;        cmp        ebx, 16 
        db         083h ; 
        db         0fbh ; 
        db         010h ; 
        jne        false__hla_1899
;       push        dword [DataToSort__hla_1885+ebx*4]
        db         0ffh ; 
        db         034h ; 
        db         09dh ; 
        dd         DataToSort__hla_1885
        call       STDOUT_PUTU32
        jmp        endif__hla_1899
false__hla_1899:
;       push        dword [DataToSort__hla_1885+ebx*4]
        db         0ffh ; 
        db         034h ; 
        db         09dh ; 
        dd         DataToSort__hla_1885
        call       STDOUT_PUTU32
;       push strict dword str__hla_1893
        db         068h ; 
        dd         str__hla_1893
        call       STDOUT_PUTS
endif__hla_1899:
continue__hla_1898:
;        inc        ebx
        db         043h ; 

StartFor__hla_1898:
;        cmp        ebx, 16 
        db         083h ; 
        db         0fbh ; 
        db         010h ; 
        jbe        for__hla_1898
exitloop__hla_1898:

;       push strict dword str__hla_1894
        db         068h ; 
        dd         str__hla_1894
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
len__hla_1890 dd         01h
        dd         01h
str__hla_1890:
 db "["
 db 0

 db 0
 db 0

        align      (4)
len__hla_1893 dd         02h
        dd         02h
str__hla_1893:
 db ", "
 db 0

 db 0

        align      (4)
len__hla_1894 dd         01h
        dd         01h
str__hla_1894:
 db "]"
 db 0

 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
DataToSort__hla_1885:
        dd         01h
        dd         02h
        dd         010h
        dd         0eh
        dd         03h
        dd         09h
        dd         04h
        dd         0ah
        dd         05h
        dd         07h
        dd         0fh
        dd         0ch
        dd         08h
        dd         06h
        dd         0bh
        dd         0dh
NoSwap__hla_1886 times 1 db 0





