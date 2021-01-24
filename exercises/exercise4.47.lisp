; Exercise 4.47:

(defun uniq (lst &optional acc)
	(cond ((endp lst) acc)
		((member (car lst) acc) (uniq (cdr lst) acc))
		(t (uniq (cdr lst) (cons (car lst) acc)))
		)
	)

(defun uniq2 (lst)
	(uniq (reverse lst))
	)