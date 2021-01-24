; Exercise 4.17:

(defun get_salary (lst)
	(car (cdr (car lst)))
	)

(defun get_name (lst)
	(car (car lst))
	)


; without accumulator


(defun thresh1 (lst int)
	(cond ((endp lst) nil)
		((> (get_salary lst) int) (cons (get_name lst) (thresh1 (cdr lst) int)))
		(t (thresh1 (cdr lst) int))
		)
	)


; with accumulator

(defun thresh_acc (lst int &optional acc)
	(cond ((endp lst) acc)
		((> (get_salary lst) int) (thresh_acc (cdr lst) int (cons (get_name lst) acc)))
		(t (thresh_acc (cdr lst) int acc))
		)
	)