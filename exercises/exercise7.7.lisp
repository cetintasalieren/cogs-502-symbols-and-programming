; Exercise 7.7
; Define a procedure that takes two lists: a list N of numbers and a list P of symbols
; with function bindings, i.e. symbols used to define some single argument mathematical procedure with DEFUN. Your procedure should return a list with the same
; size as N, whose elements are lists consisting of values obtained by applying all
; the procedures in P to the corresponding element in N. For example, if you provide your procedure with a list of symbols naming square, absolute value and
; float functions, e.g. (sqr abs float), and the list (1 -2 3), it should return:
; ((1 1 1.0) (4 2 -2.0) (9 3 3.0)) You are NOT allowed to use any procedure (built-in or user-defined) other than #', DEFUN, MAPCAR, LAMBDA and FUNCALL.

(defun sqr (x) (* x x))

(defun applying (lst symbols)
	(mapcar 
		#'(LAMBDA (x)  (mapcar #'(LAMBDA (symb) (FUNCALL symb x)) symbols)) 
		lst)
	)


; (defun applying (lst symbols)
; 	(mapcar #'(LAMBDA (sym) (mapcar #'(LAMBDA (x) (sym x)) lst)) symbols)
; 	)