;Bit32 nasm code
[bits 32]
global _main
;All pseudo names from the language
extern _CreateThread@24
extern _GetMethodNameDeque
extern _GetTryRuntimeCtxStackNode
extern _MessageBoxA@16
extern _PopMethodName
extern _PushNativeMethodName
extern _PushNonNativeMethodName
extern _PushStaticMethodName
extern _Sleep@4
extern _WaitForSingleObject@8
extern __get_argc_argv
extern _bdwgc_malloc
extern _c_deque_destroy
extern _c_deque_pop_front
extern _c_deque_size
extern _c_stack_pop
extern _c_stack_push
extern _copy_c_array
extern _critical_section_proxy_construct
extern _critical_section_proxy_delete
extern _critical_section_proxy_enter
extern _critical_section_proxy_leave
extern _critical_section_proxy_try_enter
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
Thread1@$$classname_str db "Thread1", 0
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
sys_critical_section@$$classname_str db "sys_critical_section", 0
sys_thread@$$classname_str db "sys_thread", 0
;All const string
Main@main@cstr_1 db "thread_group[", 0
Main@main@cstr_2 db "]=", 0
Main@main@cstr_3 db "sleep 3 second (Thread1.sleep)", 10, 0
Main@main@cstr_4 db "sleep 2 second (sys_thread.sleep)", 10, 0
Main@main@cstr_5 db "#2", 10, 0
Main@main@cstr_6 db "End", 10, 0
Thread1@run@cstr_1 db 10, "thread", 0
Thread1@run@cstr_2 db ", n = ", 0
;All const double
;All const float
;All method signature
Thread1@$I?sys_critical_section@$$signature_str db "Thread1@$I?sys_critical_section", 0
append@$C@$$signature_str db "append@$C", 0
append@$S@$$signature_str db "append@$S", 0
assign@$C@$$signature_str db "assign@$C", 0
assign@$S@$$signature_str db "assign@$S", 0
c_str@$$signature_str db "c_str", 0
clear@$$signature_str db "clear", 0
delete@$$signature_str db "delete", 0
enter@$$signature_str db "enter", 0
get@$I@$$signature_str db "get@$I", 0
get_msg@$$signature_str db "get_msg", 0
leave@$$signature_str db "leave", 0
length@$$signature_str db "length", 0
main@$$signature_str db "main", 0
native_sys_exception@$$signature_str db "native_sys_exception", 0
native_sys_exception@$S@$$signature_str db "native_sys_exception@$S", 0
output@$$signature_str db "output", 0
run@$$signature_str db "run", 0
set@$I?$C@$$signature_str db "set@$I?$C", 0
size@$$signature_str db "size", 0
sleep@$I@$$signature_str db "sleep@$I", 0
start@$$signature_str db "start", 0
string@$$signature_str db "string", 0
string@$S@$$signature_str db "string@$S", 0
sys_critical_section@$$signature_str db "sys_critical_section", 0
sys_thread@$$signature_str db "sys_thread", 0
thread_fun@sys_thread@$$signature_str db "thread_fun@sys_thread", 0
try_enter@$$signature_str db "try_enter", 0
wait@$I@$$signature_str db "wait@$I", 0

Main@@try_data_1:
dd native_sys_exception@$$classdescriptor, -4, 4, Main@@try_start_1_catch_1
dd 0, 0, 0, 0

sys_thread@@try_data_1:
dd native_sys_exception@$$classdescriptor, -8, 4, sys_thread@@try_start_1_catch_1
dd 0, 0, 0, 0

section .bss
;The virtual table address of class Thread1 containing virtual methods
Thread1@$vtable resd 2
;The virtual table address of class string containing virtual methods
string@$vtable resd 2
;The virtual table address of class sys_thread containing virtual methods
sys_thread@$vtable resd 2
;The descriptor table address of class Main
Main@$$classdescriptor resd 2
;The descriptor table address of class Thread1
Thread1@$$classdescriptor resd 2
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
;The descriptor table address of class sys_critical_section
sys_critical_section@$$classdescriptor resd 2
;The descriptor table address of class sys_thread
sys_thread@$$classdescriptor resd 2

section .text
_main: ;function _main
push ebp
mov ebp, esp
sub esp, 16
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
add esp, 16
mov esp, ebp
pop ebp
ret ;_main

globalfunc@$construct_vtable: ;The method of constructing all classes' virtual table
push ebp
mov ebp, esp
;construct the virtual table of class 'Thread1' start.
push 4 ;total 1 virtual member
call _malloc
add esp, 4
;class 'Thread1', virtual method moving start
mov dword [eax], _Thread1@run
;class 'Thread1', virtual method moving end
mov [Thread1@$vtable], eax ;the virtual table address of class 'Thread1'
mov dword [Thread1@$vtable + 4], Thread1@$$classname_str ;the virtual table address of class 'Thread1'
;construct the virtual table of class 'Thread1' end.
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
;construct the virtual table of class 'sys_thread' start.
push 4 ;total 1 virtual member
call _malloc
add esp, 4
;class 'sys_thread', virtual method moving start
mov dword [eax], _sys_thread@run
;class 'sys_thread', virtual method moving end
mov [sys_thread@$vtable], eax ;the virtual table address of class 'sys_thread'
mov dword [sys_thread@$vtable + 4], sys_thread@$$classname_str ;the virtual table address of class 'sys_thread'
;construct the virtual table of class 'sys_thread' end.
mov esp, ebp
pop ebp
ret ;globalfunc@$construct_vtable

globalfunc@$construct_classdescriptors: ;The method of constructing all classes' descriptor table
push ebp
mov ebp, esp
mov dword [Main@$$classdescriptor], Main@$$classname_str
mov dword [Main@$$classdescriptor + 4], 0
mov dword [Thread1@$$classdescriptor], Thread1@$$classname_str
mov dword [Thread1@$$classdescriptor + 4], sys_thread@$$classdescriptor
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
mov dword [sys_critical_section@$$classdescriptor], sys_critical_section@$$classname_str
mov dword [sys_critical_section@$$classdescriptor + 4], 0
mov dword [sys_thread@$$classdescriptor], sys_thread@$$classname_str
mov dword [sys_thread@$$classdescriptor + 4], 0

mov esp, ebp
pop ebp
ret ;globalfunc@$construct_classdescriptors

globalfunc@$destroy_vtable: ;The method of destroying all classes' virtual table
push ebp
mov ebp, esp
;The virtual table address of class Thread1 containing virtual methods
push dword [Thread1@$vtable]
call _free
add esp, 4
;The virtual table address of class string containing virtual methods
push dword [string@$vtable]
call _free
add esp, 4
;The virtual table address of class sys_thread containing virtual methods
push dword [sys_thread@$vtable]
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

;Method: _Thread1@Thread1@$I?sys_critical_section
_Thread1@Thread1@$I?sys_critical_section:
push ebp
mov ebp, esp
mov eax, [ebp+8]
add eax, 12
;Get the value of variable or field or type 'sec' start
mov eax, ebp ;Parameter: sec
add eax, 16 ;Parameter: sec
;Get the value of variable or field 'sec' end

push eax ;save the right expression value
mov eax, [ebp+8]
add eax, 12
pop ebx ;restore the right expression value
mov ebx, [ebx] ;get the right value of the left value
mov [eax], ebx ;assign the right to the left value address
mov eax, [ebp+8]
add eax, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Parameter: idx
add eax, 12 ;Parameter: idx
;Get the value of variable or field 'idx' end

push eax ;save the right expression value
mov eax, [ebp+8]
add eax, 8
pop ebx ;restore the right expression value
mov ebx, [ebx] ;get the right value of the left value
mov [eax], ebx ;assign the right to the left value address
mov esp, ebp
pop ebp
ret ;_Thread1@Thread1@$I?sys_critical_section

;Method: _Thread1@run
_Thread1@run:
push ebp
mov ebp, esp
sub esp, 4
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

mov eax, 1
push eax ;save the right expression value
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_1
L@$_WHILE_START_1:
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 100
mov ebx, eax ;get the right value of the left value
pop eax
cmp eax, ebx
jle L@$_JLE_2
mov eax, 0
jmp L@$_JLE_END_2
L@$_JLE_2:
mov eax, 1
L@$_JLE_END_2:
cmp eax, 1
jne L@$_WHILE_END_1
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'sec' start
mov eax, [ebp+8] ;This address
add eax, 12 ;Field: sec
;Get the value of variable or field 'sec' end

mov ecx, [eax]
mov [esp+8], ecx
push enter@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _sys_critical_section@enter
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
mov eax, Thread1@run@cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, [ebp+8] ;This address
add eax, 8 ;Field: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Thread1@run@cstr_2
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
mov eax, 10
push eax
push _printcharstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'sec' start
mov eax, [ebp+8] ;This address
add eax, 12 ;Field: sec
;Get the value of variable or field 'sec' end

mov ecx, [eax]
mov [esp+8], ecx
push leave@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _sys_critical_section@leave
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
sub esp, 8 ;static method call, 2 variables space
call _GetMethodNameDeque
mov [esp], eax
push sleep@$I@$$signature_str
push sys_thread@$$classname_str
push none@$$classname_str
call _PushStaticMethodName
add esp, 12
mov eax, 300
push eax
;static call start
call _sys_thread@sleep@$I
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 8
;static call end
;Get the value of variable or field or type 'n' start
mov eax, ebp ;Variable: n
sub eax, 4 ;Variable: n
;Get the value of variable or field 'n' end

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
jmp L@$_WHILE_START_1
L@$_WHILE_END_1:
;WhileNode end: L@$_WHILE_START_1
add esp, 4
mov esp, ebp
pop ebp
ret ;_Thread1@run

;Method: _Main@main
_Main@main:
push ebp
mov ebp, esp
sub esp, 24
;Allocate TryRuntimeCtx memory
push 36
call _malloc
add esp, 4

mov [ebp-4] ,eax ;save TryRuntimeCtx address
Main@@try_start_1:
;Assign value to TryRuntimeCtx memory
mov [eax+0], ebp
mov [eax+4], esp
mov [eax+8], esi
mov [eax+12], edi
mov [eax+16], ebx
mov dword [eax+20], Main@@try_data_1
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
;try 'Main@@try_start_1', block instructions start
;Get the value of variable or field or type 'sec1' start
mov eax, ebp ;Variable: sec1
sub eax, 12 ;Variable: sec1
;Get the value of variable or field 'sec1' end

sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 8
call _bdwgc_malloc
add esp, 4
mov dword [eax], sys_critical_section@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov [esp+4], eax ;//save the new memory's address
push sys_critical_section@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
push dword [esp+4]
call _sys_critical_section@sys_critical_section
add esp, 4
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;Get the value of variable or field or type 'sec1' start
mov eax, ebp ;Variable: sec1
sub eax, 12 ;Variable: sec1
;Get the value of variable or field 'sec1' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'thread_num' start
mov eax, ebp ;Variable: thread_num
sub eax, 20 ;Variable: thread_num
;Get the value of variable or field 'thread_num' end

mov eax, 10
push eax ;save the right expression value
;Get the value of variable or field or type 'thread_num' start
mov eax, ebp ;Variable: thread_num
sub eax, 20 ;Variable: thread_num
;Get the value of variable or field 'thread_num' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'thread_group' start
mov eax, ebp ;Variable: thread_group
sub eax, 16 ;Variable: thread_group
;Get the value of variable or field 'thread_group' end

;start generating code for VisitNewObjectArrayExpNode
;Get the value of variable or field or type 'thread_num' start
mov eax, ebp ;Variable: thread_num
sub eax, 20 ;Variable: thread_num
;Get the value of variable or field 'thread_num' end

mov eax, [eax]
push eax
push 1
push 4
call _new_array
add esp, 12
;end generating code for VisitNewObjectArrayExpNode
push eax ;save the right expression value
;Get the value of variable or field or type 'thread_group' start
mov eax, ebp ;Variable: thread_group
sub eax, 16 ;Variable: thread_group
;Get the value of variable or field 'thread_group' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_3
L@$_WHILE_START_3:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
;Get the value of variable or field or type 'thread_num' start
mov eax, ebp ;Variable: thread_num
sub eax, 20 ;Variable: thread_num
;Get the value of variable or field 'thread_num' end

mov ebx, [eax] ;get the right value of the left value
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
;start generating array exp code
;Get the value of variable or field or type 'thread_group' start
mov eax, ebp ;Variable: thread_group
sub eax, 16 ;Variable: thread_group
;Get the value of variable or field 'thread_group' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
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
push 20
call _bdwgc_malloc
add esp, 4
mov dword [eax], Thread1@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov dword [eax], Thread1@$vtable ;mov the virtual table address to the object's start address
mov [esp+4], eax ;//save the new memory's address
push Thread1@$I?sys_critical_section@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
;Get the value of variable or field or type 'sec1' start
mov eax, ebp ;Variable: sec1
sub eax, 12 ;Variable: sec1
;Get the value of variable or field 'sec1' end

mov eax, [eax] ;left value to right value
push eax
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;left value to right value
push eax
push dword [esp+12]
call _Thread1@Thread1@$I?sys_critical_section
add esp, 12
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;start generating array exp code
;Get the value of variable or field or type 'thread_group' start
mov eax, ebp ;Variable: thread_group
sub eax, 16 ;Variable: thread_group
;Get the value of variable or field 'thread_group' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
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
mov eax, Main@main@cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main@cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;start generating array exp code
;Get the value of variable or field or type 'thread_group' start
mov eax, ebp ;Variable: thread_group
sub eax, 16 ;Variable: thread_group
;Get the value of variable or field 'thread_group' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
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
add eax, 8
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
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
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
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_3
L@$_WHILE_END_3:
;WhileNode end: L@$_WHILE_START_3
mov eax, Main@main@cstr_3
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 8 ;static method call, 2 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'Thread1' start
;Get the value of variable or field 'Thread1' end

push sleep@$I@$$signature_str
push sys_thread@$$classname_str
push none@$$classname_str
call _PushStaticMethodName
add esp, 12
mov eax, 3000
push eax
;static call start
call _sys_thread@sleep@$I
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 8
;static call end
mov eax, Main@main@cstr_4
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 8 ;static method call, 2 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'sys_thread' start
;Get the value of variable or field 'sys_thread' end

push sleep@$I@$$signature_str
push sys_thread@$$classname_str
push none@$$classname_str
call _PushStaticMethodName
add esp, 12
mov eax, 1000
push eax
;static call start
call _sys_thread@sleep@$I
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 8
;static call end
mov eax, Main@main@cstr_5
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_5
L@$_WHILE_START_5:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
;Get the value of variable or field or type 'thread_num' start
mov eax, ebp ;Variable: thread_num
sub eax, 20 ;Variable: thread_num
;Get the value of variable or field 'thread_num' end

mov ebx, [eax] ;get the right value of the left value
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
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;Get the value of variable or field or type 'thread_group' start
mov eax, ebp ;Variable: thread_group
sub eax, 16 ;Variable: thread_group
;Get the value of variable or field 'thread_group' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
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
push start@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _sys_thread@start
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
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
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_5
L@$_WHILE_END_5:
;WhileNode end: L@$_WHILE_START_5
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, 0
push eax ;save the right expression value
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;WhileNode start: L@$_WHILE_START_7
L@$_WHILE_START_7:
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

mov eax, [eax] ;get the right value of the left value
push eax
;Get the value of variable or field or type 'thread_num' start
mov eax, ebp ;Variable: thread_num
sub eax, 20 ;Variable: thread_num
;Get the value of variable or field 'thread_num' end

mov ebx, [eax] ;get the right value of the left value
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
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;start generating array exp code
;Get the value of variable or field or type 'thread_group' start
mov eax, ebp ;Variable: thread_group
sub eax, 16 ;Variable: thread_group
;Get the value of variable or field 'thread_group' end

push dword [eax]
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
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
push wait@$I@$$signature_str
push integer@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov eax, 1
mov ecx, eax
mov eax, 0
sub eax, ecx
push eax
mov ecx, [esp+12] ;this address value
;general call start
push ecx ;this address value
call _sys_thread@wait@$I
add esp, 8 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

;Get the value of variable or field or type 'idx' start
mov eax, ebp ;Variable: idx
sub eax, 24 ;Variable: idx
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
sub eax, 24 ;Variable: idx
;Get the value of variable or field 'idx' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
jmp L@$_WHILE_START_7
L@$_WHILE_END_7:
;WhileNode end: L@$_WHILE_START_7
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'sec1' start
mov eax, ebp ;Variable: sec1
sub eax, 12 ;Variable: sec1
;Get the value of variable or field 'sec1' end

mov ecx, [eax]
mov [esp+8], ecx
push delete@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _sys_critical_section@delete
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
mov eax, Main@main@cstr_6
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
;try 'Main@@try_start_1', block instructions end
jmp Main@@try_end_1 ;jum the try-end
;try 'Main@@try_start_1' catch 'Main@@try_start_1_catch_1'start
Main@@try_start_1_catch_1:
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
jmp Main@@try_end_1 ;jmp the try-end
;try 'Main@@try_start_1' catch 'Main@@try_start_1_catch_1'end
Main@@try_end_1:
add esp, 24
mov esp, ebp
pop ebp
ret ;_Main@main

;Method: _sys_thread@sys_thread
_sys_thread@sys_thread:
push ebp
mov ebp, esp
mov esp, ebp
pop ebp
ret ;_sys_thread@sys_thread

;Method: _sys_thread@run
_sys_thread@run:
push ebp
mov ebp, esp
mov eax, 0
add esp, 0
mov esp, ebp
pop ebp
ret
mov esp, ebp
pop ebp
ret ;_sys_thread@run

;Method: _sys_thread@thread_fun@sys_thread
_sys_thread@thread_fun@sys_thread:
push ebp
mov ebp, esp
sub esp, 12
;Allocate TryRuntimeCtx memory
push 36
call _malloc
add esp, 4

mov [ebp-8] ,eax ;save TryRuntimeCtx address
sys_thread@@try_start_1:
;Assign value to TryRuntimeCtx memory
mov [eax+0], ebp
mov [eax+4], esp
mov [eax+8], esi
mov [eax+12], edi
mov [eax+16], ebx
mov dword [eax+20], sys_thread@@try_data_1
mov dword [eax+24], 0
mov dword [eax+28], 0

call _GetMethodNameDeque
push eax
call _c_deque_size
add esp, 4
mov ecx, [ebp-8]
mov [ecx+32], eax
;Get thread safe TryRuntimeCtx stack
call _GetTryRuntimeCtxStackNode
mov [ebp-12], eax ;ebx=stack top
push dword [ebp-8] ;try runtime ctx
push dword [ebp-12]; stack top
call _c_stack_push
add esp, 8
;try 'sys_thread@@try_start_1', block instructions start
;Get the value of variable or field or type 'ret' start
mov eax, ebp ;Variable: ret
sub eax, 4 ;Variable: ret
;Get the value of variable or field 'ret' end

sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj' start
mov eax, ebp ;Parameter: obj
add eax, 8 ;Parameter: obj
;Get the value of variable or field 'obj' end

mov ecx, [eax]
mov [esp+8], ecx
push run@$$signature_str
push integer@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;virtual call start
mov ebx, [ecx] ;eax=virtual label label
mov eax, [ebx] ;eax=virtual table value
push ecx ;this address value
call dword [eax]
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;virtual call end
push eax ;save the right expression value
;Get the value of variable or field or type 'ret' start
mov eax, ebp ;Variable: ret
sub eax, 4 ;Variable: ret
;Get the value of variable or field 'ret' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'ret' start
mov eax, ebp ;Variable: ret
sub eax, 4 ;Variable: ret
;Get the value of variable or field 'ret' end

mov eax, [eax]
add esp, 12
mov esp, ebp
pop ebp
ret 4
push dword [ebp-12] ;push the stack top
call _c_stack_pop
add esp, 4
;free the try run time
push dword [ebp-8]
call _free
add esp, 4
;try 'sys_thread@@try_start_1', block instructions end
jmp sys_thread@@try_end_1 ;jum the try-end
;try 'sys_thread@@try_start_1' catch 'sys_thread@@try_start_1_catch_1'start
sys_thread@@try_start_1_catch_1:
;Get the value of variable or field or type 'ret' start
mov eax, ebp ;Variable: ret
sub eax, 4 ;Variable: ret
;Get the value of variable or field 'ret' end

mov eax, 1
mov ecx, eax
mov eax, 0
sub eax, ecx
push eax ;save the right expression value
;Get the value of variable or field or type 'ret' start
mov eax, ebp ;Variable: ret
sub eax, 4 ;Variable: ret
;Get the value of variable or field 'ret' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'e' start
mov eax, ebp ;Variable: e
sub eax, 8 ;Variable: e
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
jmp sys_thread@@try_end_1 ;jmp the try-end
;try 'sys_thread@@try_start_1' catch 'sys_thread@@try_start_1_catch_1'end
sys_thread@@try_end_1:
;Get the value of variable or field or type 'ret' start
mov eax, ebp ;Variable: ret
sub eax, 4 ;Variable: ret
;Get the value of variable or field 'ret' end

mov eax, [eax]
add esp, 12
mov esp, ebp
pop ebp
ret 4
add esp, 12
mov esp, ebp
pop ebp
ret 4 ;stdcall _sys_thread@thread_fun@sys_thread

;Method: _sys_thread@start
_sys_thread@start:
push ebp
mov ebp, esp
sub esp, 4
;Get the value of variable or field or type 'CREATE_SUSPENDED' start
mov eax, ebp ;Variable: CREATE_SUSPENDED
sub eax, 4 ;Variable: CREATE_SUSPENDED
;Get the value of variable or field 'CREATE_SUSPENDED' end

mov eax, 4
push eax ;save the right expression value
;Get the value of variable or field or type 'CREATE_SUSPENDED' start
mov eax, ebp ;Variable: CREATE_SUSPENDED
sub eax, 4 ;Variable: CREATE_SUSPENDED
;Get the value of variable or field 'CREATE_SUSPENDED' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
push 0
push 0
push dword [ebp+8]
push _sys_thread@thread_fun@sys_thread
push 0
push 0
call _CreateThread@24
mov ecx, [ebp+8]
mov dword [ecx+4], eax
add esp, 4
mov esp, ebp
pop ebp
ret ;_sys_thread@start

;Method: _sys_thread@sleep@$I
_sys_thread@sleep@$I:
push ebp
mov ebp, esp
push dword [ebp+8]
call _Sleep@4
mov esp, ebp
pop ebp
ret ;_sys_thread@sleep@$I

;Method: _sys_thread@wait@$I
_sys_thread@wait@$I:
push ebp
mov ebp, esp
push dword [ebp+12]
mov ecx, [ebp+8]
push dword [ecx+4]
call _WaitForSingleObject@8
mov esp, ebp
pop ebp
ret ;_sys_thread@wait@$I

;Method: _sys_critical_section@sys_critical_section
_sys_critical_section@sys_critical_section:
push ebp
mov ebp, esp
call _critical_section_proxy_construct
mov ecx, [ebp+8]
mov dword [ecx], eax
mov esp, ebp
pop ebp
ret ;_sys_critical_section@sys_critical_section

;Method: _sys_critical_section@enter
_sys_critical_section@enter:
push ebp
mov ebp, esp
mov ecx, [ebp+8]
push dword [ecx]
call _critical_section_proxy_enter
mov esp, ebp
pop ebp
ret ;_sys_critical_section@enter

;Method: _sys_critical_section@try_enter
_sys_critical_section@try_enter:
push ebp
mov ebp, esp
mov ecx, [ebp+8]
push dword [ecx]
call _critical_section_proxy_try_enter
mov esp, ebp
pop ebp
ret ;_sys_critical_section@try_enter

;Method: _sys_critical_section@leave
_sys_critical_section@leave:
push ebp
mov ebp, esp
mov ecx, [ebp+8]
push dword [ecx]
call _critical_section_proxy_leave
mov esp, ebp
pop ebp
ret ;_sys_critical_section@leave

;Method: _sys_critical_section@delete
_sys_critical_section@delete:
push ebp
mov ebp, esp
mov ecx, [ebp+8]
push dword [ecx]
call _critical_section_proxy_delete
mov esp, ebp
pop ebp
ret ;_sys_critical_section@delete
