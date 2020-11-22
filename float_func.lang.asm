;Bit32 nasm code
[bits 32]
global _main
;All pseudo names from the language
extern _GetMethodNameDeque
extern _GetTryRuntimeCtxStackNode
extern _MessageBoxA@16
extern _PopMethodName
extern _PushNativeMethodName
extern _PushNonNativeMethodName
extern _PushStaticMethodName
extern __get_argc_argv
extern _bdwgc_malloc
extern _c_deque_destroy
extern _c_deque_pop_front
extern _c_deque_size
extern _c_stack_pop
extern _c_stack_push
extern _copy_c_array
extern _exit
extern _free
extern _get_env_num
extern _lang_string_proxy_append_char
extern _lang_string_proxy_append_str
extern _lang_string_proxy_assign_char
extern _lang_string_proxy_assign_str
extern _lang_string_proxy_c_str
extern _lang_string_proxy_clear
extern _lang_string_proxy_construct
extern _lang_string_proxy_construct_default
extern _lang_string_proxy_get
extern _lang_string_proxy_output
extern _lang_string_proxy_set
extern _lang_string_proxy_size
extern _malloc
extern _new_array
extern _print_call_stack
extern _printf
extern _putchar
extern _restore_unhandled_exception_filter
extern _rtti_cmp
extern _save_unhandled_exception_filter
extern _throw32bit
;native class native_array
extern _native_array@size

;native class native_sys_exception
extern _native_sys_exception@get_msg
extern _native_sys_exception@native_sys_exception
extern _native_sys_exception@native_sys_exception@$S


;Program
section .data align=4
_hexstr db "%X", 10, 0
_printstr db "%d", 10, 0
_printintstr db "%d", 0
_printstrstr db "%s", 0
_printcharstr db "%c", 0
_printdoublestr db "%f", 0
_startdebugstr db "start size = %d", 10, 0
_enddebugstr db "end size = %d", 10, 0
_debugokstr db "debug ok", 10, 0
debugstrespstart db "esp start=%X", 10, 0
debugstrespend db "esp end=%X", 10, 0
_nocatchfinally db "No catch finally matched.", 10, 0
;All class name string
Main@$$classname_str db "Main", 0
boolean@$$classname_str db "boolean", 0
c1@$$classname_str db "c1", 0
c2@$$classname_str db "c2", 0
char@$$classname_str db "char", 0
cstr@$$classname_str db "cstr", 0
double@$$classname_str db "double", 0
float@$$classname_str db "float", 0
integer@$$classname_str db "integer", 0
native_array@$$classname_str db "native_array", 0
native_sys_exception@$$classname_str db "native_sys_exception", 0
none@$$classname_str db "none", 0
null@$$classname_str db "null", 0
string@$$classname_str db "string", 0
;All const string
Main@main$$cstr_1 db "1 > 2", 10, 0
Main@main$$cstr_10 db ">0.5", 0
Main@main$$cstr_11 db "1.3 > 1.1", 10, 0
Main@main$$cstr_12 db "1.3 >= 1.1", 10, 0
Main@main$$cstr_13 db "1.1 < 1.3", 10, 0
Main@main$$cstr_14 db "1.1 <= 1.3", 10, 0
Main@main$$cstr_15 db "1.1 != 1.3", 10, 0
Main@main$$cstr_16 db "3.1 == 3.1", 10, 0
Main@main$$cstr_17 db "f1 > f2", 10, 0
Main@main$$cstr_18 db "f1 >= f2", 10, 0
Main@main$$cstr_19 db "f2 < f1", 10, 0
Main@main$$cstr_2 db "1 <= 2", 10, 0
Main@main$$cstr_20 db "f2 <= f1", 10, 0
Main@main$$cstr_21 db "f2 != f1", 10, 0
Main@main$$cstr_22 db "f3 == f4", 10, 0
Main@main$$cstr_23 db "f1 > n", 10, 0
Main@main$$cstr_24 db "f1 >= n", 10, 0
Main@main$$cstr_25 db "n < f1", 10, 0
Main@main$$cstr_26 db "n <= f1", 10, 0
Main@main$$cstr_27 db "n != f1", 10, 0
Main@main$$cstr_28 db "result=", 0
Main@main$$cstr_29 db "result=", 0
Main@main$$cstr_3 db "ary.size=", 0
Main@main$$cstr_30 db "result=", 0
Main@main$$cstr_31 db "result=", 0
Main@main$$cstr_32 db "result=", 0
Main@main$$cstr_33 db "result=", 0
Main@main$$cstr_4 db "n < n1", 10, 0
Main@main$$cstr_5 db ">1.1", 0
Main@main$$cstr_6 db "not ", 0
Main@main$$cstr_7 db ">1.1", 0
Main@main$$cstr_8 db ">0.5", 0
Main@main$$cstr_9 db "not ", 0
c1@output$$cstr_1 db "this.n1=", 0
c1@output$$cstr_2 db ",this.n2=", 0
c2@output$$cstr_1 db "this.n1=", 0
c2@output$$cstr_2 db ",this.n2=", 0
;All const double
Main@main$$double_1 dq 1.100000
Main@main$$double_10 dq 1.100000
Main@main$$double_11 dq 1.300000
Main@main$$double_12 dq 3.100000
Main@main$$double_13 dq 3.100000
Main@main$$double_14 dq 1.300000
Main@main$$double_15 dq 1.100000
Main@main$$double_16 dq 3.100000
Main@main$$double_17 dq 9.100000
Main@main$$double_18 dq 3.100000
Main@main$$double_19 dq 1.300000
Main@main$$double_2 dq 1.300000
Main@main$$double_20 dq 6.200000
Main@main$$double_21 dq 1.300000
Main@main$$double_22 dq 6.200000
Main@main$$double_23 dq 1.300000
Main@main$$double_3 dq 1.100000
Main@main$$double_4 dq 1.300000
Main@main$$double_5 dq 1.100000
Main@main$$double_6 dq 1.100000
Main@main$$double_7 dq 1.300000
Main@main$$double_8 dq 1.100000
Main@main$$double_9 dq 1.300000
;All const float
Main@main$$float_1 dd 0.500000
Main@main$$float_2 dd 1.100000
Main@main$$float_3 dd 3.100000
Main@main$$float_4 dd 1.300000
Main@main$$float_5 dd 6.200000
Main@main$$float_6 dd 1.300000
Main@main$$float_7 dd 6.200000
Main@main$$float_8 dd 1.300000
;All method signature
append@$C@$$signature_str db "append@$C", 0
append@$S@$$signature_str db "append@$S", 0
assign@$C@$$signature_str db "assign@$C", 0
assign@$S@$$signature_str db "assign@$S", 0
c1@$F?$F@$$signature_str db "c1@$F?$F", 0
c2@$D?$D@$$signature_str db "c2@$D?$D", 0
c_str@$$signature_str db "c_str", 0
clear@$$signature_str db "clear", 0
func1@$D?$D@$$signature_str db "func1@$D?$D", 0
func1@$F?$F@$$signature_str db "func1@$F?$F", 0
func2@$D?$D@$$signature_str db "func2@$D?$D", 0
func2@$F?$F@$$signature_str db "func2@$F?$F", 0
func3@$D@$$signature_str db "func3@$D", 0
func3@$F@$$signature_str db "func3@$F", 0
get@$I@$$signature_str db "get@$I", 0
get_msg@$$signature_str db "get_msg", 0
length@$$signature_str db "length", 0
main@$$signature_str db "main", 0
native_sys_exception@$$signature_str db "native_sys_exception", 0
native_sys_exception@$S@$$signature_str db "native_sys_exception@$S", 0
output@$$signature_str db "output", 0
set@$I?$C@$$signature_str db "set@$I?$C", 0
size@$$signature_str db "size", 0
string@$$signature_str db "string", 0
string@$S@$$signature_str db "string@$S", 0

section .bss
;The virtual table address of class string containing virtual methods
string@$$vtable resd 2
;The descriptor table address of class Main
Main@$$classdescriptor resd 2
;The descriptor table address of class boolean
boolean@$$classdescriptor resd 2
;The descriptor table address of class c1
c1@$$classdescriptor resd 2
;The descriptor table address of class c2
c2@$$classdescriptor resd 2
;The descriptor table address of class char
char@$$classdescriptor resd 2
;The descriptor table address of class cstr
cstr@$$classdescriptor resd 2
;The descriptor table address of class double
double@$$classdescriptor resd 2
;The descriptor table address of class float
float@$$classdescriptor resd 2
;The descriptor table address of class integer
integer@$$classdescriptor resd 2
;The descriptor table address of class native_array
native_array@$$classdescriptor resd 2
;The descriptor table address of class native_sys_exception
native_sys_exception@$$classdescriptor resd 2
;The descriptor table address of class none
none@$$classdescriptor resd 2
;The descriptor table address of class null
null@$$classdescriptor resd 2
;The descriptor table address of class string
string@$$classdescriptor resd 2

section .text
_main: ;function _main
push ebp
mov ebp, esp
sub esp, 16
finit
call _save_unhandled_exception_filter
mov [ebp-4], eax
call globalfunc@$$construct_vtable ;call the method to construct all classes' virtual table
call globalfunc@$$construct_classdescriptors
call _GetMethodNameDeque
mov [ebp-8], eax ;save the method deque
push main@$$signature_str
push Main@$$classname_str
push none@$$classname_str
call _PushStaticMethodName
add esp, 12
call _Main@main
push eax
call _PopMethodName
call globalfunc@$$destroy_vtable ;call the method to destroy all classes' virtual table
push dword [ebp-4]
call _restore_unhandled_exception_filter
add esp, 4
pop eax
mov eax, 0
add esp, 16
mov esp, ebp
pop ebp
ret ;_main

globalfunc@$$construct_vtable: ;The method of constructing all classes' virtual table
push ebp
mov ebp, esp
;construct the virtual table of class 'string' start.
push 4 ;total 1 virtual member
call _malloc
add esp, 4
;class 'string', virtual method moving start
mov dword [eax], _string@output
;class 'string', virtual method moving end
mov [string@$$vtable], eax ;the virtual table address of class 'string'
mov dword [string@$$vtable + 4], string@$$classname_str ;the virtual table address of class 'string'
;construct the virtual table of class 'string' end.
mov esp, ebp
pop ebp
ret ;globalfunc@$$construct_vtable

globalfunc@$$construct_classdescriptors: ;The method of constructing all classes' descriptor table
push ebp
mov ebp, esp
mov dword [Main@$$classdescriptor], Main@$$classname_str
mov dword [Main@$$classdescriptor + 4], 0
mov dword [boolean@$$classdescriptor], boolean@$$classname_str
mov dword [boolean@$$classdescriptor + 4], 0
mov dword [c1@$$classdescriptor], c1@$$classname_str
mov dword [c1@$$classdescriptor + 4], 0
mov dword [c2@$$classdescriptor], c2@$$classname_str
mov dword [c2@$$classdescriptor + 4], 0
mov dword [char@$$classdescriptor], char@$$classname_str
mov dword [char@$$classdescriptor + 4], 0
mov dword [cstr@$$classdescriptor], cstr@$$classname_str
mov dword [cstr@$$classdescriptor + 4], 0
mov dword [double@$$classdescriptor], double@$$classname_str
mov dword [double@$$classdescriptor + 4], 0
mov dword [float@$$classdescriptor], float@$$classname_str
mov dword [float@$$classdescriptor + 4], 0
mov dword [integer@$$classdescriptor], integer@$$classname_str
mov dword [integer@$$classdescriptor + 4], 0
mov dword [native_array@$$classdescriptor], native_array@$$classname_str
mov dword [native_array@$$classdescriptor + 4], 0
mov dword [native_sys_exception@$$classdescriptor], native_sys_exception@$$classname_str
mov dword [native_sys_exception@$$classdescriptor + 4], 0
mov dword [none@$$classdescriptor], none@$$classname_str
mov dword [none@$$classdescriptor + 4], 0
mov dword [null@$$classdescriptor], null@$$classname_str
mov dword [null@$$classdescriptor + 4], 0
mov dword [string@$$classdescriptor], string@$$classname_str
mov dword [string@$$classdescriptor + 4], 0

mov esp, ebp
pop ebp
ret ;globalfunc@$$construct_classdescriptors

globalfunc@$$destroy_vtable: ;The method of destroying all classes' virtual table
push ebp
mov ebp, esp
;The virtual table address of class string containing virtual methods
push dword [string@$$vtable]
call _free
add esp, 4
mov esp, ebp
pop ebp
ret ;globalfunc@$$destroy_vtable


;Method: _string@string
_string@string:
push ebp
mov ebp, esp
call _lang_string_proxy_construct_default
mov ecx, [ebp+8]
mov dword [ecx+4], eax
mov esp, ebp
pop ebp
ret ;_string@string

;Method: _string@string@$S
_string@string@$S:
push ebp
mov ebp, esp
push dword [ebp+12]
call _lang_string_proxy_construct
add esp, 4
mov ecx, [ebp+8]
mov dword [ecx+4], eax
mov esp, ebp
pop ebp
ret ;_string@string@$S

;Method: _string@set@$I?$C
_string@set@$I?$C:
push ebp
mov ebp, esp
push dword [ebp+16]
push dword [ebp+12]
mov ecx, [ebp+8]
push dword [ecx+4]
call _lang_string_proxy_set
add esp, 12
mov esp, ebp
pop ebp
ret ;_string@set@$I?$C

;Method: _string@get@$I
_string@get@$I:
push ebp
mov ebp, esp
push dword [ebp+12]
mov ecx, [ebp+8]
push dword [ecx+4]
call _lang_string_proxy_get
add esp, 8
mov esp, ebp
pop ebp
ret ;_string@get@$I

;Method: _string@append@$C
_string@append@$C:
push ebp
mov ebp, esp
push dword [ebp+12]
mov ecx, [ebp+8]
push dword [ecx+4]
call _lang_string_proxy_append_char
add esp, 8
mov esp, ebp
pop ebp
ret ;_string@append@$C

;Method: _string@append@$S
_string@append@$S:
push ebp
mov ebp, esp
push dword [ebp+12]
mov ecx, [ebp+8]
push dword [ecx+4]
call _lang_string_proxy_append_str
add esp, 8
mov esp, ebp
pop ebp
ret ;_string@append@$S

;Method: _string@assign@$S
_string@assign@$S:
push ebp
mov ebp, esp
push dword [ebp+12]
mov ecx, [ebp+8]
push dword [ecx+4]
call _lang_string_proxy_assign_str
add esp, 8
mov esp, ebp
pop ebp
ret ;_string@assign@$S

;Method: _string@assign@$C
_string@assign@$C:
push ebp
mov ebp, esp
push dword [ebp+12]
mov ecx, [ebp+8]
push dword [ecx+4]
call _lang_string_proxy_assign_char
add esp, 8
mov esp, ebp
pop ebp
ret ;_string@assign@$C

;Method: _string@clear
_string@clear:
push ebp
mov ebp, esp
mov ecx, [ebp+8]
push dword [ecx+4]
call _lang_string_proxy_clear
add esp, 4
mov esp, ebp
pop ebp
ret ;_string@clear

;Method: _string@size
_string@size:
push ebp
mov ebp, esp
mov ecx, [ebp+8]
push dword [ecx+4]
call _lang_string_proxy_size
add esp, 4
mov esp, ebp
pop ebp
ret ;_string@size

;Method: _string@output
_string@output:
push ebp
mov ebp, esp
mov ecx, [ebp+8]
push dword [ecx+4]
call _lang_string_proxy_output
add esp, 4
mov esp, ebp
pop ebp
ret ;_string@output

;Method: _string@c_str
_string@c_str:
push ebp
mov ebp, esp
mov ecx, [ebp+8]
push dword [ecx+4]
call _lang_string_proxy_c_str
add esp, 4
mov esp, ebp
pop ebp
ret ;_string@c_str

;Method: _string@length
_string@length:
push ebp
mov ebp, esp
push dword [ebp+8]
call _string@size
add esp, 4
mov esp, ebp
pop ebp
ret ;_string@length

;Method: _c1@c1@$F?$F
_c1@c1@$F?$F:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'n1' start
mov eax, ebp ;Parameter: n1
add eax, 12 ;Parameter: n1
;Get the value of variable or field 'n1' end

fld dword[eax] ;get the right value of the left value
mov eax, [ebp+8]
fistp dword[eax]
;Get the value of variable or field or type 'n2' start
mov eax, ebp ;Parameter: n2
add eax, 16 ;Parameter: n2
;Get the value of variable or field 'n2' end

fld dword[eax] ;get the right value of the left value
mov eax, [ebp+8]
add eax, 4
fistp dword[eax]
mov esp, ebp
pop ebp
ret ;_c1@c1@$F?$F

;Method: _c1@output
_c1@output:
push ebp
mov ebp, esp
mov eax, c1@output$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, [ebp+8]
mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, c1@output$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, [ebp+8]
add eax, 4
mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_c1@output

;Method: _c1@func1@$F?$F
_c1@func1@$F?$F:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'n1' start
mov eax, ebp ;Parameter: n1
add eax, 12 ;Parameter: n1
;Get the value of variable or field 'n1' end

fld dword [eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'n2' start
mov eax, ebp ;Parameter: n2
add eax, 16 ;Parameter: n2
;Get the value of variable or field 'n2' end

fld dword [eax] ;get the right value of the left value
faddp st1, st0
add esp, 0
mov esp, ebp
pop ebp
ret
mov esp, ebp
pop ebp
ret ;_c1@func1@$F?$F

;Method: _c1@func2@$F?$F
_c1@func2@$F?$F:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'n1' start
mov eax, ebp ;Parameter: n1
add eax, 8 ;Parameter: n1
;Get the value of variable or field 'n1' end

fld dword [eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'n2' start
mov eax, ebp ;Parameter: n2
add eax, 12 ;Parameter: n2
;Get the value of variable or field 'n2' end

fld dword [eax] ;get the right value of the left value
fmulp
add esp, 0
mov esp, ebp
pop ebp
ret
mov esp, ebp
pop ebp
ret ;_c1@func2@$F?$F

;Method: _c1@func3@$F
_c1@func3@$F:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'n1' start
mov eax, ebp ;Parameter: n1
add eax, 8 ;Parameter: n1
;Get the value of variable or field 'n1' end

fld dword[eax]
add esp, 0
mov esp, ebp
pop ebp
ret
mov esp, ebp
pop ebp
ret ;_c1@func3@$F

;Method: _c2@c2@$D?$D
_c2@c2@$D?$D:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'n1' start
mov eax, ebp ;Parameter: n1
add eax, 12 ;Parameter: n1
;Get the value of variable or field 'n1' end

fld qword[eax] ;get the right value of the left value
mov eax, [ebp+8]
fistp dword[eax]
;Get the value of variable or field or type 'n2' start
mov eax, ebp ;Parameter: n2
add eax, 20 ;Parameter: n2
;Get the value of variable or field 'n2' end

fld qword[eax] ;get the right value of the left value
mov eax, [ebp+8]
add eax, 4
fistp dword[eax]
mov esp, ebp
pop ebp
ret ;_c2@c2@$D?$D

;Method: _c2@output
_c2@output:
push ebp
mov ebp, esp
mov eax, c2@output$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, [ebp+8]
mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, c2@output$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, [ebp+8]
add eax, 4
mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_c2@output

;Method: _c2@func1@$D?$D
_c2@func1@$D?$D:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'n1' start
mov eax, ebp ;Parameter: n1
add eax, 12 ;Parameter: n1
;Get the value of variable or field 'n1' end

fld qword [eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'n2' start
mov eax, ebp ;Parameter: n2
add eax, 20 ;Parameter: n2
;Get the value of variable or field 'n2' end

fld qword [eax] ;get the right value of the left value
faddp st1, st0
add esp, 0
mov esp, ebp
pop ebp
ret
mov esp, ebp
pop ebp
ret ;_c2@func1@$D?$D

;Method: _c2@func2@$D?$D
_c2@func2@$D?$D:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'n1' start
mov eax, ebp ;Parameter: n1
add eax, 8 ;Parameter: n1
;Get the value of variable or field 'n1' end

fld qword [eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'n2' start
mov eax, ebp ;Parameter: n2
add eax, 16 ;Parameter: n2
;Get the value of variable or field 'n2' end

fld qword [eax] ;get the right value of the left value
fmulp
add esp, 0
mov esp, ebp
pop ebp
ret
mov esp, ebp
pop ebp
ret ;_c2@func2@$D?$D

;Method: _c2@func3@$D
_c2@func3@$D:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'n1' start
mov eax, ebp ;Parameter: n1
add eax, 8 ;Parameter: n1
;Get the value of variable or field 'n1' end

fld qword[eax]
add esp, 0
mov esp, ebp
pop ebp
ret
mov esp, ebp
pop ebp
ret ;_c2@func3@$D

;Method: _Main@main
_Main@main:
push ebp
mov ebp, esp
sub esp, 36
mov eax, 1
push eax
mov eax, 2
mov ebx, eax ;get the right value of the left value
pop eax
cmp eax, ebx
jg L@$$_JG_2
mov eax, 0
jmp L@$$_JG_END_2
L@$$_JG_2:
mov eax, 1
L@$$_JG_END_2:
cmp eax, 1
jne L@$$_ELSE_1
mov eax, Main@main$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_1
L@$$_ELSE_1:
mov eax, Main@main$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
L@$$_IFELSE_END_1:
mov eax, 1
push eax ;save the right expression value
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
mov eax, 9
push eax ;save the right expression value
;Get the value of variable or field or type 'n1' start
mov eax, ebp ;Variable: n1
sub eax, 8 ;Variable: n1
;Get the value of variable or field 'n1' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;start generating code for VisitNewPrimitiveArrayExpNode
mov eax, 9
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewPrimitiveArrayExpNode
push eax ;save the right expression value
;Get the value of variable or field or type 'ary' start
mov eax, ebp ;Variable: ary
sub eax, 12 ;Variable: ary
;Get the value of variable or field 'ary' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
mov eax, Main@main$$cstr_3
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'ary' start
mov eax, ebp ;Variable: ary
sub eax, 12 ;Variable: ary
;Get the value of variable or field 'ary' end

mov ecx, [eax]
mov [esp+8], ecx
push size@$$signature_str
push native_array@$$classname_str
push integer@$$classname_str
call _PushNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _native_array@size
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
push eax
push _printintstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
;WhileNode start: L@$$_WHILE_START_3
L@$$_WHILE_START_3:
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'ary' start
mov eax, ebp ;Variable: ary
sub eax, 12 ;Variable: ary
;Get the value of variable or field 'ary' end

mov ecx, [eax]
mov [esp+8], ecx
push size@$$signature_str
push native_array@$$classname_str
push integer@$$classname_str
call _PushNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _native_array@size
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
mov ebx, eax ;get the right value of the left value
pop eax
cmp eax, ebx
jl L@$$_JL_4
mov eax, 0
jmp L@$$_JL_END_4
L@$$_JL_4:
mov eax, 1
L@$$_JL_END_4:
cmp eax, 1
jne L@$$_WHILE_END_3
mov eax, Main@main$$cstr_4
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$$_WHILE_START_3
L@$$_WHILE_END_3:
;WhileNode end: L@$$_WHILE_START_3
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

fild dword[eax] ;get the right value of the left value
fstp st1
fld qword [Main@main$$double_1]
fcomip st0, st1
jb L@$$_JG_6
mov eax, 0
jmp L@$$_JG_END_6
L@$$_JG_6:
mov eax, 1
L@$$_JG_END_6:
cmp eax, 1
jne L@$$_ELSE_5
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main$$cstr_5
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_5
L@$$_ELSE_5:
mov eax, Main@main$$cstr_6
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main$$cstr_7
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
L@$$_IFELSE_END_5:
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

fild dword[eax] ;get the right value of the left value
fstp st1
fld dword [Main@main$$float_1]
fcomip st0, st1
jb L@$$_JG_8
mov eax, 0
jmp L@$$_JG_END_8
L@$$_JG_8:
mov eax, 1
L@$$_JG_END_8:
cmp eax, 1
jne L@$$_ELSE_7
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main$$cstr_8
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_7
L@$$_ELSE_7:
mov eax, Main@main$$cstr_9
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main$$cstr_10
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
L@$$_IFELSE_END_7:
fld qword [Main@main$$double_2]
fstp st1
fld qword [Main@main$$double_3]
fcomip st0, st1
jb L@$$_JG_10
mov eax, 0
jmp L@$$_JG_END_10
L@$$_JG_10:
mov eax, 1
L@$$_JG_END_10:
cmp eax, 1
jne L@$$_IFELSE_END_9
mov eax, Main@main$$cstr_11
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_9
L@$$_IFELSE_END_9:
fld qword [Main@main$$double_4]
fstp st1
fld qword [Main@main$$double_5]
fcomip st0, st1
jbe L@$$_JGE_12
mov eax, 0
jmp L@$$_JGE_END_12
L@$$_JGE_12:
mov eax, 1
L@$$_JGE_END_12:
cmp eax, 1
jne L@$$_IFELSE_END_11
mov eax, Main@main$$cstr_12
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_11
L@$$_IFELSE_END_11:
fld qword [Main@main$$double_6]
fstp st1
fld qword [Main@main$$double_7]
fcomip st0, st1
ja L@$$_JL_14
mov eax, 0
jmp L@$$_JL_END_14
L@$$_JL_14:
mov eax, 1
L@$$_JL_END_14:
cmp eax, 1
jne L@$$_IFELSE_END_13
mov eax, Main@main$$cstr_13
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_13
L@$$_IFELSE_END_13:
fld qword [Main@main$$double_8]
fstp st1
fld qword [Main@main$$double_9]
fcomip st0, st1
jae L@$$_JLE_16
mov eax, 0
jmp L@$$_JLE_END_16
L@$$_JLE_16:
mov eax, 1
L@$$_JLE_END_16:
cmp eax, 1
jne L@$$_IFELSE_END_15
mov eax, Main@main$$cstr_14
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_15
L@$$_IFELSE_END_15:
fld qword [Main@main$$double_10]
fstp st1
fld qword [Main@main$$double_11]
fcomip st0, st1
jne L@$$_JNE_18
mov eax, 0
jmp L@$$_JNE_END_18
L@$$_JNE_18:
mov eax, 1
L@$$_JNE_END_18:
cmp eax, 1
jne L@$$_IFELSE_END_17
mov eax, Main@main$$cstr_15
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_17
L@$$_IFELSE_END_17:
fld qword [Main@main$$double_12]
fstp st1
fld qword [Main@main$$double_13]
fcomip st0, st1
je L@$$_JE_20
mov eax, 0
jmp L@$$_JE_END_20
L@$$_JE_20:
mov eax, 1
L@$$_JE_END_20:
cmp eax, 1
jne L@$$_IFELSE_END_19
mov eax, Main@main$$cstr_16
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_19
L@$$_IFELSE_END_19:
fld qword [Main@main$$double_14]
;Get the value of variable or field or type 'f1' start
mov eax, ebp ;Variable: f1
sub eax, 16 ;Variable: f1
;Get the value of variable or field 'f1' end

fstp dword[eax]
fld qword [Main@main$$double_15]
;Get the value of variable or field or type 'f2' start
mov eax, ebp ;Variable: f2
sub eax, 20 ;Variable: f2
;Get the value of variable or field 'f2' end

fstp dword[eax]
;Get the value of variable or field or type 'f1' start
mov eax, ebp ;Variable: f1
sub eax, 16 ;Variable: f1
;Get the value of variable or field 'f1' end

fld dword[eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'f2' start
mov eax, ebp ;Variable: f2
sub eax, 20 ;Variable: f2
;Get the value of variable or field 'f2' end

fld dword [eax] ;get the right value of the left value
fcomip st0, st1
jb L@$$_JG_22
mov eax, 0
jmp L@$$_JG_END_22
L@$$_JG_22:
mov eax, 1
L@$$_JG_END_22:
cmp eax, 1
jne L@$$_IFELSE_END_21
mov eax, Main@main$$cstr_17
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_21
L@$$_IFELSE_END_21:
;Get the value of variable or field or type 'f1' start
mov eax, ebp ;Variable: f1
sub eax, 16 ;Variable: f1
;Get the value of variable or field 'f1' end

fld dword[eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'f2' start
mov eax, ebp ;Variable: f2
sub eax, 20 ;Variable: f2
;Get the value of variable or field 'f2' end

fld dword [eax] ;get the right value of the left value
fcomip st0, st1
jbe L@$$_JGE_24
mov eax, 0
jmp L@$$_JGE_END_24
L@$$_JGE_24:
mov eax, 1
L@$$_JGE_END_24:
cmp eax, 1
jne L@$$_IFELSE_END_23
mov eax, Main@main$$cstr_18
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_23
L@$$_IFELSE_END_23:
;Get the value of variable or field or type 'f2' start
mov eax, ebp ;Variable: f2
sub eax, 20 ;Variable: f2
;Get the value of variable or field 'f2' end

fld dword[eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'f1' start
mov eax, ebp ;Variable: f1
sub eax, 16 ;Variable: f1
;Get the value of variable or field 'f1' end

fld dword [eax] ;get the right value of the left value
fcomip st0, st1
ja L@$$_JL_26
mov eax, 0
jmp L@$$_JL_END_26
L@$$_JL_26:
mov eax, 1
L@$$_JL_END_26:
cmp eax, 1
jne L@$$_IFELSE_END_25
mov eax, Main@main$$cstr_19
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_25
L@$$_IFELSE_END_25:
;Get the value of variable or field or type 'f2' start
mov eax, ebp ;Variable: f2
sub eax, 20 ;Variable: f2
;Get the value of variable or field 'f2' end

fld dword[eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'f1' start
mov eax, ebp ;Variable: f1
sub eax, 16 ;Variable: f1
;Get the value of variable or field 'f1' end

fld dword [eax] ;get the right value of the left value
fcomip st0, st1
jae L@$$_JLE_28
mov eax, 0
jmp L@$$_JLE_END_28
L@$$_JLE_28:
mov eax, 1
L@$$_JLE_END_28:
cmp eax, 1
jne L@$$_IFELSE_END_27
mov eax, Main@main$$cstr_20
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_27
L@$$_IFELSE_END_27:
;Get the value of variable or field or type 'f2' start
mov eax, ebp ;Variable: f2
sub eax, 20 ;Variable: f2
;Get the value of variable or field 'f2' end

fld dword[eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'f1' start
mov eax, ebp ;Variable: f1
sub eax, 16 ;Variable: f1
;Get the value of variable or field 'f1' end

fld dword [eax] ;get the right value of the left value
fcomip st0, st1
jne L@$$_JNE_30
mov eax, 0
jmp L@$$_JNE_END_30
L@$$_JNE_30:
mov eax, 1
L@$$_JNE_END_30:
cmp eax, 1
jne L@$$_IFELSE_END_29
mov eax, Main@main$$cstr_21
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_29
L@$$_IFELSE_END_29:
fld qword [Main@main$$double_16]
;Get the value of variable or field or type 'f3' start
mov eax, ebp ;Variable: f3
sub eax, 24 ;Variable: f3
;Get the value of variable or field 'f3' end

fstp dword[eax]
;Get the value of variable or field or type 'f3' start
mov eax, ebp ;Variable: f3
sub eax, 24 ;Variable: f3
;Get the value of variable or field 'f3' end

fld dword[eax] ;get the right value of the left value
;Get the value of variable or field or type 'f4' start
mov eax, ebp ;Variable: f4
sub eax, 28 ;Variable: f4
;Get the value of variable or field 'f4' end

fstp dword[eax]
;Get the value of variable or field or type 'f3' start
mov eax, ebp ;Variable: f3
sub eax, 24 ;Variable: f3
;Get the value of variable or field 'f3' end

fld dword[eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'f4' start
mov eax, ebp ;Variable: f4
sub eax, 28 ;Variable: f4
;Get the value of variable or field 'f4' end

fld dword [eax] ;get the right value of the left value
fcomip st0, st1
je L@$$_JE_32
mov eax, 0
jmp L@$$_JE_END_32
L@$$_JE_32:
mov eax, 1
L@$$_JE_END_32:
cmp eax, 1
jne L@$$_IFELSE_END_31
mov eax, Main@main$$cstr_22
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_31
L@$$_IFELSE_END_31:
mov eax, 1
push eax ;save the right expression value
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'f1' start
mov eax, ebp ;Variable: f1
sub eax, 16 ;Variable: f1
;Get the value of variable or field 'f1' end

fld dword[eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

fild dword [eax] ;get the right value of the left value
fcomip st0, st1
jb L@$$_JG_34
mov eax, 0
jmp L@$$_JG_END_34
L@$$_JG_34:
mov eax, 1
L@$$_JG_END_34:
cmp eax, 1
jne L@$$_IFELSE_END_33
mov eax, Main@main$$cstr_23
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_33
L@$$_IFELSE_END_33:
;Get the value of variable or field or type 'f1' start
mov eax, ebp ;Variable: f1
sub eax, 16 ;Variable: f1
;Get the value of variable or field 'f1' end

fld dword[eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

fild dword [eax] ;get the right value of the left value
fcomip st0, st1
jbe L@$$_JGE_36
mov eax, 0
jmp L@$$_JGE_END_36
L@$$_JGE_36:
mov eax, 1
L@$$_JGE_END_36:
cmp eax, 1
jne L@$$_IFELSE_END_35
mov eax, Main@main$$cstr_24
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_35
L@$$_IFELSE_END_35:
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

fild dword[eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'f1' start
mov eax, ebp ;Variable: f1
sub eax, 16 ;Variable: f1
;Get the value of variable or field 'f1' end

fld dword [eax] ;get the right value of the left value
fcomip st0, st1
ja L@$$_JL_38
mov eax, 0
jmp L@$$_JL_END_38
L@$$_JL_38:
mov eax, 1
L@$$_JL_END_38:
cmp eax, 1
jne L@$$_IFELSE_END_37
mov eax, Main@main$$cstr_25
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_37
L@$$_IFELSE_END_37:
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

fild dword[eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'f1' start
mov eax, ebp ;Variable: f1
sub eax, 16 ;Variable: f1
;Get the value of variable or field 'f1' end

fld dword [eax] ;get the right value of the left value
fcomip st0, st1
jae L@$$_JLE_40
mov eax, 0
jmp L@$$_JLE_END_40
L@$$_JLE_40:
mov eax, 1
L@$$_JLE_END_40:
cmp eax, 1
jne L@$$_IFELSE_END_39
mov eax, Main@main$$cstr_26
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_39
L@$$_IFELSE_END_39:
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

fild dword[eax] ;get the right value of the left value
fstp st1
;Get the value of variable or field or type 'f1' start
mov eax, ebp ;Variable: f1
sub eax, 16 ;Variable: f1
;Get the value of variable or field 'f1' end

fld dword [eax] ;get the right value of the left value
fcomip st0, st1
jne L@$$_JNE_42
mov eax, 0
jmp L@$$_JNE_END_42
L@$$_JNE_42:
mov eax, 1
L@$$_JNE_END_42:
cmp eax, 1
jne L@$$_IFELSE_END_41
mov eax, Main@main$$cstr_27
push eax
push _printstrstr
call _printf
add esp, 8
jmp L@$$_IFELSE_END_41
L@$$_IFELSE_END_41:
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 12
call _bdwgc_malloc
add esp, 4
mov dword [eax], c1@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c1@$F?$F@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
fld dword [Main@main$$float_3]
sub esp, 4
fstp dword[esp]
fld dword [Main@main$$float_2]
sub esp, 4
fstp dword[esp]
push dword [esp+12]
call _c1@c1@$F?$F
add esp, 12
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;Get the value of variable or field or type 'obj' start
mov eax, ebp ;Variable: obj
sub eax, 32 ;Variable: obj
;Get the value of variable or field 'obj' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj' start
mov eax, ebp ;Variable: obj
sub eax, 32 ;Variable: obj
;Get the value of variable or field 'obj' end

mov ecx, [eax]
mov [esp+8], ecx
push output@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _c1@output
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
mov eax, Main@main$$cstr_28
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj' start
mov eax, ebp ;Variable: obj
sub eax, 32 ;Variable: obj
;Get the value of variable or field 'obj' end

mov ecx, [eax]
mov [esp+8], ecx
push func1@$F?$F@$$signature_str
push float@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
fld dword [Main@main$$float_5]
sub esp, 4
fstp dword[esp]
fld dword [Main@main$$float_4]
sub esp, 4
fstp dword[esp]
mov ecx, [esp+16] ;this address value
;general call start
push ecx ;this address value
call _c1@func1@$F?$F
add esp, 12 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
sub esp, 8
fstp qword [esp]
push _printdoublestr
call _printf
add esp, 12
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
mov eax, Main@main$$cstr_29
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 8 ;static method call, 2 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'c1' start
;Get the value of variable or field 'c1' end

push func2@$F?$F@$$signature_str
push c1@$$classname_str
push float@$$classname_str
call _PushStaticMethodName
add esp, 12
fld dword [Main@main$$float_7]
sub esp, 4
fstp dword[esp]
fld dword [Main@main$$float_6]
sub esp, 4
fstp dword[esp]
;static call start
call _c1@func2@$F?$F
add esp, 8 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 8
;static call end
sub esp, 8
fstp qword [esp]
push _printdoublestr
call _printf
add esp, 12
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
mov eax, Main@main$$cstr_30
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 8 ;static method call, 2 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'c1' start
;Get the value of variable or field 'c1' end

push func3@$F@$$signature_str
push c1@$$classname_str
push float@$$classname_str
call _PushStaticMethodName
add esp, 12
fld dword [Main@main$$float_8]
sub esp, 4
fstp dword[esp]
;static call start
call _c1@func3@$F
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 8
;static call end
sub esp, 8
fstp qword [esp]
push _printdoublestr
call _printf
add esp, 12
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 12
call _bdwgc_malloc
add esp, 4
mov dword [eax], c2@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c2@$D?$D@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
fld qword [Main@main$$double_18]
sub esp, 8
fstp qword[esp]
fld qword [Main@main$$double_17]
sub esp, 8
fstp qword[esp]
push dword [esp+20]
call _c2@c2@$D?$D
add esp, 20
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;Get the value of variable or field or type 'obj2' start
mov eax, ebp ;Variable: obj2
sub eax, 36 ;Variable: obj2
;Get the value of variable or field 'obj2' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj2' start
mov eax, ebp ;Variable: obj2
sub eax, 36 ;Variable: obj2
;Get the value of variable or field 'obj2' end

mov ecx, [eax]
mov [esp+8], ecx
push output@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _c2@output
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
mov eax, Main@main$$cstr_31
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj2' start
mov eax, ebp ;Variable: obj2
sub eax, 36 ;Variable: obj2
;Get the value of variable or field 'obj2' end

mov ecx, [eax]
mov [esp+8], ecx
push func1@$D?$D@$$signature_str
push double@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
fld qword [Main@main$$double_20]
sub esp, 8
fstp qword[esp]
fld qword [Main@main$$double_19]
sub esp, 8
fstp qword[esp]
mov ecx, [esp+24] ;this address value
;general call start
push ecx ;this address value
call _c2@func1@$D?$D
add esp, 20 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
sub esp, 8
fstp qword [esp]
push _printdoublestr
call _printf
add esp, 12
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
mov eax, Main@main$$cstr_32
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 8 ;static method call, 2 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'c2' start
;Get the value of variable or field 'c2' end

push func2@$D?$D@$$signature_str
push c2@$$classname_str
push double@$$classname_str
call _PushStaticMethodName
add esp, 12
fld qword [Main@main$$double_22]
sub esp, 8
fstp qword[esp]
fld qword [Main@main$$double_21]
sub esp, 8
fstp qword[esp]
;static call start
call _c2@func2@$D?$D
add esp, 16 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 8
;static call end
sub esp, 8
fstp qword [esp]
push _printdoublestr
call _printf
add esp, 12
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
mov eax, Main@main$$cstr_33
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 8 ;static method call, 2 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'c2' start
;Get the value of variable or field 'c2' end

push func3@$D@$$signature_str
push c2@$$classname_str
push double@$$classname_str
call _PushStaticMethodName
add esp, 12
fld qword [Main@main$$double_23]
sub esp, 8
fstp qword[esp]
;static call start
call _c2@func3@$D
add esp, 8 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 8
;static call end
sub esp, 8
fstp qword [esp]
push _printdoublestr
call _printf
add esp, 12
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
add esp, 36
mov esp, ebp
pop ebp
ret ;_Main@main
