object MergeStrings {
  def mergeAlternately(word1: String, word2: String): String = {
    val maxLength = math.max(word1.length, word2.length)
    val merged = new StringBuilder

    for (i <- 0 until maxLength) {
      if (i < word1.length) merged.append(word1.charAt(i))
      if (i < word2.length) merged.append(word2.charAt(i))
    }

    merged.toString
  }

  def main(args: Array[String]): Unit = {
    println(mergeAlternately("abc", "pqr")) // Salida: "apbqcr"
  }
}
