#lang racket

(define (repeated x n)
  (if (equal? n 0)
      '()
      (cons x (repeated x (- n 1)))))
(define (iter in out)
  (cond [(null? in) out]
        [(not (pair? (car in))) (iter (cdr in) (append out (list car in)))]
        [else (iter (cdr in) (append out (repeated (caar in) (cadar in))))]))
(define (decode lst)
  (iter lst '()))

(require rackunit)

(check-equal? (decode '((a 4) b (c 2) (a 2) d (e 4))) '(a a a a b c c a a d e e e e))
(check-equal? (decode '()) '())
