#lang racket
#|
Find the number of elements of a list.
|#

(define (length lst)
  (define (aux l count)
    (if (null? l)
        count
        (aux (cdr l) (+ count 1))))
  (aux lst 0))

(provide length)
