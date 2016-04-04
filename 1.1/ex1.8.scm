(define (improve y x)
  (/ (+ (/ x (* y y)) (* y 2)) 3)
)

(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.001)
)

(define (sqrt-iter guess x)
  (if (good-enough? guess x) guess (sqrt-iter (improve guess x) x))
)

(define (sqrt x)
  (sqrt-iter 1.0 x)
)

(sqrt 27)
