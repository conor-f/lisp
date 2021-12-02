(defun fib (n)
  ; This is a one line comment
  ; You know what this does!
  (if (< n 2)
    n
    ( + 
      (fib (- n 1))
      (fib (- n 2))
    )
  )
)

( princ (fib 0) )
( terpri )
( princ (fib 1) )
( terpri )
( princ (fib 2) )
( terpri )
( princ (fib 3) )
( terpri )
( princ (fib 4) )
( terpri )
( princ (fib 5) )
( terpri )
( princ (fib 6) )
( terpri )
( princ (fib 7) )
( terpri )
