; Exercise 4.10:

(defun replace-2nd (obj lst)
	(cons (car lst) (cons obj (cdr (cdr lst))))
	)