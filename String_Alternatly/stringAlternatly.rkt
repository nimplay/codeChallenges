#lang racket

(define/contract (merge-alternately word1 word2)
  (-> string? string? string?)
      (let loop ([i 0] [result ""])
    (cond
      [(and (>= i (string-length word1)) (>= i (string-length word2))) result]
      [else
       (loop (+ i 1)
             (string-append result
                          (if (< i (string-length word1)) (string (string-ref word1 i)) "")
                          (if (< i (string-length word2)) (string (string-ref word2 i)) "")))])))

(displayln (merge-alternately "abc" "pqr")) ; Salida: "apbqcr"
