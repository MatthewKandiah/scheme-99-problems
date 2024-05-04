#lang racket

;; rotate a list N places to the left

(define (rotate lst n)
  (cond
	[(null? lst) '()]
	[(< n 0) (rotate lst (+ (length lst) n))]
	[(= n 0) lst]
	[else (rotate (append (cdr lst) (list (car lst))) (- n 1))]))

(require rackunit)

(check-equal? (rotate '(a b c d e f g h) 3)
			  '(d e f g h a b c))
(check-equal? (rotate '(a b c d e f g h) -2)
			  '(g h a b c d e f))
