; Exercise 7.10:
(defun sqr (x)
	(* x x)
	)

; Define procedures that use MAPCAR and LAMBDA and
; • zip two lists together – (zip '(a b) '(1 2)) should give ((A 1) (B 2)).

(defun zipping (lst1 lst2)
	(mapcar #'(LAMBDA (lst1 lst2) (cons lst1 (list lst2))) lst1 lst2)
	)


; • take three lists: first two will be lists of integers, and the third is a list of
; functions. Apply the corresponding function to corresponding arguments.

(defun applier (lst1 lst2 funcs)
	(mapcar #'(LAMBDA (lst1 lst2 funcs) (cons (funcall funcs lst1) (list (funcall funcs lst2)) )) lst1 lst2 funcs)
	)