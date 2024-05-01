#lang racket

(require "p09.rkt")

(define (encode lst)
  (map (lambda (x) (list (car x) (length x))) (pack lst)))

(require rackunit)

(check-equal? (encode '(a a a a b c c a a d e e e e)) '((a 4) (b 1) (c 2) (a 2) (d 1) (e 4)))
(check-equal? (encode '()) '())
