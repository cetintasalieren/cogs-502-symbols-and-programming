; Exercise 4.51
; Define a recursive function FLATTEN, which takes a possibly nested list and returns a version where all nesting is eliminated. E.g. ((1 (2) 3) 4 (((5) 6) 7))
; should be returned as (1 2 3 4 5 6 7).

(defun flatten1 (lst &optional acc)
	(cond ((endp lst) acc)
		((listp (car lst)) (flatten1 (cdr lst) (flatten1 (car lst) acc)))
		(t (flatten1 (cdr lst) (append acc (list (car lst))))
		)
	)
	)

(defun flatten (lst &optional acc)
	(if (listp (car lst))
		(flatten1 (cdr lst) (flatten (car lst)))
		(flatten1 (cdr lst) (list (car lst)))
		)
	)