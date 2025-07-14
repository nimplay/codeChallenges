/* You are given two strings word1 and word2.
Merge the strings by adding letters in alternating order,
starting with word1. If a string is longer than the other,
append the additional letters onto the end of the merged string.

Return the merged string. */

using System;

class Program {
    static string MergeAlternately(string word1, string word2) {
        int maxLength = Math.Max(word1.Length, word2.Length);
        System.Text.StringBuilder merged = new System.Text.StringBuilder();

        for (int i = 0; i < maxLength; i++) {
            if (i < word1.Length) merged.Append(word1[i]);
            if (i < word2.Length) merged.Append(word2[i]);
        }

        return merged.ToString();
    }

    static void Main() {
        Console.WriteLine(MergeAlternately("abc", "pqr"));  // Salida: "apbqcr"
    }
}
