(load "base.scm")

(define (sqrt-iter guess x)
    (define improved-guess (improve guess x))
    (if (good-enough? guess improved-guess)
        improved-guess
        (sqrt-iter (improve guess x)
            x)))


(define (improve guess x)
    (/ (+ (/ x (square guess)) guess guess) 3))


(define (good-enough? guess improved)
    (< (abs (- improved guess)) 0.0001))


(define (sqrt x)
    (sqrt-iter 1.0 x))


(sqrt 8)
