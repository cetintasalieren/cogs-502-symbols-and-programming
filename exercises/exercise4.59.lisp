; Exercise 4.59
; Define a version of the previous procedure without using LENGTH – here we go
; again!

(defun halve-lst1 (lst n &optional acc)
	(if (zerop n)
		(cons (reverse acc) (list lst))
		(halve-lst1 (cdr lst) (- n 1) (cons (car lst) acc))
		)
	)


(defun halve-lst (lst &optional acc (ctr 0))
	(if (endp lst) (halve-lst1 (reverse acc) (floor (/ ctr 2)))
		(halve-lst (cdr lst) (cons (car lst) acc) (+ ctr 1))
		)
	)