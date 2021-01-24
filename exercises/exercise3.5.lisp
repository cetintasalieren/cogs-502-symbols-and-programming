; Exercise 3.5:

(defun fact (x &optional (sum 1))
	(cond ((zerop x) 0)
		((= x 1) sum)
		(t (fact (- x 1) (* sum x)))
		)
	)