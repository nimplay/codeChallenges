""" You are given two strings word1 and word2.
Merge the strings by adding letters in alternating order,
starting with word1. If a string is longer than the other,
append the additional letters onto the end of the merged string.

Return the merged string. """

import time
start_time = time.time()

def merge_alternately(word1='abc', word2='def'):
    merged = []
    max_length = max(len(word1), len(word2))

    for i in range(max_length):
        if i < len(word1):
            merged.append(word1[i])
        if i < len(word2):
            merged.append(word2[i])

    return ''.join(merged)
print(merge_alternately('abc', 'def'))


sum(range(1, 1000000))

print(f"--- Tiempo: {(time.time() - start_time):.4f} segundos ---")
