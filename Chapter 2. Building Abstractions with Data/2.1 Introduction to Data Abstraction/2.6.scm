(define
  (add_1 n)
  (lambda (f) (lambda (x) (f ((n f) x))))
)
(define
  zero
  (lambda (f) (lambda (x) x)))
(define
  one
  (lambda (f) (lambda (x) (f x)))
)
(define
  two
  (lambda (f) (lambda (x) (f (f x))))
)
(define
  (+ a b)
  (lambda (f) (lambda (x) ((a f) ((b f) x)))
)
(add_1 zero)
(+ zero one)
(add_ 1 one)
(+ one one)
