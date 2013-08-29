Transforming images by transforming each pixel
==============================================
* We saw in the color transformation lab that we can apply a transformation to each pixel, getting it and then setting it to a new value.
* This generalizes that strategy.
* <code>(image-variant image color-transform)</code> - build a new image
  by applying <code>color-transform</code> to every pixel.
* <code>(image-transform! image color-transform</code> - change the pixels
  "in place">
* Interesting new concept: We can write procedures that take other procedures as parameters.

Sequencing transformations with compose
=======================================
* When you need to do more than one transformation, you can sequence them
  with <code>compose</code> (also <code>o</code>).
* <code>(image-variant image (o rgb-redder rgb-bluer))</code>

Anonymous transformations
=========================
* You don't even need to name those transformations.
* <code>(image-variant image (lambda (rgb) ...))</code>

