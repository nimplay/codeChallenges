fun mergeAlternately(word1: String, word2: String): String {
    val maxLength = maxOf(word1.length, word2.length)
    val merged = StringBuilder()

    for (i in 0 until maxLength) {
        if (i < word1.length) merged.append(word1[i])
        if (i < word2.length) merged.append(word2[i])
    }

    return merged.toString()
}

fun main() {
    println(mergeAlternately("abc", "pqr")) // Salida: "apbqcr"
}
