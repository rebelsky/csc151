
Drawings as Values
------------------

* There was some confusion on drawings as values, so we'll spend a little
  bit of time on these issues before you continue that lab.
* In the MediaScheme/gigls world, drawings are like numbers in that
  once you create a drawing, you can't change that drawing.
* Compare these two pairs of operations

        (define val 3)
        (sqrt val)

        (define d drawing-unit-circle)
        (scale-drawing 5 d)

* Because of this model, we often describe drawings with a series of
  nested operations (innermost first).
* We also differentiate "drawings", which are abstract descriptions of
  an image, from "images", which are the rendering of a drawing on
  something you can see.
      * You need to use `drawing->image` to convert the drawing to
        an image.
      * You need to use `image-show` to display the image.
* MediaScheme/gigls assigns an integer to each image, corresponding to the
  "Untitled #" that appears as the image title in Gimp.
* I think that covers the main issues.  Let me know if there are other
  issues.

