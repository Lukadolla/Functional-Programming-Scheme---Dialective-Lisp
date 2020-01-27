#lang scheme


(define removeN(lambda (N L)
                 (if(= N 0) L
                      (if(null? L) L
                      (removeN (- N 1)(cdr L))))))

(define everySecond(lambda (L)
  (if (null? L) L
      (if(null? (cdr L)) L
        (cons (car L) (everySecond (cdr(cdr L))) ) )
      )
   )
 )