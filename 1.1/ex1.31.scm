(define (product-rec next f a b)
  (if (> a b) 1
              (* (f a) (product-rec next f (next a) b))))


(define (product next f a b)
 (define (product-iter next f a b result)
 (if (> a b) result
             (product-iter next f (next a) b (* result (f a)))))
 (product-iter next f a b 1))


(define (fact n)
  (define (inc a) (+ a 1))
  (define (idem a) a)
  (product inc idem 1 n))


(fact 0)
(fact 10)
(fact 1)


(define (pi n)
 (define (inc a) (+ a 1))
 (define (square a) (* a a))
 (define (term a) (/ (* 4 (square  a)) 
                     (* (- (* 2.0 a) 1) (+ (* 2.0 a) 1))))
 (* 2 (product inc term 1  n)))


(pi 10)

(pi 100)

(pi 1000)
