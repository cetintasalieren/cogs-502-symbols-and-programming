(defun halver (x)
	(if (>= x 1) (halver (/ x 2)) x)
	)