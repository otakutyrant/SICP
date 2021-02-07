(define (accumulate procedure init-value list)
  (if
    (null? list)
    init-value
    (procedure (car list) (accumulate procedure init-value (cdr list)))
  )
)
(define (flatmap op sequence)
  (accumulate append () (map op sequence))
)
(define (enumerate-intervals x y)
  (if (> x y)
    ()
    (cons x (enumerate-intervals (+ x 1) y))
  )
)
(define (unique-pairs n)
  (flatmap
    (lambda (i)
      (map (lambda (j) (list j i)) (enumerate-intervals 1 (- i 1)))
    )
    (enumerate-intervals 1 n)
  )
)
(unique-pairs 5)