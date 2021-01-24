; Exercise 4.61
; Implement bubble sort.

(defun 2cdr (lst)
	(cdr (cdr lst))
	)

(defun bubblesort (lst &optional acc (len (length lst)))
	(cond ((and (not (integerp (cadr lst))) (endp (cadr lst))) 
			(if (= len 1 ) (reverse (cons (car lst) acc))
 			(bubblesort (reverse (cons (car lst) acc)) nil (- len 1))))
		((> (car lst) (cadr lst)) (bubblesort (cons (car lst) (2cdr lst)) (cons (cadr lst) acc) len))
		((< (car lst) (cadr lst)) (bubblesort (cdr lst) (cons (car lst) acc) len))
		)
	)



