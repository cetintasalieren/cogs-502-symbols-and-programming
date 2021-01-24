; Exercise 4.15:

(defun after-first (lst1 lst2)
	(append (list (car lst1)) lst2 (cdr lst1))
	)