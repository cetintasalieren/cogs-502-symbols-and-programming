; Exercise 4.23:

(defun middle_div (n)
	(/ n 2)
	)

(defun splitodd (n lst &optional acc)
	(if (zerop n) (list (append (reverse acc) (list (middle_div (car lst)))) (cons (middle_div (car lst)) (cdr lst)))
		(splitodd (- n 1) (cdr lst) (cons (car lst) acc))
		)
	)

(defun spliteven (n lst &optional acc)
	(if (zerop n) (list (reverse acc) lst)
		(spliteven (- n 1) (cdr lst) (cons (car lst) acc))
		)
	)

(defun split-two (lst)
	(if (oddp (length lst))
		(splitodd (+ (floor (length lst) 2) 0) lst)
		(spliteven (/ (length lst) 2) lst)
		)
	)