(define (sqrt x)
    (define (good-enough? guess) ; predicate
        (< (abs (- (square guess) x)) 0.00001))
    (define (improve guess) ; improve guess
        (average guess (/ x guess)))
    (define (sqrt-iter guess) ; iteration
        (if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))))
    (define (average x y) ; average
        (/ (+ x y) 2))
    (sqrt-iter 1.0))

(sqrt 4)
