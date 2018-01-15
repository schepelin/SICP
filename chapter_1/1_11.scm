
(define (f-recursive n)
    (if (< n 3)
        n
        (+
            (f-recursive (- n 1))
            (f-recursive (- n 2))
            (f-recursive (- n 3)))))

(f-recursive 3)
(f-recursive 4)
(f-recursive 5)


(define (f-iterative n)
    (define (iter fn-1 fn-2 fn-3 count)
        (if (< count 3)
            fn-1
            (iter
                (+ fn-1 fn-2 fn-3)
                fn-1
                fn-2
                (- count 1)
            )))
    (if (< n 3) n (iter 2 1 0 n)))

(f-iterative 3)
(f-iterative 4)
(f-iterative 5)

