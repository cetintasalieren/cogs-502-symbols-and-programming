; Exercise 4.36:

(defun multi-member (n lst &optional (acc 0))
	(cond ((> acc 1) t)
		((endp lst) nil)
		((equal (car lst) n) (multi-member n (cdr lst) (incf acc)))
		(t (multi-member n (cdr lst) acc))
		)
	)