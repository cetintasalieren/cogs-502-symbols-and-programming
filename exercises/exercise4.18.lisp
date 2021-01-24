; Exercise 4.18:
; without length:

(defun order_rec1 (item lst)
	(if (member item lst)
		(+ 1 (order_rec1 item (cdr lst)))
		0
		)
	)

(defun order_rec (item lst)
	(if (member item lst)
		(order_rec1 item lst)
		nil
		)
	)


; with accumulator:

(defun order_acc1 (item lst &optional (acc 0))
	(if (member item lst)
		(order_acc1 item (cdr lst) (+ 1 acc))
		acc
		)
	)

(defun order_acc (item lst)
	(if (member item lst)
		(order_acc1 item lst)
		nil
		)
	)

; with length:

(defun order_len (item lst)
	(- (length lst) (length (cdr (member item lst))))
	)


(defun order (item lst)
	(if (member item lst)
		(order_len item lst)
		nil
		)
	)