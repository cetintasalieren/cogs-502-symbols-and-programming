(defun i_checker (a b c) 
	(if (numberp a)
		(if (numberp b)
			(if (numberp c)
				T nil)
			nil)
		nil)
	)