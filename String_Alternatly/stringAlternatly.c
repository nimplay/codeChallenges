/* You are given two strings word1 and word2.
Merge the strings by adding letters in alternating order,
starting with word1. If a string is longer than the other,
append the additional letters onto the end of the merged string.

Return the merged string. */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* mergeAlternately(const char* word1, const char* word2) {
    int len1 = strlen(word1);
    int len2 = strlen(word2);
    int maxLen = len1 > len2 ? len1 : len2;
    char* merged = malloc(len1 + len2 + 1); // +1 para el null-terminator

    int k = 0;
    for (int i = 0; i < maxLen; i++) {
        if (i < len1) merged[k++] = word1[i];
        if (i < len2) merged[k++] = word2[i];
    }
    merged[k] = '\0';
    return merged;
}

int main() {
    char* result = mergeAlternately("abc", "pqr");
    printf("%s\n", result); // Salida: "apbqcr"
    free(result);
    return 0;
}
