; Exercise 4.21:

(defun largest_temp (lst acc)
	(cond ((endp lst) acc)
		((> (car lst) acc) (largest_temp (cdr lst) (car lst)))
		(t (largest_temp (cdr lst) acc))
		)
	)

(defun largest (lst)
	(largest_temp (cdr lst) (car lst))
	)