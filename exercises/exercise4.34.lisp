; Exercise 4.34:


(defun lastt_check (lst)
	(if (endp (cdr lst)) 
		(car lst)
		(lastt_check (cdr lst))
		) 
	)

(defun lastt (lst)
	(if lst (lastt_check lst))
	)

(defun chop-last (lst &optional acc)
	(if (endp (cdr lst)) (reverse acc)
		(chop-last (cdr lst) (cons (car lst) acc))
		)
	)

(defun palind_even (lst)
	(cond ((endp lst) t) 
		((equal (car lst) (lastt lst)) (palind_even (cdr (chop-last lst))))
		(t nil)
		)
	)


(defun palind_odd (lst)
	(cond ((= (length lst) 1) t)
		((equal (car lst) (lastt lst)) (palind_odd (cdr (chop-last lst))))
		(t nil)
		)
	)

(defun palind (lst)
	(if (evenp (length lst))
		(palind_even lst)
		(palind_odd lst)
		)
	)