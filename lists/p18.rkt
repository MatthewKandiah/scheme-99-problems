#lang racket

;; Extract a slice from a list, both indices inclusive, 1-indexed

(define (slice lst start end)
  (define (aux in out cnt)
	(cond [(null? in) out]
		  [(< cnt start) (aux (cdr in) out (+ cnt 1))]
		  [(<= cnt end) (aux (cdr in) (cons (car in) out) (+ cnt 1))]
		  [else out]))
  (reverse (aux lst '() 1)))

(require rackunit)

(check-equal?
 (slice '(a b c d e f g h i j k) 3 7)
 '(c d e f g))
(check-equal?
 (slice '(a b c d) 3 7)
 '(c d))
(check-equal?
 (slice '(a b c d) 7 14)
 '())
