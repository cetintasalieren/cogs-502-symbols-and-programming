; Exercise 4.22:

(defun split_temp (n lst &optional acc1)
	(if (zerop n) (list (reverse acc1) lst) 
		(split_temp (- n 1) (cdr lst) (cons (car lst) acc1))
		)
	)

(defun split (n lst)
	(if (zerop n) lst
		(split_temp n lst)
		)
	)