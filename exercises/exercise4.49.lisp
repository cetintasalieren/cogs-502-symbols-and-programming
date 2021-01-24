; Exercise 4.49:
; Define a procedure REMOVEX that takes an element and a list; and returns a list where
; all the occurrences of the element that are preceded by the symbol X are removed
; from the list

(defun remlast (lst elem) 
	(cond ((endp lst) nil) 
		((equal elem (cadr lst)) (remlast (cdr lst) elem))
		(t (cons (car lst) (remlast (cdr lst) elem)))
		)
	)

