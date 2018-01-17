(load "base.scm")

(define (cube x) (* x x x))

(define (reduce-angle x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
    (if (<= (abs angle) 0.1)
        angle
        (reduce-angle (sine (/ angle 3.0)))))


(sine 12.15)

