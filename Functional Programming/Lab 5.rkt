#lang scheme


(define removeFirst(lambda (A L)
                     (cond((null? L) '()  )
                          ((equal? (car L) A) (cdr L)   )
                          (#t (cons(car L)(removeFirst A (cdr L)))))))


(define removeTop(lambda (A L)
                     (cond((null? L) '()  )
                       ((equal? (car L) A) (removeTop A (cdr L)))
                       (#t(cons(car L)(removeTop A (cdr L)))))))


(define removeAll(lambda (A L)
                     (cond((null? L) '()  )
                       ((list? (car L))
                               (cons(removeAll A (car L)) (removeAll A (cdr L))))
                       ((equal? (car L) A) (removeAll A (cdr L)))
                       (#t(cons(car L)(removeAll A (cdr L)))))))