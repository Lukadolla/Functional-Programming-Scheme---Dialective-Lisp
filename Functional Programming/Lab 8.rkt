#lang scheme

(define average
  (lambda L
    (/ (apply + L) (length L)))
       )


(define power
  (lambda L
    (cond ((null? L)   1                     )
          (#t   (expt (car L) (apply power(cdr L))))
          )
       )
    )

(define chain
  (lambda L
    (cond
      ((null? (cdr L)) (car L))
      (#t     ((car L ) (apply chain(cdr L))))
      )
    )
  )