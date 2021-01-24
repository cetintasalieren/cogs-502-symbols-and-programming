; Exercise 4.50
; Define a function ROTATE-LEFT that takes a list and moves the first element to
; the end of the list. For instance, (ROTATE-LEFT '(1 2 3)) should give (2 3 1),
; (ROTATE-LEFT '(1 2)) should give (2 1), etc. Apart from DEFUN, you are allowed to use LET, LIST, APPEND, CAR, DOLIST, SETF and IF. No other function is
; available for use.

(defun ROTATE-LEFT (lst)
	(append (cdr lst) (list (car lst)))
	)