(define (comp-h a b n)
  (/ (- b a) n))

(define (term f a h k)
(f (+ a (* k h))))

(define (sum-iter f a h k)
  (cond ((= k 0) 0)
        ((even? k) (+ (sum-iter f a h (- k 1)) 
	              (* 2 (term f a h k))))
	(else (+ (sum-iter f a h (- k 1)) 
	         (* 4 (term f a h k))))))

(define (sum f a h n)
  (+ (term f a h n) (term f a h 0) (sum-iter f a h (- n 1)))
)
 
(define (sim-rule f b a n)
  (/ (* (sum f a (comp-h a b n) n)
        (comp-h a b n)) 
     3))

(define (cube a) (* a a a))

(sim-rule cube 1 0 100.0)

(sim-rule cube 1 0 1000.0)
