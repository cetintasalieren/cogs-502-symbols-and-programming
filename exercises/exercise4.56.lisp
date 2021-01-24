; Exercise 4.56
; Define a procedure BRING-TO-FRONT (or BFT for short), that takes an item and a
; list and returns a version where all the occurrences of the item in the given list are
; brought to the front of the list.
; For instance, (bring-to-front 'a '(a b r a c a d a b r a)) would return
; (A A A A A B R C D B R);
; and (bring-to-front 'b '(a b r a c a d a b r a)) would return
; (B B A R A C A D A R A).
; You are NOT allowed to count the occurrences of the item in the given list or use
; REMOVE.

(defun bft (elem lst &optional acc (ctr 0))
	(cond ((and (endp lst) (zerop ctr)) (reverse acc))
		((endp lst) (bft elem lst (append acc (list elem)) (- ctr 1)))
		((equal elem (car lst)) (bft elem (cdr lst) acc (+ ctr 1)))
		(t (bft elem (cdr lst) (cons (car lst) acc) ctr))
		)
	)