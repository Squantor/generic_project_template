/*
MIT License

Copyright (c) 2019 Bart Bilos

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
/*
With help from: https://github.com/zhmu
*/
.text

.globl  _start
.type   _start,@function

_start:
        movq    %rsp,%rbp
        movq    0(%rbp),%rdi        /* argc */
        leaq    8(%rbp),%rsi        /* argv */
        leaq    8(%rsi,%rdi,8),%rdx /* envp */

        andq    $~15,%rsp
        call    main
        movq    %rax,%rdi
        call    _exit

        /* force an illegal opcode exception if _exit returns */
        ud2

.globl  syscall6
.type   syscall6,@function

syscall6:
        /* convert arguments as passed by ELF ABI to Linux syscall ABI */
        movq    %rdi, %rax  /* number */
        movq    %rsi, %rdi  /* arg0 */
        movq    %rdx, %rsi  /* arg1 */
        movq    %rcx, %rdx  /* arg2 */
        /* arg4 is already in %r8, arg5 is already in %r9 */
        syscall
        andq    %rax,%rax
        js      1f

        /* No error; result is in %rax */
        retq

1:      /* Move error number to errno and return -1 */
        negq    %rax
        movq    %rax, PC_bare_errno
        movq    $-1, %rax
        retq
