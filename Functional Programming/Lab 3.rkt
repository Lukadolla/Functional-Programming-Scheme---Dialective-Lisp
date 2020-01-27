#lang scheme

(define (product L)
  (cond((null? L)     1       )
       (#t(*(car L) (product(cdr L))))))


(define (getElement N L)
  (cond ((equal? N 1) (car L)    )
  (#t (getElement (- N 1) (cdr L)))))