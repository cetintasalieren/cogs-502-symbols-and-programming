; 1. (if (listp '(list 1 2)) 'ok 'not-really)

OK

; 2. (if (null (nil)) 'vice 'versa)

VERSA

; 3. (and (listp (if (> 2 4) (- 2 4) (+ 2 4))) (if (> 2 4) (- 2 4) (+ 2 4)))

NIL

; 4. (or (listp (if (> 2 4) (- 2 4) (+ 2 4))) (if (> 2 4) (- 2 4) (+ 2 4)))

6

; 5. (or (and (or 'or) 'and) 'or)

AND