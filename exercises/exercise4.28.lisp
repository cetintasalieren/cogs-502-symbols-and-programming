; Exercise 4.28:

(defun types (lst)
	(dolist (x lst 'done) 
		(cond ((numberp x) (print 'NUMBER))
			((listp x) (print 'list))
			((symbolp x) (print 'symbol))
			(t (print 'unkwown-type))
			)
		)
	)
