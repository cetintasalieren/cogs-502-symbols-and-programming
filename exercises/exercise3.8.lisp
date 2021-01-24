; Exercise 3.8:

(defun sqr (x) (* x x))

(defun sqr-root (x &optional (y 1.0))
	(if (< (abs (- x (sqr y))) 0.00001)
		y
		(sqr-root x (/ (+ (/ x y) y) 2))
		)
	)