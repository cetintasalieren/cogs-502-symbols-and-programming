; Exercise 4.3:
; (a x b d)
; EXAMPLE
; (car (cdr lst))
; (a b x d)

(car (cdr (cdr lst)))
(car (cdr (cdr 'lst)))
(car (cdr (cdr '(a b x d))))

; (a (b (x d)))

(car (car (cdr (car (cdr lst)))))
(car (car (cdr (car (cdr 'lst)))))
(car (car (cdr (car (cdr '(a (b (x d))))))))


; (a (b (d) x))

(cdr (cdr (car (cdr lst))))
(cdr (cdr (car (cdr 'lst))))
(cdr (cdr (car (cdr '(a (b (d) x))))))


; (((a (b (x) d))))

(car (car (cdr (car (cdr (car (car lst)))))))
(car (car (cdr (car (cdr (car (car 'lst)))))))
(car (car (cdr (car (cdr (car (car '(((a (b (x) d)))))))))))