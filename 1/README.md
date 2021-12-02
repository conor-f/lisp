URL: https://adventofcode.com/2021/day/1

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
