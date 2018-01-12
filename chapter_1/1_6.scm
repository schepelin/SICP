(load "base.scm")

; in case of if will be changet with
; new-if the procedure never ends
; because scheme use applicative substitution and calcutes
; both arguments of new-if
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
            x)))


(define (improve guess x)
    (average guess (/ x guess)))


(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.0001))


(define (sqrt x)
    (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt 1000)
(sqrt 0.00001)

; define if as function not as special form

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))

