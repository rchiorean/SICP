; Recursive process; recursive procedure;
(define (f n)
  (if (< n 3) n
  (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3(f (- n 3))))
  )
)

(f 2)

(f 4)


; Iterative process;

(define (next-element a b c)
  (+ c (* 2 b) (* 3 a))
)

(define (g-iter first second third counter) 
 (if (= counter 0) (next-element first second third) 
  (g-iter second third (next-element first second third) (- counter 1))
 )
)

(define (g n)
 (if (< n 3) n
 (g-iter 0 1 2 (- n 3)))
)

(g 2)

(g 3)

(g 4)
