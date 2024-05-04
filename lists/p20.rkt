#lang racket

;; remove the k-th element from a list

(define (remove-at lst k)
  (define (aux in out cnt)
	(cond
	  [(null? in) out]
	  [(= cnt k) (aux (cdr in) out (+ cnt 1))]
	  [else (aux (cdr in) (cons (car in) out) (+ cnt 1))]))
  (reverse (aux lst '() 1)))

(require rackunit)

(check-equal? (remove-at '(a b c d) 2) '(a c d))

(provide remove-at)
