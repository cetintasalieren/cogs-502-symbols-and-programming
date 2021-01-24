; Exercise 4.44
; Define a procedure that takes a list of integers and returns the second largest integer
; in the list.


(defun largest_temp (lst max1)
	(cond ((endp lst) max1)
		((> (car lst) max1) (largest_temp (cdr lst) (car lst))) 
		(t (largest_temp (cdr lst) max1))
		)
	)

(defun largest1 (lst)
	(if (= 1 (length lst))
		(car lst)
		(largest_temp (cdr lst) (car lst))
		)
	)

(defun largest2_temp (lst max1 max2)
	(cond ((endp lst) max2)
		((and (< (car lst) max1) (> (car lst) max2)) (largest2_temp (cdr lst) max1 (car lst)))
		(t (largest2_temp (cdr lst) max1 max2))
		)
	)

(defun largest2 (lst &optional (max1 (largest1 lst)))
	(if (not (= max1 (car lst)))	
		(largest2_temp (cdr lst) max1 (car lst))
		(largest2 (cdr lst) max1)
		)
	)