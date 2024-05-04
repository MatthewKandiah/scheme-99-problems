#lang racket

(require "p03.rkt"
		 "p20.rkt")

(define (random-select lst n)
  (define (aux in out cnt)
	(cond [(null? in) out]
		  [(> cnt n) out]
		  [else 
			(let ([index (random 1 (+ (length in) 1))])
			  (aux
				(remove-at in index)
				(cons (element-at in index) out)
				(+ 1 cnt)))]))
  (aux lst '() 1))

(provide random-select)
