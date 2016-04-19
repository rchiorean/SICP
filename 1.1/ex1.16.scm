(define (fast-exp-iter b n c) 
 (cond ((= n 0) c)
       ((even? n) (fast-exp-iter (* b b) (/ n 2) c))
       (else (fast-exp-iter b (- n 1) (* c b)))))

(define (fast-exp b n) 
  (fast-exp-iter b n 1)
)


(fast-exp 1 0)

(fast-exp 2 10)

(fast-exp 2 4)

(fast-exp 2 1)

(fast-exp 3 4)

(fast-exp 2 9)
