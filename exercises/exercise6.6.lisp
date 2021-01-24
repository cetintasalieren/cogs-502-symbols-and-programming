; Exercise 6.6:
; Define a procedure that takes a list of one argument numerical procedures (define
; your own and/or use the built-ins you know) and a number, and returns the name
; of the procedure that yields the maximum value when applied to the number argument.


(defun f (x) (expt x 2))
(defun g (x) (expt x 3))
(defun h (x) (log x))


(defun num_process (preds int &optional acc)
	(cond ((endp acc) (num_process (cdr preds) int (cons (car preds) acc)))
		((endp preds) (car acc))
		((> (funcall (car preds) int) (funcall (car acc) int)) (num_process (cdr preds) int (cons (car preds) acc)))
		(t (num_process (cdr preds) int acc))
		)
	)