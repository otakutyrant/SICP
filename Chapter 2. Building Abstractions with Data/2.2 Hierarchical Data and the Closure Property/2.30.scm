(define
  (square-tree tree)
  (cond
    ((null? tree) tree)
    ((pair? tree) (cons (square-tree (car tree)) (square-tree (cdr tree))))
    ((number? tree) (square tree))
  )
)
(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))
(define
  (square-tree tree)
  (map
    (lambda
      (subtree)
      (if
        (pair? subtree)
        (square-tree subtree)
        (square subtree)
      )
    )
    tree
  )
)
(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))
