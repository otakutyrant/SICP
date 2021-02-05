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
(define (d i) 1.0)
(conf-frac n d 10)
(conf-frac n d 15)
(conf-frac n d 25)

(define
  (conf-frac n d k)
  (define
    (f i result)
    (if (> i k)
      result
      (f
        (+ i 1)
        (/
          (n (- (+ k 1) i))
          (+ (d (- (+ k 1) i)) result)
        )
      )
    )
  )
  (f 1 0)
)

(conf-frac n d 10)
(conf-frac n d 15)
(conf-frac n d 25)
