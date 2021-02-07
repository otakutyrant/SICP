(define
  (accumulate procedure init-value list)
  (if
    (null? list)
    init-value
    (procedure (car list) (accumulate procedure init-value (cdr list)))
  )
)
(define (count-leaves t)
  (accumulate (lambda (x y) (+ x y)) 0
    (map (lambda (x)
        (cond
          ((null? x) x)
          ((pair? x) (count-leaves x))
          (else 1)
        )
      )
      t
    )
  )
)
(define x (cons (list 1 2) (list 3 4)))

(length x)
3
(count-leaves x)
4

(list x x)
(length (list x x))
2

(count-leaves (list x x))
8
