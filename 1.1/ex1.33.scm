(define (filtered-accumulate filter combiner null-value term a next b)
  (define (iter a result)
    (cond ((> a b) result)
          ((filter a) (iter (next a) (combiner result (term a))))
          (else  (iter (next a) result))))
  (iter a null-value))

(define (identity a) true)

(define (idem a) a)

(define (inc a) (+ a 1))

(define (fact n)
  (filtered-accumulate identity * 1 idem 1 inc 10 ))

(define (smallest-divisor a n)
  (cond ((> (square a) n) n)
        ((= 0 (remainder n a)) a)
	(else (smallest-divisor (+ a 1) n))))

(define (prime? n)
  (= n (smallest-divisor 2 n)))

(define (gcd a b)
( if (= b 0) a
             (gcd b (remainder a b))))

(define (relative-prime? a) 
  (define (temp b) 
    (= 1 (gcd  b a)))
  temp)

(define (sum-of-prime-squares a b)
  (filtered-accumulate prime? + 0 square a inc b))

(sum-of-prime-squares 2 10)

(define (sum-of-gcd n)
  (filtered-accumulate (relative-prime? n) * 1 idem 2 inc n))

(sum-of-gcd 10)
