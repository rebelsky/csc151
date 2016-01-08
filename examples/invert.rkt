#lang racket
(require gigls/unsafe)
(display "Enter the name of an image file: ")
(define fname (read-line))
(display "I am inverting the image in ")
(display fname)
(newline)
(image-show (image-variant (image-load fname) irgb-complement))
