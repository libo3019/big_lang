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
Main@func1@$A$A$S?$A$A$A$S$$cstr_1 db "argv.size()=", 0
Main@func1@$A$A$S?$A$A$A$S$$cstr_2 db ",envp.size()=", 0
Main@func@$A$S?$A$S$$cstr_1 db "argv.size()=", 0
Main@func@$A$S?$A$S$$cstr_2 db ",envp.size()=", 0
Main@func@$A$S?$A$S$$cstr_3 db "argv[", 0
Main@func@$A$S?$A$S$$cstr_4 db "]=", 0
Main@func@$A$S?$A$S$$cstr_5 db "envp[", 0
Main@func@$A$S?$A$S$$cstr_6 db "]=", 0
;All const double
;All const float
;All method signature
append@$C@$$signature_str db "append@$C", 0
append@$S@$$signature_str db "append@$S", 0
assign@$C@$$signature_str db "assign@$C", 0
assign@$S@$$signature_str db "assign@$S", 0
c_str@$$signature_str db "c_str", 0
clear@$$signature_str db "clear", 0
func1@$A$A$S?$A$A$A$S@$$signature_str db "func1@$A$A$S?$A$A$A$S", 0
func@$A$S?$A$S@$$signature_str db "func@$A$S?$A$S", 0
get@$I@$$signature_str db "get@$I", 0
get_msg@$$signature_str db "get_msg", 0
length@$$signature_str db "length", 0
main@$A$S?$A$S@$$signature_str db "main@$A$S?$A$S", 0
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
push main@$A$S?$A$S@$$signature_str
push Main@$$classname_str
push integer@$$classname_str
call _PushStaticMethodName
add esp, 12
push dword [ebp+16]
call _get_env_num
add esp, 4
push dword[ebp + 16]
push eax
push 4
call _copy_c_array
add esp, 12
push eax
push dword[ebp + 12]
push dword [ebp+8]
push 4
call _copy_c_array
add esp, 12
push eax
call _Main@main@$A$S?$A$S
add esp, 8
push eax
call _PopMethodName
call globalfunc@$$destroy_vtable ;call the method to destroy all classes' virtual table
push dword [ebp-4]
call _restore_unhandled_exception_filter
add esp, 4
pop eax
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

;Method: _Main@func1@$A$A$S?$A$A$A$S
_Main@func1@$A$A$S?$A$A$A$S:
push ebp
mov ebp, esp
mov eax, Main@func1@$A$A$S?$A$A$A$S$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'argv' start
mov eax, ebp ;Parameter: argv
add eax, 8 ;Parameter: argv
;Get the value of variable or field 'argv' end

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
mov eax, Main@func1@$A$A$S?$A$A$A$S$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'envp' start
mov eax, ebp ;Parameter: envp
add eax, 12 ;Parameter: envp
;Get the value of variable or field 'envp' end

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
call _print_call_stack
mov esp, ebp
pop ebp
ret ;_Main@func1@$A$A$S?$A$A$A$S

;Method: _Main@func@$A$S?$A$S
_Main@func@$A$S?$A$S:
push ebp
mov ebp, esp
sub esp, 12
;start generating code for VisitNewPrimitiveArrayExpNode
mov eax, 3
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewPrimitiveArrayExpNode
push eax ;save the right expression value
;Get the value of variable or field or type 'arg' start
mov eax, ebp ;Variable: arg
sub eax, 4 ;Variable: arg
;Get the value of variable or field 'arg' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;start generating code for VisitNewPrimitiveArrayExpNode
mov eax, 5
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewPrimitiveArrayExpNode
push eax ;save the right expression value
;Get the value of variable or field or type 'env' start
mov eax, ebp ;Variable: env
sub eax, 8 ;Variable: env
;Get the value of variable or field 'env' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
sub esp, 8 ;static method call, 2 variables space
call _GetMethodNameDeque
mov [esp], eax
push func1@$A$A$S?$A$A$A$S@$$signature_str
push Main@$$classname_str
push integer@$$classname_str
call _PushStaticMethodName
add esp, 12
;Get the value of variable or field or type 'env' start
mov eax, ebp ;Variable: env
sub eax, 8 ;Variable: env
;Get the value of variable or field 'env' end

mov eax, [eax] ;left value to right value
push eax
;Get the value of variable or field or type 'arg' start
mov eax, ebp ;Variable: arg
sub eax, 4 ;Variable: arg
;Get the value of variable or field 'arg' end

mov eax, [eax] ;left value to right value
push eax
;static call start
call _Main@func1@$A$A$S?$A$A$A$S
add esp, 8 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 8
;static call end
call _print_call_stack
mov eax, Main@func@$A$S?$A$S$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'argv' start
mov eax, ebp ;Parameter: argv
add eax, 8 ;Parameter: argv
;Get the value of variable or field 'argv' end

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
mov eax, Main@func@$A$S?$A$S$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'envp' start
mov eax, ebp ;Parameter: envp
add eax, 12 ;Parameter: envp
;Get the value of variable or field 'envp' end

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
mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 12 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$$_WHILE_START_1
L@$$_WHILE_START_1:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 12 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'argv' start
mov eax, ebp ;Parameter: argv
add eax, 8 ;Parameter: argv
;Get the value of variable or field 'argv' end

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
jl L@$$_JL_2
mov eax, 0
jmp L@$$_JL_END_2
L@$$_JL_2:
mov eax, 1
L@$$_JL_END_2:
cmp eax, 1
jne L@$$_WHILE_END_1
mov eax, Main@func@$A$S?$A$S$$cstr_3
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 12 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@func@$A$S?$A$S$$cstr_4
push eax
push _printstrstr
call _printf
add esp, 8
;start generating array exp code
;Get the value of variable or field or type 'argv' start
mov eax, ebp ;Parameter: argv
add eax, 8 ;Parameter: argv
;Get the value of variable or field 'argv' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 12 ;Variable: idx
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
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 12 ;Variable: idx
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
sub eax, 12 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$$_WHILE_START_1
L@$$_WHILE_END_1:
;WhileNode end: L@$$_WHILE_START_1
mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 12 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$$_WHILE_START_3
L@$$_WHILE_START_3:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 12 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'envp' start
mov eax, ebp ;Parameter: envp
add eax, 12 ;Parameter: envp
;Get the value of variable or field 'envp' end

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
mov eax, Main@func@$A$S?$A$S$$cstr_5
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 12 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@func@$A$S?$A$S$$cstr_6
push eax
push _printstrstr
call _printf
add esp, 8
;start generating array exp code
;Get the value of variable or field or type 'envp' start
mov eax, ebp ;Parameter: envp
add eax, 12 ;Parameter: envp
;Get the value of variable or field 'envp' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 12 ;Variable: idx
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
push _printstrstr
call _printf
add esp, 8
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 12 ;Variable: idx
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
sub eax, 12 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$$_WHILE_START_3
L@$$_WHILE_END_3:
;WhileNode end: L@$$_WHILE_START_3
add esp, 12
mov esp, ebp
pop ebp
ret ;_Main@func@$A$S?$A$S

;Method: _Main@main@$A$S?$A$S
_Main@main@$A$S?$A$S:
push ebp
mov ebp, esp
sub esp, 8 ;static method call, 2 variables space
call _GetMethodNameDeque
mov [esp], eax
push func@$A$S?$A$S@$$signature_str
push Main@$$classname_str
push integer@$$classname_str
call _PushStaticMethodName
add esp, 12
;Get the value of variable or field or type 'envp' start
mov eax, ebp ;Parameter: envp
add eax, 12 ;Parameter: envp
;Get the value of variable or field 'envp' end

mov eax, [eax] ;left value to right value
push eax
;Get the value of variable or field or type 'argv' start
mov eax, ebp ;Parameter: argv
add eax, 8 ;Parameter: argv
;Get the value of variable or field 'argv' end

mov eax, [eax] ;left value to right value
push eax
;static call start
call _Main@func@$A$S?$A$S
add esp, 8 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 8
;static call end
add esp, 0
mov esp, ebp
pop ebp
ret
mov esp, ebp
pop ebp
ret ;_Main@main@$A$S?$A$S
