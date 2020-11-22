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
base0@$$classname_str db "base0", 0
base00@$$classname_str db "base00", 0
base1@$$classname_str db "base1", 0
base2@$$classname_str db "base2", 0
boolean@$$classname_str db "boolean", 0
char@$$classname_str db "char", 0
class1@$$classname_str db "class1", 0
cstr@$$classname_str db "cstr", 0
derive1@$$classname_str db "derive1", 0
derive2@$$classname_str db "derive2", 0
double@$$classname_str db "double", 0
float@$$classname_str db "float", 0
integer@$$classname_str db "integer", 0
native_array@$$classname_str db "native_array", 0
native_sys_exception@$$classname_str db "native_sys_exception", 0
none@$$classname_str db "none", 0
null@$$classname_str db "null", 0
string@$$classname_str db "string", 0
;All const string
Main@main$$cstr_1 db "before new", 10, 0
Main@main$$cstr_10 db "main, derive2, obj4.field1 = ", 0
Main@main$$cstr_11 db ", obj4.field2 = ", 0
Main@main$$cstr_12 db "OK", 10, 0
Main@main$$cstr_13 db "not cast", 10, 0
Main@main$$cstr_14 db "--------------------------------", 10, 0
Main@main$$cstr_15 db "base000 OK", 10, 0
Main@main$$cstr_16 db "base000 not cast", 10, 0
Main@main$$cstr_17 db "--------------------------------", 10, 0
Main@main$$cstr_18 db "OK", 10, 0
Main@main$$cstr_19 db "not cast", 10, 0
Main@main$$cstr_2 db "after new", 10, 0
Main@main$$cstr_3 db "after 1", 10, 0
Main@main$$cstr_4 db "after 2", 10, 0
Main@main$$cstr_5 db "after 3", 10, 0
Main@main$$cstr_6 db "---------------------------------------", 10, 0
Main@main$$cstr_7 db "---------------------------------------", 10, 0
Main@main$$cstr_8 db "main, base2, obj4.base2::field1 = ", 0
Main@main$$cstr_9 db ", obj4.base2::field2 = ", 0
base00@func00$$cstr_1 db "base00, func00", 10, 0
base0@func0$$cstr_1 db "base0, func0", 10, 0
base0@func9$$cstr_1 db "base0, func9", 10, 0
base1@func1@$I?$I$$cstr_1 db "base1::func1, x = ", 0
base1@func1@$I?$I$$cstr_2 db ", y = ", 0
base1@func2@$I?$I$$cstr_1 db "base1::func2, x = ", 0
base1@func2@$I?$I$$cstr_2 db ", y = ", 0
base1@func3@$I?$I$$cstr_1 db "base1::func3, x = ", 0
base1@func3@$I?$I$$cstr_2 db ", y = ", 0
base1@func4@$I?$I$$cstr_1 db "base1::func4, x = ", 0
base1@func4@$I?$I$$cstr_2 db ", y = ", 0
base1@func5$$cstr_1 db "base1::func5", 10, 0
base2@func1@$I?$I$$cstr_1 db "base2::func1, x = ", 0
base2@func1@$I?$I$$cstr_2 db ", y = ", 0
base2@func2@$I?$I$$cstr_1 db "base2::func2, x = ", 0
base2@func2@$I?$I$$cstr_2 db ", y = ", 0
base2@func3@$I?$I$$cstr_1 db "base2::func3, x = ", 0
base2@func3@$I?$I$$cstr_2 db ", y = ", 0
base2@func4@$I?$I$$cstr_1 db "base2::func4, x = ", 0
base2@func4@$I?$I$$cstr_2 db ", y = ", 0
base2@func5$$cstr_1 db "base2::func5", 10, 0
base2@output_field$$cstr_1 db "base2, field1 = ", 0
base2@output_field$$cstr_2 db ", field2 = ", 0
class1@func$$cstr_1 db "func", 10, 0
derive1@func1@$I?$I$$cstr_1 db "derive1::func1, x = ", 0
derive1@func1@$I?$I$$cstr_2 db ", y = ", 0
derive1@func2@$I?$I$$cstr_1 db "derive1::func2, x = ", 0
derive1@func2@$I?$I$$cstr_2 db ", y = ", 0
derive1@func3@$I?$I$$cstr_1 db "derive1::func3, x = ", 0
derive1@func3@$I?$I$$cstr_2 db ", y = ", 0
derive1@func4@$I?$I$$cstr_1 db "derive1::func4, x = ", 0
derive1@func4@$I?$I$$cstr_2 db ", y = ", 0
derive1@func5$$cstr_1 db "derive1::func5", 10, 0
derive2@func1@$I?$I$$cstr_1 db "derive2::func1, x = ", 0
derive2@func1@$I?$I$$cstr_2 db ", y = ", 0
derive2@func2@$I?$I$$cstr_1 db "derive2::func2, x = ", 0
derive2@func2@$I?$I$$cstr_2 db ", y = ", 0
derive2@func3@$I?$I$$cstr_1 db "derive2::func3, x = ", 0
derive2@func3@$I?$I$$cstr_2 db ", y = ", 0
derive2@func4@$I?$I$$cstr_1 db "derive2::func4, x = ", 0
derive2@func4@$I?$I$$cstr_2 db ", y = ", 0
derive2@func5$$cstr_1 db "derive2::func5", 10, 0
derive2@func7$$cstr_1 db "derive2::func7", 10, 0
derive2@func9$$cstr_1 db "derive2, func9", 10, 0
derive2@output_field$$cstr_1 db "derive2, field1 = ", 0
derive2@output_field$$cstr_2 db ", field2 = ", 0
;All const double
;All const float
;All method signature
append@$C@$$signature_str db "append@$C", 0
append@$S@$$signature_str db "append@$S", 0
assign@$C@$$signature_str db "assign@$C", 0
assign@$S@$$signature_str db "assign@$S", 0
base2@$I?$I@$$signature_str db "base2@$I?$I", 0
c_str@$$signature_str db "c_str", 0
clear@$$signature_str db "clear", 0
derive2@$I?$I@$$signature_str db "derive2@$I?$I", 0
func00@$$signature_str db "func00", 0
func0@$$signature_str db "func0", 0
func1@$I?$I@$$signature_str db "func1@$I?$I", 0
func2@$I?$I@$$signature_str db "func2@$I?$I", 0
func3@$I?$I@$$signature_str db "func3@$I?$I", 0
func4@$I?$I@$$signature_str db "func4@$I?$I", 0
func5@$$signature_str db "func5", 0
func7@$$signature_str db "func7", 0
func9@$$signature_str db "func9", 0
func@$$signature_str db "func", 0
get@$I@$$signature_str db "get@$I", 0
get_msg@$$signature_str db "get_msg", 0
length@$$signature_str db "length", 0
main@$$signature_str db "main", 0
native_sys_exception@$$signature_str db "native_sys_exception", 0
native_sys_exception@$S@$$signature_str db "native_sys_exception@$S", 0
output@$$signature_str db "output", 0
output_field@$$signature_str db "output_field", 0
set@$I?$C@$$signature_str db "set@$I?$C", 0
size@$$signature_str db "size", 0
string@$$signature_str db "string", 0
string@$S@$$signature_str db "string@$S", 0

section .bss
;The virtual table address of class base0 containing virtual methods
base0@$$vtable resd 2
;The virtual table address of class base00 containing virtual methods
base00@$$vtable resd 2
;The virtual table address of class base1 containing virtual methods
base1@$$vtable resd 2
;The virtual table address of class base2 containing virtual methods
base2@$$vtable resd 2
;The virtual table address of class derive1 containing virtual methods
derive1@$$vtable resd 2
;The virtual table address of class derive2 containing virtual methods
derive2@$$vtable resd 2
;The virtual table address of class string containing virtual methods
string@$$vtable resd 2
;The descriptor table address of class Main
Main@$$classdescriptor resd 2
;The descriptor table address of class base0
base0@$$classdescriptor resd 2
;The descriptor table address of class base00
base00@$$classdescriptor resd 2
;The descriptor table address of class base1
base1@$$classdescriptor resd 2
;The descriptor table address of class base2
base2@$$classdescriptor resd 2
;The descriptor table address of class boolean
boolean@$$classdescriptor resd 2
;The descriptor table address of class char
char@$$classdescriptor resd 2
;The descriptor table address of class class1
class1@$$classdescriptor resd 2
;The descriptor table address of class cstr
cstr@$$classdescriptor resd 2
;The descriptor table address of class derive1
derive1@$$classdescriptor resd 2
;The descriptor table address of class derive2
derive2@$$classdescriptor resd 2
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
;construct the virtual table of class 'base0' start.
push 12 ;total 3 virtual member
call _malloc
add esp, 4
;class 'base0', virtual method moving start
mov dword [eax], _base00@func00
mov dword [eax+4], _base0@func0
mov dword [eax+8], _base0@func9
;class 'base0', virtual method moving end
mov [base0@$$vtable], eax ;the virtual table address of class 'base0'
mov dword [base0@$$vtable + 4], base0@$$classname_str ;the virtual table address of class 'base0'
;construct the virtual table of class 'base0' end.
;construct the virtual table of class 'base00' start.
push 4 ;total 1 virtual member
call _malloc
add esp, 4
;class 'base00', virtual method moving start
mov dword [eax], _base00@func00
;class 'base00', virtual method moving end
mov [base00@$$vtable], eax ;the virtual table address of class 'base00'
mov dword [base00@$$vtable + 4], base00@$$classname_str ;the virtual table address of class 'base00'
;construct the virtual table of class 'base00' end.
;construct the virtual table of class 'base1' start.
push 24 ;total 6 virtual member
call _malloc
add esp, 4
;class 'base1', virtual method moving start
mov dword [eax], _base00@func00
mov dword [eax+4], _base0@func0
mov dword [eax+8], _base0@func9
mov dword [eax+12], _base1@func1@$I?$I
mov dword [eax+16], _base1@func2@$I?$I
mov dword [eax+20], _base1@func5
;class 'base1', virtual method moving end
mov [base1@$$vtable], eax ;the virtual table address of class 'base1'
mov dword [base1@$$vtable + 4], base1@$$classname_str ;the virtual table address of class 'base1'
;construct the virtual table of class 'base1' end.
;construct the virtual table of class 'base2' start.
push 24 ;total 6 virtual member
call _malloc
add esp, 4
;class 'base2', virtual method moving start
mov dword [eax], _base00@func00
mov dword [eax+4], _base0@func0
mov dword [eax+8], _base0@func9
mov dword [eax+12], _base2@func1@$I?$I
mov dword [eax+16], _base2@func2@$I?$I
mov dword [eax+20], _base2@func5
;class 'base2', virtual method moving end
mov [base2@$$vtable], eax ;the virtual table address of class 'base2'
mov dword [base2@$$vtable + 4], base2@$$classname_str ;the virtual table address of class 'base2'
;construct the virtual table of class 'base2' end.
;construct the virtual table of class 'derive1' start.
push 24 ;total 6 virtual member
call _malloc
add esp, 4
;class 'derive1', virtual method moving start
mov dword [eax], _base00@func00
mov dword [eax+4], _base0@func0
mov dword [eax+8], _base0@func9
mov dword [eax+12], _derive1@func1@$I?$I
mov dword [eax+16], _derive1@func2@$I?$I
mov dword [eax+20], _derive1@func5
;class 'derive1', virtual method moving end
mov [derive1@$$vtable], eax ;the virtual table address of class 'derive1'
mov dword [derive1@$$vtable + 4], derive1@$$classname_str ;the virtual table address of class 'derive1'
;construct the virtual table of class 'derive1' end.
;construct the virtual table of class 'derive2' start.
push 28 ;total 7 virtual member
call _malloc
add esp, 4
;class 'derive2', virtual method moving start
mov dword [eax], _base00@func00
mov dword [eax+4], _base0@func0
mov dword [eax+8], _base0@func9
mov dword [eax+12], _derive2@func1@$I?$I
mov dword [eax+16], _derive2@func2@$I?$I
mov dword [eax+20], _derive2@func5
mov dword [eax+24], _derive2@func9
;class 'derive2', virtual method moving end
mov [derive2@$$vtable], eax ;the virtual table address of class 'derive2'
mov dword [derive2@$$vtable + 4], derive2@$$classname_str ;the virtual table address of class 'derive2'
;construct the virtual table of class 'derive2' end.
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
mov dword [base0@$$classdescriptor], base0@$$classname_str
mov dword [base0@$$classdescriptor + 4], base00@$$classdescriptor
mov dword [base00@$$classdescriptor], base00@$$classname_str
mov dword [base00@$$classdescriptor + 4], 0
mov dword [base1@$$classdescriptor], base1@$$classname_str
mov dword [base1@$$classdescriptor + 4], base0@$$classdescriptor
mov dword [base2@$$classdescriptor], base2@$$classname_str
mov dword [base2@$$classdescriptor + 4], base0@$$classdescriptor
mov dword [boolean@$$classdescriptor], boolean@$$classname_str
mov dword [boolean@$$classdescriptor + 4], 0
mov dword [char@$$classdescriptor], char@$$classname_str
mov dword [char@$$classdescriptor + 4], 0
mov dword [class1@$$classdescriptor], class1@$$classname_str
mov dword [class1@$$classdescriptor + 4], 0
mov dword [cstr@$$classdescriptor], cstr@$$classname_str
mov dword [cstr@$$classdescriptor + 4], 0
mov dword [derive1@$$classdescriptor], derive1@$$classname_str
mov dword [derive1@$$classdescriptor + 4], base1@$$classdescriptor
mov dword [derive2@$$classdescriptor], derive2@$$classname_str
mov dword [derive2@$$classdescriptor + 4], base2@$$classdescriptor
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
;The virtual table address of class base0 containing virtual methods
push dword [base0@$$vtable]
call _free
add esp, 4
;The virtual table address of class base00 containing virtual methods
push dword [base00@$$vtable]
call _free
add esp, 4
;The virtual table address of class base1 containing virtual methods
push dword [base1@$$vtable]
call _free
add esp, 4
;The virtual table address of class base2 containing virtual methods
push dword [base2@$$vtable]
call _free
add esp, 4
;The virtual table address of class derive1 containing virtual methods
push dword [derive1@$$vtable]
call _free
add esp, 4
;The virtual table address of class derive2 containing virtual methods
push dword [derive2@$$vtable]
call _free
add esp, 4
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

;Method: _class1@func
_class1@func:
push ebp
mov ebp, esp
mov eax, class1@func$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_class1@func

;Method: _base00@func00
_base00@func00:
push ebp
mov ebp, esp
mov eax, base00@func00$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_base00@func00

;Method: _base0@func0
_base0@func0:
push ebp
mov ebp, esp
mov eax, base0@func0$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_base0@func0

;Method: _base0@func9
_base0@func9:
push ebp
mov ebp, esp
mov eax, base0@func9$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_base0@func9

;Method: _base1@func1@$I?$I
_base1@func1@$I?$I:
push ebp
mov ebp, esp
mov eax, base1@func1@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, base1@func1@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_base1@func1@$I?$I

;Method: _base1@func2@$I?$I
_base1@func2@$I?$I:
push ebp
mov ebp, esp
mov eax, base1@func2@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, base1@func2@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_base1@func2@$I?$I

;Method: _base1@func3@$I?$I
_base1@func3@$I?$I:
push ebp
mov ebp, esp
mov eax, base1@func3@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, base1@func3@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_base1@func3@$I?$I

;Method: _base1@func4@$I?$I
_base1@func4@$I?$I:
push ebp
mov ebp, esp
mov eax, base1@func4@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, base1@func4@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_base1@func4@$I?$I

;Method: _base1@func5
_base1@func5:
push ebp
mov ebp, esp
mov eax, base1@func5$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_base1@func5

;Method: _derive1@func1@$I?$I
_derive1@func1@$I?$I:
push ebp
mov ebp, esp
mov eax, derive1@func1@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, derive1@func1@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_derive1@func1@$I?$I

;Method: _derive1@func2@$I?$I
_derive1@func2@$I?$I:
push ebp
mov ebp, esp
mov eax, derive1@func2@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, derive1@func2@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_derive1@func2@$I?$I

;Method: _derive1@func3@$I?$I
_derive1@func3@$I?$I:
push ebp
mov ebp, esp
mov eax, derive1@func3@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, derive1@func3@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_derive1@func3@$I?$I

;Method: _derive1@func4@$I?$I
_derive1@func4@$I?$I:
push ebp
mov ebp, esp
mov eax, derive1@func4@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, derive1@func4@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_derive1@func4@$I?$I

;Method: _derive1@func5
_derive1@func5:
push ebp
mov ebp, esp
mov eax, derive1@func5$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_derive1@func5

;Method: _base2@base2@$I?$I
_base2@base2@$I?$I:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'xv' start
mov eax, ebp ;Parameter: xv
add eax, 12 ;Parameter: xv
;Get the value of variable or field 'xv' end

push eax ;save the right expression value
;Get the value of variable or field or type 'field1' start
mov eax, [ebp+8] ;This address
add eax, 4 ;Field: field1
;Get the value of variable or field 'field1' end

pop ebx ;restore the right expression value
mov ebx, [ebx] ;get the right value of the left value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'yv' start
mov eax, ebp ;Parameter: yv
add eax, 16 ;Parameter: yv
;Get the value of variable or field 'yv' end

push eax ;save the right expression value
;Get the value of variable or field or type 'field2' start
mov eax, [ebp+8] ;This address
add eax, 8 ;Field: field2
;Get the value of variable or field 'field2' end

pop ebx ;restore the right expression value
mov ebx, [ebx] ;get the right value of the left value
mov [eax], ebx ;assign the right to the left value address
mov esp, ebp
pop ebp
ret ;_base2@base2@$I?$I

;Method: _base2@func1@$I?$I
_base2@func1@$I?$I:
push ebp
mov ebp, esp
mov eax, base2@func1@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, base2@func1@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_base2@func1@$I?$I

;Method: _base2@func2@$I?$I
_base2@func2@$I?$I:
push ebp
mov ebp, esp
mov eax, base2@func2@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, base2@func2@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_base2@func2@$I?$I

;Method: _base2@func3@$I?$I
_base2@func3@$I?$I:
push ebp
mov ebp, esp
mov eax, base2@func3@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, base2@func3@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_base2@func3@$I?$I

;Method: _base2@func4@$I?$I
_base2@func4@$I?$I:
push ebp
mov ebp, esp
mov eax, base2@func4@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, base2@func4@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_base2@func4@$I?$I

;Method: _base2@func5
_base2@func5:
push ebp
mov ebp, esp
mov eax, base2@func5$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_base2@func5

;Method: _base2@output_field
_base2@output_field:
push ebp
mov ebp, esp
mov eax, base2@output_field$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'field1' start
mov eax, [ebp+8] ;This address
add eax, 4 ;Field: field1
;Get the value of variable or field 'field1' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, base2@output_field$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'field2' start
mov eax, [ebp+8] ;This address
add eax, 8 ;Field: field2
;Get the value of variable or field 'field2' end

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
ret ;_base2@output_field

;Method: _derive2@derive2@$I?$I
_derive2@derive2@$I?$I:
push ebp
mov ebp, esp
;Get the value of variable or field or type 'xv' start
mov eax, ebp ;Parameter: xv
add eax, 12 ;Parameter: xv
;Get the value of variable or field 'xv' end

push eax ;save the right expression value
;Get the value of variable or field or type 'field1' start
mov eax, [ebp+8] ;This address
add eax, 12 ;Field: field1
;Get the value of variable or field 'field1' end

pop ebx ;restore the right expression value
mov ebx, [ebx] ;get the right value of the left value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'yv' start
mov eax, ebp ;Parameter: yv
add eax, 16 ;Parameter: yv
;Get the value of variable or field 'yv' end

push eax ;save the right expression value
;Get the value of variable or field or type 'field2' start
mov eax, [ebp+8] ;This address
add eax, 16 ;Field: field2
;Get the value of variable or field 'field2' end

pop ebx ;restore the right expression value
mov ebx, [ebx] ;get the right value of the left value
mov [eax], ebx ;assign the right to the left value address
mov esp, ebp
pop ebp
ret ;_derive2@derive2@$I?$I

;Method: _derive2@func1@$I?$I
_derive2@func1@$I?$I:
push ebp
mov ebp, esp
mov eax, derive2@func1@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, derive2@func1@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_derive2@func1@$I?$I

;Method: _derive2@func2@$I?$I
_derive2@func2@$I?$I:
push ebp
mov ebp, esp
mov eax, derive2@func2@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, derive2@func2@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_derive2@func2@$I?$I

;Method: _derive2@func3@$I?$I
_derive2@func3@$I?$I:
push ebp
mov ebp, esp
mov eax, derive2@func3@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, derive2@func3@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_derive2@func3@$I?$I

;Method: _derive2@func4@$I?$I
_derive2@func4@$I?$I:
push ebp
mov ebp, esp
mov eax, derive2@func4@$I?$I$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'x' start
mov eax, ebp ;Parameter: x
add eax, 12 ;Parameter: x
;Get the value of variable or field 'x' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, derive2@func4@$I?$I$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'y' start
mov eax, ebp ;Parameter: y
add eax, 16 ;Parameter: y
;Get the value of variable or field 'y' end

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
ret ;_derive2@func4@$I?$I

;Method: _derive2@func5
_derive2@func5:
push ebp
mov ebp, esp
mov eax, derive2@func5$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_derive2@func5

;Method: _derive2@func7
_derive2@func7:
push ebp
mov ebp, esp
mov eax, derive2@func7$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_derive2@func7

;Method: _derive2@output_field
_derive2@output_field:
push ebp
mov ebp, esp
mov eax, derive2@output_field$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'field1' start
mov eax, [ebp+8] ;This address
add eax, 12 ;Field: field1
;Get the value of variable or field 'field1' end

mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, derive2@output_field$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'field2' start
mov eax, [ebp+8] ;This address
add eax, 16 ;Field: field2
;Get the value of variable or field 'field2' end

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
ret ;_derive2@output_field

;Method: _derive2@func9
_derive2@func9:
push ebp
mov ebp, esp
mov eax, derive2@func9$$cstr_1
push eax
push _printstrstr
call _printf
add esp, 8
mov esp, ebp
pop ebp
ret ;_derive2@func9

;Method: _Main@main
_Main@main:
push ebp
mov ebp, esp
sub esp, 32
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
mov dword [eax], derive1@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov dword [eax], derive1@$$vtable ;mov the virtual table address to the object's start address
mov [esp+4], eax ;//save the new memory's address
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;Get the value of variable or field or type 'obj1' start
mov eax, ebp ;Variable: obj1
sub eax, 4 ;Variable: obj1
;Get the value of variable or field 'obj1' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
mov eax, Main@main$$cstr_2
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj1' start
mov eax, ebp ;Variable: obj1
sub eax, 4 ;Variable: obj1
;Get the value of variable or field 'obj1' end

mov ecx, [eax]
mov [esp+8], ecx
push func1@$I?$I@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov eax, 3
push eax
mov eax, 9
push eax
mov ecx, [esp+16] ;this address value
;virtual call start
mov ebx, [ecx] ;eax=virtual label label
mov eax, [ebx] ;eax=virtual table value
push ecx ;this address value
call dword [eax+12]
add esp, 12 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;virtual call end
mov eax, Main@main$$cstr_3
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj1' start
mov eax, ebp ;Variable: obj1
sub eax, 4 ;Variable: obj1
;Get the value of variable or field 'obj1' end

mov ecx, [eax]
mov [esp+8], ecx
push func2@$I?$I@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov eax, 3
push eax
mov eax, 9
push eax
mov ecx, [esp+16] ;this address value
;virtual call start
mov ebx, [ecx] ;eax=virtual label label
mov eax, [ebx] ;eax=virtual table value
push ecx ;this address value
call dword [eax+16]
add esp, 12 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;virtual call end
mov eax, Main@main$$cstr_4
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj1' start
mov eax, ebp ;Variable: obj1
sub eax, 4 ;Variable: obj1
;Get the value of variable or field 'obj1' end

mov ecx, [eax]
mov [esp+8], ecx
push func3@$I?$I@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov eax, 3
push eax
mov eax, 9
push eax
mov ecx, [esp+16] ;this address value
;general call start
push ecx ;this address value
call _base1@func3@$I?$I
add esp, 12 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj1' start
mov eax, ebp ;Variable: obj1
sub eax, 4 ;Variable: obj1
;Get the value of variable or field 'obj1' end

mov ecx, [eax]
mov [esp+8], ecx
push func4@$I?$I@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov eax, 3
push eax
mov eax, 9
push eax
mov ecx, [esp+16] ;this address value
;general call start
push ecx ;this address value
call _base1@func4@$I?$I
add esp, 12 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj1' start
mov eax, ebp ;Variable: obj1
sub eax, 4 ;Variable: obj1
;Get the value of variable or field 'obj1' end

mov ecx, [eax]
mov [esp+8], ecx
push func0@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;virtual call start
mov ebx, [ecx] ;eax=virtual label label
mov eax, [ebx] ;eax=virtual table value
push ecx ;this address value
call dword [eax+4]
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;virtual call end
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj1' start
mov eax, ebp ;Variable: obj1
sub eax, 4 ;Variable: obj1
;Get the value of variable or field 'obj1' end

mov ecx, [eax]
mov [esp+8], ecx
push func00@$$signature_str
push none@$$classname_str
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
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj1' start
mov eax, ebp ;Variable: obj1
sub eax, 4 ;Variable: obj1
;Get the value of variable or field 'obj1' end

mov ecx, [eax]
mov [esp+8], ecx
push func5@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;virtual call start
mov ebx, [ecx] ;eax=virtual label label
mov eax, [ebx] ;eax=virtual table value
push ecx ;this address value
call dword [eax+20]
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;virtual call end
mov eax, Main@main$$cstr_5
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 24
call _bdwgc_malloc
add esp, 4
mov dword [eax], derive2@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov dword [eax], derive2@$$vtable ;mov the virtual table address to the object's start address
mov [esp+4], eax ;//save the new memory's address
push derive2@$I?$I@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
mov eax, 9
push eax
mov eax, 1
push eax
push dword [esp+12]
call _derive2@derive2@$I?$I
add esp, 12
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;Get the value of variable or field or type 'obj2' start
mov eax, ebp ;Variable: obj2
sub eax, 8 ;Variable: obj2
;Get the value of variable or field 'obj2' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj2' start
mov eax, ebp ;Variable: obj2
sub eax, 8 ;Variable: obj2
;Get the value of variable or field 'obj2' end

mov ecx, [eax]
mov [esp+8], ecx
push func1@$I?$I@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov eax, 53
push eax
mov eax, 19
push eax
mov ecx, [esp+16] ;this address value
;virtual call start
mov ebx, [ecx] ;eax=virtual label label
mov eax, [ebx] ;eax=virtual table value
push ecx ;this address value
call dword [eax+12]
add esp, 12 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;virtual call end
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj2' start
mov eax, ebp ;Variable: obj2
sub eax, 8 ;Variable: obj2
;Get the value of variable or field 'obj2' end

mov ecx, [eax]
mov [esp+8], ecx
push func2@$I?$I@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov eax, 53
push eax
mov eax, 19
push eax
mov ecx, [esp+16] ;this address value
;virtual call start
mov ebx, [ecx] ;eax=virtual label label
mov eax, [ebx] ;eax=virtual table value
push ecx ;this address value
call dword [eax+16]
add esp, 12 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;virtual call end
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj2' start
mov eax, ebp ;Variable: obj2
sub eax, 8 ;Variable: obj2
;Get the value of variable or field 'obj2' end

mov ecx, [eax]
mov [esp+8], ecx
push func3@$I?$I@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov eax, 53
push eax
mov eax, 19
push eax
mov ecx, [esp+16] ;this address value
;general call start
push ecx ;this address value
call _base2@func3@$I?$I
add esp, 12 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj2' start
mov eax, ebp ;Variable: obj2
sub eax, 8 ;Variable: obj2
;Get the value of variable or field 'obj2' end

mov ecx, [eax]
mov [esp+8], ecx
push func4@$I?$I@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov eax, 53
push eax
mov eax, 19
push eax
mov ecx, [esp+16] ;this address value
;general call start
push ecx ;this address value
call _base2@func4@$I?$I
add esp, 12 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj2' start
mov eax, ebp ;Variable: obj2
sub eax, 8 ;Variable: obj2
;Get the value of variable or field 'obj2' end

mov ecx, [eax]
mov [esp+8], ecx
push func0@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;virtual call start
mov ebx, [ecx] ;eax=virtual label label
mov eax, [ebx] ;eax=virtual table value
push ecx ;this address value
call dword [eax+4]
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;virtual call end
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj2' start
mov eax, ebp ;Variable: obj2
sub eax, 8 ;Variable: obj2
;Get the value of variable or field 'obj2' end

mov ecx, [eax]
mov [esp+8], ecx
push func00@$$signature_str
push none@$$classname_str
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
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj2' start
mov eax, ebp ;Variable: obj2
sub eax, 8 ;Variable: obj2
;Get the value of variable or field 'obj2' end

mov ecx, [eax]
mov [esp+8], ecx
push func5@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;virtual call start
mov ebx, [ecx] ;eax=virtual label label
mov eax, [ebx] ;eax=virtual table value
push ecx ;this address value
call dword [eax+20]
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;virtual call end
mov eax, Main@main$$cstr_6
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
mov dword [eax], derive1@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov dword [eax], derive1@$$vtable ;mov the virtual table address to the object's start address
mov [esp+4], eax ;//save the new memory's address
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;Get the value of variable or field or type 'obj3' start
mov eax, ebp ;Variable: obj3
sub eax, 12 ;Variable: obj3
;Get the value of variable or field 'obj3' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj3' start
mov eax, ebp ;Variable: obj3
sub eax, 12 ;Variable: obj3
;Get the value of variable or field 'obj3' end

mov ecx, [eax]
mov [esp+8], ecx
push func1@$I?$I@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov eax, 90
push eax
mov eax, 30
push eax
mov ecx, [esp+16] ;this address value
;general call start
push ecx ;this address value
call _base1@func1@$I?$I
add esp, 12 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 24
call _bdwgc_malloc
add esp, 4
mov dword [eax], derive2@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov dword [eax], derive2@$$vtable ;mov the virtual table address to the object's start address
mov [esp+4], eax ;//save the new memory's address
push derive2@$I?$I@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
mov eax, 9
push eax
mov eax, 1
push eax
push dword [esp+12]
call _derive2@derive2@$I?$I
add esp, 12
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

mov ecx, [eax]
mov [esp+8], ecx
push func2@$I?$I@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov eax, 90
push eax
mov eax, 30
push eax
mov ecx, [esp+16] ;this address value
;general call start
push ecx ;this address value
call _base2@func2@$I?$I
add esp, 12 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
mov eax, Main@main$$cstr_7
push eax
push _printstrstr
call _printf
add esp, 8
mov eax, 1
push eax ;save the right expression value
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

mov eax, [eax]
add eax, 4
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
mov eax, 2
push eax ;save the right expression value
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

mov eax, [eax]
add eax, 8
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
mov eax, 3
push eax ;save the right expression value
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

mov eax, [eax]
add eax, 12
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
mov eax, 4
push eax ;save the right expression value
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

mov eax, [eax]
add eax, 16
pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

mov ecx, [eax]
mov [esp+8], ecx
push output_field@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _base2@output_field
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

mov ecx, [eax]
mov [esp+8], ecx
push output_field@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _derive2@output_field
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
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

mov eax, [eax]
add eax, 4
mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main$$cstr_9
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

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
mov eax, Main@main$$cstr_10
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

mov eax, [eax]
add eax, 12
mov eax, [eax] ;print needs the right value
push eax
push _printintstr
call _printf
add esp, 8
mov eax, Main@main$$cstr_11
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

mov eax, [eax]
add eax, 16
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
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

push eax ;save the right expression value
;Get the value of variable or field or type 'base222' start
mov eax, ebp ;Variable: base222
sub eax, 20 ;Variable: base222
;Get the value of variable or field 'base222' end

pop ebx ;restore the right expression value
mov ebx, [ebx] ;get the right value of the left value
mov [eax], ebx ;assign the right to the left value address
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'base222' start
mov eax, ebp ;Variable: base222
sub eax, 20 ;Variable: base222
;Get the value of variable or field 'base222' end

mov ecx, [eax]
mov [esp+8], ecx
push func1@$I?$I@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov eax, 100
push eax
mov eax, 1
push eax
mov ecx, [esp+16] ;this address value
;virtual call start
mov ebx, [ecx] ;eax=virtual label label
mov eax, [ebx] ;eax=virtual table value
push ecx ;this address value
call dword [eax+12]
add esp, 12 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;virtual call end
mov eax, [ebp-20] ;Variable: base222
push eax
sub eax, 4
push dword [eax]
push derive2@$$classname_str
call _rtti_cmp
add esp, 8
cmp eax, 1
je L@$$_JE_7
pop eax
mov eax, 0
jmp L@$$_JE_END_7
L@$$_JE_7:
pop eax
L@$$_JE_END_7:
push eax ;save the right expression value
;Get the value of variable or field or type 'obj333' start
mov eax, ebp ;Variable: obj333
sub eax, 24 ;Variable: obj333
;Get the value of variable or field 'obj333' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'obj333' start
mov eax, ebp ;Variable: obj333
sub eax, 24 ;Variable: obj333
;Get the value of variable or field 'obj333' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 0 ;null expression
mov ebx, eax ;get the right value of the left value
pop eax
cmp eax, ebx
jne L@$$_JNE_2
mov eax, 0
jmp L@$$_JNE_END_2
L@$$_JNE_2:
mov eax, 1
L@$$_JNE_END_2:
cmp eax, 1
jne L@$$_ELSE_1
mov eax, Main@main$$cstr_12
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj333' start
mov eax, ebp ;Variable: obj333
sub eax, 24 ;Variable: obj333
;Get the value of variable or field 'obj333' end

mov ecx, [eax]
mov [esp+8], ecx
push func7@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _derive2@func7
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
jmp L@$$_IFELSE_END_1
L@$$_ELSE_1:
mov eax, Main@main$$cstr_13
push eax
push _printstrstr
call _printf
add esp, 8
L@$$_IFELSE_END_1:
mov eax, Main@main$$cstr_14
push eax
push _printstrstr
call _printf
add esp, 8
;Get the value of variable or field or type 'obj4' start
mov eax, ebp ;Variable: obj4
sub eax, 16 ;Variable: obj4
;Get the value of variable or field 'obj4' end

push eax ;save the right expression value
;Get the value of variable or field or type 'base000' start
mov eax, ebp ;Variable: base000
sub eax, 28 ;Variable: base000
;Get the value of variable or field 'base000' end

pop ebx ;restore the right expression value
mov ebx, [ebx] ;get the right value of the left value
mov [eax], ebx ;assign the right to the left value address
mov eax, [ebp-28] ;Variable: base000
push eax
sub eax, 4
push dword [eax]
push derive2@$$classname_str
call _rtti_cmp
add esp, 8
cmp eax, 1
je L@$$_JE_8
pop eax
mov eax, 0
jmp L@$$_JE_END_8
L@$$_JE_8:
pop eax
L@$$_JE_END_8:
push eax ;save the right expression value
;Get the value of variable or field or type 'obj333' start
mov eax, ebp ;Variable: obj333
sub eax, 24 ;Variable: obj333
;Get the value of variable or field 'obj333' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'obj333' start
mov eax, ebp ;Variable: obj333
sub eax, 24 ;Variable: obj333
;Get the value of variable or field 'obj333' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 0 ;null expression
mov ebx, eax ;get the right value of the left value
pop eax
cmp eax, ebx
jne L@$$_JNE_4
mov eax, 0
jmp L@$$_JNE_END_4
L@$$_JNE_4:
mov eax, 1
L@$$_JNE_END_4:
cmp eax, 1
jne L@$$_ELSE_3
mov eax, Main@main$$cstr_15
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj333' start
mov eax, ebp ;Variable: obj333
sub eax, 24 ;Variable: obj333
;Get the value of variable or field 'obj333' end

mov ecx, [eax]
mov [esp+8], ecx
push func7@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _derive2@func7
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
jmp L@$$_IFELSE_END_3
L@$$_ELSE_3:
mov eax, Main@main$$cstr_16
push eax
push _printstrstr
call _printf
add esp, 8
L@$$_IFELSE_END_3:
mov eax, Main@main$$cstr_17
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 8 ;used as saving new's memory address and method deque
call _GetMethodNameDeque
mov [esp], eax
push 16
call _bdwgc_malloc
add esp, 4
mov dword [eax], base2@$$classdescriptor ;mov the class descriptor item address to the object's start address
add eax, 4
mov dword [eax], base2@$$vtable ;mov the virtual table address to the object's start address
mov [esp+4], eax ;//save the new memory's address
push base2@$I?$I@$$signature_str
push none@$$classname_str
push dword [esp+12]
call _PushNonNativeMethodName
add esp, 12
mov eax, 3
push eax
mov eax, 1
push eax
push dword [esp+12]
call _base2@base2@$I?$I
add esp, 12
call _PopMethodName
mov eax, [esp+4]
add esp, 8 ;used as restore the memory address
push eax ;save the right expression value
;Get the value of variable or field or type 'base2obj' start
mov eax, ebp ;Variable: base2obj
sub eax, 32 ;Variable: base2obj
;Get the value of variable or field 'base2obj' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
mov eax, [ebp-32] ;Variable: base2obj
push eax
sub eax, 4
push dword [eax]
push derive2@$$classname_str
call _rtti_cmp
add esp, 8
cmp eax, 1
je L@$$_JE_9
pop eax
mov eax, 0
jmp L@$$_JE_END_9
L@$$_JE_9:
pop eax
L@$$_JE_END_9:
push eax ;save the right expression value
;Get the value of variable or field or type 'obj333' start
mov eax, ebp ;Variable: obj333
sub eax, 24 ;Variable: obj333
;Get the value of variable or field 'obj333' end

pop ebx ;restore the right expression value
mov [eax], ebx ;assign the right to the left value address
;Get the value of variable or field or type 'obj333' start
mov eax, ebp ;Variable: obj333
sub eax, 24 ;Variable: obj333
;Get the value of variable or field 'obj333' end

mov eax, [eax] ;get the right value of the left value
push eax
mov eax, 0 ;null expression
mov ebx, eax ;get the right value of the left value
pop eax
cmp eax, ebx
jne L@$$_JNE_6
mov eax, 0
jmp L@$$_JNE_END_6
L@$$_JNE_6:
mov eax, 1
L@$$_JNE_END_6:
cmp eax, 1
jne L@$$_ELSE_5
mov eax, Main@main$$cstr_18
push eax
push _printstrstr
call _printf
add esp, 8
sub esp, 12 ;3 variables space
call _GetMethodNameDeque
mov [esp], eax
;Get the value of variable or field or type 'obj333' start
mov eax, ebp ;Variable: obj333
sub eax, 24 ;Variable: obj333
;Get the value of variable or field 'obj333' end

mov ecx, [eax]
mov [esp+8], ecx
push func7@$$signature_str
push none@$$classname_str
push ecx
call _PushNonNativeMethodName
add esp, 12
mov ecx, [esp+8] ;this address value
;general call start
push ecx ;this address value
call _derive2@func7
add esp, 4 ;not stdcall
mov [esp+4], eax
call _PopMethodName
mov eax, [esp+4]
add esp, 12
;general call end
jmp L@$$_IFELSE_END_5
L@$$_ELSE_5:
mov eax, Main@main$$cstr_19
push eax
push _printstrstr
call _printf
add esp, 8
L@$$_IFELSE_END_5:
add esp, 32
mov esp, ebp
pop ebp
ret ;_Main@main
