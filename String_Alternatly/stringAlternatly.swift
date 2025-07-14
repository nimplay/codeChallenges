/* You are given two strings word1 and word2.
Merge the strings by adding letters in alternating order,
starting with word1. If a string is longer than the other,
append the additional letters onto the end of the merged string.

Return the merged string. */
func mergeAlternately(_ word1: String, _ word2: String) -> String {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
    let chars1 = Array(word1)
    let chars2 = Array(word2)
    var merged = ""
    let maxLength = max(chars1.count, chars2.count)

    for i in 0..<maxLength {
        if i < chars1.count { merged.append(chars1[i]) }
        if i < chars2.count { merged.append(chars2[i]) }
    }

    return merged
}

print(mergeAlternately("abc", "pqr")) // Salida: "apbqcr"
}

print(mergeAlternately("abc", "pqr")) // Salida: "apbqcr"
