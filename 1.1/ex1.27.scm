(define (expmod base exp m)
 (cond ((= exp 0) 1)
       ((even? exp) (remainder (square (expmod base (/ exp 2) m)) 
                               m))
       (else (remainder (* base (expmod base (- exp 1) m)) 
                        m ))))


(define (test-car n)
  
  (define (is-congruent? n a)
   (= a (expmod a n n)))

  (define (test-car-iter n a)
    (cond ((> a (- n 1)) true)
          ((is-congruent? n a) (test-car-iter n (+ a 1)))
	  (else false)))
  
  (test-car-iter n 1))

(test-car 561)

(test-car 1105)

(test-car 30)

(test-car 20)
