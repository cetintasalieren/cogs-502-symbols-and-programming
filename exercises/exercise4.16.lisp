; Exercise 4.16:

; (defun my-member (elem lst)
; 	(if (member elem lst)
; 		(list elem  'is 'a 'member 'of  lst)
; 		(list elem  'is 'not 'a 'member 'of  lst)
; 		)
; 	)

(defun subsetp (lst1 lst2)
	(cond ((endp lst1) True)
		((member (car lst1) lst2) (subsetp (cdr lst1) lst2))
		(t nil)
		)
	)


; (defun equip_temp (lst1 lst2)
; 	(cond ((endp lst1) t) ; when lst1 finally becomes nil, we return t.
; 		((member (car lst1) lst2) (equip_temp (cdr lst1) lst2)) ; We go through each element in lst1 and see if it is in lst2 as well.
; 		(t nil)
; 		)
; 	)


; (defun equip (lst1 lst2)
; 	(cond ((not (equal (length lst1) (length lst2))) nil)
; 		((and (endp lst1) (endp lst2)) t)
; 		(t (equip_temp lst1 lst2))
; 		)

; 	)


;We assume we might get some lists that have different number of elements, in which case we return nil.
; (defun idenp (lst1 lst2)
; 	(cond ((and (endp lst1) (endp lst2)) T)
; 		((or (endp lst1) (endp lst2)) nil)
; 		((equal (car lst1) (car lst2)) (idenp (cdr lst1) (cdr lst2)))
; 			(t nil)
; 		)
; 	)