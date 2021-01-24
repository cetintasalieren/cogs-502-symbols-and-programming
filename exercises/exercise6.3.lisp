; Exercise 6.3:

(defun maxpair2 (lst acc)
	(cond ((endp lst) acc) 
		((> (cdar lst) (cdr acc)) (maxpair2 (cdr lst) (car lst)))
		(t (maxpair2 (cdr lst)))
		)
	)

(defun maxpair (lst)
	(if (= 1 (length lst)) ; We assume a one-element list input will be like '((A . 9))
		(car lst)
		(maxpair2 (cdr lst) (car lst))
		)

	)




; Define a procedure MAXPAIR that takes a list of dotted pairs and returns the maximum pair where the comparison is done on the basis of the second components of
; pairs.

; * (maxpair '((A . 2) (B . 8) (C . 4)))

; (defun maxpair (lst)
;   "get the maximum pair (dotted pairs of the form (A . B)) in a list of pairs compared according to the cdr of each element"
;   	(if lst
;     (let ((maxrest (maxpair (cdr lst))))
;      (if (> (cdar lst) (or (cdr maxrest) (- (cdar lst) 1))); the OR clause avoids the error of comparing NIL with a number
;        (car lst)
;        maxrest)
;     	)
;     )
;   )