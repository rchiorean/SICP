; When attempting to evaluate (f f), the interpreter will make a call to (f 2).
; This will try to be interpreted to (2 2). Since "2" doesn't take any parameters,
; it can't evaluate it. More specifically, it can't apply the first "2" to the paratemeter "2".
(define (f g) 
  (g 2))

(define (square x) 
  (* x x))

(square 2)

(f square)

(f (lambda (z) (* z (+ z 1))))

(f f)
