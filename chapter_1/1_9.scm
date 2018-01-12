(define (factorial-recursice n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))))


(define (factorial-iteratiev n)
    (define (iter product counter)
        (if (> counter n)
            product
            (iter (* counter product) (+ counter 1))))
    (iter 1 1))

(define (inc n) (+ n 1))

(define (dec n) (- n 1))


