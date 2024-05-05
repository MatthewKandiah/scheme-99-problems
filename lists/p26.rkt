#lang racket

;; generate all combinations of K distinct elements from a set of N elements.

(define (combination k lst)
  (define (aux in intermediates out)
    (if (null? in)
        out
        (let
            ([updated-intermediates (append (cons (list (car in)) (map (lambda (x) (cons (car in) x)) intermediates)) intermediates)])
          (aux
           (cdr in)
           (filter (lambda (x) (< (length x) k)) updated-intermediates)
           (append out
                   (filter (lambda (x) (= (length x) k)) updated-intermediates))))))
  (aux lst '() '()))

(provide combination)

(require rackunit)

(define (factorial n)
  (if (<= n 1)
      1
      (* n (factorial (- n 1)))))
(define (choose n r)
  (/ (factorial n) (* (factorial r) (factorial (- n r)))))
(check-equal? (choose 12 3) 220)

(define k-list '(1 2 3 4 5 6 7 8 9 10 11))
(define element-list '(a b c d e f g h i j k l m))
(for-each
 (lambda (k) (check-equal?
              (length (combination k element-list))
              (choose (length element-list) k)))
 k-list)
