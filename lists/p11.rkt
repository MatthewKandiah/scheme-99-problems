#lang racket

(require "p09.rkt")

(define (encode-alt lst)
  (map (lambda (x)
         (if (= (cadr x) 1)
             (car x)
             x))
       (map (lambda (y)
              (list (car y) (length y)))
            (pack lst))))

(require rackunit)

(check-equal? (encode-alt '(a a a a b c c a a d e e e e)) '((a 4) b (c 2) (a 2) d (e 4)))
(check-equal? (encode-alt '()) '())
