#lang racket

;; Flatten nested lists

(define (flatten-tree tree)
  (cond
	[(null? tree) '()]
	[(pair? (car tree)) (append (flatten-tree (car tree)) (flatten-tree (cdr tree)))]
	[else (cons (car tree) (flatten-tree (cdr tree)))]))

(require rackunit)

(check-equal? (flatten-tree '(a (b (c d) e))) '(a b c d e))
(check-equal? (flatten-tree '(a b c d e)) '(a b c d e))
(check-equal? (flatten-tree '()) '())
