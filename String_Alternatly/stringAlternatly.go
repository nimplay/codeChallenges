package main

import (
	"fmt"
)

func mergeAlternately(word1 string, word2 string) string {
	merged := []byte{}
	maxLength := max(len(word1), len(word2))

	for i := 0; i < maxLength; i++ {
		if i < len(word1) { merged = append(merged, word1[i]) }
		if i < len(word2) { merged = append(merged, word2[i]) }
	}

	return string(merged)
}

func main() {
	fmt.Println(mergeAlternately("abc", "pqr")) // Salida: "apbqcr"
}
