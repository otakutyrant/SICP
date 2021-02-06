; 1
(define
  (make-mobile left right)
  (list left right)
)
(define
  (make-branch length structure)
  (list length structure)
)

(define (left-branch mobile) (car mobile))
(define (right-branch mobile) (car (cdr mobile)))
(define (branch-length branch) (car branch))
(define (branch-structure branch) (car (cdr branch)))

; 2
(define
  (total-weight structure)
  (if
    (pair? structure)
    (+
      (total-weight (branch-structure (left-branch structure)))
      (total-weight (branch-structure (right-branch structure)))
    )
    structure
  )
)

; 3
(define
  (torque branch)
  (* (branch-length branch) (total-weight (branch-structure branch)))
)
(define
  (blanced? structure)
  (if
    (number? structure)
    #t
    (and
      (=
        (torque (left-branch structure))
        (torque (right-branch structure))
      )
      (blanced? (branch-structure (left-branch structure)))
      (blanced? (branch-structure (right-branch structure)))
    )
  )
)
(define a (make-mobile (make-branch 2 3) (make-branch 2 3))) 
(total-weight a)
(define d (make-mobile (make-branch 10 a) (make-branch 12 5)))
(blanced? d)

; 4 only two changes
(define (make-mobile left right) (cons left right))
(define
  (make-branch length structure)
  (cons length structure)
)
(define (right-branch mobile) (cdr mobile))
(define (branch-structure branch) (cdr branch))
(define a (make-mobile (make-branch 2 3) (make-branch 2 3))) 
(total-weight a)
(define d (make-mobile (make-branch 10 a) (make-branch 12 5)))
(blanced? d)
