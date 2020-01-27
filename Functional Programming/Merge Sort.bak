#lang scheme

;; Different way of doing selection sort

(define selectionSort
  (lambda(key L)
    (cond((null? L)  L   )
    (#t(findMinAndSort key (car L) '() (cdr L)))
    )
    )
  )

(define findMinAndSort ;; H holds values that we've seen but isn't min yet
  (lambda(key min H L)
    (cond ((null? L)   (cons min (selectionSort key H)))
          ((< key (car L)) (key min))
          (findMinAndSort key (car L) (cons min H) (cdr L))
          (#t (findMinAndSort key min (cons(car L)H)(cdr L)))
          )
    )
  )



;;New Sort - Merge Sort (divide list in half and sort second half, and then second half. then merge the two lists by comparing values one at a time)

(define mergeSort
  (lambda (key L)
    (cond((null? L)        L     )
         ((null? (cdr L))  L     )
         (#t   (merge key (mergeSort key (firstHalf L))
                          (mergeSort key (secondHalf  L))) )
         )
    )
  )

(define firstHalf
  (lambda (L)
    (cond((null? L)  '()       )
         ((null? (cdr L))  L   )
         (#t (cons(car L) (firstHalf(cdr(cdr L)))))
         )
    )
  )

(define secondHalf
  (lambda (L)
    (firstHalf (cdr L))
    )
  )


(define merge
  (lambda (key S1 S2)
    (cond((null? S1)   S2  )
         ((null? S2)   S1  )
         ((< (key (car S1)) (key (car S2)))
          (cons (car S1) (merge key (cdr S1) S2)))
         (#t (cons (car S2) (merge key S1 (cdr S2))))
         )
    )
  )

(define testList '(1 4 3 6 5 2 8 7))

(firstHalf testList)
(secondHalf testList)
(merge (lambda(x)x) '(1 5 7) '(2 11))
(mergeSort(lambda(x)x) testList)

