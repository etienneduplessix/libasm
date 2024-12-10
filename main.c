#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

// Function prototypes for the assembly functions
extern size_t ft_strlen(const char *str);
extern char *ft_strcpy(char *dest, const char *src);
extern int ft_strcmp(const char *s1, const char *s2);
extern ssize_t ft_write(int fd, const void *buf, size_t count);
extern ssize_t ft_read(int fd, void *buf, size_t count);
extern char *ft_strdup(const char *s1);

int main() {
    // Test ft_strlen
    const char *testStr = "Hello, Worlhhhhhhhhhhhhhhhhhhhhhhhhhhhhhd!";
    size_t len = ft_strlen(testStr);
    printf("Length of '%s': %zu\n", testStr, len);

    // // Test ft_strcpy
    // char dest[50];
    // ft_strcpy(dest, testStr);
    // printf("Copied string: '%s'\n", dest);

    // // Test ft_strcmp
    // const char *str1 = "Hello";
    // const char *str2 = "Hello";
    // const char *str3 = "World";
    // int cmp1 = ft_strcmp(str1, str2);
    // int cmp2 = ft_strcmp(str1, str3);
    // printf("Comparison of '%s' and '%s': %d\n", str1, str2, cmp1);
    // printf("Comparison of '%s' and '%s': %d\n", str1, str3, cmp2);

    // // Test ft_write
    // const char *message = "This is a test message.\n";
    // ft_write(1, message, strlen(message)); // Write to stdout

    // // Test ft_read
    // char buffer[100];
    // printf("Enter some text: ");
    // ssize_t bytesRead = ft_read(0, buffer, sizeof(buffer) - 1); // Read from stdin
    // if (bytesRead > 0) {
    //     buffer[bytesRead] = '\0'; // Null-terminate the string
    //     printf("You entered: '%s'\n", buffer);
    // }

    // // Test ft_strdup
    // char *dupStr = ft_strdup(testStr);
    // if (dupStr) {
    //     printf("Duplicated string: '%s'\n", dupStr);
    //     free(dupStr); // Free the duplicated string
    // } else {
    //     printf("Failed to duplicate string.\n");
    // }

    return 0;
}