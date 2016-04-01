(define (sum a b c) (
cond ((and (> a c) (> b c)) (+ (* a a) (* b b)))
     ((and (> c b) (> a b)) (+ (* a a) (* c c)))
     (else (+ (* b b) (* c c)) )
))

(sum 10 10 10)
(sum 1 2 2)
(sum 1 2 3)
(sum 3 2 1)
(sum 2 3 1)
