(define
  (subsets s)
  (if
    (null? s)
    (list s)
    (let
      ((rest (subsets (cdr s))))
      (append rest (map (lambda (set) (cons (car s) set)) rest))
    )
  )
)
(subsets (list 1))
