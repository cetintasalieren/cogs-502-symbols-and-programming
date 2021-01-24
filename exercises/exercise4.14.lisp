; Exercise 4.14:

(defun dewrap-2 (lst)
	(cond ((not (atom (car lst))) (dewrap-2 (cons (car (car lst)) (cdr lst))))
		((not (atom (car (cdr lst)))) (dewrap-2 (cons (car lst) (car (cdr lst)))))
		(t lst) 
		)
	)