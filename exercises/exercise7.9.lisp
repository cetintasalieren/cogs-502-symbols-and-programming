; Exercise 7.9
; Write a function REPLACE-IF, which takes three arguments: a list LST, an item
; ITEM and a function TEST, and replaces every element of LST that passes the TEST
; with ITEM. You may find using keyword arguments useful (see the lecture notes).
; Make use of MAPCAR, LAMBDA and FUNCALL in your solution.

(defun replace-if (lst item test)
	(mapcar #'(LAMBDA (lst) (if (FUNCALL test lst) item lst)) lst)
	)