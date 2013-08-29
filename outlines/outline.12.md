Outline 12: Transforming Colors
===============================

Held: Wednesday, 17 September 2013

Back to [Outline 11 - Raster Graphics and RGB Colors](outline.11.html).
On to [Outline 13 - Transforming Images](outline.13.html).

**Summary**

Today we explore common ways in which to transform colors, pixels, and 
images.  

**Related Pages**


**Overview**

* Review: Color basics.
* Computing new colors from old.
* An example.

**Administrivia**


Review: RGB Colors
==================
* A standard way to represent transmissive colors.
* Think of it as a combination of three colored lights of varying intensities
    * Red
    * Green
    * Blue
* Why these colors?  It just works that way.
* How do we measure intensities?  
    * Some people like a 0-1 scale
    * Computers like a 0-255 scale (powers of two rock!)
* Important procedures:
    * <code>(rgb-new *red* *green* *blue*)</code>  - create a new color
    * <code>(image-set-pixel! *image col row color*)</code> - set the color of a pixel
    * <code>(image-get-pixel *image col row*)</code> - get the color of a pixela
    * <code>(rgb-red *color*)</code> - get the red component
    * <code>(rgb-green *color*)</code> - get the green component
    * <code>(rgb-blue *color*)</code> - get the blue component
    * <code>(color-&gt;rgb-list *color*)</code>  - get a list of the three components
    * <code>(color-&gt;rgb *color*)</code> - convert some representations to the
    RGB representation.

Transforming Colors
===================
* Today we are exploring ways to transform colors.
* Why?
    * Deepens our understanding of colors.
    * We can apply a color transformation to a pixel in the image.
    * We can apply a color transformation to each pixel in an image.  (More on that
    tomorrow.)

An Example
==========
* MediaScript comes with a variety of built-in color transformations.
* However, we can also define our own (yay!).
* The normal framework for a color transformation is
<pre class="programlisting">
(define color-transform
  (lambda (color)
    (rgb-new ___ ; computation of red component
             ___ ; computation of green component
             ___ ; computation of blue component
             )))
</pre>
* Let's consider a simple one: We'll keep only the blue component of an image.
* How would we write this?
<pre class="programlisting">
(define only-blue
  (lambda (color)
    (rgb-new ___
             ___
             ___)))
</pre>
* Some tests
* While we'll spend today using this idea with pixels, for this example, we'll explore
  the effect on a sample image.


