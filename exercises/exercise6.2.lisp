; Exercise 6.2:

(defun f (x) (expt x 2))
(defun g (x) (expt x 3))
(defun h (x) (log x))

(defun pairval (funcs arg)
	(if (endp funcs) 
		nil
		(cons (cons (car funcs) (funcall (car funcs) arg))
		(pairval (cdr funcs) arg)
			)
		)
	)

