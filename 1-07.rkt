(define (sqrt-iter guess x)
  (define next-guess (improve guess x))
  (if (good-enough? next-guess guess)
      next-guess
      (sqrt-iter next-guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prev-guess)
  (< (/ (abs (- guess prev-guess)) guess) 0.01))

(define (our-sqrt x)
  (sqrt-iter 1.0 x))