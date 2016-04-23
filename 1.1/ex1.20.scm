; In the applicative-order the remainder is evaluated 4 times, before the gcd procedure is called; 
; In the normal-order, the remainder is evaluated:
; - for every comparison after the first one 
; - for the computation of the result (4 times)
; 1st comp: 0
; 2nd comp: 1 
; 3rd comp: 2
; 4th comp: 4 (2 for b, one for a)
; 5th comp: 7 (4 for b, 2 for a)
; Total 18 times

(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))

(gcd 206 40)
