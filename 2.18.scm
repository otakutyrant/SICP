(define
  (reverse list_)
  (define
    (reverse_iter list_ reversed_list)
    (if
      (null? list_)
      reversed_list
      (reverse_iter (cdr list_) (cons (car list_) reversed_list))
    )
  )
  (reverse_iter list_ ())
)
(reverse ())
(reverse (list 1))
(reverse (list 1 4 9 16 25))
