/* For two strings s and t, we say "t divides s"
if and only if s = t + t + t + ... + t + t
(i.e., t is concatenated with itself one or more times).

Given two strings str1 and str2, return the largest string x
such that x divides both str1 and str2. */

public class Solution {
    public string GcdOfStrings(string str1, string str2) {
       if (str1 + str2 != str2 + str1) {
            return "";
        }

        int a = str1.Length;
        int b = str2.Length;

        while (b != 0) {
            int temp = b;
            b = a % b;
            a = temp;
        }

        return str1.Substring(0, a);
    }
}
