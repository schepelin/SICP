; define a procedure that accepts 3 numbers and
; returns sum of squares for two except lowest

(define (square a) (* a a))

(define (sum-of-squares x y)
    (+ (square x) (square y)))


(define (>= a b) (not (< a b)))

(define (sum-except-lowest a b c)
    (if (>= a b)
        (sum-of-squares a (if (>= b c) b c))
        (sum-of-squares b (if (>= a c) a c))))

(sum-except-lowest 1 2 3) ; 13

(sum-except-lowest 2 4 1) ; 20

(sum-except-lowest 5 1 2) ; 29

(sum-except-lowest 5 3 1) ; 34
