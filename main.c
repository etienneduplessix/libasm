#include <stdio.h>
#include <stdlib.h>

extern char *ft_strdup(const char *s1);

int main() {
    const char *testStr = "ab";
    char *dupStr = ft_strdup(testStr); // Duplicate the string

    if (dupStr) {
        printf("Duplicated string: '%s'\n", dupStr);
        free(dupStr); // Free the duplicated string
    } else {
        printf("Failed to duplicate string.\n");
    }

    return 0;
}