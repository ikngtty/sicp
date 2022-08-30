(define (multiply x y)
  (define (iter x y a)
    (cond ((= y 0) a)
          ((even? y) (iter (double x) (halve y) a))
          (else (iter x (- y 1) (+ a x)))))
  (iter x y 0))

(define (double x) (* x 2))
(define (halve x) (/ x 2))