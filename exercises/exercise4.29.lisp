; Exercise 4.29:

(defun run-mean (lst)
	(let ((store nil) (i 1))
		(dotimes (i (length lst) store)
			(push (/ (nth i lst) i) store)

			) store
		)
	)
