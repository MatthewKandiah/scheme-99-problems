#lang racket

;; pack consecutive duplicates into sublists

(define (pack lst)
  (define (aux in out c)
    (cond
      [(null? in) out]
	  [(equal? c (car in)) 
	   (aux (cdr in) (cons (cons (car in) (car out)) (cdr out)) c)]
	  [else
		(aux (cdr in) (cons (list (car in)) out) (car in))]))
  (if (null? lst)
      '()
      (reverse (aux (cdr lst) (list (list (car lst))) (car lst)))))

(require rackunit)

(check-equal?
 (pack '(a a a a b c c a a d e e e e))
 '((a a a a) (b) (c c) (a a) (d) (e e e e)))
