#lang racket
#|
Find the last box of a list.
|#
(define (my-last lst)
  (cond [(null? lst) '()]
        [(null? (cdr lst)) lst]
        [else (my-last (cdr lst))]))

(provide my-last)
