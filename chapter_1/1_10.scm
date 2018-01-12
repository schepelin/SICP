(define (A x y)
    (cond ((= y 0) 0)
          ((= x 0) (* 2 y))
          ((= y 1) 2)
          (else (A (- x 1) (A x (- y 1))))))

(A 1 10)

(A 2 4)

(A 3 3)

(define (f n) (A 0 n))

(f 1)
(f 2)
(f 3)
(f 4)
(f 5)

(define (g n) (A 1 n))

(g 1)
(g 2)
(g 3)
(g 4)
(g 5)

(define (k n) (* 5 n n))
