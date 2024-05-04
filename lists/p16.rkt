#lang racket

;; drop every n-th element from a list

(define (drop-nth n lst)
  (define (aux in out cnt)
	(cond [(null? in) out]
		  [(= 0 (modulo cnt n)) (aux (cdr in) out (+ 1 cnt))]
		  [else (aux (cdr in) (append out (list (car in))) (+ 1 cnt))]))
  (aux lst '() 1))

(require rackunit)

(check-equal? (drop-nth 3 '(1 2 3 4 5 6 7 8 9 10))
			  '(1 2 4 5 7 8 10))

(check-equal? (drop-nth 1 '(1 2 3 4 5 6 7 8 9 10))
			  '())

(check-equal? (drop-nth 1 '())
			  '())
