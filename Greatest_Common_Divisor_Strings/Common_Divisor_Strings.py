""" For two strings s and t, we say "t divides s"
if and only if s = t + t + t + ... + t + t
(i.e., t is concatenated with itself one or more times).

Given two strings str1 and str2, return the largest string x
such that x divides both str1 and str2. """


import time
start_time = time.time()


def gcd_of_strings(str1, str2):
    if str1 + str2 != str2 + str1:
        return ""

    def gcd(a, b):
        while b:
            a, b = b, a % b
        return a

    gcd_length = gcd(len(str1), len(str2))
    return str1[:gcd_length]

print(gcd_of_strings('ABCABC', 'ABC'))

sum(range(1, 1000000))

print(f"--- Tiempo: {(time.time() - start_time):.4f} segundos ---")
