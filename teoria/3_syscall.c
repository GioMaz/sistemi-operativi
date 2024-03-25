#include <stdio.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>

int main(void)
{
    pid_t pid1, pid2;

    // Execute getpid() system call with api
    pid1 = getpid();
    printf("pid1 %d\n", pid1);

    // Execute getpid() system call with syscall function
    pid2 = (pid_t)syscall(SYS_getpid);
    printf("pid2 %d\n", pid2);

    // Use system call with aseembly
    __asm__("movq $60, %rax"); // Specify syscall ID for exit() syscall
    __asm__("movq $69, %rdi"); // Specify argument for exit() syscall
    __asm__("syscall");
}
