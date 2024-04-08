#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <wait.h>

int main()
{
    int rv;

    // Famiglia exec*
    // l -> list of arguments (variadic arguments)
    // v -> vector of arguments
    // p -> uses PATH environment variable to search binary
    // e -> vector of environment variables

    // char *const args1[] = { "ls", "-al", NULL };
    // rv = execv("/bin/ls", args1);
    // printf("rv %d\n", rv);

    // char *const args2[] = { "CIAO=ciao", NULL };
    // rv = execle("/bin/ls", "ls", "-al", NULL, args2);
    // printf("rv %d\n", rv);

    // // System
    // rv = system("echo ciao ; $0");
    // printf("rv %d\n", WEXITSTATUS(rv));
    // rv = system("exit 69");
    // printf("rv %d\n", WEXITSTATUS(rv));

    return 0;
}
