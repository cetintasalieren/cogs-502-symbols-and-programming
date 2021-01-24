; Exercise 4.25:

(defun nestedp (lst) 
	(cond ((endp lst) nil) 
		((not (atom (car lst))) t)
		(t (nestedp (cdr lst)))
		)
	)