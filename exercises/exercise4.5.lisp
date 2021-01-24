; Exercise 4.5:
; Write down what the following expressions evaluate to; 
; work them out before trying on the computer. Some expressions might cause an error; just mark them as an
; error, no need to specify the error itself.

; 1. (cons 2)

'error

; 2. (cons 2 NIL)

(2)

; 3. (cons 3 '(2))

(3 2)

; 4. (cons 3 (2))

'error

; 5. (cons NIL NIL)

(NIL)

; 6. (cons (1 2) NIL)

'error

; 7. (cons '(1 2) NIL)

((1 2))

; 8. (cons (A B) NIL)

'error

; 9. (cons ('A 'B) NIL)

'error

; 10. (cons '(A B) NIL)

((A B))

; 11. (cons '(A B) '(C D))

((A B) C D)

; 12. (list 1 4)

(1 4)
; 13. (list 1 '4)

(1 4)

; 14. (list '1 4)

(1 4)

; 15. (list 'A B)

'error

; 16. (list 'A 4)

(A 4)

; 17. (list 'A 'B)

(A B)

; 18. ('list 1 4)

'error

; 19. (+ 3 '4)

7

; 20. ('+ 1 4)

'error

; 21. (list 3 'times '(- 5 2) 'is 9)

(3 TIMES (- 5 2) IS 9)

; 22. (list 3 'times (- 5 2) 'is '9)

(3 TIMES 3 IS 9)