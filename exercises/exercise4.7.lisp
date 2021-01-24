; Exercise 4.7:

(defun add_end (lst a)
	(cond ((endp lst) (list a))
		((endp (cdr lst)) (cons (car lst) (cons a nil)))
		(t (cons (car lst) (add_end (cdr lst) a)))
		)
	)