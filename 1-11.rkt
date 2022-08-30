(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* (f (- n 2)) 2) (* (f (- n 3)) 3))))

(define (g n)
  (define (iter x y z k)
    (if (= k n)
        z
        (iter y z (+ z (* 2 y) (* 3 x)) (+ k 1))))
  (if (< n 3)
      n
      (iter 0 1 2 2)))