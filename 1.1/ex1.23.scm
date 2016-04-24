; Timings not computed correctly

(define (next test-devisor)
  (cond ((= test-devisor 2) 3)
        (else (+ test-devisor 2))))

(define (smallest-divisor test-devisor n)
  (cond ((> (square test-devisor) n) n)
        ((= 0 (remainder n test-devisor)) test-devisor)
	(else (smallest-divisor (next test-devisor) n))))

(define (prime? n)
  (= n (smallest-divisor 2 n)))

(define (timed-prime-test n) 
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
   (display " *** ")
   (display elapsed-time))

(define (even? n)
  (= (remainder n 2) 0))

(define (search-for-primes start count)
  (timed-prime-test (get-next-prime start))
  (if (> count 1) (search-for-primes ( + (get-next-prime start) 1) (- count 1)))
)

(define (get-next-prime start)
  (cond ((even? start) (get-next-prime (+ 1 start)))
        ((prime? start) start)
	(else (get-next-prime (+ start 2)))))



(search-for-primes 1000 3)
(search-for-primes 10000 3)
(search-for-primes 100000 3)
(search-for-primes 1000000 3)


