#lang racket

;; remove the k-th element from a list

(define (insert-at x lst k)
  (define (aux in out cnt)
    (cond
      [(null? in) out]
      [(= cnt k) (aux in (cons x out) (+ cnt 1))]
      [else (aux (cdr in) (cons (car in) out) (+ cnt 1))]))
  (reverse (aux lst '() 1)))

(require rackunit)

(check-equal? (insert-at 'hello '(a b c d) 2) '(a hello b c d))
