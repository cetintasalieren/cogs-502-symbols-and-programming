; Exercise 4.41
; Define a recursive procedure D-HOW-MANY? that counts all – not only top-level –
; occurrences of an item in a list.
; For instance (D-HOW-MANY? 'A '((A B) (C (A X)) A)) should return 3.



(defun D-HOW-MANY? (n lst &optional (acc 0))
	(cond ((endp lst) acc) 
		((listp (car lst)) (D-HOW-MANY? n (cdr lst) (D-HOW-MANY? n (car lst) acc)))
		((equal (car lst) n) (D-HOW-MANY? n (cdr lst) (+ 1 acc))) 
		(t (D-HOW-MANY? n (cdr lst) acc)
		)))

(D-HOW-MANY? 'A '((A B) (C (A X)) A)):

(D-HOW-MANY? 'A '((C (A X)) A) (D-HOW-MANY? 'A '(A B) 0))

(D-HOW-MANY? 'A '((C (A X)) A) 1)

(D-HOW-MANY? 'A '((C (A X)) A) (D-HOW-MANY? 'A '(C (A X)) 1))

(D-HOW-MANY? 'A '((C (A X)) A) (D-HOW-MANY? 'A '(C (A X)) 1))

(D-HOW-MANY? 'A '((C (A X)) A) (D-HOW-MANY? 'A '((A X)) 1))

(D-HOW-MANY? 'A '((C (A X)) A) (D-HOW-MANY? 'A 'nil (D-HOW-MANY? 'A '(A X) 1)))

(D-HOW-MANY? 'A '((C (A X)) A) (D-HOW-MANY? 'A 'nil 2))

(D-HOW-MANY? 'A '(A) 2)