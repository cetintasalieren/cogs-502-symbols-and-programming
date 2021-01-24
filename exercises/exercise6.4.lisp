; Exercise 6.4: 

(defun foo (funcs arg)
	(cond ((endp funcs) nil)
		((not (null (funcall (car funcs) arg)))  (cons (car funcs) (foo (cdr funcs) arg)))
		(t (foo (cdr funcs) arg))
		)
	)