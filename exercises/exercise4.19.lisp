; Exercise 4.19:
; without accumulator:


(defun sum_lst (lst)
	(if (endp lst) 0
		(+ (car lst) (sum_lst (cdr lst)))
		)
	)


; with accumulator:


(defun sum_lst_acc (lst &optional (acc 0))
	(if (endp lst) acc
		(sum_lst_acc (cdr lst) (+ acc (car lst)))
		)
	)