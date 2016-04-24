; The below procedure is no longer O(logn) but O(n) due to the evaluator evaluating separately both parameters of the * operation rather than once before passing it into the "square" method

; O(n)
(define (expmod base exp m)
 (cond ((= exp 0) 1)
       ((even? exp) (remainder (* (expmod base (/ exp 2) m) 
                                  (expmod base (/ exp 2) m)) 
                               m))
       (else (remainder (* base (expmod base (- exp 1) m)) 
                        m ))))

; O(logn)
(define (expmod base exp m)
 (cond ((= exp 0) 1)
       ((even? exp) (remainder (square (expmod base (/ exp 2) m)) 
                               m))
       (else (remainder (* base (expmod base (- exp 1) m)) 
                        m ))))
