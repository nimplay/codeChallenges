<?php
function mergeAlternately($word1, $word2) {
    $merged = '';
    $maxLength = max(strlen($word1), strlen($word2));

    for ($i = 0; $i < $maxLength; $i++) {
        if ($i < strlen($word1)) $merged .= $word1[$i];
        if ($i < strlen($word2)) $merged .= $word2[$i];
    }

    return $merged;
}

echo mergeAlternately("abc", "pqr"); // Salida: "apbqcr"
?>
