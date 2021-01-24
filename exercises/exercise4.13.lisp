; Exercise 4.13:
; the version with LIST, CAR and CADR:

(defun wrap-2-1 (lst)
	(list (list (car lst)) (list (cadr lst)))
	)

; the version with CONS, CAR and CADR

(defun wrap-2-2 (lst)
	(cons (cons (car lst) nil) (cons (cons (cadr lst) nil) nil))
	)