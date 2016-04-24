(define (if-not-trivial-square n m)
 (cond ((= n (- m 1)) (remainder (square n) m))
       ((= n 1) (remainder (square n) m))
       ((= 1 (remainder (square n) m)) 0) 
       (else (remainder (square n) m))))

(define (expmod base exp m)
  (cond ((= exp 0) 1) 
        ((even? exp)  (if-not-trivial-square (expmod base (/ exp 2) m) m))
	(else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (millrab-test n)
  (define (try-it a)
    (= 1 (expmod a (- n 1) n)))

  (try-it (+ 2 (random  (- n 2)))))


(define (test-prime n)
 (define (prime? n times)
  (cond ((= 0 times) true)
        ((millrab-test n) (prime? n (- times 1)))
	(else false)))
  
  (prime? n 10))


(test-prime 13)

(test-prime 561)

(test-prime 651)

(test-prime 1105)
