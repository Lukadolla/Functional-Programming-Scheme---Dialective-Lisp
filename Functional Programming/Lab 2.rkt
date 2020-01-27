#lang scheme

(define reciprocals(lambda(N)(cond((= N 1) 1 )((> N 1)(+ (/ 1 N) (reciprocals(- N 1)))) )))


(define changingFractions (lambda (X Y) (cond
                                         ((and (> X 0) (> Y 0)) (+ (/ X Y) (changingFractions (- X 1) (- Y 1))))
                                         ((or (= X 0) (= Y 0)) 0)
                                         )))

