; new-if
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
  (else else-clause)))

(new-if (= 2 3) 0 5) ; 5

(new-if (= 2 2) 0 3) ; 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Square Roots by Newton's Method
(define (newtonsqrt x) 
  (sqrt-iter 1.0 x))

; iteration
(define (sqrt-iter guess x) 
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

; check accuracy
(define (good-enough? guess x) 
  (< (abs (- (square guess) x)) 0.001))

; improve guess
(define (improve guess x) 
  (average guess (/ x guess)))

; square
(define (square x) (* x x))

; average
(define (average x y) (/ (+ x y) 2))


(newtonsqrt 4)


;;; A good explanation can be found here: http://community.schemewiki.org/?sicp-ex-1.6