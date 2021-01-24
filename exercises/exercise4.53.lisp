; Exercise 4.53:

(defun shuffle (lst &optional (elem (nth (random (length lst)) lst)))
	(cond ((endp lst) (list elem))
		((not (equal  (car lst) elem)) (cons (car lst) (shuffle (cdr lst) elem)))
		(t (shuffle (cdr lst) elem))
		)
	)