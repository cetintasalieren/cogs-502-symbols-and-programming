; Exercise 4.35:

(defun man_nth (n lst &optional (i 0))
	(if (= n i)
		(car lst)
		(man_nth n (cdr lst) (+ i 1))
		)
	)