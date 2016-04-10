(define (fast-exp b n) 

(define (fast-exp-iter a p) 
 (cond ((= n 0) a)
       ((= p n) a)
       ((= a 1) (fast-exp-iter b 1))
       ((< (* 2 p) n) (fast-exp-iter  (* a a) (* 2 p)))
       (else (fast-exp-iter  (* a b) (+ p 1)))))

(fast-exp-iter 1 0))

(fast-exp 2 10)

(fast-exp 2 4)

(fast-exp 2 1)
