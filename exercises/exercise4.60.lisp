;  Exercise 4.60
; Define a recursive procedure SUMMARIZE, that takes a list and returns a list of
; pairs whose car is an element in the list and cadr is the number of times the element occurs in the list; (summarize '(a b r a c a d a b r a)) should give
; ((a 5) (b 2) (r 2) (c 1) (d 1)).

(defun remove_elem (lst elem &optional acc)
	(cond ((endp lst) (reverse acc))
		((equal (car lst) elem) (remove_elem (cdr lst) acc))
		(t (remove_elem (cdr lst) (cons (car lst) acc)))
		)
	)

(defun summarize (lst &optional end_res (ctr 0) (elem (car lst)) lst2)
	(cond ((endp lst)
				(if (endp lst2)
					(reverse (cons (cons elem (list ctr)) end_res))
					(summarize lst2 (cons (cons elem (list ctr)) end_res) 0 (car (reverse lst2)) nil)	
					))
		((equal elem (car lst)) (summarize (cdr lst) end_res (+ ctr 1) elem lst2))
		(t (summarize (cdr lst) end_res ctr elem (cons (car lst) lst2)))
		)
	)