(defun C (n)
	(cond ((= n 1) 1)
		((evenp n) (C (/ n 2)))
		((oddp n) (C (+ (* n 3) 1)))
		) 
	)