(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 0.00001))
 ; (< (abs (- (square guess) x)) 0.001)) ; original version

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
 (sqrt-iter 1.0 x))


; Tests
 (sqrt 9)
;Value: 3.000000001396984

 (sqrt 625)
;Value: 25.000000063076968

