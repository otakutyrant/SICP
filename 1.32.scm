(define
  (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner
      (term a)
      (accumulate combiner null-value term (next a) next b)
    )
  )
)

(define
  (factorial n)
  (define (term x) x)
  (define (inc x) (+ x 1))
  (accumulate * 1 term 1 inc n)
)
(factorial 1)
(factorial 2)
(factorial 3)

(define
  (accumulate combiner null-value term a next b)
  (display "\n")
  (display "I have been changed!")
  (define
    (accumulate-iterator x result)
    (if (> x b)
      result
      (accumulate-iterator (next x) (combiner (term x) result))
    )
  )
  (accumulate-iterator a null-value)
)

(factorial 1)
(factorial 2)
(factorial 3)
