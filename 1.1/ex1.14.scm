; The count-change for 11 cents will yield 4. 
; The maximum depth is reached on the branch which would have the kind-of-coins equal to 1. 
; Therefore, the maximum depth is n / 1. The order of growth is 2^n, since it will branch in
; two at every call until one of the stops conditions is met.

; Below copied from the book for verification purposes
(define (count-change amount)
  (cc amount 5))
  (define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= kinds-of-coins 0)) 0)
	  (else (+ (cc amount
	               (- kinds-of-coins 1))
		    (cc (- amount
			   (first-denomination kinds-of-coins))
			kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
   (cond ((= kinds-of-coins 1) 1)
         ((= kinds-of-coins 2) 5)
         ((= kinds-of-coins 3) 10)
         ((= kinds-of-coins 4) 25)
         ((= kinds-of-coins 5) 50)))


(count-change 11)
