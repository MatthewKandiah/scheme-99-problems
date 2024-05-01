#lang racket
;; Reverse a list

(define (reverse lst)
  (define (iter in out)
	(if (null? in)
	  out
	  (iter (cdr in) (cons (car in) out))))
  (iter lst '()))

(define (reverse-rec lst)
  (if (null? lst)
	'()
	(append (reverse-rec (cdr lst)) (list (car lst)))))

(define (reverse-fold lst)
  (foldl cons '() lst))

(require rackunit)

(check-equal?
  (reverse '(a b c d))
  '(d c b a))

(check-equal?
  (reverse '(1))
  '(1))

(check-equal?
  (reverse '())
  '())

(check-equal?
  (reverse-rec '(a b c d))
  '(d c b a))

(check-equal?
  (reverse-rec '(1))
  '(1))

(check-equal?
  (reverse-rec '())
  '())

(check-equal?
  (reverse-fold '(a b c d))
  '(d c b a))

(check-equal?
  (reverse-fold '(1))
  '(1))

(check-equal?
  (reverse-fold '())
  '())
