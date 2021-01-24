; Exercise 4.31:

(defun search-temp (lst1 lst2 i)
	(if (and (equal (car lst1) (nth i lst2))
			(equal (cadr lst1) (nth ( + i 1) lst2))
		) t
		)
	)

(defun search-pos (lst1 lst2)
	(let ((store nil))
		(dotimes (i (length lst2) store)
			(if (search-temp lst1 lst2 i)
				(push i store)
					
				)
			)
		)
	)