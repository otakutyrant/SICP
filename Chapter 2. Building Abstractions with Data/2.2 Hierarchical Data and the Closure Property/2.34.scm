(define
  (accumulate procedure init-value list)
  (if
    (null? list)
    init-value
    (procedure (car list) (accumulate procedure init-value (cdr list)))
  )
)
(define
  (horner-eval x coefficient-sequence)
  (accumulate
    (lambda
      (this-coeff higher-terms)
      (+ this-coeff (* x higher-terms))
    )
    0
    coefficient-sequence)
)
(horner-eval 2 (list 1 3 0 5 0 1))
