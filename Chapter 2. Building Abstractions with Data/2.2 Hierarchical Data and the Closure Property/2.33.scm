(define
  (accumulate procedure init-value list)
  (if
    (null? list)
    init-value
    (procedure (car list) (accumulate procedure init-value (cdr list)))
  )
)
(define
  (filter procedure list)
  (if
    (null? list)
    list
    (if
      (procedure (car list))
      (cons (car list) (filter procedure (cdr list)))
      (filter procedure (cdr list))
    )
  )
)

(define
  (map p sequence)
  (accumulate
    (lambda (x y) (cons (p x) y))
    ()
    sequence)
)
(map square (list 1 2 3 4))
(define
  (append seq1 seq2)
  (accumulate cons seq2 seq1)
)
(append (list 1 2) (list 3 4))
(define
  (length sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence)
)
(length (list 1 2 3 4))
