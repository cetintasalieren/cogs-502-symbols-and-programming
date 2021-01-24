; Exercise 7.5
; Define LENGTH using MAPCAR, LAMBDA, + and APPLY.

(defun len (lst &optional (acc 1))
	(mapcar #'(lambda (x) (+ 1 acc)) lst)
	)

; (defun len (lst &optional (acc 1))
; 	(apply #'(LAMBDA (x) (+ 1 acc)) lst)
; )
