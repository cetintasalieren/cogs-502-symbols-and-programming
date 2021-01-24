; Exercise 7.6:
; Define a procedure that takes an integer n and gives a list of n random single digit
; numbers. Use the built-in RANDOM, MAKE-LIST, MAPCAR and LAMBDA in your solution. Check the definition of the builtins you are not familiar with from reference
; books on the website or on the web.


(defun randomnum (n)
	(MAPCAR #'(LAMBDA (X) (RANDOM 10)) (MAKE-LIST n))
	)