;; Local scope with let
(princ
  (let ((scoped-var 6)) scoped-var)
)
(terpri)


(princ
  (+
    (let ((scoped-var 5)) scoped-var)
    4
  )
)
(terpri)


;; Variables with dependence:
(princ
  (let* (
         (a 6)
         (b (+ a a a))
         ) b
    )
)
(terpri)


;; defvar ~= constant
;; defparameter ~= global var
(defvar plum "I'm the word plum")
(princ plum)
(terpri)

(defparameter a 6)
(princ "First time round: ")
(princ a)
(terpri)

(defparameter a 12)
(princ "Second time round: ")
(princ a)
(terpri)

(defvar plum "can't change.")
(princ plum)
(terpri)
