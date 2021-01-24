(defun middle (a b c)
 	(if (> a b)
 		(if (> b c)
 			b
 			(if (> a c) c a))
 		(if (> a c)
 			a
 			(if (> b c) c b))
 		)
	)




(defun middle2 (a b c)
	(cond ((> a b) (cond ((> c a) a) ((> b c) b) (t c)))
		((> b a) (cond ((> c b) b) ((> a c) a) (t c)))
		)
	)