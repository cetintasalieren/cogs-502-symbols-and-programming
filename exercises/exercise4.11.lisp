; Exercise 4.11:

(defun swap (lst)
	(cons (car (cdr lst)) (cons (car lst) nil)) 
	)