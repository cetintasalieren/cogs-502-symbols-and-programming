; Exercise 6.5:

(defun check_func (elem func)
	(if (funcall func elem)
		t nil
		)
	)

(defun check_predicate (preds objs &optional acc)
	(cond ((endp objs) acc)
		(t (dolist (n objs) 
			(dolist (x preds)
				(if (check_func n x) (cons n acc)
					acc
					)
			)))
		)
	)

			; (if (x (car objs)) (check_predicate preds (cdr objs) (cons (car obhs) acc)))
			; (check_predicate preds (cdr objs) acc)

			; (if (check_func (car objs) x) (check_predicate preds (cdr objs) (cons (car objs) acc))
			; (check_predicate preds (cdr objs) acc))