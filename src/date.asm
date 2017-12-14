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


        extern     STDIN_GETU8
        extern     STDOUT_NEWLN
        extern     DefaultExceptionHandler__hla_
        extern     abstract__hla_
        extern     STDOUT_PUTU8
        extern     HardwareException__hla_
        extern     BuildExcepts__hla_
        extern     STDOUT_PUTW
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


;       push strict dword str__hla_1892
        db         068h ; 
        dd         str__hla_1892
        call       STDOUT_PUTS
;       push        eax
        db         050h ; 
        call       STDIN_GETU8
;        mov        [month__hla_1886], al 
        db         0a2h ; 
        dd         (month__hla_1886+0)
        call       STDIN_GETU8
;        mov        [day__hla_1885], al 
        db         0a2h ; 
        dd         (day__hla_1885+0)
        call       STDIN_GETU8
;        mov        [year__hla_1887], al 
        db         0a2h ; 
        dd         (year__hla_1887+0)
;       pop        eax
        db         058h ; 
;        mov        ax, 0 
        dw         0b866h
        dw         00h
;        mov        [packedDate__hla_1888], ax 
        dw         0a366h
        dd         (packedDate__hla_1888+0)
;        cmp        byte [month__hla_1886], 12 
        db         080h ; 
        db         03dh ; 
        dd         month__hla_1886
        db         0ch ; 
        jna        false__hla_1905
;       push strict dword str__hla_1906
        db         068h ; 
        dd         str__hla_1906
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        jmp        endif__hla_1905
false__hla_1905:
;        cmp        byte [month__hla_1886], 0 
        db         080h ; 
        db         03dh ; 
        dd         month__hla_1886
        db         00h ; 
        jne        false__hla_1907
;       push strict dword str__hla_1906
        db         068h ; 
        dd         str__hla_1906
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        jmp        endif__hla_1905
false__hla_1907:
;        cmp        byte [day__hla_1885], 31 
        db         080h ; 
        db         03dh ; 
        dd         day__hla_1885
        db         01fh ; 
        jna        false__hla_1908
;       push strict dword str__hla_1909
        db         068h ; 
        dd         str__hla_1909
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        jmp        endif__hla_1905
false__hla_1908:
;        cmp        byte [day__hla_1885], 0 
        db         080h ; 
        db         03dh ; 
        dd         day__hla_1885
        db         00h ; 
        jne        false__hla_1910
;       push strict dword str__hla_1909
        db         068h ; 
        dd         str__hla_1909
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        jmp        endif__hla_1905
false__hla_1910:
;        cmp        byte [year__hla_1887], 99 
        db         080h ; 
        db         03dh ; 
        dd         year__hla_1887
        db         063h ; 
        jna        false__hla_1911
;       push strict dword str__hla_1912
        db         068h ; 
        dd         str__hla_1912
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        jmp        endif__hla_1905
false__hla_1911:
;        mov        al, [month__hla_1886] 
        db         0a0h ; 
        dd         (month__hla_1886+0)
;        shl        ax, 5 
        db         066h ; size prefix
        db         0c1h ; mod-reg-r/m
        db         0e0h ; 
        db         05h ; 
;        or         al, byte [day__hla_1885] 
        db         0ah ; 
        db         05h ; 
        dd         day__hla_1885
;        shl        ax, 7 
        db         066h ; size prefix
        db         0c1h ; mod-reg-r/m
        db         0e0h ; 
        db         07h ; 
;        or         al, byte [year__hla_1887] 
        db         0ah ; 
        db         05h ; 
        dd         year__hla_1887
;        mov        [packedDate__hla_1888], ax 
        dw         0a366h
        dd         (packedDate__hla_1888+0)
endif__hla_1905:
;       push strict dword str__hla_1913
        db         068h ; 
        dd         str__hla_1913
        call       STDOUT_PUTS
;       push word  0
        dw         06a66h
        db         00h ; 
;       push        word [packedDate__hla_1888]
        db         066h ; size prefix
        db         0ffh ; 
        db         035h ; 
        dd         packedDate__hla_1888
        call       STDOUT_PUTW
        call       STDOUT_NEWLN
;        mov        ax, [packedDate__hla_1888] 
        dw         0a166h
        dd         (packedDate__hla_1888+0)
;        and        al, 127 
        db         024h ; 
        db         07fh ; 
;        mov        [year__hla_1887], al 
        db         0a2h ; 
        dd         (year__hla_1887+0)
;        mov        ax, [packedDate__hla_1888] 
        dw         0a166h
        dd         (packedDate__hla_1888+0)
;        shr        ax, 7 
        db         066h ; size prefix
        db         0c1h ; mod-reg-r/m
        db         0e8h ; 
        db         07h ; 
;        and        al, 31 
        db         024h ; 
        db         01fh ; 
;        mov        [day__hla_1885], al 
        db         0a2h ; 
        dd         (day__hla_1885+0)
;        mov        ax, [packedDate__hla_1888] 
        dw         0a166h
        dd         (packedDate__hla_1888+0)
;        rol        ax, 4 
        db         066h ; size prefix
        db         0c1h ; mod-reg-r/m
        db         0c0h ; 
        db         04h ; 
;        and        al, 15 
        db         024h ; 
        db         0fh ; 
;        mov        [month__hla_1886], al 
        db         0a2h ; 
        dd         (month__hla_1886+0)
;       push strict dword str__hla_1914
        db         068h ; 
        dd         str__hla_1914
        call       STDOUT_PUTS
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push        eax
        db         050h ; 
;        mov        al, [month__hla_1886] 
        db         0a0h ; 
        dd         (month__hla_1886+0)
;        mov        [esp+4], al 
        db         088h ; 
        db         044h ; 
        db         024h ; 
        db         04h ; 
;       pop        eax
        db         058h ; 
        call       STDOUT_PUTU8
;       push strict dword str__hla_1915
        db         068h ; 
        dd         str__hla_1915
        call       STDOUT_PUTS
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push        eax
        db         050h ; 
;        mov        al, [day__hla_1885] 
        db         0a0h ; 
        dd         (day__hla_1885+0)
;        mov        [esp+4], al 
        db         088h ; 
        db         044h ; 
        db         024h ; 
        db         04h ; 
;       pop        eax
        db         058h ; 
        call       STDOUT_PUTU8
;       push strict dword str__hla_1915
        db         068h ; 
        dd         str__hla_1915
        call       STDOUT_PUTS
;       push dword 0
        db         06ah ; 
        db         00h ; 
;       push        eax
        db         050h ; 
;        mov        al, [year__hla_1887] 
        db         0a0h ; 
        dd         (year__hla_1887+0)
;        mov        [esp+4], al 
        db         088h ; 
        db         044h ; 
        db         024h ; 
        db         04h ; 
;       pop        eax
        db         058h ; 
        call       STDOUT_PUTU8
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
len__hla_1892 dd         01ah
        dd         01ah
str__hla_1892:
 db "Type month, day and year: "
 db 0

 db 0

        align      (4)
len__hla_1906 dd         01ch
        dd         01ch
str__hla_1906:
 db "Month should be from 1 to 12"
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1909 dd         01ah
        dd         01ah
str__hla_1909:
 db "Day should be from 1 to 31"
 db 0

 db 0

        align      (4)
len__hla_1912 dd         01bh
        dd         01bh
str__hla_1912:
 db "Yaer should be from 1 to 99"
 db 0


        align      (4)
len__hla_1913 dd         0fh
        dd         0fh
str__hla_1913:
 db "Packed date = $"
 db 0


        align      (4)
len__hla_1914 dd         06h
        dd         06h
str__hla_1914:
 db "Date: "
 db 0

 db 0

        align      (4)
len__hla_1915 dd         01h
        dd         01h
str__hla_1915:
 db "/"
 db 0

 db 0
 db 0




section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
day__hla_1885 times 1 db 0
month__hla_1886 times 1 db 0
year__hla_1887 times 1 db 0
packedDate__hla_1888 times 2 db 0





