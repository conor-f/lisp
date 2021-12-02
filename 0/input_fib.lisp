(defun fib(n)
  (if (< n 2)
    n
    (+
      (fib (- n 1))
      (fib (- n 2))
    )
  )
)

(write-line "What's the nth fibonacci number you ask? ")
(princ (fib (read)))
(terpri)
