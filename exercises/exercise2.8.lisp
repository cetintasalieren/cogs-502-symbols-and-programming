(defun sqr (x) (* x x))

(defun sum_sqr_largest_two (a b c)
	(cond ((and (< c a) (< c b)) (+ (sqr a) (sqr b))) 
		((and (< b a) (< b c)) (+ (sqr a) (sqr c)))
		((and (< a c) (< a b)) (+ (sqr b) (sqr c)))
		)
	)