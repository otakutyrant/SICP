(define
  (reverse list_)
  (define
    (reverse_iter list_ reversed_list)
    (if
      (null? list_)
      reversed_list
      (if
        (list? (car list_))
        (reverse_iter (cdr list_) (cons (reverse (car list_)) reversed_list))
        (reverse_iter (cdr list_) (cons (car list_) reversed_list))
      )
    )
  )
  (reverse_iter list_ ())
)
(reverse ())
(reverse (list 1))
(reverse (list 1 4 9 16 25))
(define x (list (list 1 2) (list 3 4)))
(reverse x)
