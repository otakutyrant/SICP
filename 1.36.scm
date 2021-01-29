(define
  (close-enough? x y)
  (< (abs (- x y)) 0.001)
)
(define (average x y) (/ (+ x y) 2))

(define (fixed_point f x steps)
  (define y (f x))
  (newline)
  (display steps)
  (newline)
  (display y)
  (if (close-enough? x y)
    y
    (fixed_point f y (+ steps 1))
  )
)
(fixed_point (lambda (x) (/ (log 1000) (log x))) 2 1)
(fixed_point (lambda (x) (average (/ (log 1000) (log x)) x)) 2 1)
