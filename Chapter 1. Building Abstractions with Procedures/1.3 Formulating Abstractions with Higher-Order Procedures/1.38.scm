(define
  (conf-frac n d k)
  (define
    (f i)
    (if (= i k)
      (/ (n i) (d i))
      (/ (n i) (+ (d i) (f (+ i 1))))
    )
  )
  (f 1)
)

(define (n i) 1.0)
(define
  (d i)
  (if (= (remainder (+ i 1) 3) 0)
    (* (+ i 1) (/ 2 3))
    1.0
  )
)
(define (e k) (+ (conf-frac n d k) 2))
(e 1)
(e 5)
(e 10)
