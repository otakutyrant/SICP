(define (accumulate procedure init-value list)
  (if
    (null? list)
    init-value
    (procedure (car list) (accumulate procedure init-value (cdr list)))
  )
)
(define (flatmap op sequence)
  (accumulate append () (map op sequence))
)
(define (enumerate-intervals x y)
  (if (> x y)
    ()
    (cons x (enumerate-intervals (+ x 1) y))
  )
)
(define (unique-pairs n)
  (flatmap
    (lambda (i)
      (map (lambda (j) (list j i)) (enumerate-intervals 1 i))
    )
    (enumerate-intervals 1 n)
  )
)
(unique-pairs 5)
(define (unique-triples n)
  (flatmap
    (lambda (k)
      (map
        (lambda (pair) (append pair (list k)))
        (unique-pairs k)))
    (enumerate-intervals 1 n))
)
(unique-triples 3)

(define
  (filter procedure list)
  (if
    (null? list)
    list
    (if
      (procedure (car list))
      (cons (car list) (filter procedure (cdr list)))
      (filter procedure (cdr list))
    )
  )
)

(define (procedure n s)
  (filter
    (lambda (triple) (= (+ (car triple) (cadr triple) (cadr (cdr triple))) s))
    (unique-triples n)
  )
)
(procedure 4 5)
