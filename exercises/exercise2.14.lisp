(defun custom-if (test succ fail) ; wrong!
 (or (and test succ) (or (or succ nil) fail))
  )

 ;(defun custom-if (test succ fail) ; wrong!
 ;(or (and test succ) fail))