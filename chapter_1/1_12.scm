(define (pascal row col)
    (cond ((= col 1) 1)
          ((= col row) 1)
          (else (+ (pascal (- row 1) (- col 1))
                   (pascal (- row 1) col)))))

    ; (if (or (= column 1) (= row column))
    ;     1
    ;     (+ (pascal column (- row 1)) (pascal (- column 1) (- row 1)))))

(pascal 1 1) ; 1
(pascal 1 2) ; 1
(pascal 2 2) ; 1
(pascal 3 2) ; 2
(pascal 3 2) ; 3
(pascal 5 3) ; 6

