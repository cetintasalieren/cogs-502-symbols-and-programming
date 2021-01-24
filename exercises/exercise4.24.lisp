; Exercise 4.24:

(defun lastt_check (lst)
	(if (endp (cdr lst)) 
		(car lst)
		(lastt_check (cdr lst))
		) 
	)

(defun lastt (lst)
	(if lst (lastt_check lst))
	)