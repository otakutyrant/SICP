(define
  (same-parity? x y)
  (= (remainder x 2) (remainder y 2))
)
(define
  (same-parity x . list_)
  (define
    (filter list_)
    (if
      (null? list_)
      list_
      (if
        (same-parity? x (car list_))
        (cons (car list_) (filter (cdr list_)))
        (filter (cdr list_))
      )
    )
  )
  (cons x (filter list_))
)
(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
