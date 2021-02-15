(define
  (make-accumulator init-sum)
  (let
    ((sum init-sum))
    (lambda (addend)
      (begin
        (set! sum (+ sum addend))
        sum
      )
    )
  )
)
(define accumulator (make-accumulator 50))
(accumulator 50)
