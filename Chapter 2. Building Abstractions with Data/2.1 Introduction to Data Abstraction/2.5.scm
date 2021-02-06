(define (cons x y) (* (expt 2 x) (expt 3 y)))
(define (n-power x n)
  (if
    (= (remainder x n) 0)
    (+ 1 (n-power (/ x n) n))
    0
  )
)
(define (car x) (n-power x 2))
(define (cdr x) (n-power x 3))
(define a (cons 1 2))
(car a)
(cdr a)
