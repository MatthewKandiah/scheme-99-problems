#lang racket

;; Test whether a list is a palindrome

(define (palindrome? lst)
  (equal? lst (reverse lst)))

(require rackunit)

(check-false (palindrome? '(a b c d)))
(check-true (palindrome? '(a b c d d c b a)))
(check-true (palindrome? '(a)))
(check-true (palindrome? '()))
