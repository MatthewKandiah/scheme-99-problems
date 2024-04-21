#lang racket
#|
Find the K'th element of a list
|#

(define (element-at lst k)
  (define (aux lst count)
    (if (= 1 count)
        (car lst)
        (aux (cdr lst) (- count 1))))
  (aux lst k))
