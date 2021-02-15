(define
  (make-monitored f)
  (let
    ((calls-count 0))
    (lambda (x)
      (cond
        ((eq? x 'how-many-calls?) calls-count)
        ((eq? x 'reset-count) (begin (set! calls-count 0) calls-count))
        (else
          (begin
            (set! calls-count (+ calls-count 1))
            (f x)
          )
        )
      )
    )
  )
)
(define f (make-monitored sqrt))
(f 4)
(f 8)
(f 'how-many-calls?)
(f 'reset-count)
(f 16)
(f 'how-many-calls?)
