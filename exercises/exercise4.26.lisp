; Exercise 4.26:

(defun remove2 (n lst &optional acc)
	(cond ((endp lst) acc)
		((equal n (car lst)) (remove2 n (cdr lst) acc))
		(t (remove2 n (cdr lst) (cons (car lst) acc)))
		)
	)