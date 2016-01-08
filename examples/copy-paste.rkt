#lang racket
(require gigls/unsafe)

;;; Procedure:
;;;   image-copy-paste!
;;; Parameters:
;;;   image, an image
;;;   source-left, a non-negative integer
;;;   source-top, a non-negative integer
;;;   source-width, a positive integer
;;;   source-height, a positive integer
;;;   target-left, a non-negative integer
;;;   target-top, a non-negative integer
;;;   target-width, a positive integer
;;;   target-height, a positive integer
;;; Purpose:
;;;   Copy one rectangular region of the image to another, resizing.
;;;   as necessary.
;;; Produces: 
;;;   [Nothing; called for the side effect]
;;; Preconditions:
;;;   0 <= source-left < (image-width image)
;;;   0 <= source-top < (image-height image)
;;;   (+ source-left source-width) < (image-width image)
;;;   (+ source-top source-height) < (image-height image)
;;;   0 <= target-left < (image-width image)
;;;   0 <= target-top < (image-height image)
;;;   (+ target-left target-width) < (image-width image)
;;;   (+ target-top target-height) < (image-height image)
;;; Postconditions:
;;;   The specified area of the image now contains the same subimage
;;;   as the source area (scaled, as appropriate).
(define image-copy-paste!
  (lambda (image 
           source-left source-top source-width source-height
           target-left target-top target-width target-height)
    (let ([layer (image-get-layer image)])
      (image-select-rectangle! image REPLACE 
                               source-left source-top 
                               source-width source-height)
      (gimp-edit-copy layer)
      (image-select-rectangle! image REPLACE
                               target-left target-top
                               target-width target-height)
      (let ([pasted (car (gimp-edit-paste layer 1))])
        (image-select-nothing! image)
        (gimp-layer-scale pasted target-width target-height 1)
        (gimp-image-flatten image)
        image))))
                               
;;; Procedure:
;;;   image-copy-paste-rotate!
;;; Parameters:
;;;   image, an image
;;;   angle, a real number
;;;   source-left, a non-negative integer
;;;   source-top, a non-negative integer
;;;   source-width, a positive integer
;;;   source-height, a positive integer
;;;   target-left, a non-negative integer
;;;   target-top, a non-negative integer
;;;   target-width, a positive integer
;;;   target-height, a positive integer
;;; Purpose:
;;;   Copy one rectangular region of the image to another, resizing
;;;   to the target size and then rotating by angle radians.
;;; Produces: 
;;;   [Nothing; called for the side effect]
;;; Preconditions:
;;;   0 <= source-left < (image-width image)
;;;   0 <= source-top < (image-height image)
;;;   (+ source-left source-width) < (image-width image)
;;;   (+ source-top source-height) < (image-height image)
;;;   0 <= target-left < (image-width image)
;;;   0 <= target-top < (image-height image)
;;;   (+ target-left target-width) < (image-width image)
;;;   (+ target-top target-height) < (image-height image)
(define image-copy-paste-rotate!
  (lambda (image angle
           source-left source-top source-width source-height
           target-left target-top target-width target-height)
    (let ([layer (image-get-layer image)])
      (image-select-rectangle! image REPLACE 
                               source-left source-top 
                               source-width source-height)
      (gimp-edit-copy layer)
      (image-select-rectangle! image REPLACE
                               target-left target-top
                               target-width target-height)
      (let ([pasted (car (gimp-edit-paste layer 1))])
        (image-select-nothing! image)
        (gimp-layer-scale pasted target-width target-height 1)
        (gimp-item-transform-rotate pasted angle 1 0 0)
        (gimp-image-flatten image)
        image))))

(define show-kitten
  (lambda ()
    (image-show (image-load "/home/rebelsky/Desktop/kitten.jpg"))))

;;; Procedure:
;;;   new-copy-paste!
;;; Parameters:
;;;   source, an image
;;;   source-left, a non-negative integer
;;;   source-top, a non-negative integer
;;;   source-width, a positive integer
;;;   source-height, a positive integer
;;;   target, an image
;;;   target-left, a non-negative integer
;;;   target-top, a non-negative integer
;;;   target-width, a positive integer
;;;   target-height, a positive integer
;;; Purpose:
;;;   Copy one rectangular region of the image to a rectangular
;;;   region in another image, resizing as necessary.
;;; Produces: 
;;;   [Nothing; called for the side effect]
;;; Preconditions:
;;;   0 <= source-left < (image-width source)
;;;   0 <= source-top < (image-height source)
;;;   (+ source-left source-width) < (image-width source)
;;;   (+ source-top source-height) < (image-height source)
;;;   0 <= target-left < (image-width target)
;;;   0 <= target-top < (image-height target)
;;;   (+ target-left target-width) < (image-width target)
;;;   (+ target-top target-height) < (image-height target)
;;; Postconditions:
;;;   The specified area of the target image now contains the same subimage
;;;   as the source area (scaled, as appropriate).
(define new-copy-paste!
  (lambda (source 
           source-left source-top source-width source-height
           target
           target-left target-top target-width target-height)
    (let ([source-layer (image-get-layer source)]
          [target-layer (image-get-layer target)])
      (image-select-rectangle! source REPLACE 
                               source-left source-top 
                               source-width source-height)
      (gimp-edit-copy source-layer)
      (image-select-rectangle! target REPLACE
                               target-left target-top
                               target-width target-height)
      (let ([pasted (car (gimp-edit-paste target-layer 1))])
        (image-select-nothing! source)
        (image-select-nothing! target)
        (gimp-layer-scale pasted target-width target-height 1)
        (gimp-image-flatten target)
        (context-update-displays!)))))
