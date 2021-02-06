(define
  (for-each procedure list_)
  (define (distort x) #t)
  (distort (map procedure list_))
)
(for-each (lambda (x) (newline) (display x)) (list 57 321 88))
