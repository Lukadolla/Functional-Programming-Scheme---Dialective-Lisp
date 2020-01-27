#lang scheme

(define consToAll
  (lambda (A L)
    (cond( (null? L)  '()                              )
         ( #t      (cons (cons A (car L)) (consToAll A (cdr L)       )
                         )
                   )
         )
    )
  )

(define powerset
  (lambda (L)
    (cond( (null? L)         '(())                                 )
         ( #t (append(powerset(cdr L))(consToAll(car L)(powerset (cdr L))))))))
