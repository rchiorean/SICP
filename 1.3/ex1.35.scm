; Dividing the golden ratio function by x results in x = 1 + 1/x. 
; TODO: implement fixed-point procedure
(define (find-golden-ratio)
  (define tolerance 0.0001)  
  (define (close-enough? v1 v2)
   (< (abs (- v2 v1)) tolerance)) 
  (define (find-fixed-point f first-guess)
   (define (try guess) 
    (let ((next (f guess))) 
      (if (close-enough? guess next) next (try next))))
   (try first-guess))
  (find-fixed-point (lambda (x) (+ 1.0 (/ 1.0 x))) 10))

(find-golden-ratio)
