#|
Find the last but one box of a list
|#
(define (my-but-last lst)
  (if (or (null? (cdr lst)) (null? (cddr lst)))
	lst
	(my-but-last (cdr lst)))
  )

