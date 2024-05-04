#lang racket

(define (range low high)
  (define (aux out cnt)
	(if (> cnt high)
	  out
	  (aux (cons cnt out) (+ 1 cnt))))
  (cond
	[(> low high) (display "RANGE ERROR: low > high")]
	[else (reverse (aux '() low))]))

(require rackunit)

(check-equal? (range 4 9) '(4 5 6 7 8 9))

(provide range)
