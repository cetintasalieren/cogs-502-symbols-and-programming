; Exercise 7.3
; Define a procedure that takes two lists as input and returns the list of their pairwise
; averages. Use only MAPCAR, LAMBDA and arithmetic operations in your definition.

; (defun pairwi (lst1 lst2 &optional acc)
; 	(if (endp lst1) (reverse acc)
; 		(pairwi (cdr lst1) (cdr lst2) (cons (cons (car lst1) (list (car lst2))) acc))
; 		)
; 	)

(defun pairwise (lst1 lst2)
	(mapcar #'(lambda (lst1 lst2) (/ (+ lst1 lst2) 2)) lst1 lst2)
	)