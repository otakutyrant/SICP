(define
  (sum term a next b)
  (if (> a b)
    0
    (+
      (term a)
      (sum term (next a) next b)
    )
  )
)

(define
  (integral f a b dx)
  (define (next x) (+ x dx))
  (*
    dx
    (sum f (+ a (/ dx 2)) next b)
  )
)
(define (cube x) (* x x x))
(integral cube 0 1 0.01)
(integral cube 0 1 0.001)

(define
  (simpson f a b n)
  (define (inc x) (+ x 1))
  (define h (/ (- b a) n))
  (define
    (term steps)
    (define factor
      (conl
        ((or (= steps 0) (= steps n)) 1)
        ((even? steps) 2)
        (else 4)
      )
    )
    (define x (+ a (* steps h)))
    (* factor (f x))
  )
  (*
    (/ h 3)
    (sum term 0 inc n)
  )
)
(simpson cube 0 1 100)
(simpson cube 0 1 1000)
