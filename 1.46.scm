(define
  (close-enough? x y)
  (< (abs (- x y)) 0.001)
)

(define
  (iterative-improve guess-good? improve-guess)
  (lambda (guess)
    (if (guess-good? guess)
      guess
      ((iterative-improve guess-good? improve-guess) (improve-guess guess))
    )
  )
)
(define (fixed_point f x)
  (define (guess-good? guess)
    (close-enough? guess (f guess))
  )
  ((iterative-improve guess-good? f) x)
)
(fixed_point (lambda (x) (+ 1 (/ 1 x))) 1.0)
