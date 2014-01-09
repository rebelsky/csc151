Outline 14: Transforming Colors
===============================

Held: Monday, 23 September 2013

Back to [Outline 13 - Pause for Breath](outline.13.html).
On to [Outline 15 - Transforming Images](outline.15.html).

**Summary**

Today we explore common ways in which to transform colors, pixels, and 
images.  

**Related Pages**

* Reading: [Transforming RGB Colors](../readings/transforming-rgb-reading.html)
* Lab: [Transforming RGB Colors](../labs/transforming-rgb-lab.html)
* [EBoard](../eboards/14.html) 
  ([Source](../eboards/14.md))
  ([PDF](../eboards/14.pdf))

**Overview**

* Review: Color basics.
* Computing new colors from old.
* An example.

**Administrivia**

* Study break tonight at 8 pm.
* My other class wants the "Current EBoard" link to give the source file,
  rather than the HTML.  Do you care?
* Any parents coming Friday?  (I'm trying to figure out how to fit them.)
* I've gotten a few "I don't think I should ask you this" emails.  If you 
  are asking questions via email, I don't consider anything out of bounds.
  (I may refuse to answer, but I won't be bothered that you've asked.)
* New lab partners!
* Lots of folks had trouble with the GIMP tools stuff.  I didn't need exact
  code, but I wanted to be able to have a sense that you understood the
  "choose color" -> "select area" -> "fill" order of things.
* I'm going to have an optional class this Thursday at 1:15 (and, I hope, most
  Thursdays) as a chance to talk to folks about more things that might be
  useful or interesting.
* For those who missed the documentation lab writeup, here's an alternative.
  Document the following procedure
<pre>
(define range
  (lambda (val cap)
    (+ 1 (modulo (- val 1) cap))))
</pre>
* Work for Tuesday
    * Continue to work on the exam
    * Reading for Tuesday: [Transforming Images](../readings/transforming-images-reading.html)
    * Lab writeup 4: Problems 6a and 7b from Transforming RGB Colors.  
      Due before class on Wednesday.  (Ideally before class on Tuesday.)
* EC Opportunities:
    * CS Extras Thursday @ 4:30: Jennelle Nystrom on working at Microsoft
    * CS Table Friday (The Story of Mel)
    * Other?  (Water polo, Football, G-Tones, ...)

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


