; Exercise 7.8
; Define a procedure APPLIER that takes a procedure proc, an input input and a
; count cnt; and gives the result of applying proc to input cnt times. For instance,
; (APPLIER #'CDR '(1 2 3) 2) should give (3)

(defun sqr (x)
	(* x x)
	)

; (defun APPLIER (fun input ctr)
; 	(if (zerop ctr) input
; 		(APPLIER fun (funcall fun input) (- ctr 1))
; 		)
; 	)

(defun applier (func input cnt)
	(if (null cnt) 
		input
		(applier func (funcall func input) (- cnt 1))
		)
	)
