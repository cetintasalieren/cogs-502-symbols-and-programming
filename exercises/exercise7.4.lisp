;Exercise 7.4
; Define your own REMOVE-IF.

(defun removeif (fun lst)
	(mapcar #'(lambda (x) (if (not (funcall fun x)) x)) lst)
	)

(defun rif2 (test xs)
  (mapcan
    #'(lambda (x)
        (if (not (funcall test x)) (list x)))
    xs))


; (defun ifremove (fun lst)
; 	(cond ((endp lst) nil)
; 		((funcall fun (car lst)) (ifremove fun (cdr lst)))
; 		(t (cons (car lst) (ifremove fun (cdr lst))))
; 		)
; 	)
