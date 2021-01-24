; Exercise 4.32:

(defun last2 (lst &optional (i 0))
	(if (= (+ i 1) (length lst))
		(nth i lst)
		(last2 lst (+ i 1))
		)
	)