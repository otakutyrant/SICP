(define
  (accumulate procedure init-value list)
  (if
    (null? list)
    init-value
    (procedure (car list) (accumulate procedure init-value (cdr list)))
  )
)
(define (accumulate-n op init seqs)
  (if (null? (car seqs))
    ()
    (cons
      (accumulate op init
        (map (lambda (x) (car x)) seqs)
      )
      (accumulate-n op init
        (map (lambda (x) (cdr x)) seqs)
      )
    )
  )
)
(define a (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))
(accumulate-n + 0 a)
