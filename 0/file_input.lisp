(defun get-file (filename)
  (with-open-file (stream filename)
    (loop for line = (read-line stream nil)
      while line
      collect line
    )
  )
)

(princ (get-file "test_input.txt"))
(terpri)
