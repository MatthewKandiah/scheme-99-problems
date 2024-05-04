#lang racket

(require "p23.rkt"
		 "p22.rkt")

(define (lotto-select n m)
  (random-select (range 1 m) n))

(provide lotto-select)
