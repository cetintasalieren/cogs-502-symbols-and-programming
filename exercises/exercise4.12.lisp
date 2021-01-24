; Exercise 4.12:

(defun collatz-sequence (n)
  (labels ((col-next (n)
                     (if (<= n 1)
                       1
                       (if (evenp n)
                         (/ n 2)
                         (+ (* 3 n) 1))))
           (col-seq (lst)
                    (if (= (car lst) 1)
                      (reverse lst)
                      (col-seq (cons (col-next (car lst))
                                     lst)))))
    (col-seq (list n))))

(defun collatz-length (n)
  (- (length (collatz-sequence n)) 1))

(defun add-pair (pair table)
  (if table
    (if (= (car pair) (caar table))
      (cons
        (append (car table) (cdr pair))
        (cdr table))
      (cons
        (car table)
        (add-pair pair (cdr table))))
    (list pair)))

;; you need a sequence procedure 


(defun seq (start end &optional acc)
  "give the integer sequence from start to end inclusive of both ends"
  (if (< end start)
    acc
    (seq
      start
      (- end 1)
      (cons end acc))))


;; now the final procedure

(defun collect-equal-cl (start end)
  (labels ((pair-cl (n)
                    "pair n with its collatz length in the form (cl-of-n n)"
                    (list (collatz-length n) n))
           (collect (lst table)
                    (if (endp lst)
                      table
                      (collect
                        (cdr lst)  							  ;((1 0) (2 1) (3 7) (4 2) (5 5) (6 8) (7 16) (8 3) (9 19))
                        (add-pair (pair-cl (car lst)) table)))))
    (collect (seq start end) nil)))
