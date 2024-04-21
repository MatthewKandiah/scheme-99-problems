#lang racket
#|
Find the last box of a list.
|#
(define (my-last lst)
  (if (null? (cdr lst))
      lst
      (my-last (cdr lst))))

