(define
  (filtered_accumulate filter combiner null-value term a next b)
  (if (> a b)
    null-value
    (if (filter a)
      (combiner
        (term a)
        (filtered_accumulate filter combiner null-value term (next a) next b)
      )
      (combiner
        null-value
        (filtered_accumulate filter combiner null-value term (next a) next b)
      )
    )
  )
)

(define
  (factorial n)
  (define (term x) x)
  (define (inc x) (+ x 1))
  (define (filter x) #t)
  (filtered_accumulate filter * 1 term 1 inc n)
)
(factorial 1)
(factorial 2)
(factorial 3)

(define (smallest-divisor n) (find-divisor n 2))
(define
  (find-divisor n test-divisor)
  (cond
    ((> (square test-divisor) n) n)
    ((divides? test-divisor n) test-divisor)
    (else (find-divisor n (+ test-divisor 1)))
  )
)
(define (divides? a b) (= (remainder b a) 0))
(define (prime? n) (= n (smallest-divisor n)))


(define
  (procedure_1 a b)
  (define (inc x) (+ x 1))
  (filtered_accumulate prime? + 0 square a inc b)
)
(procedure_1 0 5)

(define
  (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))
  )
)

(define
  (procedure_2 n)
  (define (inc x) (+ x 1))
  (define (filter x) (= 1 (gcd x n)))
  (define (identify x) x)
  (filtered_accumulate filter * 1 identify 1 inc n)
)
(procedure_2 5)
