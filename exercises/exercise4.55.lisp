; Exercise 4.55:

(defun atom_ctr (lst &optional (ctr 0))
	(cond ((endp lst) ctr)
		((and (atom (car lst)) (not (null (car lst)))) (atom_ctr (cdr lst) (+ 1 ctr)))
		(t (atom_ctr (cdr lst) (atom_ctr (car lst) ctr)))
		)
	)