#lang racket
(require gigls/unsafe)  ; Probably not necessary, but ...

; A quick exploration of how Racket shows output.

; Try (add (negate 3) (multiply (subtract 5 3) 4))

(define add
  (lambda (x y)
    (display x) (display " + ") (display y)
    (yield (+ x y))))

(define subtract
  (lambda (x y)
    (display x) (display " - ") (display y)
    (yield (- x y))))

(define multiply
  (lambda (x y)
    (display x) (display " * ") (display y)
    (yield (* x y))))

(define negate
  (lambda (x)
    (display "negative ") (display x)
    (yield (- x))))

(define yield
  (lambda (val)
    (display " = ") (display val) (newline)
    val))
