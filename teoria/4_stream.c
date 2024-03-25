#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    // Open input stream
    FILE *fin = fopen("input.txt", "r");
    if (fin == NULL) {
        printf("Could not open file \"input.txt\"\n");
        exit(1);
    }

    // Read string
    size_t size = 10;
    char string[size];
    fgets(string, size, fin);
    printf("%s\n", string);

    // Reset position (man 3 fseek)
    rewind(fin);

    // Read character
    char c;
    while ((c = fgetc(fin)) != EOF) {
        printf("%c", c);
    }

    fclose(fin);

    // Open output stream
    FILE *fout = fopen("output.txt", "w");
    if (fout == NULL) {
        printf("Could not open file \"output.txt\"\n");
        exit(1);
    }

    // Write string
    fputs("Ciao\n", fout);

    // Reset position (man 3 fseek)
    rewind(fout);

    // Write character
    fputc('M', fout);

    // Flush content from buffer to file
    // aka manually write data to output file
    // instead of waiting for the FILE* buffer to fill up
    fflush(fout);

    // stdin/stdout/stderr are of type FILE*
    FILE *sstdin = stdin;
    FILE *sstdout = stdout;
    FILE *sstderr = stderr;

    fclose(fout);
}
