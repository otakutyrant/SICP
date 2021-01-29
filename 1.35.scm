(define
  (close-enough? x y)
  (< (abs (- x y)) 0.001)
)

(define (fixed_point f x)
  (define y (f x))
  (if (close-enough? x y)
    y
    (fixed_point f y)
  )
)
(fixed_point (lambda (x) (+ 1 (/ 1 x))) 1.0)
