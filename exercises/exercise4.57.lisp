; Exercise 4.57
; Define a procedure that groups the elements in a list putting consecutive occurrences of items in lists. For instance, (group '(a a b c c c d d e)) should
; give ((A A) (B) (C C C) (D D) (E)). Note that you should NOT bring together non-consecutive repetitions; a call like (group '(a b b c b b c)) should
; return ((A) (B B) (C) (B B) (C)).

(defun grouping (lst &optional acc group)
	(cond ((endp lst) (reverse acc))
		((endp group) (grouping (cdr lst) acc (cons (car lst) group)))
		((null (cadr lst)) (if (equal (car lst) (car group)) 
			(grouping (cdr lst) (cons (cons (car lst) group) acc))
			(grouping (cdr lst) (cons (list (car lst)) (cons group acc)))
			))
		((equal (car lst) (car group)) (grouping (cdr lst) acc (cons (car lst) group)))
		(t (grouping (cdr lst) (cons group acc) (list (car lst))))
		) 
	)