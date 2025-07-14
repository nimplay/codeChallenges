/* You are given two strings word1 and word2.
Merge the strings by adding letters in alternating order,
starting with word1. If a string is longer than the other,
append the additional letters onto the end of the merged string.

Return the merged string. */

#include <iostream>
#include <string>
using namespace std;

string mergeAlternately(string word1, string word2) {
    string merged;
    int maxLength = max(word1.size(), word2.size());

    for (int i = 0; i < maxLength; i++) {
        if (i < word1.size()) merged += word1[i];
        if (i < word2.size()) merged += word2[i];
    }

    return merged;
}

int main() {
    cout << mergeAlternately("abc", "pqr") << endl;  // Salida: "apbqcr"
    return 0;
}
