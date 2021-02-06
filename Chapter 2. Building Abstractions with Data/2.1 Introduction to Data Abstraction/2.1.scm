(define
  (make-rat a b)
  (define n (/ a (gcd a b)))
  (define d (/ b (gcd a b)))
  (if (< d 0)
    (cons (- n) (- d))
    (cons n d)
  )
)

(define a (make-rat 1 1))
(car a)
(define a (make-rat -1 1))
(car a)
(define a (make-rat 1 -1))
(car a)
(define a (make-rat -1 -1))
(car a)

(define (numer x) (car x)) 
(define (denom x) (cdr x)) 

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x))
)
(print-rat (make-rat 6 9)) ; 2/3
(print-rat (make-rat -6 9)) ; -2/3
(print-rat (make-rat 6 -9)) ; -2/3
(print-rat (make-rat -6 -9)) ; 2/3
