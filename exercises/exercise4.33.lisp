; Exercise 4.33:

(defun chop-last1 (lst acc)
	(if (endp (cdr lst)) (reverse acc)
		(chop-last1 (cdr lst) (cons (car lst) acc))
		)
	)

(defun chop-last (lst)
	(if lst 
		(chop-last1 (cdr lst) (list (car lst)))
		lst
		)
	)