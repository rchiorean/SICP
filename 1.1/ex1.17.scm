(define (even? a) 
  (= 0 (remainder a 2))
)

(define (fast-mul-iter a b c) 
  (cond ((= b 0) c)
	((even? b) (fast-mul-iter (+ a a) (/ b 2) c))
	(else (fast-mul-iter a (- b 1) (+ c a)))))

(define (fast-mul a b)
  (fast-mul-iter a b 0)
)

(fast-mul 10 2)

(fast-mul 2 4)

(fast-mul 3 10)

(fast-mul 2 0)

(fast-mul 3 4)
