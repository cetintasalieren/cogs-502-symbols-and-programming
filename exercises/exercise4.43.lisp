; Exercise 4.43
; Define a three argument procedure REMOVE-NTH, which removes every nth occurrence of an item from a list.


(defun remove-nth (elem n lst &optional (ctr 1) acc)
	(cond ((endp lst) (reverse acc))
		((and (equal (car lst) elem) (not (= ctr n))) (remove-nth elem n (cdr lst) (incf ctr) (cons (car lst) acc)))
		((and (equal (car lst) elem) (= ctr n)) (remove-nth elem n (cdr lst) 1 acc))
		(t  (remove-nth elem n (cdr lst) ctr (cons (car lst) acc)))
		)
	)


; (defun remove-nth (elem n lst &optional (ctr 0) acc)
; 	(cond ((endp lst) (reverse acc))
; 		((and (equal (car lst) elem) (setf ctr (+ ctr 1)) (not (= ctr n))) (remove-nth elem n (cdr lst) ctr (cons (car lst) acc)))
; 		((and (equal (car lst) elem) (setf ctr (+ ctr 1)) (= ctr n)) (remove-nth elem n (cdr lst) 0 acc))
; 		(t  (remove-nth elem n (cdr lst) ctr (cons (car lst) acc)))
; 		)
; 	)