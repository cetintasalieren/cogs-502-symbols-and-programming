(defun controller (a b) 
	(cond ((> (- a b) 0) 1)
		((= (- a b) 0) 0)
		((< (- a b ) 0) -1)
		)
	)

(defun big_controller (a b)
	(if (and (numberp a) (numberp b)) 
		(controller a b)
		nil
		)
	)