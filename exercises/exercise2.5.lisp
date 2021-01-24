(defun greater (a b)
	(cond ((or (not (numberp a)) (not (numberp b))) 'error) 
		((>= a b) a)
		((not (>= a b)) b)
		)
	)