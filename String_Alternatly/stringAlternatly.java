/* You are given two strings word1 and word2.
Merge the strings by adding letters in alternating order,
starting with word1. If a string is longer than the other,
append the additional letters onto the end of the merged string.

Return the merged string. */

public class MergeStrings {
    public static String mergeAlternately(String word1, String word2) {
        int maxLength = Math.max(word1.length(), word2.length());
        StringBuilder merged = new StringBuilder();

        for (int i = 0; i < maxLength; i++) {
            if (i < word1.length()) merged.append(word1.charAt(i));
            if (i < word2.length()) merged.append(word2.charAt(i));
        }

        return merged.toString();
    }

    public static void main(String[] args) {
        System.out.println(mergeAlternately("abc", "pqr"));  // Salida: "apbqcr"
    }
}
