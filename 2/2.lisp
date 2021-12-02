(defvar test-filename "test_input.txt")
(defvar real-filename "real_input.txt")

(defparameter vertical-pos 0)
(defparameter horizontal-pos 0)
(defparameter aim 0)


;; Read file line by line:
(defun get-file (filename)
  (with-open-file (stream filename)
    (loop for line = (read-line stream nil)
      while line
      collect line
    )
  )
)

(defun get-magnitude-from-instruction (instruction)
  (parse-integer (subseq instruction (position #\Space instruction)))
)

(defun update-position (instruction)
  (let (
          (direction (char instruction 0))
       )
    ; Forward:
    (if (string= "f" direction)
      (progn
        (defparameter horizontal-pos (
          +
          horizontal-pos
          (get-magnitude-from-instruction instruction)
        ))
        (defparameter vertical-pos (
          +
          vertical-pos
          (* aim (get-magnitude-from-instruction instruction))
        ))
      )
    )
    ; Up:
    (if (string= "u" direction)
      (defparameter aim (
        -
        aim
        (get-magnitude-from-instruction instruction)
      ))
    )
    ; Down:
    (if (string= "d" direction)
      (defparameter aim (
        +
        aim
        (get-magnitude-from-instruction instruction)
      ))
    )
  )
)

(defun follow-path (path) 
  (update-position (first path))

  (if (> (length path) 1)
    (follow-path (cdr path))
  )
)

;(defparameter input (get-file test-filename))
(defparameter input (get-file real-filename))

(follow-path input)

(princ (* vertical-pos horizontal-pos))
(terpri)
