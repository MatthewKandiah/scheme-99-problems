#lang racket
#|
Find the K'th element of a list
|#

(define (element-at lst k)
  (define (aux lst count)
    (cond [(null? lst) (error "out of bounds - ELEMENT-AT")]
          [(= count k) (car lst)]
          [else (aux (cdr lst) (+ count 1))]))
  (if (< k 0)
      (error "illegal index - ELEMENT-AT: " k)
      (aux lst 1)));; using one indexing

(provide element-at)
