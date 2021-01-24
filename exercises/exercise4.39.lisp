; Exercise 4.39:
; The built-in REVERSE reverses a list. Define your own version of reverse.

(defun custom_list (lst &optional acc)
	(if (endp lst) 
		acc
		(custom_list (cdr lst) (cons (car lst) acc))
		)
	) 

(defun myreverse (lst)
	(if (= (length lst) 1)
		lst
		(custom_list lst)
		)
	)