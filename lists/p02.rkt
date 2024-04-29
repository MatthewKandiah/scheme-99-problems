#lang racket
#|
Find the last but one box of a list
|#
(define (my-but-last lst)
  (cond [(null? lst) '()]
        [(null? (cdr lst)) lst]
        [(null? (cddr lst)) lst]
        [else (my-but-last (cdr lst))]))

(provide my-but-last)
