; Exercise 7.2
; Define a procedure PAIR-PROD using MAPCAR and LAMBDA, which takes a list of two
; element lists of integers and returns a list of products of these pairs. E.g. an input
; like ((7 8) (1 13) (4 1)) should yield (56 13 4).

(defun pair-prod (lst)
	(MAPCAR #'(LAMBDA (x) (* (car x) (cadr x))) lst)
	)