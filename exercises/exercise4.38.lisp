; Exercise 4.38:

(defun how-many? (n lst &optional (ctr 0))
	(cond ((endp lst) ctr)
		((equal n (car lst)) (how-many? n (cdr lst) (incf ctr)))
		(t (how-many? n (cdr lst) ctr))
		)
	)