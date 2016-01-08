
;;; Procedure:
;;;   irgb-component-add
;;; Parameters:
;;;   color, an integer-encoded RGB color
;;    offset, an integer
;;; Purpose:
;;;   Add offset to each of the components of color.
;;; Produces:
;;;   new-color, an integer-encoded RGB color
;;; Preconditions:
;;;   offset >= 0
;;; Postconditions:
;;;   (irgb-red new-color) = (min 255 (+ offset (irgb-red color)))
;;;   (irgb-green new-color) = (min 255 (+ offset (irgb-green color)))
;;;   (irgb-blue new-color) = (min 255 (+ offset (irgb-blue color)))
(define irgb-component-add
  (lambda (color offset)
    (irgb (+ offset (irgb-red color))
          (+ offset (irgb-green color))
          (+ offset (irgb-blue color)))))

;;; Procedure:
;;;   irgb-component-sub
;;; Parameters:
;;;   color, an integer-encoded RGB color
;;    offset, an integer
;;; Purpose:
;;;   Subtract offset from each of the components of color.
;;; Produces:
;;;   new-color, an integer-encoded RGB color
;;; Preconditions:
;;;   offset >= 0
;;; Postconditions:
;;;   (irgb-red new-color) = (max 0 (- (irgb-red color) offset))
;;;   (irgb-green new-color) = (max 0 (- (irgb-green color) offset))
;;;   (irgb-blue new-color) = (max 0 (- irgb-blue color) offset))
(define irgb-component-sub
  (lambda (color offset)
    (irgb (- (irgb-red color) offset)
          (- (irgb-green color) offset)
          (- (irgb-blue color)) offset)))
