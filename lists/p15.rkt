#lang racket

;; replicate elements of a list a given number of times

(define (duplicate-n-times n lst)
  (define (n-copies n x)
    (if (= 1 n)
        (list x)
        (cons x (n-copies (- n 1) x))))
  (foldr append '() ;; flatmap
         (map (lambda (x) (n-copies n x))
              lst)))

(require rackunit)

(check-equal? (duplicate-n-times 3 '(a b c)) '(a a a b b b c c c))
(check-equal? (duplicate-n-times 3 '(a b c c)) '(a a a b b b c c c c c c))
