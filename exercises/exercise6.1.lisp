; Exercise 6.1:

(defun f (x) (expt x 2))
(defun g (x) (expt x 3))
(defun h (x) (log x))

(defun vals (funcs arg)
	(if (endp funcs)
		nil
		(cons (funcall (car funcs) arg) 
			(vals (cdr funcs) arg)
			)
		)
	)