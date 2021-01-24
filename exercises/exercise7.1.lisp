; Exercise 7.1:
; Write LAMBDA expressions that
; • returns the greatest of two integers.

(lambda (x y) (if (> x y) x y))

; • given two integers, returns T if one or the other divides the other without
; remainder.

(lambda (x y) (if (or (integerp (/ x y)) (integerp (/ y x))) t))

; • given a list of integers, returns the mean.

(lambda (lst) (/ (reduce #'+ lst) (length lst)))

; • given a list of integers, returns the sum of their factorials – use your factorial
; solution.

(defun factorial (x)
	(if (zerop x) 1
		(* x (factorial (- x 1)))
		)
	)


(reduce #'+ (mapcar #'factorial lst))
