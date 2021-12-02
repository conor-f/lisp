(defvar test-filename "test_input.txt")
(defvar real-filename "real_input.txt")

;; Read file line by line to a list:
(defun get-file (filename)
  (with-open-file (stream filename)
    (loop for line = (read-line stream nil)
      while line
      collect (parse-integer line)
    )
  )
)

;(defparameter input (get-file test-filename))
(defparameter input (get-file real-filename))

;; A method to return 1 if b > a, else 0
(defparameter count-greater 0)

(defun greater-than-prev(a b)
  (if (> b a)
    (defparameter count-greater (+ count-greater 1))
    ()
  )
)

(defun get-greater-count (l)
  (greater-than-prev (first l) (second l))

  (if (> (length l) 2)
    (
     get-greater-count (cdr l)
    )
  )
)

(get-greater-count input)
(princ count-greater)
(terpri)
