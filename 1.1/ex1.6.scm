; if is a special form for which the predicate gets evaluated first followed by the corresponding
; clause. The new-if is a procedure for which both the predicate as well as both of the clauses 
; will get evaluated prior to execution of the body, due to mit-scheme having an applicative-order.

; Therefore the program will execute but will likely crash due to lack of memory (having to maintain state for the entirety of the recursion tree).

(define (new-if predicate then-clause else-clause) 
  (cond (predicate then-clause)
        (else else-clause)))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 0.00001))
 ; (< (abs (- (square guess) x)) 0.001)) ; original version

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
 (sqrt-iter 1.0 x))


;Test
;This should crash
(sqrt 9)
