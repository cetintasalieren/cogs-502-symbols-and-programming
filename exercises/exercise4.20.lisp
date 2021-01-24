; Exercise 4.20:
; without accumulator:

(defun listpro (lst)
	(cond ((endp (cdr lst)) (car lst))
		((numberp (car lst)) (* (car lst) (listpro	(cdr lst))))
		(t (listpro (cdr lst)))
		)
	)

; with accumulator:

(defun listpro_acc_app (lst acc)
	(cond ((endp lst) acc)
 		((numberp (car lst)) (listpro_acc_app (cdr lst) (* acc (car lst))))
 		(t (listpro_acc_app (cdr lst) acc))
		)
	)

; We assumue there will always be a number in the given list.
(defun listpro_acc (lst)
	(if (numberp (car lst))
		(listpro_acc_app (cdr lst) (car lst))
		(listpro_acc (cdr lst))
		)
	)