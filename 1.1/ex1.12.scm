(define (pasc row element)
  (cond ((= element 1) 1)
        ((= row 2) 1)
	((= element row) 1)
	(else (+ (pasc (- row 1) (- element 1)) (pasc (- row 1) element)))
  )
)

(pasc 1 1)
(pasc 2 1)
(pasc 2 2)
(pasc 100 100)
(pasc 4 3)
(pasc 6 4)
