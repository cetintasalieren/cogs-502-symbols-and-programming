; Exercise 7.12:

(defun collatz-next (n)
	(if (evenp n)
		(/ n 2)
		(+ (* 3 n) 1)
		)
	)

(defun collatz-seq (n)
	(if (= n 1)
		(list 1)
		(cons n (collatz-seq (collatz-next n)))
		)
	)

(defun collatz-len (n)
	(- (length (collatz-seq n)) 1)
	)

(defun seq (n &optional acc)
	(if (zerop n) acc
		(seq (- n 1) (cons n acc))
		)
	)

(defun pair-cl (lst)
	(mapcar #'(lambda (x) (cons x (list (collatz-len x)))) 
	lst)
	)

(defun maxx (lst &optional (hook #'(lambda (x) x)))
	(reduce #'(lambda (x y) (if (> (funcall hook x) (funcall hook y)) x y)) lst)
	)

(defun range_max (x y)
	(mapcar #'(lambda (x) (maxx (pair-cl (seq x)) #'cadr)) (mapcar #'(lambda (y) (expt x y)) (seq y)))
	)


(defun equal_len (x &optional (hook #'(lambda (x) x)) (hook2 #'(lambda (x) x)))
	(mapcar #'(lambda (x y) (if (= (funcall hook x) (funcall hook y)) (funcall hook2 x) nil)) (pair-cl (seq x)))
	)



