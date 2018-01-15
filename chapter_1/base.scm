(define (square a) (* a a))

(define (abs x)
    (if (> x 0) x (- x)))

(define (average x y)
    (/ (+ x y) 2))


(define (>= a b) (not (< a b)))

(define (<= a b) (not (> a b)))
