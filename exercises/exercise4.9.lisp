; Exercise 4.9:

(defun insert-2nd (obj lst)
	(cons (car lst) (cons obj (cdr lst)))
	)