(define (multiply x y)
  (cond ((= y 0) 0)
        ((= y 1) x)
        ((even? y) (double (multiply x (halve y))))
        (else (+ x (multiply x (- y 1))))))

(define (double x) (* x 2))
(define (halve x) (/ x 2))