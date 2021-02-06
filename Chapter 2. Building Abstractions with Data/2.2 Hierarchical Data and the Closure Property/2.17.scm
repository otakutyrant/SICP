(define
  (last-pair list_)
  (if
    (null? (cdr list_))
    (car list_)
    (last-pair (cdr list_))
  )
)
(last-pair (list 23))
(last-pair (list 23 72 149 34))
