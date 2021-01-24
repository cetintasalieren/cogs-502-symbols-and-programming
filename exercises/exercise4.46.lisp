; Exercise 4.46:

(defun uniq (lst &optional acc)
	(cond ((endp lst) (reverse acc))
		((member (car lst) acc) (uniq (cdr lst) acc))
		(t (uniq (cdr lst) (cons (car lst) acc)))
		)
	)