; Exercise 3.6:
; without an accumulator


(defun power1 (x y) 
	(cond ((zerop y) 1)
		((= y 1) x)
		(t (* x (power1 x (- y 1))))
		)
	)

; with an accumulator

(defun power2 (x y &optional (sum 1))
	(cond ((zerop y) sum)
		((= y 1) (* x sum)) 
		(t (power2 x (- y 1) (* sum x)))
		)

	)