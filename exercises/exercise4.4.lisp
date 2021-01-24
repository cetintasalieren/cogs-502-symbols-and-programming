; Exercise 4.4:

;Given the list ((A B) (C D) (E F)),
;17
;1. Write what you would get from it by applying the following in order,18
;(a) CAR

(car '((A B) (C D) (E F))) ; = (A B)

;(b) CDR CDR

(cdr (cdr '((A B) (C D) (E F)))) ; = ((E F)) 

;(c) CAR CDR

(car (cdr '((A B) (C D) (E F)))) ; = (C D)

;(d) CDR CAR

(cdr (car '((A B) (C D) (E F)))) ; = B

;(e) CDR CDR CAR

(cdr (cdr (car '((A B) (C D) (E F))))) ; = NIL

; (f) CDR CAR CDR CDR

(cdr (car (cdr (cdr '((A B) (C D) (E F)))))) ; (F)

;2. Which sequences of CARs and CDRs would get you A, B and F?

; CAR CAR would get A as in:

(car (car '((A B) (C D) (E F)))) 

; CDR CAR would get B as in

(cdr (car '((A B) (C D) (E F)))) 

; CAR CDR CAR CDR CDR would get F as in:

(car (cdr (car (cdr (cdr '((A B) (C D) (E F)))))))
