#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main(void)
{
    int fd1, fd2, fd3;
    ssize_t n;
    size_t size = 10;
    char string[size];

    // Read first 8 characters
    fd1 = open("input.txt", O_RDONLY, S_IRUSR);
    n = read(fd1, string, size-1);
    string[n] = 0;
    printf("%s\n", string);

    // Duplicate file descriptor and read next 8 characters
    fd2 = dup(fd1);
    n = read(fd2, string, size-1);
    string[n] = 0;
    printf("%s\n", string);

    // Duplicate file descriptor to arbitrary number
    // and read the next 8 characters
    fd3 = dup2(fd2, 69);
    n = read(fd3, string, size-1);
    string[n] = 0;
    printf("%s\n", string);

    close(fd3);
}
