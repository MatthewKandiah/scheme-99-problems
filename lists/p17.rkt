#lang racket

;; split list into two parts, length of first part is given

(define (split-n n lst)
  (define (aux in out cnt)
    (cond [(= cnt n) (list out in)]
          [(null? in) (list out '())]
          [else (aux (cdr in) (append out (list (car in))) (+ cnt 1))]))
  (aux lst '() 0))

(require rackunit)

(check-equal? (split-n 3 '(a b c d e f g h i j))
              '((a b c) (d e f g h i j)))
(check-equal? (split-n 4 '(a b c d e f g h i j))
              '((a b c d) (e f g h i j)))
(check-equal? (split-n 5 '(a b c d)) '((a b c d) ()))
(check-equal? (split-n 6 '()) '(() ()))
