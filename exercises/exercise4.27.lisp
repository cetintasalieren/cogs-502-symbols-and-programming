; Exercise 4.27:

(defun remove3 (n lst)
	(cond ((endp lst) nil)
		((equal (cadr lst) n) (remove3 n (cdr lst)))
		(t (cons (car lst) (remove3 n (cdr lst))))
		)
	)