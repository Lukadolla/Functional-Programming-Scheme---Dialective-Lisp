#lang scheme


(define flatten(lambda (L)
  (cond((null? L)        '()        )
       ((list? (car L)) (append (car L) (flatten (cdr L))))
       (#t   (cons(car L) (flatten (cdr L)))))))


(define positions(lambda (N A L)
            (cond((null? L)        '()        )
                 ((equal? (car L) A) (cons N (positions(+ N 1) A (cdr L))))
                 (#t         (positions(+ N 1) A (cdr L))))))
