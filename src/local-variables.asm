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


; procedure First__hla_1887

First__hla_1887:
;/*Dynamic link*/
;       push        ebp
        db         055h ; 
;/* push dword ptr [ebp-4] ;Display for lex level 0*/
;       push        dword [ebp-4]
        db         0ffh ; 
        db         075h ; 
        db         0fch ; 
;/*Get frame ptr*/
;        lea        ebp, [esp+4] 
        db         08dh ; 
        db         06ch ; 
        db         024h ; 
        db         04h ; 
;/* Ptr to this proc's A.R.*/
;       push        ebp
        db         055h ; 
;        sub        esp, 8 
        db         083h ; 
        db         0ech ; 
        db         08h ; 
;        and        esp, -4 
        db         083h ; 
        db         0e4h ; 
        db         0fch ; 
;        mov        dword [ebp-16], 10 
        db         0c7h ; 
        db         045h ; 
        db         0f0h ; 
        dd         0ah
;        mov        dword [ebp-12], 0 
        db         0c7h ; 
        db         045h ; 
        db         0f4h ; 
        dd         00h

        jmp        StartFor__hla_1888
for__hla_1888:
;       push strict dword str__hla_1889
        db         068h ; 
        dd         str__hla_1889
        call       STDOUT_PUTS
;       push        dword [ebp-12]
        db         0ffh ; 
        db         075h ; 
        db         0f4h ; 
        call       STDOUT_PUTU32
;       push strict dword str__hla_1890
        db         068h ; 
        dd         str__hla_1890
        call       STDOUT_PUTS
;       push        dword [ebp-16]
        db         0ffh ; 
        db         075h ; 
        db         0f0h ; 
        call       STDOUT_PUTU32
        call       STDOUT_NEWLN
;        dec        dword [ebp-16]
        db         0ffh ; 
        db         04dh ; 
        db         0f0h ; 
continue__hla_1888:
;        inc        dword [ebp-12]
        db         0ffh ; 
        db         045h ; 
        db         0f4h ; 

StartFor__hla_1888:
;        cmp        dword [ebp-12], 10 
        db         083h ; 
        db         07dh ; 
        db         0f4h ; 
        db         0ah ; 
        jb         for__hla_1888
exitloop__hla_1888:

xFirst__hla_1887__hla_:
;        mov        esp, ebp 
        db         089h ; 
        db         0ech ; mod-reg-r/m
;       pop        ebp
        db         05dh ; 
 ;       ret        
        db         0c3h ; opcode
;First__hla_1887 endp


; procedure Second__hla_1892

Second__hla_1892:
;/*Dynamic link*/
;       push        ebp
        db         055h ; 
;/* push dword ptr [ebp-4] ;Display for lex level 0*/
;       push        dword [ebp-4]
        db         0ffh ; 
        db         075h ; 
        db         0fch ; 
;/*Get frame ptr*/
;        lea        ebp, [esp+4] 
        db         08dh ; 
        db         06ch ; 
        db         024h ; 
        db         04h ; 
;/* Ptr to this proc's A.R.*/
;       push        ebp
        db         055h ; 
;        sub        esp, 4 
        db         083h ; 
        db         0ech ; 
        db         04h ; 
;        and        esp, -4 
        db         083h ; 
        db         0e4h ; 
        db         0fch ; 
;        mov        dword [j__hla_1886], 10 
        db         0c7h ; 
        db         05h ; 
        dd         j__hla_1886
        dd         0ah
;        mov        dword [ebp-12], 0 
        db         0c7h ; 
        db         045h ; 
        db         0f4h ; 
        dd         00h

        jmp        StartFor__hla_1893
for__hla_1893:
;       push strict dword str__hla_1889
        db         068h ; 
        dd         str__hla_1889
        call       STDOUT_PUTS
;       push        dword [ebp-12]
        db         0ffh ; 
        db         075h ; 
        db         0f4h ; 
        call       STDOUT_PUTU32
;       push strict dword str__hla_1890
        db         068h ; 
        dd         str__hla_1890
        call       STDOUT_PUTS
;       push        dword [j__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         j__hla_1886
        call       STDOUT_PUTU32
        call       STDOUT_NEWLN
;        dec        dword [j__hla_1886]
        db         0ffh ; 
        db         0dh ; 
        dd         j__hla_1886
continue__hla_1893:
;        inc        dword [ebp-12]
        db         0ffh ; 
        db         045h ; 
        db         0f4h ; 

StartFor__hla_1893:
;        cmp        dword [ebp-12], 10 
        db         083h ; 
        db         07dh ; 
        db         0f4h ; 
        db         0ah ; 
        jb         for__hla_1893
exitloop__hla_1893:

xSecond__hla_1892__hla_:
;        mov        esp, ebp 
        db         089h ; 
        db         0ech ; mod-reg-r/m
;       pop        ebp
        db         05dh ; 
 ;       ret        
        db         0c3h ; opcode
;Second__hla_1892 endp




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


        call       First__hla_1887
;       push strict dword str__hla_1898
        db         068h ; 
        dd         str__hla_1898
        call       STDOUT_PUTS
        call       STDOUT_NEWLN
        call       Second__hla_1892
;       push strict dword str__hla_1889
        db         068h ; 
        dd         str__hla_1889
        call       STDOUT_PUTS
;       push        dword [i__hla_1885]
        db         0ffh ; 
        db         035h ; 
        dd         i__hla_1885
        call       STDOUT_PUTU32
;       push strict dword str__hla_1890
        db         068h ; 
        dd         str__hla_1890
        call       STDOUT_PUTS
;       push        dword [j__hla_1886]
        db         0ffh ; 
        db         035h ; 
        dd         j__hla_1886
        call       STDOUT_PUTU32
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
len__hla_1889 dd         03h
        dd         03h
str__hla_1889:
 db "i= "
 db 0


        align      (4)
len__hla_1890 dd         04h
        dd         04h
str__hla_1890:
 db " j= "
 db 0

 db 0
 db 0
 db 0

        align      (4)
len__hla_1898 dd         017h
        dd         017h
str__hla_1898:
 db "-----------------------"
 db 0





section  .data data align=16

        extern     MainPgmCoroutine__hla_
        extern     __imp__MessageBoxA@16
        extern     __imp__ExitProcess@4
        align      (4)
i__hla_1885 :dd     0xa
j__hla_1886 :dd     0x14





