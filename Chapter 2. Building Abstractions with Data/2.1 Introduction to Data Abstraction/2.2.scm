(define (make-point a b) (cons a b))
(define (x-point point) (car point))
(define (y-point point) (cdr point))
(define (make-segment a b) (cons a b))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))
(define
  (midpoint-segment segment)
  (make-point
    (/
      (+
        (x-point (start-segment segment))
        (x-point (end-segment segment))
      )
      2
    )
    (/
      (+
        (y-point (start-segment segment))
        (y-point (end-segment segment))
      )
      2
    )
  )
)

(define
  (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")
)

(define
  seg
  (make-segment
    (make-point 2 3)
    (make-point 10 15)
  )
)
(print-point (midpoint-segment seg))
