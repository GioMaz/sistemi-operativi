#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main(void)
{
    int fd = open("input.txt", O_RDONLY, S_IRUSR);

    size_t size = 10;
    char string[size];
    ssize_t n = read(fd, string, size-1);
    string[n] = 0;

    printf("%s\n", string);
}
