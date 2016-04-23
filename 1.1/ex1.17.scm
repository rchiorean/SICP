(define (even? a) 
  (= 0 (remainder a 2))
)

(define (fast-mul a b) 
  (cond ((= b 0) 0)
	((even? b) (+ (fast-mul a (/ b 2)) (fast-mul a (/ b 2))))
	(else (+ a (fast-mul a (- b 1))))))


(fast-mul 10 2)

(fast-mul 2 4)

(fast-mul 3 10)

(fast-mul 2 0)

(fast-mul 3 4)
