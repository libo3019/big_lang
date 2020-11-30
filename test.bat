del virtual_func.lang.exe
del access_exp.lang.exe
del try_catch_finally.lang.exe
del catch1.lang.exe
del access1.exe
del embbed_asm.lang.exe
del thread_app.lang.exe
del array_app.lang.exe
del array_func.lang.exe
del main_app.lang.exe
del print_double.lang.exe
del float_func.lang.exe
del maths_op.lang.exe
del array_func1.lang.exe
del array_app1.lang.exe
del winmain_app.lang.exe
del static_fields.lang.exe
del static_variables.lang.exe
del ifdef.lang.exe
del ifdef.lang1.exe
del ifdef.lang2.exe

big_lang_cc_main.exe -i virtual_func.lang -o virtual_func.lang.asm -c Main
nasm -f win32 virtual_func.lang.asm
lld-link.exe /nologo /out:virtual_func.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin virtual_func.lang.obj  msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib


big_lang_cc_main.exe -i access_exp.lang -o access_exp.lang.asm -c Main
nasm -f win32 access_exp.lang.asm
lld-link.exe /nologo /out:access_exp.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin access_exp.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i catch1.lang -o catch1.lang.asm -c Main
nasm -f win32 catch1.lang.asm
lld-link.exe /nologo /out:catch1.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin catch1.lang.obj msvcrtd.lib legacy_stdio_definitions.lib gcmt-dll.lib user32.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i try_catch_finally.lang -o try_catch_finally.lang.asm -c Main
nasm -f win32 try_catch_finally.lang.asm
lld-link.exe /nologo /out:try_catch_finally.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin try_catch_finally.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i access1.lang -o access1.lang.asm -c Main
nasm -f win32 access1.lang.asm
lld-link.exe /nologo /out:access1.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Debug /libpath:..\bin access1.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i embbed_asm.lang -o embbed_asm.lang.asm -c Main
nasm -f win32 embbed_asm.lang.asm
lld-link.exe /nologo /out:embbed_asm.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin embbed_asm.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i main_app.lang -o main_app.lang.asm -c Main
nasm -f win32 main_app.lang.asm
lld-link.exe /nologo /out:main_app.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin main_app.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib


big_lang_cc_main.exe -i print_double.lang -o print_double.lang.asm -c Main
nasm -f win32 print_double.lang.asm
lld-link.exe /nologo /out:print_double.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin print_double.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib


big_lang_cc_main.exe -i maths_op.lang -o maths_op.lang.asm -c Main
nasm -f win32 maths_op.lang.asm
lld-link.exe /nologo /out:maths_op.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin maths_op.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i float_func.lang -o float_func.lang.asm -c Main
nasm -f win32 float_func.lang.asm
lld-link.exe /nologo /out:float_func.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin float_func.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib


big_lang_cc_main.exe -i array_app.lang -o array_app.lang.asm -c Main
nasm -f win32 array_app.lang.asm
lld-link.exe /nologo /out:array_app.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin array_app.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i array_app1.lang -o array_app1.lang.asm -c Main
nasm -f win32 array_app1.lang.asm
lld-link.exe /nologo /out:array_app1.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin array_app1.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i array_func.lang -o array_func.lang.asm -c Main
nasm -f win32 array_func.lang.asm
lld-link.exe /nologo /out:array_func.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin array_func.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i array_func1.lang -o array_func1.lang.asm -c Main
nasm -f win32 array_func1.lang.asm
lld-link.exe /nologo /out:array_func1.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin array_func1.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i thread_app.lang -o thread_app.lang.asm -c Main
nasm -f win32 thread_app.lang.asm
lld-link.exe /nologo /out:thread_app.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin thread_app.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i winmain_app.lang -o winmain_app.lang.asm -c Main
nasm -f win32 winmain_app.lang.asm
lld-link.exe /nologo /out:winmain_app.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin winmain_app.lang.obj msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib


big_lang_cc_main.exe -i static_fields.lang -o static_fields.lang.asm -c Main
nasm -f win32 static_fields.lang.asm
lld-link.exe /nologo /out:static_fields.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin static_fields.lang.obj  msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i static_variables.lang -o static_variables.lang.asm -c Main
nasm -f win32 static_variables.lang.asm
lld-link.exe /nologo /out:static_variables.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin static_variables.lang.obj  msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -i ifdef.lang -o ifdef.lang.asm -c Main
nasm -f win32 ifdef.lang.asm
lld-link.exe /nologo /out:ifdef.lang.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin ifdef.lang.obj  msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -D CASE1 -D C=31 -i ifdef.lang -o ifdef.lang1.asm -c Main
nasm -f win32 ifdef.lang1.asm
lld-link.exe /nologo /out:ifdef.lang1.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin ifdef.lang1.obj  msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

big_lang_cc_main.exe -D CASE -i ifdef.lang -o ifdef.lang2.asm -c Main
nasm -f win32 ifdef.lang2.asm
lld-link.exe /nologo /out:ifdef.lang2.exe /libpath:D:\MyTasks\Compilers\bdwgc\vc32\Release /libpath:..\bin ifdef.lang2.obj  msvcrtd.lib legacy_stdio_definitions.lib user32.lib gcmt-dll.lib gc_malloc.lib lang_string_proxy.lib rtti_cmp.lib sys_exception_proxy.lib native_sys_exception32.lib lang_exception_stack.lib throw32bit.lib sys_exception_filter.lib c_stack.lib c_deque.lib jmpany.lib critical_section_proxy.lib native_array32.lib array_proxy.lib get_argc_argv.lib

array_func1.lang.exe
array_func.lang.exe p1 p2 p3
array_app1.lang.exe
array_app.lang.exe
float_func.lang.exe
maths_op.lang.exe
print_double.lang.exe
virtual_func.lang.exe
access_exp.lang.exe
catch1.lang.exe
try_catch_finally.lang.exe
access1.exe
embbed_asm.lang.exe
main_app.lang.exe p1 p2 p3
winmain_app.lang.exe "p1 param" p2 p3
static_fields.lang.exe
static_variables.lang.exe
ifdef.lang.exe
ifdef.lang1.exe
ifdef.lang2.exe
thread_app.lang.exe
