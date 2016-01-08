#lang racket
(require gigls/unsafe)

;;; Procedure:
;;;   image-label!
;;; Parameters:
;;;   image, an image
;;;   label, a non-negative integer
;;;   color, a color
;;; Purpose:
;;;   Adds a label to the lower-right-hand corner of the image.
;;; Produces:
;;;   [Nothing; called for the side effect]
;;; Preconditions:
;;;   0 <= n < 1000
;;;   1 <= fontsize < 100
(define image-label!
  (lambda (image label color)
    (let* ([width (image-width image)]
           [height (image-height image)]
           [tmp (string-append "00" (number->string label))]
           [str (substring tmp (- (string-length tmp) 3))])
      (context-set-fgcolor! color)
      (context-set-font-name! "Monospace Bold")
      (context-set-font-size! (quotient (min width height) 15))
      (image-display-text! image
                           str
                           (* .99 width) (* .99 height)
                           ALIGN-RIGHT ALIGN-BOTTOM)
      (context-update-displays!)
      image)))
