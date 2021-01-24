; Exercise 4.42: 

(defun reverse0 (lst &optional acc)
	(cond ((endp lst) acc) 
		((listp (car lst)) (reverse0 (cdr lst) (cons (reverse0 (car lst)) acc)))
		(t (reverse0 (cdr lst) (cons (car lst) acc)))
		)
	)