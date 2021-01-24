; Exercise 4.58
; Define a recursive procedure that splits a list into two “halves”. If the length is
; odd, let one of the halves be one item longer than the other. You can use length,
; if you like. For instance, (split '(a b c d e f g h i j k l)) should give
; ((A B C D E F) (G H I J K L)).

(defun halve-lst (lst &optional acc (ctr (floor (/ (length lst) 2))))
	(if (zerop ctr) (cons (reverse acc) (list lst))
		(halve-lst (cdr lst) (cons (car lst) acc) (- ctr 1))
		)
	)