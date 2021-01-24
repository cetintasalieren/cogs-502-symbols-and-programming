; Exercise 3.7:
; without accumulator

(defun fib1 (n)
	(if (< n 2) n
		(+ (fib1 (- n 1)) (fib1 (- n 2)))
		)
	)

; with accumulator

(defun fib2 (n &optional (n1back 1) (n2back 0))
	(cond  ((zerop n) n2back)
		((= n 1) n1back)
		(t (fib2 (- n 1) (+ n1back n2back) n1back))
		)
	)