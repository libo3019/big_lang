;Bit32 nasm code
[bits 32]
global _main
;All pseudo names from the language
extern _GetMethodNameDeque
extern _GetTryRuntimeCtxStackNode
extern _PopMethodName
extern _PushNativeMethodName
extern _PushNonNativeMethodName
extern _PushStaticMethodName
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
Main@main@cstr_1 db "----------------------1----------------------", 10, 0
Main@main@cstr_10 db "]=", 0
Main@main@cstr_11 db "objarray1[", 0
Main@main@cstr_12 db "]func=", 0
Main@main@cstr_13 db "----------------------4----------------------", 10, 0
Main@main@cstr_14 db "objarray2[", 0
Main@main@cstr_15 db "][", 0
Main@main@cstr_16 db "]=", 0
Main@main@cstr_17 db "objarray2[", 0
Main@main@cstr_18 db "][", 0
Main@main@cstr_19 db "]func=", 0
Main@main@cstr_2 db "array1[", 0
Main@main@cstr_20 db "-----------------objarray3---------------------------", 10, 0
Main@main@cstr_21 db "objarray3[", 0
Main@main@cstr_22 db "][", 0
Main@main@cstr_23 db "][", 0
Main@main@cstr_24 db "]=", 0
Main@main@cstr_25 db "objarray3[", 0
Main@main@cstr_26 db "][", 0
Main@main@cstr_27 db "][", 0
Main@main@cstr_28 db "]=", 0
Main@main@cstr_3 db "]=", 0
Main@main@cstr_4 db "---------------------2-----------------------", 10, 0
Main@main@cstr_5 db "array2[", 0
Main@main@cstr_6 db "][", 0
Main@main@cstr_7 db "]=", 0
Main@main@cstr_8 db "------------------------3--------------------", 10, 0
Main@main@cstr_9 db "objarray1[", 0
;All const double
;All const float
;All method signature
append@$C@$$signature_str db "append@$C", 0
append@$S@$$signature_str db "append@$S", 0
assign@$C@$$signature_str db "assign@$C", 0
assign@$S@$$signature_str db "assign@$S", 0
c1@$I@$$signature_str db "c1@$I", 0
c_str@$$signature_str db "c_str", 0
clear@$$signature_str db "clear", 0
func@$$signature_str db "func", 0
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
string@$vtable resd 2
;The descriptor table address of class Main
Main@$$classdescriptor resd 2
;The descriptor table address of class boolean
boolean@$$classdescriptor resd 2
;The descriptor table address of class c1
c1@$$classdescriptor resd 2
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
sub esp, 8
finit
call _save_unhandled_exception_filter
mov [ebp-4], eax
call globalfunc@$construct_vtable ;call the method to construct all classes' virtual table
call globalfunc@$construct_classdescriptors
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
call globalfunc@$destroy_vtable ;call the method to destroy all classes' virtual table
push dword [ebp-4]
call _restore_unhandled_exception_filter
add esp, 4
pop eax
mov eax, 0
add esp, 8
mov esp, ebp
pop ebp
ret ;_main or _main$I?$A$S?$A$S

globalfunc@$construct_vtable: ;The method of constructing all classes' virtual table
push ebp
mov ebp, esp
;construct the virtual table of class 'string' start.
push 4 ;total 1 virtual member
call _malloc
add esp, 4
;class 'string', virtual method moving start
mov dword [eax], _string@output
;class 'string', virtual method moving end
mov [string@$vtable], eax ;the virtual table address of class 'string'
mov dword [string@$vtable + 4], string@$$classname_str ;the virtual table address of class 'string'
;construct the virtual table of class 'string' end.
mov esp, ebp
pop ebp
ret ;globalfunc@$construct_vtable

globalfunc@$construct_classdescriptors: ;The method of constructing all classes' descriptor table
push ebp
mov ebp, esp
mov dword [Main@$$classdescriptor], Main@$$classname_str
mov dword [Main@$$classdescriptor + 4], 0
mov dword [boolean@$$classdescriptor], boolean@$$classname_str
mov dword [boolean@$$classdescriptor + 4], 0
mov dword [c1@$$classdescriptor], c1@$$classname_str
mov dword [c1@$$classdescriptor + 4], 0
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
ret ;globalfunc@$construct_classdescriptors

globalfunc@$destroy_vtable: ;The method of destroying all classes' virtual table
push ebp
mov ebp, esp
;The virtual table address of class string containing virtual methods
push dword [string@$vtable]
call _free
add esp, 4
mov esp, ebp
pop ebp
ret ;globalfunc@$destroy_vtable


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

;Method: _c1@c1@$I
_c1@c1@$I:
push ebp
mov ebp, esp
mov eax, [ebp+8]
;Get the value of variable or field or type 'member1' start
mov eax, ebp ;Parameter: member1
add eax, 12 ;Parameter: member1
;Get the value of variable or field 'member1' end

push eax ;save the right expression value
mov eax, [ebp+8]
pop ebx ;restore the right expression value
mov ebx, [ebx] ;get the right value of the left value
mov [eax], ebx ;assign the right to the left value address
mov esp, ebp
pop ebp
ret ;_c1@c1@$I

;Method: _c1@func
_c1@func:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'member1' start
mov eax, [ebp+8] ;This address
;offset = 0, Field: member1
;Get the value of variable or field 'member1' end

mov eax, [eax]
add esp, 0
mov esp, ebp
pop ebp
ret
mov esp, ebp
pop ebp
ret ;_c1@func

;Method: _Main@main
_Main@main:
push ebp
mov ebp, esp
sub esp, 44
mov eax, Main@main@cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'array1' start
mov eax, ebp ;Variable: array1
sub eax, 4 ;Variable: array1
;Get the value of variable or field 'array1' end

;start generating code for VisitNewPrimitiveArrayExpNode
mov eax, 10
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewPrimitiveArrayExpNode
push eax ;save the right expression value
;Get the value of variable or field or type 'array1' start
mov eax, ebp ;Variable: array1
sub eax, 4 ;Variable: array1
;Get the value of variable or field 'array1' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_1
L@$_WHILE_START_1:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'array1' start
mov eax, ebp ;Variable: array1
sub eax, 4 ;Variable: array1
;Get the value of variable or field 'array1' end

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
jl L@$_JL_2
mov eax, 0
jmp L@$_JL_END_2
L@$_JL_2:
mov eax, 1
L@$_JL_END_2:
cmp eax, 1
jne L@$_WHILE_END_1
;start generating array exp code
;Get the value of variable or field or type 'array1' start
mov eax, ebp ;Variable: array1
sub eax, 4 ;Variable: array1
;Get the value of variable or field 'array1' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 3
mov ebx, eax ;get the right value of the left value
pop eax
mov edx, 0
imul ebx
push eax ;save the right expression value
;start generating array exp code
;Get the value of variable or field or type 'array1' start
mov eax, ebp ;Variable: array1
sub eax, 4 ;Variable: array1
;Get the value of variable or field 'array1' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_1
L@$_WHILE_END_1:
;WhileNode end: L@$_WHILE_START_1
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_3
L@$_WHILE_START_3:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'array1' start
mov eax, ebp ;Variable: array1
sub eax, 4 ;Variable: array1
;Get the value of variable or field 'array1' end

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
jl L@$_JL_4
mov eax, 0
jmp L@$_JL_END_4
L@$_JL_4:
mov eax, 1
L@$_JL_END_4:
cmp eax, 1
jne L@$_WHILE_END_3
mov eax, Main@main@cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_3
push eax
push _printstrstr
call _printf
add esp, 8
;start generating array exp code
;Get the value of variable or field or type 'array1' start
mov eax, ebp ;Variable: array1
sub eax, 4 ;Variable: array1
;Get the value of variable or field 'array1' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
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
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_3
L@$_WHILE_END_3:
;WhileNode end: L@$_WHILE_START_3
mov eax, Main@main@cstr_4
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'array2' start
mov eax, ebp ;Variable: array2
sub eax, 16 ;Variable: array2
;Get the value of variable or field 'array2' end

;start generating code for VisitNewPrimitiveArrayExpNode
mov eax, 3
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewPrimitiveArrayExpNode
push eax ;save the right expression value
;Get the value of variable or field or type 'array2' start
mov eax, ebp ;Variable: array2
sub eax, 16 ;Variable: array2
;Get the value of variable or field 'array2' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_5
L@$_WHILE_START_5:
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'array2' start
mov eax, ebp ;Variable: array2
sub eax, 16 ;Variable: array2
;Get the value of variable or field 'array2' end

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
jl L@$_JL_6
mov eax, 0
jmp L@$_JL_END_6
L@$_JL_6:
mov eax, 1
L@$_JL_END_6:
cmp eax, 1
jne L@$_WHILE_END_5
;start generating array exp code
;Get the value of variable or field or type 'array2' start
mov eax, ebp ;Variable: array2
sub eax, 16 ;Variable: array2
;Get the value of variable or field 'array2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
;start generating code for VisitNewPrimitiveArrayExpNode
mov eax, 10
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewPrimitiveArrayExpNode
push eax ;save the right expression value
;start generating array exp code
;Get the value of variable or field or type 'array2' start
mov eax, ebp ;Variable: array2
sub eax, 16 ;Variable: array2
;Get the value of variable or field 'array2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_7
L@$_WHILE_START_7:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;Get the value of variable or field or type 'array2' start
mov eax, ebp ;Variable: array2
sub eax, 16 ;Variable: array2
;Get the value of variable or field 'array2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
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
jl L@$_JL_8
mov eax, 0
jmp L@$_JL_END_8
L@$_JL_8:
mov eax, 1
L@$_JL_END_8:
cmp eax, 1
jne L@$_WHILE_END_7
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'array2' start
mov eax, ebp ;Variable: array2
sub eax, 16 ;Variable: array2
;Get the value of variable or field 'array2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
mov ebx, eax ;get the right value of the left value
pop eax
mov edx, 0
imul ebx
push eax ;save the right expression value
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'array2' start
mov eax, ebp ;Variable: array2
sub eax, 16 ;Variable: array2
;Get the value of variable or field 'array2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_7
L@$_WHILE_END_7:
;WhileNode end: L@$_WHILE_START_7
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_5
L@$_WHILE_END_5:
;WhileNode end: L@$_WHILE_START_5
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_9
L@$_WHILE_START_9:
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'array2' start
mov eax, ebp ;Variable: array2
sub eax, 16 ;Variable: array2
;Get the value of variable or field 'array2' end

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
jl L@$_JL_10
mov eax, 0
jmp L@$_JL_END_10
L@$_JL_10:
mov eax, 1
L@$_JL_END_10:
cmp eax, 1
jne L@$_WHILE_END_9
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_11
L@$_WHILE_START_11:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;Get the value of variable or field or type 'array2' start
mov eax, ebp ;Variable: array2
sub eax, 16 ;Variable: array2
;Get the value of variable or field 'array2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
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
jl L@$_JL_12
mov eax, 0
jmp L@$_JL_END_12
L@$_JL_12:
mov eax, 1
L@$_JL_END_12:
cmp eax, 1
jne L@$_WHILE_END_11
mov eax, Main@main@cstr_5
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_6
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_7
push eax
push _printstrstr
call _printf
add esp, 8
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'array2' start
mov eax, ebp ;Variable: array2
sub eax, 16 ;Variable: array2
;Get the value of variable or field 'array2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
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
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_11
L@$_WHILE_END_11:
;WhileNode end: L@$_WHILE_START_11
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_9
L@$_WHILE_END_9:
;WhileNode end: L@$_WHILE_START_9
mov eax, Main@main@cstr_8
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'objarray1' start
mov eax, ebp ;Variable: objarray1
sub eax, 24 ;Variable: objarray1
;Get the value of variable or field 'objarray1' end

;start generating code for VisitNewObjectArrayExpNode
mov eax, 10
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewObjectArrayExpNode
push eax ;save the right expression value
;Get the value of variable or field or type 'objarray1' start
mov eax, ebp ;Variable: objarray1
sub eax, 24 ;Variable: objarray1
;Get the value of variable or field 'objarray1' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_13
L@$_WHILE_START_13:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'objarray1' start
mov eax, ebp ;Variable: objarray1
sub eax, 24 ;Variable: objarray1
;Get the value of variable or field 'objarray1' end

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
jl L@$_JL_14
mov eax, 0
jmp L@$_JL_END_14
L@$_JL_14:
mov eax, 1
L@$_JL_END_14:
cmp eax, 1
jne L@$_WHILE_END_13
;start generating array exp code
;Get the value of variable or field or type 'objarray1' start
mov eax, ebp ;Variable: objarray1
sub eax, 24 ;Variable: objarray1
;Get the value of variable or field 'objarray1' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 8
call _bdwgc_malloc
add esp, 4
mov dword [eax], c1@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c1@$I@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 3
mov ebx, eax ;get the right value of the left value
pop eax
mov edx, 0
imul ebx
push eax
push dword [esp+8]
call _c1@c1@$I
add esp, 8
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;start generating array exp code
;Get the value of variable or field or type 'objarray1' start
mov eax, ebp ;Variable: objarray1
sub eax, 24 ;Variable: objarray1
;Get the value of variable or field 'objarray1' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_13
L@$_WHILE_END_13:
;WhileNode end: L@$_WHILE_START_13
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_15
L@$_WHILE_START_15:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'objarray1' start
mov eax, ebp ;Variable: objarray1
sub eax, 24 ;Variable: objarray1
;Get the value of variable or field 'objarray1' end

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
jl L@$_JL_16
mov eax, 0
jmp L@$_JL_END_16
L@$_JL_16:
mov eax, 1
L@$_JL_END_16:
cmp eax, 1
jne L@$_WHILE_END_15
mov eax, Main@main@cstr_9
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_10
push eax
push _printstrstr
call _printf
add esp, 8
;start generating array exp code
;Get the value of variable or field or type 'objarray1' start
mov eax, ebp ;Variable: objarray1
sub eax, 24 ;Variable: objarray1
;Get the value of variable or field 'objarray1' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
mov eax, [eax]
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
mov eax, Main@main@cstr_11
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_12
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;Get the value of variable or field or type 'objarray1' start
mov eax, ebp ;Variable: objarray1
sub eax, 24 ;Variable: objarray1
;Get the value of variable or field 'objarray1' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
mov ecx, [eax]
mov [esp+8], ecx
push func@$$signature_str
push integer@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _c1@func
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
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_15
L@$_WHILE_END_15:
;WhileNode end: L@$_WHILE_START_15
mov eax, Main@main@cstr_13
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'objarray2' start
mov eax, ebp ;Variable: objarray2
sub eax, 36 ;Variable: objarray2
;Get the value of variable or field 'objarray2' end

;start generating code for VisitNewObjectArrayExpNode
mov eax, 3
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewObjectArrayExpNode
push eax ;save the right expression value
;Get the value of variable or field or type 'objarray2' start
mov eax, ebp ;Variable: objarray2
sub eax, 36 ;Variable: objarray2
;Get the value of variable or field 'objarray2' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_17
L@$_WHILE_START_17:
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'objarray2' start
mov eax, ebp ;Variable: objarray2
sub eax, 36 ;Variable: objarray2
;Get the value of variable or field 'objarray2' end

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
jl L@$_JL_18
mov eax, 0
jmp L@$_JL_END_18
L@$_JL_18:
mov eax, 1
L@$_JL_END_18:
cmp eax, 1
jne L@$_WHILE_END_17
;start generating array exp code
;Get the value of variable or field or type 'objarray2' start
mov eax, ebp ;Variable: objarray2
sub eax, 36 ;Variable: objarray2
;Get the value of variable or field 'objarray2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
;start generating code for VisitNewObjectArrayExpNode
mov eax, 10
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewObjectArrayExpNode
push eax ;save the right expression value
;start generating array exp code
;Get the value of variable or field or type 'objarray2' start
mov eax, ebp ;Variable: objarray2
sub eax, 36 ;Variable: objarray2
;Get the value of variable or field 'objarray2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_19
L@$_WHILE_START_19:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;Get the value of variable or field or type 'objarray2' start
mov eax, ebp ;Variable: objarray2
sub eax, 36 ;Variable: objarray2
;Get the value of variable or field 'objarray2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
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
jl L@$_JL_20
mov eax, 0
jmp L@$_JL_END_20
L@$_JL_20:
mov eax, 1
L@$_JL_END_20:
cmp eax, 1
jne L@$_WHILE_END_19
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'objarray2' start
mov eax, ebp ;Variable: objarray2
sub eax, 36 ;Variable: objarray2
;Get the value of variable or field 'objarray2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 8
call _bdwgc_malloc
add esp, 4
mov dword [eax], c1@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c1@$I@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
mov ebx, eax ;get the right value of the left value
pop eax
mov edx, 0
imul ebx
push eax
push dword [esp+8]
call _c1@c1@$I
add esp, 8
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'objarray2' start
mov eax, ebp ;Variable: objarray2
sub eax, 36 ;Variable: objarray2
;Get the value of variable or field 'objarray2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_19
L@$_WHILE_END_19:
;WhileNode end: L@$_WHILE_START_19
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_17
L@$_WHILE_END_17:
;WhileNode end: L@$_WHILE_START_17
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_21
L@$_WHILE_START_21:
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'objarray2' start
mov eax, ebp ;Variable: objarray2
sub eax, 36 ;Variable: objarray2
;Get the value of variable or field 'objarray2' end

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
jl L@$_JL_22
mov eax, 0
jmp L@$_JL_END_22
L@$_JL_22:
mov eax, 1
L@$_JL_END_22:
cmp eax, 1
jne L@$_WHILE_END_21
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_23
L@$_WHILE_START_23:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;Get the value of variable or field or type 'objarray2' start
mov eax, ebp ;Variable: objarray2
sub eax, 36 ;Variable: objarray2
;Get the value of variable or field 'objarray2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
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
jl L@$_JL_24
mov eax, 0
jmp L@$_JL_END_24
L@$_JL_24:
mov eax, 1
L@$_JL_END_24:
cmp eax, 1
jne L@$_WHILE_END_23
mov eax, Main@main@cstr_14
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_15
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_16
push eax
push _printstrstr
call _printf
add esp, 8
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'objarray2' start
mov eax, ebp ;Variable: objarray2
sub eax, 36 ;Variable: objarray2
;Get the value of variable or field 'objarray2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
mov eax, [eax]
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
mov eax, Main@main@cstr_17
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_18
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_19
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'objarray2' start
mov eax, ebp ;Variable: objarray2
sub eax, 36 ;Variable: objarray2
;Get the value of variable or field 'objarray2' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
mov ecx, [eax]
mov [esp+8], ecx
push func@$$signature_str
push integer@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _c1@func
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
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_23
L@$_WHILE_END_23:
;WhileNode end: L@$_WHILE_START_23
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_21
L@$_WHILE_END_21:
;WhileNode end: L@$_WHILE_START_21
mov eax, Main@main@cstr_20
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

;start generating code for VisitNewObjectArrayExpNode
mov eax, 3
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewObjectArrayExpNode
push eax ;save the right expression value
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_25
L@$_WHILE_START_25:
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

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
jl L@$_JL_26
mov eax, 0
jmp L@$_JL_END_26
L@$_JL_26:
mov eax, 1
L@$_JL_END_26:
cmp eax, 1
jne L@$_WHILE_END_25
;start generating array exp code
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
;start generating code for VisitNewObjectArrayExpNode
mov eax, 9
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewObjectArrayExpNode
push eax ;save the right expression value
;start generating array exp code
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_27
L@$_WHILE_START_27:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
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
jl L@$_JL_28
mov eax, 0
jmp L@$_JL_END_28
L@$_JL_28:
mov eax, 1
L@$_JL_END_28:
cmp eax, 1
jne L@$_WHILE_END_27
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
;start generating code for VisitNewObjectArrayExpNode
mov eax, 5
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewObjectArrayExpNode
push eax ;save the right expression value
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_29
L@$_WHILE_START_29:
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
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
jl L@$_JL_30
mov eax, 0
jmp L@$_JL_END_30
L@$_JL_30:
mov eax, 1
L@$_JL_END_30:
cmp eax, 1
jne L@$_WHILE_END_29
;start generating array exp code
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 8
call _bdwgc_malloc
add esp, 4
mov dword [eax], c1@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push c1@$I@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov ebx, [eax] ;get the right value of the left value
pop eax
mov edx, 0
imul ebx
push eax
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov ebx, [eax] ;get the right value of the left value
pop eax
mov edx, 0
imul ebx
push eax
push dword [esp+8]
call _c1@c1@$I
add esp, 8
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;start generating array exp code
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_29
L@$_WHILE_END_29:
;WhileNode end: L@$_WHILE_START_29
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_27
L@$_WHILE_END_27:
;WhileNode end: L@$_WHILE_START_27
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_25
L@$_WHILE_END_25:
;WhileNode end: L@$_WHILE_START_25
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_31
L@$_WHILE_START_31:
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

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
jl L@$_JL_32
mov eax, 0
jmp L@$_JL_END_32
L@$_JL_32:
mov eax, 1
L@$_JL_END_32:
cmp eax, 1
jne L@$_WHILE_END_31
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_33
L@$_WHILE_START_33:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
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
jl L@$_JL_34
mov eax, 0
jmp L@$_JL_END_34
L@$_JL_34:
mov eax, 1
L@$_JL_END_34:
cmp eax, 1
jne L@$_WHILE_END_33
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_35
L@$_WHILE_START_35:
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
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
jl L@$_JL_36
mov eax, 0
jmp L@$_JL_END_36
L@$_JL_36:
mov eax, 1
L@$_JL_END_36:
cmp eax, 1
jne L@$_WHILE_END_35
mov eax, Main@main@cstr_21
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_22
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_23
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_24
push eax
push _printstrstr
call _printf
add esp, 8
;start generating array exp code
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
mov eax, [eax]
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
mov eax, Main@main@cstr_25
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_26
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_27
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_28
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;start generating array exp code
;start generating array exp code
;Get the value of variable or field or type 'objarray3' start
mov eax, ebp ;Variable: objarray3
sub eax, 40 ;Variable: objarray3
;Get the value of variable or field 'objarray3' end

push dword [eax]
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
push dword [eax]
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov eax, [eax]
pop ecx
add ecx, 4
mov ebx, 4
mov edx ,0
imul ebx
add ecx, eax
mov eax, ecx
;end generating array exp code
mov ecx, [eax]
mov [esp+8], ecx
push func@$$signature_str
push integer@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _c1@func
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
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx3' start
mov eax, ebp ;Variable: idx3
sub eax, 44 ;Variable: idx3
;Get the value of variable or field 'idx3' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_35
L@$_WHILE_END_35:
;WhileNode end: L@$_WHILE_START_35
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 8 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_33
L@$_WHILE_END_33:
;WhileNode end: L@$_WHILE_START_33
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 1
mov ebx, eax ;get the right value of the left value
pop eax
add eax, ebx
push eax ;save the right expression value
;Get the value of variable or field or type 'idx0' start
mov eax, ebp ;Variable: idx0
sub eax, 20 ;Variable: idx0
;Get the value of variable or field 'idx0' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_31
L@$_WHILE_END_31:
;WhileNode end: L@$_WHILE_START_31
add esp, 44
mov esp, ebp
pop ebp
ret ;_Main@main
