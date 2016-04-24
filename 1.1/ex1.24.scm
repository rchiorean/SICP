; Timings not computed correctly

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp) (remainder (square (expmod base (/ exp 2) m)) 
	                        m))
	(else (remainder (* base (expmod base (- exp 1) m)) 
	                 m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))

  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
	(else false)))

(define (timed-prime-test n) 
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 10)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
   (display " *** ")
   (display elapsed-time))

(define (even? n)
  (= (remainder n 2) 0))

(define (get-next-prime start)
  (cond ((even? start) (get-next-prime (+ 1 start)))
        ((fast-prime? start 10) start)
	(else (get-next-prime (+ start 2)))))

; Asummes start is an odd number
(define (search-for-primes start count)
  (timed-prime-test (get-next-prime start))
  (if (> count 1) (search-for-primes ( + (get-next-prime start) 1) (- count 1)))
)

(search-for-primes 1000 3)
(search-for-primes 10000 3)
(search-for-primes 100000 3)
(search-for-primes 1000000 3)


