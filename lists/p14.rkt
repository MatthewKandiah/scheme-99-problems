#lang racket
;; Duplicate elements of a lst

(define duplicate
  (lambda (lst)
    (if (null? lst)
        '()
        (append (list (car lst) (car lst)) (duplicate (cdr lst))))))

(require rackunit)

(check-equal? (duplicate '(a b c c d)) '(a a b b c c c c d d))
(check-equal? (duplicate '()) '())
