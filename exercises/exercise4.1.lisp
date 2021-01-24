; Exercise 4.1:
; (list 'a 'b 'c)

(cons 'a (cons 'b (cons 'c nil)))

; (list 'a 'b nil)

(cons 'a (cons b' (cons nil nil)))

; (a (b (x d)))

(cons 'a (cons (cons 'b (cons (cons 'x (cons 'd nil)) nil)) nil))

; (a (b (d) x))

(cons 'a (cons (cons 'b (cons (cons 'd nil) (cons 'x nil))) nil))

;(((a (b (x) d))))

(cons (cons (cons 'a (cons (cons 'b (cons (cons 'x nil) (cons 'd nil))) nil)) nil) nil)
