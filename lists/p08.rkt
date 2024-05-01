#lang racket

;; eliminate consecutive duplicates of list elements

(define (compress lst)
  (define (aux in out c)
    (cond [(null? in)
           out]
          [(equal? c (car in))
           (aux (cdr in) out c)]
          [else
           (aux (cdr in) (append out (list (car in))) (car in))]))
  (if (null? lst)
      '()
      (aux (cdr lst) (list (car lst)) (car lst))))

(require rackunit)

(check-equal? (compress '(a a a a b c c a a d e e e e)) '(a b c a d e))
