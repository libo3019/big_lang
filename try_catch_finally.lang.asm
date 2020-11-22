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
c3@$$classname_str db "c3", 0
c5@$$classname_str db "c5", 0
c9@$$classname_str db "c9", 0
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
Main@main$$cstr_1 db "#################1", 10, 0
Main@main$$cstr_10 db "try start1!", 10, 0
Main@main$$cstr_11 db "try3obj", 0
Main@main$$cstr_12 db "*****c5 exception is captured: ", 0
Main@main$$cstr_13 db "try2obj", 0
Main@main$$cstr_14 db "c3info", 0
Main@main$$cstr_15 db "c1exception info: ", 0
Main@main$$cstr_16 db "*************c3exception info: ", 0
Main@main$$cstr_17 db "try start3!", 10, 0
Main@main$$cstr_18 db "The try1", 39, "s exception information: ", 0
Main@main$$cstr_19 db "finally is executed!", 10, 0
Main@main$$cstr_2 db "try3obj", 0
Main@main$$cstr_3 db "#################2", 10, 0
Main@main$$cstr_4 db "#################3", 10, 0
Main@main$$cstr_5 db "Obj5Info", 0
Main@main$$cstr_6 db "#################4", 10, 0
Main@main$$cstr_7 db "#################5", 10, 0
Main@main$$cstr_8 db "#################6", 10, 0
Main@main$$cstr_9 db "sys exception, msg: ", 0
c1@getmsg$$cstr_1 db "c1getmsg:", 0
c1@getmsg$$cstr_2 db "c1::getmsg", 0
c3@c3@$S$$cstr_1 db "c3::c3, msg = ", 0
c3@c3@$S$$cstr_2 db "c3::c3, info = ", 0
c3@func1$$cstr_1 db "a user exception", 0
c3@output$$cstr_1 db "c3::output start", 10, 0
c3@output$$cstr_2 db "c3::output, info=", 0
c3@output$$cstr_3 db "c3::output end", 10, 0
c5@c5@$S$$cstr_1 db "c5::c5 info=", 0
c5@func1$$cstr_1 db "c5::func1 info=", 0
c5@func3$$cstr_1 db "c5::func3 info=", 0
;All const double
;All const float
;All method signature
append@$C@$$signature_str db "append@$C", 0
append@$S@$$signature_str db "append@$S", 0
assign@$C@$$signature_str db "assign@$C", 0
assign@$S@$$signature_str db "assign@$S", 0
c1@$S@$$signature_str db "c1@$S", 0
c3@$S@$$signature_str db "c3@$S", 0
c5@$S@$$signature_str db "c5@$S", 0
c_str@$$signature_str db "c_str", 0
clear@$$signature_str db "clear", 0
func1@$$signature_str db "func1", 0
func3@$$signature_str db "func3", 0
get@$I@$$signature_str db "get@$I", 0
get_msg@$$signature_str db "get_msg", 0
getmsg@$$signature_str db "getmsg", 0
length@$$signature_str db "length", 0
main@$$signature_str db "main", 0
native_sys_exception@$$signature_str db "native_sys_exception", 0
native_sys_exception@$S@$$signature_str db "native_sys_exception@$S", 0
output@$$signature_str db "output", 0
set@$I?$C@$$signature_str db "set@$I?$C", 0
size@$$signature_str db "size", 0
string@$$signature_str db "string", 0
string@$S@$$signature_str db "string@$S", 0

Main@$$try_data_1:
dd native_sys_exception@$$classdescriptor, -4, 4, Main@$$try_start_1_catch_1
dd 0, 0, 0, 0

Main@$$try_data_2:
dd native_sys_exception@$$classdescriptor, -4, 4, Main@$$try_start_2_catch_1
dd 0, 0, 0, 0

Main@$$try_data_3:
dd c1@$$classdescriptor, -16, 4, Main@$$try_start_3_catch_1
dd c3@$$classdescriptor, -16, 4, Main@$$try_start_3_catch_2
dd 0, 0, 0, 0

Main@$$try_data_4:
dd c3@$$classdescriptor, -24, 4, Main@$$try_start_4_catch_1
dd 0, 0, 0, 0

section .bss
;The virtual table address of class string containing virtual methods
string@$$vtable resd 2
;The descriptor table address of class Main
Main@$$classdescriptor resd 2
;The descriptor table address of class boolean
boolean@$$classdescriptor resd 2
;The descriptor table address of class c1
c1@$$classdescriptor resd 2
;The descriptor table address of class c3
c3@$$classdescriptor resd 2
;The descriptor table address of class c5
c5@$$classdescriptor resd 2
;The descriptor table address of class c9
c9@$$classdescriptor resd 2
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
mov dword [c3@$$classdescriptor], c3@$$classname_str
mov dword [c3@$$classdescriptor + 4], 0
mov dword [c5@$$classdescriptor], c5@$$classname_str
mov dword [c5@$$classdescriptor + 4], 0
mov dword [c9@$$classdescriptor], c9@$$classname_str
mov dword [c9@$$classdescriptor + 4], 0
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

;Method: _c1@c1@$S
_c1@c1@$S:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'msg' start
mov eax, ebp ;Parameter: msg
add eax, 12 ;Parameter: msg
;Get the value of variable or field 'msg' end

push eax ;save the right expression value
;Get the value of variable or field or type 'info' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: info
;Get the value of variable or field 'info' end

pop ebx ;restore the right expression value
mov ebx, [ebx] ;get the right value of the left value
mov [eax], ebx ;assign the right to the left value address
mov esp, ebp
pop ebp
ret ;_c1@c1@$S

;Method: _c1@getmsg
_c1@getmsg:
push ebp
mov ebp, esp
mov eax, c1@getmsg$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'info' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: info
;Get the value of variable or field 'info' end

mov eax, [eax] ;print needs the right value
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
mov eax, c1@getmsg$$cstr_2
add esp, 0
mov esp, ebp
pop ebp
ret
mov esp, ebp
pop ebp
ret ;_c1@getmsg

;Method: _c3@c3@$S
_c3@c3@$S:
push ebp
mov ebp, esp
mov eax, c3@c3@$S$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'msg' start
mov eax, ebp ;Parameter: msg
add eax, 12 ;Parameter: msg
;Get the value of variable or field 'msg' end

mov eax, [eax] ;print needs the right value
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
;Get the value of variable or field or type 'msg' start
mov eax, ebp ;Parameter: msg
add eax, 12 ;Parameter: msg
;Get the value of variable or field 'msg' end

push eax ;save the right expression value
;Get the value of variable or field or type 'info' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: info
;Get the value of variable or field 'info' end

pop ebx ;restore the right expression value
mov ebx, [ebx] ;get the right value of the left value
mov [eax], ebx ;assign the right to the left value address
mov eax, c3@c3@$S$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'info' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: info
;Get the value of variable or field 'info' end

mov eax, [eax] ;print needs the right value
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_c3@c3@$S

;Method: _c3@output
_c3@output:
push ebp
mov ebp, esp
mov eax, c3@output$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
call _print_call_stack
mov eax, c3@output$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'info' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: info
;Get the value of variable or field 'info' end

mov eax, [eax] ;print needs the right value
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
mov eax, c3@output$$cstr_3
push eax
push _printstrstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_c3@output

;Method: _c3@getmsg
_c3@getmsg:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'info' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: info
;Get the value of variable or field 'info' end

mov eax, [eax]
add esp, 0
mov esp, ebp
pop ebp
ret
mov esp, ebp
pop ebp
ret ;_c3@getmsg

;Method: _c3@func1
_c3@func1:
push ebp
mov ebp, esp
call _print_call_stack
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 8
call _bdwgc_malloc
add esp, 4
mov dword [eax], c1@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c1@$S@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
mov eax, c3@func1$$cstr_1
push eax
push dword [esp+8]
call _c1@c1@$S
add esp, 8
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax
push c1@$$classname_str
call _throw32bit
add esp, 8
mov esp, ebp
pop ebp
ret ;_c3@func1

;Method: _c5@c5@$S
_c5@c5@$S:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'msg' start
mov eax, ebp ;Parameter: msg
add eax, 12 ;Parameter: msg
;Get the value of variable or field 'msg' end

push eax ;save the right expression value
;Get the value of variable or field or type 'info' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: info
;Get the value of variable or field 'info' end

pop ebx ;restore the right expression value
mov ebx, [ebx] ;get the right value of the left value
mov [eax], ebx ;assign the right to the left value address
mov eax, c5@c5@$S$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'info' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: info
;Get the value of variable or field 'info' end

mov eax, [eax] ;print needs the right value
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_c5@c5@$S

;Method: _c5@func1
_c5@func1:
push ebp
mov ebp, esp
mov eax, c5@func1$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'info' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: info
;Get the value of variable or field 'info' end

mov eax, [eax] ;print needs the right value
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 8
call _bdwgc_malloc
add esp, 4
mov dword [eax], c3@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c3@$S@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
;Get the value of variable or field or type 'info' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: info
;Get the value of variable or field 'info' end

mov eax, [eax] ;left value to right value
push eax
push dword [esp+8]
call _c3@c3@$S
add esp, 8
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax
push c3@$$classname_str
call _throw32bit
add esp, 8
mov esp, ebp
pop ebp
ret ;_c5@func1

;Method: _c5@func3
_c5@func3:
push ebp
mov ebp, esp
mov eax, c5@func3$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'info' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: info
;Get the value of variable or field 'info' end

mov eax, [eax] ;print needs the right value
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 8
call _bdwgc_malloc
add esp, 4
mov dword [eax], c3@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c3@$S@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
;Get the value of variable or field or type 'info' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: info
;Get the value of variable or field 'info' end

mov eax, [eax] ;left value to right value
push eax
push dword [esp+8]
call _c3@c3@$S
add esp, 8
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
add esp, 0
mov esp, ebp
pop ebp
ret
mov esp, ebp
pop ebp
ret ;_c5@func3

;Method: _Main@main
_Main@main:
push ebp
mov ebp, esp
sub esp, 32
call _print_call_stack
;Allocate TryRuntimeCtx memory
push 36
call _malloc
add esp, 4

mov [ebp-4] ,eax ;save TryRuntimeCtx address
Main@$$try_start_1:
;Assign value to TryRuntimeCtx memory
mov [eax+0], ebp
mov [eax+4], esp
mov [eax+8], esi
mov [eax+12], edi
mov [eax+16], ebx
mov dword [eax+20], Main@$$try_data_1
mov dword [eax+24], 0
mov dword [eax+28], 0

call _GetMethodNameDeque
push eax
call _c_deque_size
add esp, 4
mov ecx, [ebp-4]
mov [ecx+32], eax
;Get thread safe TryRuntimeCtx stack
call _GetTryRuntimeCtxStackNode
mov [ebp-8], eax ;ebx=stack top
push dword [ebp-4] ;try runtime ctx
push dword [ebp-8]; stack top
call _c_stack_push
add esp, 8
;try 'Main@$$try_start_1', block instructions start
mov eax, Main@main$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 8
call _bdwgc_malloc
add esp, 4
mov dword [eax], c3@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c3@$S@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
mov eax, Main@main$$cstr_2
push eax
push dword [esp+8]
call _c3@c3@$S
add esp, 8
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;Get the value of variable or field or type 'obj3' start
mov eax, ebp ;Variable: obj3
sub eax, 12 ;Variable: obj3
;Get the value of variable or field 'obj3' end

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
;Get the value of variable or field or type 'obj3' start
mov eax, ebp ;Variable: obj3
sub eax, 12 ;Variable: obj3
;Get the value of variable or field 'obj3' end

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
call _c3@output
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
mov eax, Main@main$$cstr_4
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 8
call _bdwgc_malloc
add esp, 4
mov dword [eax], c5@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c5@$S@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
mov eax, Main@main$$cstr_5
push eax
push dword [esp+8]
call _c5@c5@$S
add esp, 8
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;Get the value of variable or field or type 'obj5' start
mov eax, ebp ;Variable: obj5
sub eax, 16 ;Variable: obj5
;Get the value of variable or field 'obj5' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
mov eax, Main@main$$cstr_6
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj5' start
mov eax, ebp ;Variable: obj5
sub eax, 16 ;Variable: obj5
;Get the value of variable or field 'obj5' end

mov ecx, [eax]
mov [esp+8], ecx
push func3@$$signature_str
push c3@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _c5@func3
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
push eax ;save the right expression value
;Get the value of variable or field or type 'obj3' start
mov eax, ebp ;Variable: obj3
sub eax, 12 ;Variable: obj3
;Get the value of variable or field 'obj3' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
mov eax, Main@main$$cstr_7
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj3' start
mov eax, ebp ;Variable: obj3
sub eax, 12 ;Variable: obj3
;Get the value of variable or field 'obj3' end

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
call _c3@output
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
mov eax, Main@main$$cstr_8
push eax
push _printstrstr
call _printf
add esp, 8
push dword [ebp-8] ;push the stack top
call _c_stack_pop
add esp, 4
;free the try run time
push dword [ebp-4]
call _free
add esp, 4
;try 'Main@$$try_start_1', block instructions end
jmp Main@$$try_end_1 ;jum the try-end
;try 'Main@$$try_start_1' catch 'Main@$$try_start_1_catch_1'start
Main@$$try_start_1_catch_1:
mov eax, Main@main$$cstr_9
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'e' start
mov eax, ebp ;Variable: e
sub eax, 4 ;Variable: e
;Get the value of variable or field 'e' end

mov ecx, [eax]
mov [esp+8], ecx
push get_msg@$$signature_str
push native_sys_exception@$$classname_str
push cstr@$$classname_str
call _PushNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _native_sys_exception@get_msg
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
jmp Main@$$try_end_1 ;jmp the try-end
;try 'Main@$$try_start_1' catch 'Main@$$try_start_1_catch_1'end
Main@$$try_end_1:
;Allocate TryRuntimeCtx memory
push 36
call _malloc
add esp, 4

mov [ebp-4] ,eax ;save TryRuntimeCtx address
Main@$$try_start_2:
;Assign value to TryRuntimeCtx memory
mov [eax+0], ebp
mov [eax+4], esp
mov [eax+8], esi
mov [eax+12], edi
mov [eax+16], ebx
mov dword [eax+20], Main@$$try_data_2
mov dword [eax+24], 0
mov dword [eax+28], Main@$$try_start_2_finally

call _GetMethodNameDeque
push eax
call _c_deque_size
add esp, 4
mov ecx, [ebp-4]
mov [ecx+32], eax
;Get thread safe TryRuntimeCtx stack
call _GetTryRuntimeCtxStackNode
mov [ebp-8], eax ;ebx=stack top
push dword [ebp-4] ;try runtime ctx
push dword [ebp-8]; stack top
call _c_stack_push
add esp, 8
;try 'Main@$$try_start_2', block instructions start
mov eax, Main@main$$cstr_10
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 1
push eax ;save the right expression value
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 12 ;Variable: n
;Get the value of variable or field 'n' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Allocate TryRuntimeCtx memory
push 36
call _malloc
add esp, 4

mov [ebp-16] ,eax ;save TryRuntimeCtx address
Main@$$try_start_3:
;Assign value to TryRuntimeCtx memory
mov [eax+0], ebp
mov [eax+4], esp
mov [eax+8], esi
mov [eax+12], edi
mov [eax+16], ebx
mov dword [eax+20], Main@$$try_data_3
mov dword [eax+24], 0
mov dword [eax+28], 0

call _GetMethodNameDeque
push eax
call _c_deque_size
add esp, 4
mov ecx, [ebp-16]
mov [ecx+32], eax
;Get thread safe TryRuntimeCtx stack
call _GetTryRuntimeCtxStackNode
mov [ebp-20], eax ;ebx=stack top
push dword [ebp-16] ;try runtime ctx
push dword [ebp-20]; stack top
call _c_stack_push
add esp, 8
;try 'Main@$$try_start_3', block instructions start
;Allocate TryRuntimeCtx memory
push 36
call _malloc
add esp, 4

mov [ebp-24] ,eax ;save TryRuntimeCtx address
Main@$$try_start_4:
;Assign value to TryRuntimeCtx memory
mov [eax+0], ebp
mov [eax+4], esp
mov [eax+8], esi
mov [eax+12], edi
mov [eax+16], ebx
mov dword [eax+20], Main@$$try_data_4
mov dword [eax+24], 0
mov dword [eax+28], 0

call _GetMethodNameDeque
push eax
call _c_deque_size
add esp, 4
mov ecx, [ebp-24]
mov [ecx+32], eax
;Get thread safe TryRuntimeCtx stack
call _GetTryRuntimeCtxStackNode
mov [ebp-28], eax ;ebx=stack top
push dword [ebp-24] ;try runtime ctx
push dword [ebp-28]; stack top
call _c_stack_push
add esp, 8
;try 'Main@$$try_start_4', block instructions start
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 8
call _bdwgc_malloc
add esp, 4
mov dword [eax], c5@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c5@$S@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
mov eax, Main@main$$cstr_11
push eax
push dword [esp+8]
call _c5@c5@$S
add esp, 8
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
push func1@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _c5@func1
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
push dword [ebp-28] ;push the stack top
call _c_stack_pop
add esp, 4
;free the try run time
push dword [ebp-24]
call _free
add esp, 4
;try 'Main@$$try_start_4', block instructions end
jmp Main@$$try_end_4 ;jum the try-end
;try 'Main@$$try_start_4' catch 'Main@$$try_start_4_catch_1'start
Main@$$try_start_4_catch_1:
mov eax, Main@main$$cstr_12
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'e' start
mov eax, ebp ;Variable: e
sub eax, 24 ;Variable: e
;Get the value of variable or field 'e' end

mov ecx, [eax]
mov [esp+8], ecx
push getmsg@$$signature_str
push cstr@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _c3@getmsg
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
jmp Main@$$try_end_4 ;jmp the try-end
;try 'Main@$$try_start_4' catch 'Main@$$try_start_4_catch_1'end
Main@$$try_end_4:
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 8
call _bdwgc_malloc
add esp, 4
mov dword [eax], c5@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c5@$S@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
mov eax, Main@main$$cstr_13
push eax
push dword [esp+8]
call _c5@c5@$S
add esp, 8
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;Get the value of variable or field or type 'obj' start
mov eax, ebp ;Variable: obj
sub eax, 24 ;Variable: obj
;Get the value of variable or field 'obj' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj' start
mov eax, ebp ;Variable: obj
sub eax, 24 ;Variable: obj
;Get the value of variable or field 'obj' end

mov ecx, [eax]
mov [esp+8], ecx
push func1@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _c5@func1
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
;;;;;;;;;;;;;;;;;;;;;;;;;;
call _GetMethodNameDeque
push eax
call _c_deque_destroy
add esp, 4
mov eax, 0
call _exit
add esp, 4
;;;;;;;;;;;;;;;;;;;;;;;;;;;
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 8
call _bdwgc_malloc
add esp, 4
mov dword [eax], c3@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c3@$S@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
mov eax, Main@main$$cstr_14
push eax
push dword [esp+8]
call _c3@c3@$S
add esp, 8
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;Get the value of variable or field or type 'c3obj' start
mov eax, ebp ;Variable: c3obj
sub eax, 28 ;Variable: c3obj
;Get the value of variable or field 'c3obj' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'c3obj' start
mov eax, ebp ;Variable: c3obj
sub eax, 28 ;Variable: c3obj
;Get the value of variable or field 'c3obj' end

mov ecx, [eax]
mov [esp+8], ecx
push func1@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _c3@func1
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
push dword [ebp-20] ;push the stack top
call _c_stack_pop
add esp, 4
;free the try run time
push dword [ebp-16]
call _free
add esp, 4
;try 'Main@$$try_start_3', block instructions end
jmp Main@$$try_end_3 ;jum the try-end
;try 'Main@$$try_start_3' catch 'Main@$$try_start_3_catch_1'start
Main@$$try_start_3_catch_1:
mov eax, Main@main$$cstr_15
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'e' start
mov eax, ebp ;Variable: e
sub eax, 16 ;Variable: e
;Get the value of variable or field 'e' end

mov ecx, [eax]
mov [esp+8], ecx
push getmsg@$$signature_str
push cstr@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _c1@getmsg
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
jmp Main@$$try_end_3 ;jmp the try-end
;try 'Main@$$try_start_3' catch 'Main@$$try_start_3_catch_1'end
;try 'Main@$$try_start_3' catch 'Main@$$try_start_3_catch_2'start
Main@$$try_start_3_catch_2:
mov eax, Main@main$$cstr_16
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'e' start
mov eax, ebp ;Variable: e
sub eax, 16 ;Variable: e
;Get the value of variable or field 'e' end

mov ecx, [eax]
mov [esp+8], ecx
push getmsg@$$signature_str
push cstr@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _c3@getmsg
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
jmp Main@$$try_end_3 ;jmp the try-end
;try 'Main@$$try_start_3' catch 'Main@$$try_start_3_catch_2'end
Main@$$try_end_3:
mov eax, Main@main$$cstr_17
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 12 ;Variable: n
;Get the value of variable or field 'n' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 0
mov ebx, eax ;get the right value of the left value
pop eax
mov edx, 0
idiv ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 12 ;Variable: n
;Get the value of variable or field 'n' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
push dword [ebp-8] ;push the stack top
call _c_stack_pop
add esp, 4
;free the try run time
push dword [ebp-4]
call _free
add esp, 4
;try 'Main@$$try_start_2', block instructions end
jmp Main@$$try_start_2_finally ;jmp the finally
;try 'Main@$$try_start_2' catch 'Main@$$try_start_2_catch_1'start
Main@$$try_start_2_catch_1:
mov eax, Main@main$$cstr_18
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'e' start
mov eax, ebp ;Variable: e
sub eax, 4 ;Variable: e
;Get the value of variable or field 'e' end

mov ecx, [eax]
mov [esp+8], ecx
push get_msg@$$signature_str
push native_sys_exception@$$classname_str
push cstr@$$classname_str
call _PushNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _native_sys_exception@get_msg
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 5
call _bdwgc_malloc
add esp, 4
mov dword [eax], c9@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
add esp, 8 ;used as restore the memory address
push eax
push c9@$$classname_str
call _throw32bit
add esp, 8
jmp Main@$$try_start_2_finally ;jmp the finally
;try 'Main@$$try_start_2' catch 'Main@$$try_start_2_catch_1'end
Main@$$try_start_2_finally:
mov eax, Main@main$$cstr_19
push eax
push _printstrstr
call _printf
add esp, 8
Main@$$try_end_2:
add esp, 32
mov esp, ebp
pop ebp
ret ;_Main@main
