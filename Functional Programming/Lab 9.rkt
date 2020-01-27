#lang scheme
;;Selection Sort
(define minKey
  (lambda (key L)
    (cond((null? (cdr L)) (car L)                            )
         ((<= (key (car L)) (key(minKey key (cdr L)))) (car L))
         (#t (minKey key (cdr L)))
         )
    )
  )


(define removeMinKey
  (lambda (key L)
    (cond((null? L)           '()                        )
         ((null? (cdr L))     '()                        )                     
         ((equal? (car L) (minKey key L)) (cdr L))
         (#t (cons (car L) (removeMinKey key (cdr L)))))
    )
  )

(define selectionSort
  (lambda (key L)
    (cond((null? L)     '()        )
         (#t (cons (minKey key L) (selectionSort key (removeMinKey key L))))
         )
    )
  )