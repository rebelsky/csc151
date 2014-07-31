Transforming images by transforming each pixel
----------------------------------------------

* We saw in the color transformation lab that we can apply a transformation to each pixel, getting it and then setting it to a new value.
* This generalizes that strategy.
* `(image-variant image color-transform)` - build a new image
  by applying `color-transform` to every pixel.
* `image-transform! image color-transform` - change the pixels "in place"
* Interesting new concept: We can write procedures that take other 
  procedures as parameters.

Sequencing transformations with `compose`
-----------------------------------------

* When you need to do more than one transformation, you can sequence them
  with `compose` (also `o`).
* `(image-variant image (o rgb-redder rgb-bluer))`
* *Note: This is a new approach.  Traditionally, procedures appear
  immediately after parentheses, and they are doing the work.  Now they
  are inputs to other procedures, and so do not have parentheses.*

Anonymous transformations
-------------------------

* You don't even need to name those transformations.
* <code>(image-variant image (lambda (rgb) ...))</code>

