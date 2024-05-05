#lang racket

(require "p23.rkt")

(define (random-perm lst)
  (random-select lst (length lst)))

(provide random-perm)
