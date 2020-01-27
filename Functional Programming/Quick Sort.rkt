#lang scheme

(define highestHalf
  (lambda (key L)
    (cond((null? L)    L     )
         (#t (greaterThan key L (average(map key L))))
         )
    )
  )

(define lowestHalf
  (lambda (key L)
    (cond((null? L)    L     )
         (#t (lessThan key L (average(map key L))))
         )
    )
  )

(define average
  (lambda (L)
    (cond(#t (/ (apply + L) (length L)))
    )
  )
  )

(define lessThan
  (lambda (key L X)
    (cond((null? L)       L          )
      ((> X (key(car L))) (cons(car L) (lessThan key (cdr L) X)))
      (#t (lessThan key (cdr L) X))
    )
  )
)

(define greaterThan
  (lambda (key L X)
    (cond((null? L)       L          )
      ((<= X (key(car L))) (cons(car L) (greaterThan key (cdr L) X)))
      (#t (greaterThan key (cdr L) X))
    )
  )
)

(define quickSort
  (lambda (key L)
  (cond((or (null? L) (null? (cdr L)))   L         )
       (#t (append(quickSort key (lowestHalf key L))
                  (quickSort key (highestHalf key L)))  )
       )
  )
  )
          
