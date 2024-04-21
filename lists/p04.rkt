#lang racket
#|
Find the number of elements of a list.
|#

(define (length lst)
  (define (aux l count)
    (cond ((null? l) 0)
          ((null? (cdr l)) (+ count 1))
          (else (aux (cdr l) (+ count 1)))))
  (aux lst 0))
