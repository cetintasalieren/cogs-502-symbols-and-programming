(defun changer-cond (n)
 	(and (numberp n) (or 
 		 (and (not (integerp n)) (changer-cond (round n)))
 		 (and (zerop (rem n 3)) (+ (* 3 n) 1))
 		 (and t n)
 		 )
 	)
 )


;(defun changer-cond (n)
;(cond ((not (numberp n)) nil)
;((not (integerp n)) (changer-cond (round n)))
;((zerop (rem n 3)) (+ (* 3 n) 1))
; (t n)))