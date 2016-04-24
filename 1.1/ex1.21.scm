(define (smallest-divisor a n)
  (cond ((> (square a) n) n)
        ((= 0 (remainder n a)) a)
	(else (smallest-divisor (+ a 1) n))))

(smallest-divisor 2 199)

(smallest-divisor 2 1999)

(smallest-divisor 2 19999)
