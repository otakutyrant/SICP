(define
  (product term a next b)
  (if (> a b)
    1
    (*
      (term a)
      (product term (next a) next b)
    )
  )
)

(define
  (factorial n)
  (define (term x) x)
  (define (inc x) (+ x 1))
  (product term 1 inc n)
)
(factorial 1)
(factorial 2)
(factorial 3)

(define
  (pi n)
  (define (term x) (if (even? x) 
    (/ (+ x 2) (+ x 1))
    (/ (+ x 1) (+ x 2))
  ))
  (define (next x) (+ x 1))
  (*
    (product term 1 next n)
    4.0
  )
)
(pi 1)
(pi 2)
(pi 3)
(pi 10)
(pi 100)
(pi 1000)
(pi 10000)

(define
  (product term a next b)
  (display "\n")
  (display "I have been changed!")
  (define
    (product-iterate x result)
    (if (> x b)
      result
      (product-iterate (next x) (* result (term x))))
  )
  (product-iterate a 1)
)

(pi 1)
(pi 2)
(pi 3)
(pi 10)
(pi 100)
(pi 1000)
(pi 10000)
