(defun max_finder (a b c) 
	(cond ((and (>= a b) (>= a c)) a)
		((and (>= b a) (>= b c)) b)
		((and (>= c a) (>= c b)) c)
		)
	)

(defun max_i (a b c)
	(if (and (numberp a) (numberp b) (numberp c))
		(max_finder a b c)
		'error
		)
	)

