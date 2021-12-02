URL: https://adventofcode.com/2021/day/2

For some reason I can't get this construct to work:

```lisp
  (if (> (length l) 2)
    (
     (get-greater-count (cdr l))
     (greater-than-prev (list (first l) (second l)))
    )
    (greater-than-prev (first l) (second l))
  )
```

The issue was the multiple statements in the `if` part of the condition. To
solve this, you need to use `progn` as follows:

```lisp
(if (> 3 4)
  (progn
    (setq x (+ x 1))
    (setq y x))
  (setq x 0))
```
