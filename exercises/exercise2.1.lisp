(defun controller (a b) 
	(cond ((> (- a b) 0) 1)
		((= (- a b) 0) 0)
		((< (- a b ) 0) -1)
		)
	)