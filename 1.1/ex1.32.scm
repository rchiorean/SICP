(define (accumulate-rec combiner null-value term a next b)
  (if (> a b) null-value 
              (combiner (term a) (accumulate-rec combiner null-value term (next a) next b))))


(define (accumulate combiner null-value term a next b)
  (define (iter a result) 
    (if (> a b) result
                (iter (next a) (combiner result (term a)))))
  (iter a null-value)
)

(define (product next term a b)
  (accumulate * 1 term a next b))

(define (sum next term a b) 
  (accumulate + 0 term a next b))

(define (inc a) (+ a 1))

(define (idem a) a)

(define (fact n)
  (product inc idem 1 n))

(define (sum-range n)
  (sum inc idem 1 n))

(fact 1)

(fact 0)

(fact 10)

(sum-range 1)

(sum-range 10)

(sum-range 0)
