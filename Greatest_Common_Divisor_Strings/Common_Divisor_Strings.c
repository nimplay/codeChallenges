/* For two strings s and t, we say "t divides s"
if and only if s = t + t + t + ... + t + t
(i.e., t is concatenated with itself one or more times).

Given two strings str1 and str2, return the largest string x
such that x divides both str1 and str2. */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* gcdOfStrings(char* str1, char* str2) {
    int len1 = strlen(str1);
    int len2 = strlen(str2);

    // Verificar compatibilidad de concatenación
    char* temp1 = malloc(len1 + len2 + 1);
    char* temp2 = malloc(len1 + len2 + 1);

    strcpy(temp1, str1);
    strcat(temp1, str2);

    strcpy(temp2, str2);
    strcat(temp2, str1);

    if (strcmp(temp1, temp2) != 0) {
        free(temp1);
        free(temp2);
        return "";
    }

    free(temp1);
    free(temp2);

    // Calcular GCD
    int a = len1, b = len2;
    while (b) {
        int t = b;
        b = a % b;
        a = t;
    }
    int gcdLen = a;

    // Crear string resultado
    char* result = malloc(gcdLen + 1);
    strncpy(result, str1, gcdLen);
    result[gcdLen] = '\0';

    return result;
}
