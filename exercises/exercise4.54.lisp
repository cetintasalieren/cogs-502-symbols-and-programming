; Exercise 4.54:

(defun d-subs (old new lst)
	(cond ((endp lst) nil) 
		((and (atom (car lst)) (equal old (car lst))) (cons new (d-subs old new (cdr lst))))
		((atom (car lst)) (cons (car lst) (d-subs old new (cdr lst))))
		(t (cons (d-subs old new (car lst)) (d-subs old new (cdr lst)))
		)
	))

; with accumulator

; (defun d-subs_acc (old new lst &optional acc)
; 	(cond ((endp lst) acc)
; 		((atom (car lst)) (if (equalp (car lst) old)
; 			                  (d-subs_acc old new (cdr lst) (append acc (list new)))
; 			                  (d-subs_acc old new (cdr lst) (append acc (list (car lst))))))
; 		(t (d-subs_acc old new (cdr lst) (append acc (list (d-subs old new (car lst))))))))