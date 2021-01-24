; Exercise 4.52:

(defun substitute1 (old new lst)
	(cond ((endp lst) nil)
		((equal old (car lst)) (cons new (substitute1 old new (cdr lst))))
		(t (cons (car lst) (substitute1 old new (cdr lst))))
		)
	)